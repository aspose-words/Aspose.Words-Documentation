---
title: Navigation mit Cursor in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Navigation mit Cursor
linktitle: Navigation mit Cursor
description: "Navigieren Sie mit Python zwischen verschiedenen Knoten innerhalb eines Dokuments, z. B. einem Absatz, einem Lesezeichen oder einem bestimmten Zeichen."
type: docs
weight: 10
url: /de/python-net/navigation-with-cursor/
---

Während Sie mit einem Dokument arbeiten, auch wenn es kurz oder lang ist, müssen Sie durch Ihr Dokument navigieren. Die Navigation mit einem virtuellen Cursor stellt die Möglichkeit dar, zwischen verschiedenen Knoten in einem Dokument zu navigieren.

Innerhalb eines kurzen Dokuments ist das Bewegen innerhalb eines Dokuments einfach, da Sie die Einfügemarke sogar verschieben können, indem Sie die Pfeiltasten der Tastatur verwenden oder mit der Maus klicken, um die Einfügemarke an die gewünschte Stelle zu setzen. Sobald Sie jedoch ein großes Dokument mit vielen Seiten haben, werden diese grundlegenden Techniken nicht mehr ausreichen.

In diesem Artikel wird erklärt, wie Sie sich in einem Dokument bewegen und mit einem virtuellen Cursor zu verschiedenen Teilen davon navigieren.

## Erkennen der aktuellen Cursorposition

Bevor Sie mit der Navigation durch Ihr Dokument beginnen, müssen Sie den aktuell ausgewählten Knoten abrufen. Mithilfe der [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/)-Eigenschaft können Sie die genaue Position des Cursors an einem ausgewählten Knoten ermitteln. Anstatt den aktuellen Knoten abzurufen, können Sie außerdem den aktuell ausgewählten Absatz oder den aktuell ausgewählten Abschnitt mithilfe der [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/)- und [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/)-Eigenschaften abrufen.

Alle Einfügevorgänge, die Sie mit [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ausführen, werden vor [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) eingefügt. Wenn der aktuelle Absatz leer ist oder der Cursor kurz vor dem Ende des Absatzes positioniert ist, gibt der [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) None zurück.

## Navigieren durch Methoden in einem Dokument

Wenn Sie Text bearbeiten, ist es wichtig zu wissen, wie Sie in Ihrem Dokument navigieren und wohin Sie sich darin bewegen müssen. Aspose.Words ermöglicht es Ihnen, sich in einem Dokument zu bewegen und zu seinen verschiedenen Abschnitten und Teilen zu navigieren – dies ähnelt der Funktionalität des Navigationsbereichs in Microsoft Word, um zu einer Seite oder Überschrift in einem Word-Dokument zu gelangen, ohne zu scrollen.

Die Hauptmethode besteht darin, die Cursorposition auf einen bestimmten Knoten in Ihrem Dokument zu verschieben. Dies können Sie mithilfe der [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/)-Methode erreichen.

Das folgende Codebeispiel zeigt, wie das [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) auf verschiedene Knoten in einem Dokument verschoben wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Aber neben der grundlegenden [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/)-Methode gibt es noch spezifischere.

### Navigieren Sie zum Anfang oder Ende eines Dokuments

Sie können mit den Methoden [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) und [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) zum Anfang oder Ende Ihres Dokuments springen.

Das folgende Codebeispiel zeigt, wie Sie die Cursorposition an den Anfang oder das Ende eines Dokuments verschieben:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navigieren Sie mit Lesezeichen

Sie können einen Ort, den Sie finden möchten, markieren und problemlos wieder dorthin wechseln. Sie können beliebig viele Lesezeichen in Ihr Dokument einfügen und dann durch diese navigieren, indem Sie den Lesezeichen eindeutige Namen geben. Sie können mit der [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/)-Methode zu einem Lesezeichen wechseln.

Die folgenden Codebeispiele zeigen, wie Sie eine Cursorposition zu einem Lesezeichen verschieben:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Navigieren Sie zu Tabellenzellen

Mit der [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/)-Methode können Sie zu einer Tabellenzelle wechseln. Mit dieser Methode können Sie Ihren Cursor in eine beliebige Zelle einer bestimmten Tabelle navigieren. Darüber hinaus können Sie einen Index angeben, um den Cursor an eine beliebige Position oder ein bestimmtes Zeichen in einer Zelle innerhalb der [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/)-Methode zu bewegen.

Das folgende Codebeispiel zeigt, wie eine Cursorposition in eine angegebene Tabellenzelle verschoben wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Navigieren Sie zu einem Feld

Mithilfe der [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/)-Methode können Sie zu einem bestimmten Feld in Ihrem Dokument wechseln. Darüber hinaus können Sie mithilfe der [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/)-Methode zu einem bestimmten Zusammenführungsfeld wechseln.

Das folgende Codebeispiel zeigt, wie der Document Builder-Cursor auf ein bestimmtes Feld verschoben wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Navigieren Sie zu einer Kopf- oder Fußzeile

Mit der [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)-Methode können Sie zum Anfang einer Kopf- oder Fußzeile wechseln

Das folgende Codebeispiel zeigt, wie der Document Builder-Cursor in die Kopf- oder Fußzeile eines Dokuments verschoben wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navigieren Sie zu einem Abschnitt oder Absatz

Mit den Methoden [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) oder [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) können Sie zu einem bestimmten Abschnitt oder Absatz wechseln. Darüber hinaus können Sie einen Index angeben, um den Cursor an eine beliebige Position oder ein bestimmtes Zeichen in einem Absatz innerhalb der [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/)-Methode zu bewegen.

Das folgende Codebeispiel zeigt, wie Sie zu einem bestimmten Abschnitt und einem bestimmten Absatz in einem Dokument wechseln:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}