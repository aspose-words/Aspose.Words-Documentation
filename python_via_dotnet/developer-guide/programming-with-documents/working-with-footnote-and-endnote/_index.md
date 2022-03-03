---
title: Working with Footnote and Endnote in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Footnote and Endnote
linktitle: Working with Footnote and Endnote
description: "Insert ffotnotes or endnotes into a document and specify its options using Python."
type: docs
weight: 80
url: /python-net/working-with-footnote-and-endnote/
aliases: [/python/working-with-footnote-and-endnote/]
---

## Insert Endnote and Set Numbering Options

If you want to insert footnote or endnote in Word document, please use DocumentBuilder.InsertFootnote method. This method inserts a footnote or endnote into the document. EndnoteOptions and FootnoteOptions classes represent numbering options for footnote and endnote. The following code example demonstrates how to insert endnote into the document and set its numbering options. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## How to Set Number of Footnote Layout Columns

You can set the number of footnote layout columns using FootnoteOptions.Columns property. If this property has the value of 0, the footnotes area is formatted with a number of columns based on the number of columns on the displayed page. The following code example demonstrates how to set the number of columns for footnote layout.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## How to Set the Position of Footnote and EndNote

The footnote position can be at the bottom of each page or beneath the text on each page. The endnote position can be at the end of the section or at the end of the document. The following code example demonstrates how to set the position of footnote and endnote.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
