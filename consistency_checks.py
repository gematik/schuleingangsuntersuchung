import json
import os
from argparse import ArgumentParser

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

def get_item_source(item):
    """
    Sucht in den Extensions nach der ItemSource und gibt den Code (z.B. DE-HH) zurück.
    """
    extensions = item.get("extension", [])
    for ext in extensions:
        if ext.get("url") == "https://www.oegd.de/fhir/seu/StructureDefinition/ItemSource":
            value_coding = ext.get("valueCoding", {})
            return value_coding.get("code")
    return None # Falls kein Bundesland hinterlegt ist

def extract_item(parent) -> dict:
 
    if "item" in parent:
        items = parent["item"]
        for item in items:
            extracted_info = {
                "parentId": parent.get("linkId"),
                "linkId": item.get("linkId"),
                "type": item.get("type"),
                "text": item.get("text", "") # Text ist optional in FHIR, daher fallback auf Leerstring
            }

    return extracted_info

def extract_items(parent, item_list, result_data):
    """
    Durchläuft rekursiv die Liste von Items und extrahiert linkId, type und text.
    """
    for item in item_list:
        # Daten für das aktuelle Item extrahieren
        extracted_info = {
            "linkId": item.get("linkId"),
            "type": item.get("type"),
            "text": item.get("text", ""), # Text ist optional in FHIR, daher fallback auf Leerstring
            "source": get_item_source(item) # Extrahiert die ItemSource aus den Extensions
        }

        extracted_info["parentId"] = parent.get("linkId") if parent else ""

        # Zusätzliche Felder
        extracted_info["answerValueSet"] = item.get("answerValueSet", "")
        extracted_info["required"] = item.get("required", False)
        extracted_info["repeats"] = item.get("repeats", False)
        extracted_info["enableBehavior"] = item.get("enableBehavior", "")
        extracted_info["enableWhen"] = item.get("enableWhen", [])

        result_data.append(extracted_info)
        
        # Falls das Item Unter-Items (nested items) hat, diese ebenfalls verarbeiten
        if "item" in item:
            extract_items(item, item["item"], result_data)

