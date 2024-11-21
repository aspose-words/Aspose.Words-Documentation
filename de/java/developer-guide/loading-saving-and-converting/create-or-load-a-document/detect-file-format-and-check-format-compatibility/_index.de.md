---
title: Dateiformat erkennen
second_title: Aspose.Words für Java
articleTitle: Erkennen Sie Dateiformat und überprüfen Sie Format Kompatibilität
linktitle: Erkennen Sie Dateiformat und überprüfen Sie Format Kompatibilität
description: "Erhalten Sie Informationen über das Dokumentformat, bevor Sie es öffnen, um eine Ausnahme zu vermeiden, wenn Sie nicht sicher sind, was der eigentliche Inhalt der Datei verwendet Java."
type: docs
weight: 20
url: /de/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Manchmal ist es notwendig, das Format eines Dokuments vor dem Öffnen zu bestimmen, weil die Dateierweiterung nicht garantiert, dass der Inhalt der Datei angemessen ist. Beispielsweise ist bekannt, dass Crystal Reports oft Dokumente im RTF-Format ausgibt, aber ihnen die .doc-Erweiterung gibt.

Aspose.Words bietet die Möglichkeit, Informationen über den Dateityp zu erhalten, um eine Ausnahme zu vermeiden, wenn Sie nicht sicher sind, was der eigentliche Inhalt der Datei ist.

## Dateiformat ohne Ausnahme erkennen

Wenn Sie mit mehreren Dokumenten in verschiedenen Dateiformaten zu tun haben, müssen Sie diese Dateien, die von Aspose.Words von denen, die es nicht können. Sie können auch wissen, warum einige der Dokumente nicht bearbeitet werden können.

Wenn Sie versuchen, eine Datei in eine [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Objekt und Aspose.Words das Dateiformat nicht erkennen kann oder das Format nicht unterstützt wird, Aspose.Words wird eine Ausnahme werfen. Sie können diese Ausnahmen fangen und sie analysieren, aber Aspose.Words stellt auch die [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) eine Methode, die es uns ermöglicht, das Dateiformat schnell zu bestimmen, ohne ein Dokument mit möglichen Ausnahmen zu laden. Diese Methode gibt eine [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) ein Objekt, das die erfassten Informationen über den Dateityp enthält.

{{% alert color="primary" %}}

Detektieren Format prüft nur das Dateiformat, validiert aber das Dateiformat nicht. Es gibt keine Garantie, dass die Datei erfolgreich geöffnet wird, auch wenn **DetectFileFormat** gibt zurück, dass es eines der unterstützten Formate ist. Das ist wegen **DetectFileFormat** Die Methode liest nur Teildateiformatdaten, die zur Überprüfung des Dateiformats ausreichend sind, aber nicht genug für die vollständige Validierung.

{{% /alert %}}

## Überprüfen Sie Dateien Format Kompatibilität

Wir können die Formatkompatibilität aller Dateien im ausgewählten Ordner überprüfen und nach Format in entsprechende Unterordner sortieren.

Da wir mit Inhalten in einem Ordner zu tun haben, müssen wir zuerst eine Sammlung aller Dateien in diesem Ordner mit dem **GetFiles** Verfahren der `Directory` Klasse (aus der `System.IO` Namespace).

Das folgende Codebeispiel zeigt, wie man eine Liste aller Dateien im Ordner erhält:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Wenn alle Dateien gesammelt werden, wird der Rest der Arbeit durch die **DetectFileFormat** Methode, die das Dateiformat überprüft.

Das folgende Codebeispiel zeigt, wie man über die gesammelte Liste von Dateien iteriert, das Format jeder Datei überprüft und jede Datei in den entsprechenden Ordner bewegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Die Dateien werden mit Hilfe der `Move` Verfahren der `File` Klasse, von der gleichen `System.IO` Namespace.

Im obigen Beispiel werden die folgenden Dateien verwendet. Der Dateiname ist links und seine Beschreibung rechts:

| Group von Dateien | Eingangsdokument | Typ |
|  :-  |  :-  |  :-  |
| Unterstützte Dateiformate | Testdatei (Doc).doc | Microsoft Word 95/6.0 oder Microsoft Word 97 – 2003 Dokument. |
|  | Testdatei (Dot).dot | Microsoft Word 95/6.0 oder Microsoft Word 97 – 2003 Vorlage. |
|  | Testdatei (Docx).docx | Office Open XML Wordprocessing ML-Dokument ohne Makros. |
|  | Testdatei (Docm).docm | Office Open XML Wordprocessing ML-Dokument mit Makros. |
|  | Testdatei (Dotx).dotx | Office Open XML Wordprocessing ML Vorlage. |
|  | Testdatei (Dotm).dotm | Office Open XML Wordprocessing ML Vorlage mit Makros. |
|  | Testdatei (XML).xml | FlatOPC OOXML Dokument. |
|  | Testdatei (RTF).rtf | Rich Text Format Dokument. |
|  | Testdatei (WordML).xml | Microsoft Word 2003 Textverarbeitung ML-Dokument. |
|  | Testdatei (HTML).html | HTML-Dokument. |
|  | Testdatei (MHTML).mhtml | MHTML (Webarchiv) Dokument. |
|  | Testdatei (Odt).odt | OpenDocument Text (OpenOffice Writer). |
|  | Testdatei (Ott).ott | Dokumentvorlage öffnen. |
|  | Testdatei (DocPreWord60).doc | Microsoft Word 2.0 Dokument. |
| Verschlüsselte Dokumente | Testdatei (Enc).doc | Verschlüsselt Microsoft Word 95/6.0 oder Microsoft Word 97 – 2003 Dokument. |
|  | Testdatei (Enc).docx | Verschlüsseltes Office Open XML Wordprocessing ML-Dokument. |
| Nicht unterstützte Dateiformate | Testdatei (JPG). Jpg | JPEG-Bilddatei. |

