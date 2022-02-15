---
title: Working with Text Document – Aspose.Words for С++
articleTitle: Working with Text Document
linktitle: Working with Text Document
description: "Advanced TXT document processing, lists, BiDi, headers/footer, using Aspose.Words for C++."
type: docs
weight: 180
url: /cpp/working-with-text-document/
---

## Save as Text

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-SaveAsTxt.cpp" >}}

## How to Add Bi-Directional Marks

You can use saveOptions->set_AddBidiMarks property to specify whether to add bi-directional marks before each BiDi run when exporting in plain text format. Aspose.Words inserts Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) before each bi-directional Run in the text. This option corresponds to "Add bi-directional marks" option in MS Word File Conversion dialogue when you export to a Plain Text format. Note that it appears in dialogue only if any of Arabic or Hebrew editing languages are added in MS Word. Below code example shows how to use saveOptions->set_AddBidiMarks property. The default value of this property is *false*.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## How List Items are Recognized During Loading TXT

Aspose.Words can import list item of a text file as list numbers or plain text in its document object model. The TxtLoadOptions.DetectNumberingWithWhitespaces property allows to specify how numbered list items are recognized when a document is imported from plain text format. If this option is set to *true*, whitespaces are also used as list number delimiters: list recognition algorithm for Arabic style numbering (1., 1.1.2.) uses both whitespaces and dot (".") symbols.

If this option is set to *false*, lists recognition algorithm detects list paragraphs, when list numbers end with either dot, right bracket or bullet symbols (such as "•", "*", "-" or "o"). Below code example show how to use this property. 

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## How to Handle Leading and Trailing spaces During Loading TXT

You can control the way of handling leading and trailing spaces during loading TXT file. The leading spaces could be trimmed, preserved or converted to indent and trailing spaces could be trimmed or preserved. Below code example shows how to trim leading and trailing spaces while importing TXT file.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Export Header and Footer in Output TXT

If you want to export header and footer in output TXT document, you can use Options->set_ExportHeadersFootersMode property. This property specifies the way headers and footers are exported to the plain text format. Below code example shows how to export headers and footers to plain text format.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Export List Indentation in Output TXT

Aspose.Words introduced TxtListIndentation class that allows specifying how list levels are indented while exporting to a plain text format. While working with TxtSaveOption, the ListIndentation property is provided to specify the character to be used for indenting list levels and count specifying how many characters to use as indentation per one list level. The default value for character property is '\0' indicating that there is no indentation. For count property, the default value is 0 which means no indentation.

### Using Tab Character

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Using Space Character

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Using Default Indentation

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