def parse_fhir_questionnaire(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        data = json.load(f)
    
    questions = []
    # Der Einstiegspunkt in einem Questionnaire ist das 'item' Array auf oberster Ebene
    if "item" in data:
        extract_items(parent=None, item_list=data["item"], result_data=questions)
    
    return questions

def extract_ids(questions: list) -> list:
    ids = [q["linkId"] for q in questions]
    return ids

def get_json_files_dict(directory: str, prefix: str) -> dict:
    result = {}
    
    # Sicherstellen, dass der Pfad existiert
    if not os.path.exists(directory):
        print(f"Ordner {directory} wurde nicht gefunden.")
        return result

    for filename in os.listdir(directory):
        # Nur .json Dateien beachten, die mit dem Präfix starten
        if filename.startswith(prefix) and filename.endswith(".json"):
            
            # Die Dateiendung (.json) entfernen
            name_without_ext = filename.rsplit('.', 1)[0]
            
            if name_without_ext == prefix:
                # Sonderfall: Nur der Präfix
                key = "MAX"
            else:
                # Präfix und das Trennzeichen '-' entfernen
                # Wir nutzen len(prefix) + 1, um das '-' direkt mit abzuschneiden
                key = name_without_ext[len(prefix)+1:]
            
            result[key] = filename
            
    return result

def export_to_csv(questions: list, output_file: str):
    import csv

    # Helfer, um enableWhen lesbar zu formatieren
    def format_enable_when(conditions):
        parts = []
        for cond in conditions:
            question_id = cond.get("question", "")
            operator = cond.get("operator", "")

            # Einen möglichen Antwortwert ermitteln
            value = ""
            if "answerBoolean" in cond:
                value = str(cond["answerBoolean"])
            elif "answerString" in cond:
                value = cond["answerString"]
            elif "answerInteger" in cond:
                value = str(cond["answerInteger"])
            elif "answerDecimal" in cond:
                value = str(cond["answerDecimal"])
            elif "answerDate" in cond:
                value = cond["answerDate"]
            elif "answerDateTime" in cond:
                value = cond["answerDateTime"]
            elif "answerCoding" in cond:
                coding = cond["answerCoding"] or {}
                code = coding.get("code", "")
                display = coding.get("display", "")
                if code and display:
                    value = f"{code} ({display})"
                else:
                    value = code or display

            part = " ".join(x for x in [question_id, operator, value] if x)
            if part:
                parts.append(part)

        return " | ".join(parts)

    # Definiere die Spaltenüberschriften
    fieldnames = [
        'linkId',
        'type',
        'text',
        'source',
        'answerValueSet',
        'required',
        'repeats',
        'enableBehavior',
        'enableWhen',
        'used_in'
    ]

    with open(output_file, mode='w', newline='', encoding='utf-8') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

        # Schreibe die Kopfzeile
        writer.writeheader()

        for question in questions:
            # Schreibe jede Frage als Zeile in die CSV-Datei
            writer.writerow({
                'linkId': question.get('linkId', ''),
                'type': question.get('type', ''),
                'text': question.get('text', ''),
                'source': question.get('source', ''),
                'answerValueSet': question.get('answerValueSet', ''),
                'required': question.get('required', ''),
                'repeats': question.get('repeats', ''),
                'enableBehavior': question.get('enableBehavior', ''),
                # enableWhen ist eine Liste – wir geben sie als JSON-String aus
                #'enableWhen': json.dumps(question.get('enableWhen', []), ensure_ascii=False),
                # enableWhen als kompakter, lesbarer String
                'enableWhen': format_enable_when(question.get('enableWhen', [])),
                'used_in': ','.join(question.get('used_in', []))  # Liste in kommagetrennten String umwandeln
            })

def check_for_duplicates(questions: list):
    linkId_counts = {}
    for q in questions:
        linkId = q["linkId"]
        if linkId in linkId_counts:
            linkId_counts[linkId] += 1
        else:
            linkId_counts[linkId] = 1

    for linkId, count in linkId_counts.items():
        if count > 1:
            print(f"LinkId {linkId} kommt {count} mal vor.")

def check_required_questions(questions: list):
    for q in questions:
        if q.get("required", False):
            print(f"Frage mit linkId {q['linkId']} ist als required markiert.")

def check_question_consistency(questions: list, max_questions: list, file_key: str):
    for question in questions:
        # Entsprechende Frage aus dem MAX‑Fragebogen anhand der linkId suchen
        max_question = next((q for q in max_questions if q["linkId"] == question["linkId"]), None)
        if max_question is None:
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} ist nicht in MAX enthalten.")
            continue
        if max_question["parentId"] != question["parentId"]:
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} hat eine andere parentId als in MAX: {max_question['parentId']} vs {question['parentId']}")
        if max_question["type"] != question["type"]:
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} hat einen anderen Typ als in MAX: {max_question['type']} vs {question['type']}")
        if max_question["text"] != question["text"]:
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} hat einen anderen Text als in MAX: {max_question['text']} vs {question['text']}")
        if max_question["source"] != question["source"]:
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} hat eine andere Quelle als in MAX: {max_question['source']} vs {question['source']}")
        if max_question.get("answerValueSet", "") != question.get("answerValueSet", ""):
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} hat einen anderen answerValueSet als in MAX: {max_question.get('answerValueSet', '')} vs {question.get('answerValueSet', '')}")
        if max_question.get("repeats", False) != question.get("repeats", False):
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} hat einen anderen repeats-Wert als in MAX: {max_question.get('repeats', False)} vs {question.get('repeats', False)}")
        if max_question.get("enableBehavior", "") != question.get("enableBehavior", ""):
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} hat ein anderes enableBehavior als in MAX: {max_question.get('enableBehavior', '')} vs {question.get('enableBehavior', '')}")
        if max_question.get("enableWhen", []) != question.get("enableWhen", []):
            print(f"Frage mit linkId {question['linkId']} aus Datei {file_key} hat andere enableWhen-Bedingungen als in MAX: {max_question.get('enableWhen', [])} vs {question.get('enableWhen', [])}")

