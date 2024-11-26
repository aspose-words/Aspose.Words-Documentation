---
title: Navigation mit Cursor in Java
second_title: Aspose.Words für Java
articleTitle: Navigation mit Cursor
linktitle: Navigation mit Cursor
description: "Navigieren Sie mit Java zwischen verschiedenen Knoten innerhalb eines Dokuments, z. B. einem Absatz, einem Lesezeichen oder einem bestimmten Zeichen."
type: docs
weight: 5
url: /de/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Während Sie mit einem Dokument arbeiten, auch wenn es sich um ein kurzes oder langes Dokument handelt, müssen Sie durch Ihr Dokument navigieren. Die Navigation mit einem virtuellen Cursor stellt die Möglichkeit dar, zwischen verschiedenen Knoten in einem Dokument zu navigieren.

Innerhalb eines kurzen Dokuments ist das Verschieben in einem Dokument einfach, da Sie die Einfügemarke sogar mithilfe der Pfeiltasten der Tastatur oder durch Klicken mit der Maus verschieben können, um die Einfügemarke an einer beliebigen Stelle zu finden. Sobald Sie jedoch ein großes Dokument mit vielen Seiten haben, reichen diese grundlegenden Techniken nicht mehr aus.

In diesem Artikel wird erläutert, wie Sie sich in einem Dokument bewegen und mit einem virtuellen Cursor zu verschiedenen Teilen des Dokuments navigieren.

## Aktuelle Cursorposition erkennen

Bevor Sie mit dem Navigieren durch Ihr Dokument beginnen, müssen Sie den aktuell ausgewählten Knoten abrufen. Sie können die genaue Position des Cursors an einem ausgewählten Knoten mithilfe der Eigenschaft [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) ermitteln. Außerdem können Sie anstelle des aktuellen Knotens den aktuell ausgewählten Absatz oder den aktuell ausgewählten Abschnitt mithilfe der Eigenschaften [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) und [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) abrufen.

Alle Einfügevorgänge, die Sie mit [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ausführen, werden vor [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode) eingefügt. Wenn der aktuelle Absatz leer ist oder der Cursor kurz vor dem Ende des Absatzes positioniert ist, gibt **CurrentNode** null zurück.

## Navigationsmethoden in einem Dokument

Wenn Sie Text bearbeiten, ist es wichtig zu wissen, wie Sie in Ihrem Dokument navigieren und wo genau Sie sich darin bewegen müssen. Aspose.Words ermöglicht es Ihnen, sich in einem Dokument zu bewegen und zu seinen verschiedenen Abschnitten und Teilen zu navigieren – dies ähnelt der Funktionalität des Navigationsbereichs in Microsoft Word, um zu einer Seite oder Überschrift in einem Word-Dokument zu gelangen, ohne zu scrollen.

Die Hauptmethode besteht darin, die Cursorposition auf einen bestimmten Knoten in Ihrem Dokument verschieben zu können. Dies können Sie mit der Methode [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) erreichen.

Das folgende Codebeispiel zeigt, wie Sie die **DocumentBuilder** zu verschiedenen Knoten in einem Dokument verschieben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Neben der grundlegenden **MoveTo** -Methode gibt es jedoch spezifischere.

### Zum Anfang oder Ende eines Dokuments navigieren

Sie können mit den Methoden [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) und [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) zum Anfang oder zum Ende Ihres Dokuments wechseln.

Das folgende Codebeispiel zeigt, wie Sie die Cursorposition an den Anfang oder das Ende eines Dokuments verschieben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigieren mit Lesezeichen

Sie können einen Ort markieren, den Sie finden möchten, und ihn einfach wieder aufrufen. Sie können beliebig viele Lesezeichen in Ihr Dokument einfügen und dann durch sie navigieren, indem Sie die Lesezeichen mit eindeutigen Namen identifizieren. Sie können zu einem Lesezeichen wechseln, indem Sie die [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) -Methode verwenden.

Die folgenden Codebeispiele zeigen, wie Sie eine Cursorposition auf ein Lesezeichen verschieben:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Zu Tabellenzellen navigieren

Sie können zu einer Tabellenzelle wechseln, indem Sie die [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int)-Methode verwenden. Mit dieser Methode können Sie mit dem Cursor in eine beliebige Zelle in einer bestimmten Tabelle navigieren. Darüber hinaus können Sie einen Index angeben, um den Cursor an eine beliebige Position oder ein bestimmtes Zeichen in einer Zelle innerhalb der **MoveToCell**-Methode zu bewegen.

Das folgende Codebeispiel zeigt, wie eine Cursorposition in eine angegebene Tabellenzelle verschoben wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Zu einem Feld navigieren

Sie können zu einem bestimmten Feld in Ihrem Dokument wechseln, indem Sie die [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) -Methode verwenden. Außerdem können Sie mit der Methode [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) zu einem bestimmten Seriendruckfeld wechseln.

Das folgende Codebeispiel zeigt, wie Sie den Cursor des Dokumentgenerators auf ein bestimmtes Feld bewegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigieren zu einer Kopf- oder Fußzeile

Sie können zum Anfang einer Kopf- oder Fußzeile wechseln, indem Sie die [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)-Methode verwenden.

Das folgende Codebeispiel zeigt, wie Sie den Cursor des Dokumentgenerators auf eine Kopf- oder Fußzeile eines Dokuments bewegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigieren zu einem Abschnitt oder Absatz

Sie können zu einem bestimmten Abschnitt oder Absatz wechseln, indem Sie die Methoden [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) oder [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) verwenden. Darüber hinaus können Sie einen Index angeben, um den Cursor an eine beliebige Position oder ein bestimmtes Zeichen in einem Absatz innerhalb der **MoveToParagraph**-Methode zu bewegen.

Das folgende Codebeispiel zeigt, wie Sie zu einem bestimmten Abschnitt und einem bestimmten Absatz in einem Dokument wechseln:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
