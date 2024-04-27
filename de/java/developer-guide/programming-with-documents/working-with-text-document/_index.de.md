---
title: Arbeiten mit Textdokument in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Textdokument
linktitle: Arbeiten mit Textdokument
description: "Erweiterte TXT Dokumentenverarbeitung, Listen, BiDi, Kopfzeilen / Fußzeile, mit Java."
type: docs
weight: 430
url: /de/java/working-with-text-document/
---

In diesem Artikel erfahren wir, welche Optionen für die Arbeit mit einem Textdokument nützlich sein können Aspose.Words. Bitte beachten Sie, dass dies keine vollständige Liste der verfügbaren Optionen ist, sondern nur ein Beispiel für die Arbeit mit einigen von ihnen.

## Bidirektional hinzufügen Zeichen

Sie können die [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) Eigenschaft, um anzugeben, ob bi-direktionale Markierungen vor jedem BiDi-Laufwerk beim Export im Klartextformat hinzuzufügen. Aspose.Words fügt Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) vor jedem bidirektionalen Textlauf ein. Diese Option entspricht der Option "Bi-direktionale Markierungen hinzufügen" im MS Word File Conversion Dialog, wenn Sie in ein Plain Text Format exportieren. Beachten Sie, dass es nur im Dialog erscheint, wenn eine der arabischen oder hebräischen Bearbeitungssprachen in MS Word hinzugefügt werden.

Das folgende Codebeispiel zeigt, wie man `TxtSaveOptions.AddBidiMarks` Eigentum. Der Standardwert dieser Eigenschaft ist *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Erkennen Sie Listenelemente während des Ladens TXT

Aspose.Words kann den Eintrag einer Textdatei als Listennummern oder Klartext in ihrem Dokumentobjektmodell importieren. Die [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) Eigenschaft kann festlegen, wie nummerierte Listenpositionen erkannt werden, wenn ein Dokument aus einem einfachen Textformat importiert wird:

* Wenn diese Option eingestellt wird *true*, Whitespaces werden auch als Listennummernbegrenzer verwendet: Listenerkennungsalgorithmus für arabische Stilnummerierung (1., 1.1.2.) verwendet sowohl Whitespaces als auch Dot (".") Symbole.
* Wenn diese Option eingestellt wird *false*, der Listenerkennungsalgorithmus erkennt Listenabsätze, wenn Listennummern mit Punkt-, rechten Klammer- oder Kugelsymbolen endet (wie "•", "*", "-" oder "o").

Das folgende Codebeispiel zeigt, wie diese Eigenschaft genutzt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Handle Leading und Trailing Spaces beim Laden von TXT

Sie können während des Ladens von TXT-Dateien den Umgang mit führenden und hinteren Leerzeichen steuern. Die führenden Räume konnten beschnitten, erhalten oder in Einbuchtungen umgewandelt werden und Trailing-Räume könnten beschnitten oder erhalten werden.

Das unten angegebene Codebeispiel zeigt, wie man führende und hintere Leerzeichen beim Import der TXT-Datei trimmt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Dokument ermitteln Text Richtung

Aspose.Words bietet [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) Immobilien in [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) Klasse, um die Textrichtung (RTL / LTR) im Dokument zu erkennen. Diese Eigenschaft setzt oder erhält Textbefehle, die in [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) Aufzählung. Der Standardwert bleibt nach rechts.

Das folgende Codebeispiel zeigt, wie die Textrichtung des Dokuments beim Import der TXT-Datei erfasst werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Exportieren Sie Header und Footer in Ausgabe TXT Datei

Wenn Sie den Header und Footer im Ausgabe-TXT-Dokument exportieren möchten, können Sie das [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) Eigentum. Diese Eigenschaft gibt an, wie Kopfzeilen und Fußzeilen in das Klartextformat exportiert werden.

Das folgende Codebeispiel zeigt, wie man Kopfzeilen und Fußzeilen in ein einfaches Textformat exportiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Export List Indentation im Output TXT

Aspose.Words eingeführt [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) Klasse, die die Angabe erlaubt, wie die Listenebenen beim Export in ein einfaches Textformat eingezeichnet werden. Während der Arbeit mit [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), die [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) Es wird eine Eigenschaft bereitgestellt, um das für die Erfassung der Listenebenen zu verwendende Zeichen und die Zählung anzugeben, wie viele Zeichen als Eindrückung pro einer Listenebene verwendet werden sollen.

Der Standardwert für die Zeicheneigenschaft ist '\0', was darauf hindeutet, dass keine Einbuchtung vorliegt. Für die Zähleigenschaft beträgt der Standardwert 0, was keine Einbuchtung bedeutet.

### Mit Tab-Zeichen

Das folgende Codebeispiel zeigt, wie man Listenebenen mit Tab-Zeichen exportiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Verwendung von Leerzeichen

Das folgende Codebeispiel zeigt, wie man Listenebenen mit Leerzeichen exportiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Verwendung von Standard-Einfall

Das folgende Codebeispiel zeigt, wie man Listenebenen mit Standard-Einbuchtung exportiert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
