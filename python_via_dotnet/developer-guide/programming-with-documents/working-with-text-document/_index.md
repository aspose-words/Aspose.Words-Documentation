---
title: Working with Text Document
description: "Work with a text document and modiffy its objects using python."
type: docs
weight: 220
url: /python-net/work-with-text-document/
aliases: [/python/work-with-text-document/]
---

## How to Add Bi-Directional Marks

You can use **TxtSaveOptions.add_bidi_marks** property to specify whether to add bi-directional marks before each BiDi run when exporting in plain text format. Aspose.Words inserts Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) before each bi-directional **Run** in the text. This option corresponds to "Add bi-directional marks" option in MS Word File Conversion dialogue when you export to a Plain Text format. Note that it appears in dialogue only if any of Arabic or Hebrew editing languages are added in MS Word. The following code example demonstrates how to use **TxtSaveOptions.add_bidi_marks** property. The default value of this property is *false*.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## How List Items are Recognized During Loading TXT

Aspose.Words can import list item of a text file as list numbers or plain text in its document object model. The **TxtLoadOptions.detect_numbering_with_whitespaces** property allows specifying how numbered list items are recognized when a document is imported from plain text format. If this option is set to *true*, whitespaces are also used as list number delimiters: list recognition algorithm for Arabic style numbering (1., 1.1.2.) uses both whitespaces and dot (".") symbols.

If this option is set to *False*, lists recognition algorithm detects list paragraphs, when list numbers end with either dot, right bracket or bullet symbols (such as "•", "*", "-" or "o"). The following code example demonstrates how to use this property. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## How to Handle Leading and Trailing spaces During Loading TXT

You can control the way of handling leading and trailing spaces during loading TXT file. The leading spaces could be trimmed, preserved or converted to indent and trailing spaces could be trimmed or preserved. The following code example demonstrates how to trim leading and trailing spaces while importing TXT file.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Detect Document Text Direction

Aspose.Words provides **document_direction** property in **TxtLoadOptions** class to detect the text direction (RTL / LTR) in the document. This property sets or gets document text directions provided in **DocumentDirection** enumeration. The default value is left to right.

The following code example demonstrates how to detect text direction of the document while importing TXT file.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Export Header and Footer in Output TXT

If you want to export header and footer in output TXT document, you can use **TxtSaveOptions.export_headers_footers_mode** property. This property specifies the way headers and footers are exported to the plain text format. The following code example demonstrates how to export headers and footers to plain text format.

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Export List Indentation in Output TXT

Aspose.Words introduced **TxtListIndentation** class that allows specifying how list levels are indented while exporting to a plain text format. While working with **TxtSaveOption**, the **list_indentation** property is provided to specify the character to be used for indenting list levels and count specifying how many characters to use as indentation per one list level. The default value for character property is '\0' indicating that there is no indentation. For count property, the default value is 0 which means no indentation.

### Using Tab Character

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Using Space Character

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

