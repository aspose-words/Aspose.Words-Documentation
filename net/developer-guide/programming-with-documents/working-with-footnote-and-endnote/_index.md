---
title: Working with Footnote and Endnote
description: "How to manipulate with footnotes and endnotes using Aspose.Words for .Net."
type: docs
weight: 80
url: /net/working-with-footnote-and-endnote/
---

## Insert Endnote and Set Numbering Options

If you want to insert footnote or endnote in Word document, please use DocumentBuilder.InsertFootnote method. This method inserts a footnote or endnote into the document. EndnoteOptions and FootnoteOptions classes represent numbering options for footnote and endnote. The following code example demonstrates how to insert endnote into the document and set its numbering options. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## How to Set Number of Footnote Layout Columns

You can set the number of footnote layout columns using FootnoteOptions.Columns property. If this property has the value of 0, the footnotes area is formatted with a number of columns based on the number of columns on the displayed page. The following code example demonstrates how to set the number of columns for footnote layout.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## How to Set the Position of Footnote and EndNote

The footnote position can be at the bottom of each page or beneath the text on each page. The endnote position can be at the end of the section or at the end of the document. The following code example demonstrates how to set the position of footnote and endnote.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
