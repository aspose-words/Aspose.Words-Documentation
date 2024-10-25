---
title: Dateiformat erkennen und Formatkompatibilität prüfen
second_title: Aspose.Words für C++
articleTitle: Dateiformat erkennen und Formatkompatibilität prüfen
linktitle: Dateiformat erkennen und Formatkompatibilität prüfen
description: "Bestimmen Sie das Dateiformat in C++, wenn Sie sich nicht sicher sind, was der tatsächliche Inhalt der Datei ist, oder um die Formatkompatibilität zu überprüfen."
type: docs
weight: 20
url: /de/cpp/detect-file-format-and-check-format-compatibility/
---

Manchmal ist es notwendig, das Format eines Dokuments vor dem Öffnen zu bestimmen, da die Dateierweiterung nicht garantiert, dass der Inhalt der Datei angemessen ist. Beispielsweise ist bekannt, dass Crystal Reports Dokumente häufig im Format RTF ausgibt, ihnen jedoch die .doc-Erweiterung.

Aspose.Words bietet die Möglichkeit, Informationen über den Dateityp abzurufen, um eine Ausnahme zu vermeiden, wenn Sie nicht sicher sind, was der tatsächliche Inhalt der Datei ist.

## Dateiformat ohne Ausnahme erkennen

Wenn Sie mit mehreren Dokumenten in verschiedenen Dateiformaten arbeiten, müssen Sie möglicherweise die Dateien, die von Aspose.Words verarbeitet werden können, von denen trennen, die nicht verarbeitet werden können. Vielleicht möchten Sie auch wissen, warum einige der Dokumente nicht verarbeitet werden können.

Wenn Sie versuchen, eine Datei in ein [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) -Objekt zu laden, und Aspose.Words das Dateiformat nicht erkennt oder das Format nicht unterstützt wird, löst Aspose.Words eine Ausnahme aus. Sie können diese Ausnahmen abfangen und analysieren, aber Aspose.Words bietet auch die [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) -Methode, mit der wir das Dateiformat schnell bestimmen können, ohne ein Dokument mit möglichen Ausnahmen zu laden. Diese Methode gibt ein [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/)-Objekt zurück, das die erkannten Informationen zum Dateityp enthält.

{{% alert color="primary" %}}

DetectFileFormat überprüft nur das Dateiformat, validiert es jedoch nicht. Es gibt keine Garantie dafür, dass die Datei erfolgreich geöffnet wird, auch wenn **DetectFileFormat** zurückgibt, dass es sich um eines der unterstützten Formate handelt. Dies liegt daran, dass die **DetectFileFormat** -Methode nur partielle Dateiformatdaten liest, die zum Überprüfen des Dateiformats ausreichen, aber nicht für eine vollständige Validierung ausreichen.

{{% /alert %}}

## Überprüfen Sie die Kompatibilität des Dateiformats

Wir können die Formatkompatibilität aller Dateien im ausgewählten Ordner überprüfen und sie nach Format in entsprechende Unterordner sortieren.

Da es sich um Inhalte in einem Ordner handelt, müssen wir zunächst eine Sammlung aller Dateien in diesem Ordner mit der **GetFiles** -Methode der `Directory` -Klasse (aus dem `System.IO` -Namespace) abrufen.

Das folgende Codebeispiel zeigt, wie Sie eine Liste aller Dateien im Ordner abrufen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Wenn alle Dateien gesammelt sind, wird der Rest der Arbeit mit der **DetectFileFormat** -Methode erledigt, die das Dateiformat überprüft.

Das folgende Codebeispiel zeigt, wie Sie die gesammelte Dateiliste durchlaufen, das Format jeder Datei überprüfen und jede Datei in den entsprechenden Ordner verschieben:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Die Dateien werden mit der `Move` -Methode der `File` -Klasse aus demselben `System.IO` -Namespace in entsprechende Unterordner verschoben.

Die folgenden Dateien werden im obigen Beispiel verwendet. Der Dateiname befindet sich links und die Beschreibung rechts:

| Gruppe von Dateien | Eingabedokument | Art |
| :- | :- | :- |
| Unterstützte Dateiformate | Test File (DOC).doc | Microsoft Word 95/6.0 oder Microsoft Word 97 – 2003 Dokument. |
|  | Test File (DOT).dot | Vorlage Microsoft Word 95/6.0 oder Microsoft Word 97 – 2003. |
|  | Test File (DOCX).docx | Office Öffnet XML Textverarbeitungs-ML-Dokument ohne Makros. |
|  | Test File (DOCM).docm | Office Öffnet XML Textverarbeitungs-ML-Dokument mit Makros. |
|  | Test File (DOTX).dotx | Öffnen Sie die XML -Textverarbeitungs-ML-Vorlage von Office. |
|  | Test File (DOTM).dotm | Office Öffnen Sie XML Textverarbeitungs-ML-Vorlage mit Makros. |
|  | Test File (XML).xml | FlatOPC OOXML Dokument. |
|  | Test File (RTF).rtf | Dokument im Rich-Text-Format. |
|  | Test File (WordML).xml | Microsoft Word 2003 Textverarbeitungs-ML-Dokument. |
|  | Test File (HTML).html | HTML Dokument. |
|  | Test File (MHTML).mhtml | MHTML (Webarchiv) Dokument. |
|  | Test File (ODT).odt | OpenDocument Text (OpenOffice Verfasser). |
|  | Test File (OTT).ott | OpenDocument Dokumentvorlage. |
|  | Testdatei (DocPreWord60).Dok | Microsoft Word 2.0 Dokument. |
| Verschlüsselte Dokumente | Test File (Enc).doc | Verschlüsseltes Microsoft Word 95 /6.0 oder Microsoft Word 97 – 2003 Dokument. |
|  | Test File (Enc).docx | Verschlüsseltes Office Öffnet XML Textverarbeitungs-ML-Dokument. |
| Nicht unterstützte Dateiformate | Test File (JPG).jpg | JPEG Bilddatei. |

