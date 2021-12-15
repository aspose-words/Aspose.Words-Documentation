---
title: Working With Lists
description: "Introduction to numbering formatting feature in Aspose.Words for C++."
type: docs
weight: 50
url: /cpp/working-with-lists/
---

This topic describes how to work programmatically with lists using Aspose.Words. Lists can be used in your documents to format, arrange, and emphasize text. Lists are a great way to organize data in documents, and they make it easier for readers to understand key points. 

A list in a Microsoft Word document is a set of list formatting properties. Each list can have up to 9 levels and formatting properties, such as number style, start value, indent, tab position etc are defined separately for each level. A List object always belongs to the ListCollection collection.

## Specify Formatting for a List Level

List-level objects are created automatically when a list is created. Use the properties and methods of the [ListLevel](https://apireference.aspose.com/words/cpp/class/aspose.words.lists.list_level) class to control the formatting of individual levels of a list.

## How to Restart List for each Section

You can restart a list for each section using List.IsRestartAtEachSection property. Note that this option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if OoxmlCompliance is higher then Ecma376. The following code example shows how to create a list and restart it for each section. 

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
