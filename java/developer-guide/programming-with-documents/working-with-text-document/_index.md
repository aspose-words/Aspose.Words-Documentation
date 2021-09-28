---
title: Working with Text Document
type: docs
weight: 190
url: /java/working-with-text-document/
---

## How to Add Bi-Directional Marks

You can use TxtSaveOptions.AddBidiMarks property to specify whether to add bi-directional marks before each BiDi run when exporting in plain text format. Aspose.Words inserts Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) before each bi-directional Run in text. This option corresponds to "Add bi-directional marks" option in the MS Word File Conversion dialog when you export to a Plain Text format. Note that it appears in dialog only if any of the Arabic or Hebrew editing languages are added in MS Word. The following code example shows how to use TxtSaveOptions.AddBidiMarks property. The default value of this property is *true*.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## How List Items are Recognized During Loading TXT

Aspose.Words can import list item of a text file as list numbers or plain text in its document object model. The TxtLoadOptions.DetectNumberingWithWhitespaces property enables to specify how numbered list items are recognized when a document is imported from plain text format. If this option is set to *true*, whitespaces are also used as list number delimiters: list recognition algorithm for Arabic style numbering (1., 1.1.2.) uses both whitespaces and dot (".") symbols.

If this option is set to *false*, the lists recognition algorithm detects list paragraphs, when list numbers ends with either dot, right bracket or bullet symbols (such as "•", "*", "-" or "o"). The following code example show how to use this property. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## How to Handle Leading and Trailing Spaces during Loading TXT

You can control the way of handling leading and trailing spaces during loading TXT files. The leading spaces could be trimmed, preserved or converted to indent and trailing spaces could be trimmed or preserved. The code example given below demonstrates how to trim leading and trailing spaces while importing the TXT file.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Detect Document Text Direction

Aspose.Words provides DocumentDirection property in TxtLoadOptions class to detect the text direction (RTL / LTR) in the document. This property sets or gets document text directions provided in DocumentDirection enumeration. The default value is left to right.

The following code example demonstrates how to detect the text direction of the document while importing the TXT file.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Export Header and Footer in Output TXT File

If you want to export the header and footer in the output TXT document, you can use TxtSaveOptions.ExportHeadersFootersMode property. This property specifies the way headers and footers are exported to the plain text format. The code example given below demonstrates how to export headers and footers to plain text format.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Export List Indentation in Output TXT

Aspose.Words introduced TxtListIndentation class that allows specifying how list levels are indented while exporting to a plain text format. While working with TxtSaveOption, the ListIndentation property is provided to specify the character to be used for indenting list levels and count specifying how multiple characters to use as indentation per one list level. The default value for character property is '\0' indicating that there is no indentation. For count property, the default value is 0 which means no indentation.

### Using Tab Character

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Using Space Character

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Using Default Indentation

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