def check_unused_questions(max_questions: list):
    for q in max_questions:
        uses = q.get("used_in", [])
        if (not uses):
            print(f"Frage mit linkId {q['linkId']} aus MAX wird in keiner anderen Datei verwendet.")

def do_checks(max_questions: list, questionaires: dict):

    print(f"{bcolors.HEADER}")
    print(f"Checke doppelte linkIds in den Dateien:")
    print(f"{bcolors.FAIL}")

    # Checke ob es doppelte linkIds in MAX gibt
    check_for_duplicates(max_questions)

    # TODO: Checke ob es doppelte linkIds in den anderen Dateien gibt

    print(f"{bcolors.HEADER}")
    print(f"Checke ob es im MAX-Fragebogen required-Fragen gibt:")
    print(f"{bcolors.FAIL}")

    # Checke ob es im MAX-Fragebogen required-Fragen gibt
    check_required_questions(max_questions)

    print(f"{bcolors.HEADER}")
    print(f"Vergleich der Fragen aus den Dateien mit dem MAX-Fragebogen:")
    print(f"{bcolors.FAIL}")

    # Consistency Checks
    for key, questions in questionaires.items():
        check_question_consistency(questions, max_questions, key)

    print(f"{bcolors.HEADER}")
    print(f"Fragen aus MAX, die in keiner anderen Datei verwendet werden:")
    print(f"{bcolors.FAIL}")

    check_unused_questions(max_questions)

    print(f"{bcolors.ENDC}")

def print_demo(questionaire: list):
     # Demo-Ausgabe der ersten 5 Einträge
    for q in questionaire[:50]:
        print(f"ID: {q['linkId']} | Typ: {q['type']} | Quelle: {q['source']} | Text: {q['text'][:50]}... | Verwendet in: {q.get('used_in', [])}")
    print(f"\nGesamtanzahl extrahierter Items: {len(questionaire)}")

parser = ArgumentParser()
parser.add_argument("-p", "--prefix", dest="prefix", default="test")

args = parser.parse_args()

prefix = "Questionnaire-SEU-Sorgeberechtigtenfragebogen"
folder_path = "Spec-Schuleingangsuntersuchung/fsh-generated/resources/"

files_dict = get_json_files_dict(folder_path, prefix) # Holt alle relevanten JSON-Dateien im Verzeichnis
max = files_dict.get("MAX", None) # Holt den MAX-Eintrag
files_dict.pop("MAX", None)  # Entfernt den MAX-Eintrag für die folgende Schleife

max_path = f"{folder_path}{max}"
max_questions = parse_fhir_questionnaire(max_path)

# Erstelle ein Dictionary, das für jede Frage-ID die Dateien auflistet, in denen sie verwendet wird
uses_dict = {}

# Erstelle ein Dictionary, das die extrahierten Fragen speichert, um später Vergleiche anzustellen
questionaires = {}

# Durchlaufe alle Dateien und extrahiere die IDs
for key,value in files_dict.items():
    path = f"{folder_path}{value}"
    questions = parse_fhir_questionnaire(path)
    questionaires[key] = questions
    ids = extract_ids(questions)
    # Füge die IDs dem uses_dict hinzu
    for id in ids:
        if id not in uses_dict:
            uses_dict[id] = []
        uses_dict[id].append(key)

for q in max_questions:
    q["used_in"] = uses_dict.get(q["linkId"], [])

do_checks(max_questions, questionaires)

print_demo(max_questions)

# Exportiere die Daten in eine CSV-Datei
output_csv = "extracted_questions.csv"
export_to_csv(max_questions, output_csv)
