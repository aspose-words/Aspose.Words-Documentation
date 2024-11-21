---
title: Navigation mit Cursor in Java
second_title: Aspose.Words für Java
articleTitle: Navigation mit Cursor
linktitle: Navigation mit Cursor
description: "Navigieren Sie zwischen verschiedenen Knoten innerhalb eines Dokuments, wie z.B. einem Absatz, einem Lesezeichen oder einem bestimmten Zeichen unter Verwendung Java."
type: docs
weight: 5
url: /de/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Während der Arbeit mit einem Dokument, auch wenn es ein kurzer oder langer ist, müssen Sie durch Ihr Dokument navigieren. Navigation mit einem virtuellen Cursor stellt die Möglichkeit dar, zwischen verschiedenen Knoten in einem Dokument zu navigieren.

Innerhalb eines kurzen Dokuments ist das Umfahren in einem Dokument einfach, da Sie den Eingabepunkt auch mit den Pfeiltasten der Tastatur bewegen können oder indem Sie auf die Maus klicken, um den Eingabepunkt zu finden, wo immer Sie wollen. Aber wenn Sie ein großes Dokument haben, das viele Seiten hat, werden diese grundlegenden Techniken nicht ausreichen.

Dieser Artikel erklärt, wie man sich in einem Dokument herumbewegt und mit einem virtuellen Cursor zu verschiedenen Teilen davon navigiert.

## Erfassung der aktuellen Cursorposition

Bevor Sie den Prozess des Navigierens durch Ihr Dokument starten, müssen Sie den aktuell ausgewählten Knoten erhalten. Sie können die genaue Position des Cursors an einem ausgewählten Knoten erhalten, indem Sie die [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) Eigentum. Zusätzlich, anstatt den aktuellen Knoten zu bekommen, können Sie den aktuell ausgewählten Absatz oder den aktuell ausgewählten Abschnitt erhalten, indem Sie die [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) und [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) Eigenschaften.

Alle Einlegevorgänge, die Sie mit Hilfe der [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) wird vor dem [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Wenn der aktuelle Absatz leer ist oder der Cursor kurz vor dem Ende des Absatzes positioniert ist, **CurrentNode** gibt null zurück.

## Navigationsmethoden in einem Dokument

Wenn Sie Text bearbeiten, ist es wichtig zu wissen, wie Sie Ihr Dokument navigieren und wo genau in es zu bewegen. Aspose.Words ermöglicht es Ihnen, sich in einem Dokument zu bewegen und zu seinen verschiedenen Abschnitten und Teilen zu navigieren – das ist ähnlich wie die Funktionalität des Navigationsbereichs in Microsoft Word auf eine Seite zu gehen oder in einem Word-Dokument ohne Scrollen zu gehen.

Die Hauptmethode ist, die Cursorposition in einem bestimmten Knoten in Ihrem Dokument bewegen zu können, können Sie dies durch die Verwendung der [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) Methode.

Das folgende Codebeispiel zeigt, wie man die **DocumentBuilder** zu verschiedenen Knoten in einem Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Aber neben dem Grund **MoveTo** Verfahren, es gibt mehr spezifische.

### Navigieren Sie zu Beginn oder Ende eines Dokuments

Sie können zu Beginn oder Ende Ihres Dokuments mit dem [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) und [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) Methoden.

Das folgende Codebeispiel zeigt, wie man die Cursorposition zum Anfang oder zum Ende eines Dokuments bewegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigieren Sie mit Lesezeichen

Sie können einen Ort markieren, den Sie finden und sich wieder leicht bewegen möchten. Sie können so viele Lesezeichen in Ihr Dokument einfügen, wie Sie wollen, und dann durch sie navigieren, indem Sie die Lesezeichen mit einzigartigen Namen identifizieren. Sie können mit Hilfe der [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) Methode.

Die folgenden Codebeispiele zeigen, wie man eine Cursorposition zu einem Lesezeichen bewegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navigieren Sie zu Tabellenzellen

Sie können mit Hilfe der [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) Methode. Diese Methode ermöglicht es Ihnen, Ihren Cursor in jede Zelle in einer bestimmten Tabelle zu navigieren. Zusätzlich können Sie einen Index angeben, um den Cursor in eine Zelle innerhalb der Zelle zu einer beliebigen Position oder bestimmten Zeichen zu bewegen. **MoveToCell** Methode.

Das folgende Codebeispiel zeigt, wie man eine Cursorposition in eine vorgegebene Tabellenzelle bewegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navigation auf ein Feld

Sie können zu einem bestimmten Feld in Ihrem Dokument bewegen, indem Sie die [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) Methode. Darüber hinaus können Sie zu einem bestimmten Zusammenführungsfeld bewegen, indem Sie das [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Methode.

Das folgende Codebeispiel zeigt, wie der Dokument-Builder-Cursor auf ein bestimmtes Feld verschoben werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigieren Sie zu einem Header oder Footer

Sie können zu Beginn eines Headers oder Footer bewegen, indem Sie die [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) Methode

Das folgende Codebeispiel zeigt, wie man Dokument Builder Cursor zu einem Dokument Header oder Footer bewegt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigieren Sie zu einem Abschnitt oder Absatz

Sie können zu einem bestimmten Abschnitt oder Absatz bewegen, indem Sie die [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) oder [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) Methoden. Zusätzlich können Sie einen Index angeben, um den Cursor an jede Position oder ein bestimmtes Zeichen in einem Absatz innerhalb des **MoveToParagraph** Methode.

Das folgende Codebeispiel zeigt, wie man sich in einem Dokument zu einem bestimmten Abschnitt und einem bestimmten Absatz bewegen kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
