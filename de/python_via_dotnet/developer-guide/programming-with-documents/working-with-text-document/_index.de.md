---
title: Arbeiten mit Textdokumenten
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit Textdokumenten
linktitle: Arbeiten mit Textdokumenten
description: "Arbeiten Sie mit einem Textdokument und ändern Sie seine Objekte mit Python."
type: docs
weight: 430
url: /de/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

In diesem Artikel erfahren wir, welche Optionen für die Arbeit mit einem Textdokument über Aspose.Words nützlich sein können. Bitte beachten Sie, dass dies keine vollständige Liste der verfügbaren Optionen ist, sondern nur ein Beispiel für die Arbeit mit einigen davon.

## Fügen Sie bidirektionale Markierungen hinzu

Sie können die [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/)-Eigenschaft verwenden, um anzugeben, ob beim Exportieren im Nur-Text-Format vor jedem BiDi-Lauf bidirektionale Markierungen hinzugefügt werden sollen. Aspose.Words fügt vor jedem bidirektionalen [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) im Text das Unicode-Zeichen "RIGHT-TO-LEFT MARK" (U+200F) ein. Diese Option entspricht der Option "Bidirektionale Markierungen hinzufügen" im Dialogfeld "MS Word-Dateikonvertierung", wenn Sie in ein Nur-Text-Format exportieren. Beachten Sie, dass es im Dialog nur angezeigt wird, wenn in MS Word eine der Bearbeitungssprachen Arabisch oder Hebräisch hinzugefügt wird.

Das folgende Codebeispiel zeigt, wie die [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/)-Eigenschaft verwendet wird. Der Standardwert dieser Eigenschaft ist `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Listenelemente beim Laden von TXT erkennen

Aspose.Words kann Listenelemente einer Textdatei als Listennummern oder einfachen Text in sein Dokumentobjektmodell importieren. Mit der [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/)-Eigenschaft können Sie angeben, wie nummerierte Listenelemente erkannt werden, wenn ein Dokument aus dem Nur-Text-Format importiert wird:

* Wenn diese Option auf `True` eingestellt ist, werden Leerzeichen auch als Trennzeichen für Listennummern verwendet: Der Listenerkennungsalgorithmus für die Nummerierung im arabischen Stil (1., 1.1.2.) verwendet sowohl Leerzeichen als auch Punktsymbole (".").
* Wenn diese Option auf `False` eingestellt ist, erkennt der Listenerkennungsalgorithmus Listenabsätze, wenn Listennummern mit einem Punkt, einer rechten Klammer oder einem Aufzählungszeichen enden (z. B. "•", "*", "-" oder "o").

Das folgende Codebeispiel zeigt, wie diese Eigenschaft verwendet wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Behandeln Sie führende und nachfolgende Leerzeichen beim Laden von TXT

Sie können die Art und Weise steuern, wie führende und nachfolgende Leerzeichen beim Laden der TXT-Datei behandelt werden. Die führenden Leerzeichen könnten gekürzt, beibehalten oder in Einzüge umgewandelt werden, und nachfolgende Leerzeichen könnten gekürzt oder beibehalten werden.

Das folgende Codebeispiel zeigt, wie führende und nachfolgende Leerzeichen beim Importieren einer TXT-Datei entfernt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Erkennen Sie die Textrichtung des Dokuments

Aspose.Words stellt die [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/)-Eigenschaft in der [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/)-Klasse bereit, um die Textrichtung (RTL/LTR) im Dokument zu erkennen. Diese Eigenschaft legt die in der [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/)-Aufzählung bereitgestellten Dokumenttextrichtungen fest oder ruft diese ab. Der Standardwert ist von links nach rechts.

Das folgende Codebeispiel zeigt, wie die Textrichtung des Dokuments beim Importieren einer TXT-Datei erkannt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Kopf- und Fußzeile in Ausgabe-TXT exportieren

Wenn Sie Kopf- und Fußzeilen in ein TXT-Ausgabedokument exportieren möchten, können Sie die [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/)-Eigenschaft verwenden. Diese Eigenschaft gibt an, wie Kopf- und Fußzeilen in das Nur-Text-Format exportiert werden.

Das folgende Codebeispiel zeigt, wie Kopf- und Fußzeilen in das Nur-Text-Format exportiert werden:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Einrückung der Exportliste in Ausgabe-TXT

Aspose.Words hat die [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/)-Klasse eingeführt, mit der festgelegt werden kann, wie Listenebenen beim Exportieren in ein Nur-Text-Format eingerückt werden. Bei der Arbeit mit [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/) wird die [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/)-Eigenschaft bereitgestellt, um das Zeichen anzugeben, das zum Einrücken von Listenebenen verwendet werden soll, und um anzugeben, wie viele Zeichen pro Listenebene als Einrückung verwendet werden sollen. Der Standardwert für die Zeicheneigenschaft ist "\0", was bedeutet, dass keine Einrückung erfolgt. Für die count-Eigenschaft ist der Standardwert 0, was bedeutet, dass keine Einrückung erfolgt.

### Tabulatorzeichen verwenden

Das folgende Codebeispiel zeigt, wie Listenebenen mithilfe von Tabulatorzeichen exportiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Verwendung von Leerzeichen

Das folgende Codebeispiel zeigt, wie Listenebenen mithilfe von Leerzeichen exportiert werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

