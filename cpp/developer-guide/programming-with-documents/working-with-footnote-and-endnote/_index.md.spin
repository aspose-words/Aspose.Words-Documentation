---
title: Working with Footnote and Endnote
type: docs
weight: 37
url: /cpp/working-with-footnote-and-endnote/
---

## Insert Endnote and Set Numbering Options

If you want to insert a footnote or endnote in a Word document, please use DocumentBuilder.InsertFootnote method. This method inserts a footnote or endnote into the document. EndnoteOptions and FootnoteOptions classes represent numbering options for footnote and endnote. The following code example {demonstrates|shows} how to insert an endnote into the document and set its numbering options. 

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## How to Set Number of Footnote Layout Columns

You can set the number of footnote layout columns using FootnoteOptions.Columns property. If this property has a value of 0, the footnotes area is formatted with a number of columns based on the number of columns on the displayed page. The following code example demonstrates how to set the number of columns for the footnote layout.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## How to Set the Position of Footnote and EndNote

The footnote position can be at the bottom of each page or beneath the text on each page. The endnote position can be at the end of the section or at the end of the document. The following code example {demonstrates|shows} how to set the position of footnote and endnote.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
