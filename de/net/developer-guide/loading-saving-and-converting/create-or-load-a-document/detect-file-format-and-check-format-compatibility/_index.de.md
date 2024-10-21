---
title: Dateiformat beim Laden erkennen
second_title: Aspose.Words für .NET
articleTitle: Erkennen Sie das Dateiformat und prüfen Sie die Formatkompatibilität
linktitle: Erkennen Sie das Dateiformat und prüfen Sie die Formatkompatibilität
description: "Bestimmen Sie das Dateiformat in C#, wenn Sie nicht sicher sind, was der tatsächliche Inhalt der Datei ist, oder um die Formatkompatibilität zu überprüfen."
type: docs
weight: 20
url: /de/net/detect-file-format-and-check-format-compatibility/
---

Manchmal ist es notwendig, das Format eines Dokuments vor dem Öffnen zu bestimmen, da die Dateierweiterung nicht garantiert, dass der Inhalt der Datei angemessen ist. Es ist beispielsweise bekannt, dass Crystal Reports Dokumente häufig im RTF-Format ausgibt, diese jedoch mit der Erweiterung .doc versehen.

Aspose.Words bietet die Möglichkeit, Informationen über den Dateityp abzurufen, um eine Ausnahme zu vermeiden, wenn Sie nicht sicher sind, was der tatsächliche Inhalt der Datei ist.

## Dateiformat ohne Ausnahme erkennen

Wenn Sie mit mehreren Dokumenten in verschiedenen Dateiformaten arbeiten, müssen Sie möglicherweise die Dateien, die von Aspose.Words verarbeitet werden können, von den Dateien trennen, die nicht verarbeitet werden können. Möglicherweise möchten Sie auch wissen, warum einige Dokumente nicht bearbeitet werden können.

Wenn Sie versuchen, eine Datei in ein [Document](https://reference.aspose.com/words/de/net/aspose.words/document/)-Objekt zu laden und Aspose.Words das Dateiformat nicht erkennen kann oder das Format nicht unterstützt wird, löst Aspose.Words eine Ausnahme aus. Sie können diese Ausnahmen abfangen und analysieren, aber Aspose.Words bietet auch die [DetectFileFormat](https://reference.aspose.com/words/de/net/aspose.words/fileformatutil/detectfileformat/)-Methode, mit der wir das Dateiformat schnell bestimmen können, ohne ein Dokument mit möglichen Ausnahmen laden zu müssen. Diese Methode gibt ein [FileFormatInfo](https://reference.aspose.com/words/de/net/aspose.words/fileformatinfo/)-Objekt zurück, das die erkannten Informationen zum Dateityp enthält.

{{% alert color="primary" %}}

DetectFileFormat überprüft nur das Dateiformat, validiert es jedoch nicht. Es gibt keine Garantie dafür, dass die Datei erfolgreich geöffnet wird, selbst wenn **DetectFileFormat** zurückgibt, dass es sich um eines der unterstützten Formate handelt. Dies liegt daran, dass die **DetectFileFormat**-Methode nur Teildaten des Dateiformats liest, die für die Überprüfung des Dateiformats ausreichen, aber nicht für eine vollständige Validierung.

{{% /alert %}}

## Überprüfen Sie die Dateiformatkompatibilität

Wir können die Formatkompatibilität aller Dateien im ausgewählten Ordner überprüfen und sie nach Format in entsprechende Unterordner sortieren.

Da es sich um den Inhalt eines Ordners handelt, müssen wir zunächst eine Sammlung aller Dateien in diesem Ordner mithilfe der **GetFiles**-Methode der `Directory`-Klasse (aus dem `System.IO`-Namespace) abrufen.

Das folgende Codebeispiel zeigt, wie Sie eine Liste aller Dateien im Ordner erhalten:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "get-files-in-folder.cs" >}}

Wenn alle Dateien gesammelt sind, wird der Rest der Arbeit von der **DetectFileFormat**-Methode erledigt, die das Dateiformat überprüft.

Das folgende Codebeispiel zeigt, wie Sie die gesammelte Dateiliste durchlaufen, das Format jeder Datei überprüfen und jede Datei in den entsprechenden Ordner verschieben:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "check-format-compatibility.cs" >}}

Die Dateien werden mithilfe der `Move`-Methode der `File`-Klasse aus demselben `System.IO`-Namespace in entsprechende Unterordner verschoben.

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

