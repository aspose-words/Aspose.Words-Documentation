---
title: Working with Footnote and Endnote in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Footnote and Endnote
linktitle: Working with Footnote and Endnote
description: "How to manipulate footnotes and endnotes using C#."
type: docs
weight: 160
url: /net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words also provides some classes, methods and properties for working with footnotes and endnotes.

## Insert Endnote and Set Numbering Options

If you want to insert footnote or endnote into Word document, please use the [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) method. This method inserts a footnote or endnote into the document.

[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) and [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) classes represent numbering options for footnote and endnote.

The following code example shows how to insert endnote into the document and set its numbering options:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Set Number of Footnote Layout Columns

You can set the number of footnote layout columns using the [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) property. If this property has the value of 0, the footnotes area is formatted with a number of columns based on the number of columns on the displayed page.

The following code example shows how to set the number of columns for footnote layout:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Set the Position of Footnote and EndNote

The footnote position can be at the bottom of each page or beneath the text on each page. The endnote position can be at the end of the section or at the end of the document.

The following code example shows how to set the position of footnote and endnote:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
