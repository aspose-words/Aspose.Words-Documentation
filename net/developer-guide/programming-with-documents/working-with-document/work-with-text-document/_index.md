---
title: Work with Text Document
type: docs
weight: 120
url: /net/work-with-text-document/
---

## **How to Add Bi-Directional Marks**

You can use TxtSaveOptions.AddBidiMarks property to specify whether to add bi-directional marks before each BiDi run when exporting in plain text format. Aspose.Words inserts Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) before each bi-directional Run in the text. This option corresponds to "Add bi-directional marks" option in MS Word File Conversion dialogue when you export to a Plain Text format. Note that it appears in dialogue only if any of Arabic or Hebrew editing languages are added in MS Word. The following code example demonstrates how to use TxtSaveOptions.AddBidiMarks property. The default value of this property is *false*.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## **How List Items are Recognized During Loading TXT**

Aspose.Words can import list item of a text file as list numbers or plain text in its document object model. The TxtLoadOptions.DetectNumberingWithWhitespaces property allows specifying how numbered list items are recognized when a document is imported from plain text format. If this option is set to *true*, whitespaces are also used as list number delimiters: list recognition algorithm for Arabic style numbering (1., 1.1.2.) uses both whitespaces and dot (".") symbols.

If this option is set to *false*, lists recognition algorithm detects list paragraphs, when list numbers end with either dot, right bracket or bullet symbols (such as "•", "*", "-" or "o"). The following code example demonstrates how to use this property. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## **How to Handle Leading and Trailing spaces During Loading TXT**

You can control the way of handling leading and trailing spaces during loading TXT file. The leading spaces could be trimmed, preserved or converted to indent and trailing spaces could be trimmed or preserved. The following code example demonstrates how to trim leading and trailing spaces while importing TXT file.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## **Detect Document Text Direction**

Aspose.Words provides [DocumentDirection ](https://apireference.aspose.com/net/words/aspose.words/txtloadoptions/properties/documentdirection)property in TxtLoadOptions class to detect the text direction (RTL / LTR) in the document. This property sets or gets document text directions provided in [DocumentDirection](https://apireference.aspose.com/net/words/aspose.words/documentdirection) enumeration. The default value is left to right.

The following code example demonstrates how to detect text direction of the document while importing TXT file.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## **Export Header and Footer in Output TXT**

If you want to export header and footer in output TXT document, you can use TxtSaveOptions.ExportHeadersFootersMode property. This property specifies the way headers and footers are exported to the plain text format. The following code example demonstrates how to export headers and footers to plain text format.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## **Export List Indentation in Output TXT**

Aspose.Words introduced TxtListIndentation class that allows specifying how list levels are indented while exporting to a plain text format. While working with TxtSaveOption, the ListIndentation property is provided to specify the character to be used for indenting list levels and count specifying how many characters to use as indentation per one list level. The default value for character property is '\0' indicating that there is no indentation. For count property, the default value is 0 which means no indentation.

### **Using Tab Character**

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### **Using Space Character**

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### **Using Default Indentation**

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
