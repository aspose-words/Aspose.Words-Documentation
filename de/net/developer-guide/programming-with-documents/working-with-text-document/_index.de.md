---
title: Arbeiten mit Textdokumenten in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit Textdokumenten
linktitle: Arbeiten mit Textdokumenten
description: "Erweiterte TXT-Dokumentenverarbeitung, Listen, BiDi, Kopf-/Fußzeilen, mit C#."
type: docs
weight: 430
url: /de/net/working-with-text-document/
---

In diesem Artikel erfahren wir, welche Optionen für die Arbeit mit einem Textdokument über Aspose.Words nützlich sein können. Bitte beachten Sie, dass dies keine vollständige Liste der verfügbaren Optionen ist, sondern nur ein Beispiel für die Arbeit mit einigen davon.

## Fügen Sie bidirektionale Markierungen hinzu

Mit der [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/)-Eigenschaft können Sie festlegen, ob beim Exportieren im Nur-Text-Format vor jedem BiDi-Lauf bidirektionale Markierungen hinzugefügt werden sollen. Aspose.Words fügt vor jedem bidirektionalen Lauf im Text das Unicode-Zeichen "RIGHT-TO-LEFT MARK" (U+200F) ein. Diese Option entspricht der Option "Bidirektionale Markierungen hinzufügen" im Dialogfeld "MS Word-Dateikonvertierung", wenn Sie in ein Nur-Text-Format exportieren. Beachten Sie, dass es im Dialog nur angezeigt wird, wenn in MS Word eine der Bearbeitungssprachen Arabisch oder Hebräisch hinzugefügt wird.

Das folgende Codebeispiel zeigt, wie die **AddBidiMarks**-Eigenschaft verwendet wird. Der Standardwert dieser Eigenschaft ist *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Listenelemente beim Laden von TXT erkennen

Aspose.Words kann Listenelemente einer Textdatei als Listennummern oder einfachen Text in sein Dokumentobjektmodell importieren. Mit der [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/)-Eigenschaft können Sie angeben, wie nummerierte Listenelemente erkannt werden, wenn ein Dokument aus dem Nur-Text-Format importiert wird:

* Wenn diese Option auf *true* eingestellt ist, werden Leerzeichen auch als Trennzeichen für Listennummern verwendet: Der Listenerkennungsalgorithmus für die Nummerierung im arabischen Stil (1., 1.1.2.) verwendet sowohl Leerzeichen als auch Punktsymbole (".").

* Wenn diese Option auf *false* eingestellt ist, erkennt der Listenerkennungsalgorithmus Listenabsätze, wenn Listennummern mit einem Punkt, einer rechten Klammer oder einem Aufzählungszeichen enden (z. B. "•", "*", "-" oder "o").

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Behandeln Sie führende und nachfolgende Leerzeichen beim Laden von TXT

Sie können die Art und Weise steuern, wie führende und nachfolgende Leerzeichen beim Laden der TXT-Datei behandelt werden. Die führenden Leerzeichen könnten gekürzt, beibehalten oder in Einzüge umgewandelt werden, und nachfolgende Leerzeichen könnten gekürzt oder beibehalten werden.

Das folgende Codebeispiel zeigt, wie führende und nachfolgende Leerzeichen beim Importieren einer TXT-Datei entfernt werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Erkennen Sie die Textrichtung des Dokuments

Aspose.Words stellt die [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/)-Eigenschaft in der [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/)-Klasse bereit, um die Textrichtung (RTL/LTR) im Dokument zu erkennen. Diese Eigenschaft legt die in der [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/)-Enumeration bereitgestellten Dokumenttextrichtungen fest oder ruft diese ab. Der Standardwert bleibt *right*.

Das folgende Codebeispiel zeigt, wie die Textrichtung des Dokuments beim Importieren einer TXT-Datei erkannt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Kopf- und Fußzeile in Ausgabe-TXT exportieren

Wenn Sie Kopf- und Fußzeilen in ein TXT-Ausgabedokument exportieren möchten, können Sie die [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/)-Eigenschaft verwenden. Diese Eigenschaft gibt an, wie Kopf- und Fußzeilen in das Nur-Text-Format exportiert werden.

Das folgende Codebeispiel zeigt, wie Kopf- und Fußzeilen in das Nur-Text-Format exportiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Einrückung der Exportliste in Ausgabe-TXT

Aspose.Words hat die [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/)-Klasse eingeführt, mit der festgelegt werden kann, wie Listenebenen beim Exportieren in ein Nur-Text-Format eingerückt werden. Bei der Arbeit mit [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/) wird die [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/)-Eigenschaft bereitgestellt, um das Zeichen anzugeben, das zum Einrücken von Listenebenen verwendet werden soll, und um anzugeben, wie viele Zeichen pro Listenebene als Einrückung verwendet werden sollen.

Der Standardwert für die Zeicheneigenschaft ist "\0", was bedeutet, dass keine Einrückung erfolgt. Für die count-Eigenschaft ist der Standardwert 0, was bedeutet, dass keine Einrückung erfolgt.

### Tabulatorzeichen verwenden

Das folgende Codebeispiel zeigt, wie Listenebenen mithilfe von Tabulatorzeichen exportiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Verwendung von Leerzeichen

Das folgende Codebeispiel zeigt, wie Listenebenen mithilfe von Leerzeichen exportiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Verwenden der Standardeinrückung

Das folgende Codebeispiel zeigt, wie Listenebenen mithilfe der Standardeinrückung exportiert werden:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
