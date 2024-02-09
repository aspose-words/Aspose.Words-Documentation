---
title: Navigation mit Cursor in C#
second_title: Aspose.Words für .NET
articleTitle: Navigation mit Cursor
linktitle: Navigation mit Cursor
description: "Navigieren Sie mit C# zwischen verschiedenen Knoten innerhalb eines Dokuments, z. B. einem Absatz, einem Lesezeichen oder einem bestimmten Zeichen."
type: docs
weight: 10
url: /de/net/navigation-with-cursor/
---

Während Sie mit einem Dokument arbeiten, auch wenn es kurz oder lang ist, müssen Sie durch Ihr Dokument navigieren. Die Navigation mit einem virtuellen Cursor stellt die Möglichkeit dar, zwischen verschiedenen Knoten in einem Dokument zu navigieren.

Innerhalb eines kurzen Dokuments ist das Bewegen innerhalb eines Dokuments einfach, da Sie die Einfügemarke sogar verschieben können, indem Sie die Pfeiltasten der Tastatur verwenden oder mit der Maus klicken, um die Einfügemarke an die gewünschte Stelle zu setzen. Sobald Sie jedoch ein großes Dokument mit vielen Seiten haben, werden diese grundlegenden Techniken nicht mehr ausreichen.

In diesem Artikel wird erklärt, wie Sie sich in einem Dokument bewegen und mit einem virtuellen Cursor zu verschiedenen Teilen davon navigieren.

## Erkennen der aktuellen Cursorposition

Bevor Sie mit der Navigation durch Ihr Dokument beginnen, müssen Sie den aktuell ausgewählten Knoten abrufen. Mithilfe der [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/)-Eigenschaft können Sie die genaue Position des Cursors an einem ausgewählten Knoten ermitteln. Anstatt den aktuellen Knoten abzurufen, können Sie außerdem den aktuell ausgewählten Absatz oder den aktuell ausgewählten Abschnitt mithilfe der [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/)- und [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/)-Eigenschaften abrufen.

Alle Einfügevorgänge, die Sie mit [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) ausführen, werden vor [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) eingefügt. Wenn der aktuelle Absatz leer ist oder der Cursor kurz vor dem Ende des Absatzes positioniert ist, gibt das **CurrentNode** null zurück.

## Navigieren durch Methoden in einem Dokument

Wenn Sie Text bearbeiten, ist es wichtig zu wissen, wie Sie in Ihrem Dokument navigieren und wohin Sie sich darin bewegen müssen. Aspose.Words ermöglicht es Ihnen, sich in einem Dokument zu bewegen und zu seinen verschiedenen Abschnitten und Teilen zu navigieren – dies ähnelt der Funktionalität des Navigationsbereichs in Microsoft Word, um zu einer Seite oder Überschrift in einem Word-Dokument zu gelangen, ohne zu scrollen.

Die Hauptmethode besteht darin, die Cursorposition auf einen bestimmten Knoten in Ihrem Dokument zu verschieben. Dies können Sie mithilfe der [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/)-Methode erreichen.

Das folgende Codebeispiel zeigt, wie das **DocumentBuilder** auf verschiedene Knoten in einem Dokument verschoben wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Aber neben der grundlegenden **MoveTo**-Methode gibt es noch spezifischere.

### Navigieren Sie zum Anfang oder Ende eines Dokuments

Sie können mit den Methoden [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) und [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) zum Anfang oder Ende Ihres Dokuments springen.

Das folgende Codebeispiel zeigt, wie Sie die Cursorposition an den Anfang oder das Ende eines Dokuments verschieben:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Navigieren Sie mit Lesezeichen

Sie können einen Ort, den Sie suchen möchten, markieren und problemlos wieder dorthin wechseln. Sie können beliebig viele Lesezeichen in Ihr Dokument einfügen und dann durch diese navigieren, indem Sie den Lesezeichen eindeutige Namen geben. Sie können mit der [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/)-Methode zu einem Lesezeichen wechseln.

Die folgenden Codebeispiele zeigen, wie Sie eine Cursorposition zu einem Lesezeichen verschieben:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Navigieren Sie zu Tabellenzellen

Mit der [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/)-Methode können Sie zu einer Tabellenzelle wechseln. Mit dieser Methode können Sie Ihren Cursor in eine beliebige Zelle einer bestimmten Tabelle navigieren. Darüber hinaus können Sie einen Index angeben, um den Cursor an eine beliebige Position oder ein bestimmtes Zeichen in einer Zelle innerhalb der **MoveToCell**-Methode zu bewegen.

Das folgende Codebeispiel zeigt, wie eine Cursorposition in eine angegebene Tabellenzelle verschoben wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Navigieren Sie zu einem Feld

Mithilfe der [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/)-Methode können Sie zu einem bestimmten Feld in Ihrem Dokument wechseln. Darüber hinaus können Sie mithilfe der [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/)-Methode zu einem bestimmten Zusammenführungsfeld wechseln.

Das folgende Codebeispiel zeigt, wie der Document Builder-Cursor auf ein bestimmtes Feld verschoben wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Navigieren Sie zu einer Kopf- oder Fußzeile

Mit der [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/)-Methode können Sie zum Anfang einer Kopf- oder Fußzeile wechseln

Das folgende Codebeispiel zeigt, wie der Document Builder-Cursor in die Kopf- oder Fußzeile eines Dokuments verschoben wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Navigieren Sie zu einem Abschnitt oder Absatz

Mit den Methoden [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) oder [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) können Sie zu einem bestimmten Abschnitt oder Absatz wechseln. Darüber hinaus können Sie einen Index angeben, um den Cursor an eine beliebige Position oder ein bestimmtes Zeichen in einem Absatz innerhalb der **MoveToParagraph**-Methode zu bewegen.

Das folgende Codebeispiel zeigt, wie Sie zu einem bestimmten Abschnitt und einem bestimmten Absatz in einem Dokument wechseln:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
