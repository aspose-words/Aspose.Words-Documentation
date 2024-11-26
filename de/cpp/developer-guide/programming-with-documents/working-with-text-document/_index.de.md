---
title: Arbeiten mit Textdokumenten in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit Textdokumenten
linktitle: Arbeiten mit Textdokumenten
description: "Erweiterte TXT Dokumentenverarbeitung, Listen, BiDi, Kopf- / Fußzeilen, mit C++."
type: docs
weight: 430
url: /de/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

In diesem Artikel erfahren wir, welche Optionen für die Arbeit mit einem Textdokument über Aspose.Words nützlich sein können. Bitte beachten Sie, dass dies keine vollständige Liste der verfügbaren Optionen ist, sondern nur ein Beispiel für die Arbeit mit einigen von ihnen.

## Bidirektionale Markierungen hinzufügen

Sie können die Eigenschaft [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) verwenden, um anzugeben, ob beim Export im Nur-Text-Format vor jedem BiDi-Lauf bidirektionale Markierungen hinzugefügt werden sollen. Aspose.Words fügt Unicode-Zeichen ein 'RIGHT-TO-LEFT MARK' ( U+200F) vor jedem bidirektionalen Lauf im Text. Diese Option entspricht der Option "Bidirektionale Markierungen hinzufügen" im Dialogfeld MS Word-Dateikonvertierung, wenn Sie in ein Nur-Text-Format exportieren. Beachten Sie, dass es im Dialog nur angezeigt wird, wenn eine der arabischen oder hebräischen Bearbeitungssprachen in MS Word hinzugefügt wurde.

Das folgende Codebeispiel zeigt, wie die Eigenschaft **AddBidiMarks** verwendet wird. Der Standardwert dieser Eigenschaft ist *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Listenelemente beim Laden erkennen TXT

Aspose.Words kann Listenelemente einer Textdatei als Listennummern oder Nur-Text in sein Dokumentobjektmodell importieren. Mit der Eigenschaft [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) können Sie angeben, wie nummerierte Listenelemente erkannt werden, wenn ein Dokument aus dem Nur-Text-Format importiert wird:

* Wenn diese Option auf *true* gesetzt ist, werden Leerzeichen auch als Trennzeichen für Listennummern verwendet: Listenerkennungsalgorithmus für die arabische Nummerierung (1., 1.1.2.) verwendet sowohl Leerzeichen als auch Punktsymbole (".").
* Wenn diese Option auf *false* gesetzt ist, erkennt der Listenerkennungsalgorithmus Listenabsätze, wenn Listennummern entweder mit einem Punkt, einer rechten Klammer oder einem Aufzählungszeichen enden (z. B "•", "*", "-" oder "o").

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Umgang mit führenden und nachfolgenden Leerzeichen beim Laden von TXT

Sie können die Art und Weise steuern, wie führende und nachgestellte Leerzeichen beim Laden der TXT -Datei behandelt werden. Die führenden Leerzeichen könnten beschnitten, beibehalten oder in einen Einzug umgewandelt werden, und nachfolgende Leerzeichen könnten beschnitten oder beibehalten werden.

Das folgende Codebeispiel zeigt, wie führende und nachgestellte Leerzeichen beim Importieren der TXT -Datei gekürzt werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Kopf- und Fußzeile in Ausgabe TXT exportieren

Wenn Sie Kopf- und Fußzeilen in das Ausgabedokument TXT exportieren möchten, können Sie die Eigenschaft [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/) verwenden. Diese Eigenschaft gibt an, wie Kopf- und Fußzeilen in das Nur-Text-Format exportiert werden.

Das folgende Codebeispiel zeigt, wie Kopf- und Fußzeilen in das Nur-Text-Format exportiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Listeneinzug in Ausgabe exportieren TXT

Mit Aspose.Words wurde die Klasse [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) eingeführt, mit der angegeben werden kann, wie Listenebenen beim Exportieren in ein Nur-Text-Format eingerückt werden. Während der Arbeit mit [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/) wird die Eigenschaft [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) bereitgestellt, um das Zeichen anzugeben, das zum Einrücken von Listenebenen verwendet werden soll, und count anzugeben, wie viele Zeichen als Einrückung pro Listenebene verwendet werden sollen.

Der Standardwert für die Zeicheneigenschaft ist '\0', was angibt, dass keine Einrückung vorhanden ist. Für die Eigenschaft count ist der Standardwert 0, was bedeutet, dass kein Einzug erfolgt.

### Tabulatorzeichen verwenden

Das folgende Codebeispiel zeigt, wie Listenebenen mit Tabulatorzeichen exportiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Leerzeichen verwenden

Das folgende Codebeispiel zeigt, wie Listenebenen mit Leerzeichen exportiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Standardeinrückung verwenden

Das folgende Codebeispiel zeigt, wie Listenebenen mit Standardeinrückung exportiert werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
