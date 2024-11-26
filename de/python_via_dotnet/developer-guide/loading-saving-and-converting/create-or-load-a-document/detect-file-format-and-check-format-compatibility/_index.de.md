---
title: Dateiformat beim Laden erkennen
second_title: Aspose.Words für Python via .NET
articleTitle: Erkennen Sie das Dateiformat und prüfen Sie die Formatkompatibilität
linktitle: Erkennen Sie das Dateiformat und prüfen Sie die Formatkompatibilität
description: "Bestimmen Sie das Dateiformat in Python, wenn Sie nicht sicher sind, was der tatsächliche Inhalt der Datei ist, oder um die Formatkompatibilität zu überprüfen."
type: docs
weight: 20
url: /de/python-net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Manchmal ist es notwendig, das Format eines Dokuments vor dem Öffnen zu bestimmen, da die Dateierweiterung nicht garantiert, dass der Inhalt der Datei angemessen ist. Es ist beispielsweise bekannt, dass Crystal Reports Dokumente häufig im RTF-Format ausgibt, diese jedoch mit der Erweiterung .doc versehen.

Aspose.Words bietet die Möglichkeit, Informationen über den Dateityp abzurufen, um eine Ausnahme zu vermeiden, wenn Sie nicht sicher sind, was der tatsächliche Inhalt der Datei ist.

## Dateiformat ohne Ausnahme erkennen

Wenn Sie mit mehreren Dokumenten in verschiedenen Dateiformaten arbeiten, müssen Sie möglicherweise die Dateien, die von Aspose.Words verarbeitet werden können, von den Dateien trennen, die nicht verarbeitet werden können. Möglicherweise möchten Sie auch wissen, warum einige Dokumente nicht bearbeitet werden können.

Wenn Sie versuchen, eine Datei in ein [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Objekt zu laden und Aspose.Words das Dateiformat nicht erkennen kann oder das Format nicht unterstützt wird, löst Aspose.Words eine Ausnahme aus. Sie können diese Ausnahmen abfangen und analysieren, aber Aspose.Words bietet auch die [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/)-Methode, mit der wir das Dateiformat schnell bestimmen können, ohne ein Dokument mit möglichen Ausnahmen laden zu müssen. Diese Methode gibt ein [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/)-Objekt zurück, das die erkannten Informationen zum Dateityp enthält.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) überprüft nur das Dateiformat, validiert es jedoch nicht. Es gibt keine Garantie dafür, dass die Datei erfolgreich geöffnet wird, selbst wenn [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) zurückgibt, dass es sich um eines der unterstützten Formate handelt. Dies liegt daran, dass die [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/)-Methode nur Teildaten des Dateiformats liest, die für die Überprüfung des Dateiformats ausreichen, aber nicht für eine vollständige Validierung.

{{% /alert %}}

## Überprüfen Sie die Dateiformatkompatibilität

Wir können die Formatkompatibilität aller Dateien im ausgewählten Ordner überprüfen und sie nach Format in entsprechende Unterordner sortieren.

Da es sich um den Inhalt eines Ordners handelt, müssen wir zunächst mithilfe der **Listenverzeichnis**-Methode des **os**-Moduls eine Sammlung aller Dateien in diesem Ordner abrufen.

Das folgende Codebeispiel zeigt, wie Sie eine Liste aller Dateien im Ordner erhalten:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Wenn alle Dateien gesammelt sind, wird der Rest der Arbeit von der [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/)-Methode erledigt, die das Dateiformat überprüft.

Das folgende Codebeispiel zeigt, wie Sie die gesammelte Dateiliste durchlaufen, das Format jeder Datei überprüfen und jede Datei in den entsprechenden Ordner verschieben:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Die Dateien werden mithilfe der **Datei kopieren**-Methode des **Shutil**-Moduls in entsprechende Unterordner verschoben.

Die folgenden Dateien werden im obigen Beispiel verwendet. Der Dateiname steht links und die Beschreibung rechts:

| Group von Dateien | Eingabedokument | Typ |
|  :-  |  :-  |  :-  |
| Unterstützte Dateiformate | Testdatei (Doc).doc|Dokument Microsoft Word 95/6.0 oder Microsoft Word 97 – 2003. |
|  | Testdatei (`Dot`).dot | Vorlage Microsoft Word 95/6.0 oder Microsoft Word 97 – 2003. |
|  | Testdatei (Docx).docx | Office Open XML WordprocessingML-Dokument ohne Makros. |
|  | Testdatei (Docm).docm | Office Open XML WordprocessingML-Dokument mit Makros. |
|  | Testdatei (Dotx).dotx | Office Open XML WordprocessingML-Vorlage. |
|  | Testdatei (Dotm).dotm | Office Open XML WordprocessingML-Vorlage mit Makros. |
|  | Testdatei (XML).xml | FlatOPC OOXML-Dokument. |
|  | Testdatei (RTF).rtf | Dokument im Rich-Text-Format. |
|  | Testdatei (WordML).xml | Microsoft Word 2003 WordprocessingML-Dokument. |
|  | Testdatei (HTML).html | HTML-Dokument. |
|  | Testdatei (MHTML).mhtml | MHTML-Dokument (Webarchiv). |
|  | Testdatei (Odt).odt | OpenDocument-Text (OpenOffice Writer). |
|  | Testdatei (Ott).ott | OpenDocument-Dokumentvorlage. |
|  | Testdatei (DocPreWord60).doc | Microsoft Word 2.0-Dokument. |
| Verschlüsselte Dokumente | Testdatei (Enc).doc | Verschlüsseltes Microsoft Word 95/6.0- oder Microsoft Word 97 – 2003-Dokument. |
|  | Testdatei (Enc).docx | Verschlüsseltes Office Open XML WordprocessingML-Dokument. |
| Nicht unterstützte Dateiformate | Testdatei (JPG).jpg | JPEG-Bilddatei. |

