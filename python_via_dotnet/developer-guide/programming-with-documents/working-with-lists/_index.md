---
title: Working with Lists in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Lists
linktitle: Working with Lists
description: "Create, specify formatting and restart lists in a document using Python."
type: docs
weight: 100
url: /python-net/working-with-lists/
aliases: [/python/working-with-lists/]
---

A list in a Microsoft Word document is a set of list formatting properties. Lists can be used in your documents to format, arrange, and emphasize text. Lists are a great way to organize data in documents, and they make it easier for readers to understand key points. 

Each list can have up to 9 levels and formatting properties, such as number style, start value, indent, tab position etc are defined separately for each level.

In Aspose.Words, working with lists is represented by the [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) module. However, the [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) object always belongs to the [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) collection.

This topic describes how to work programmatically with lists using Aspose.Words. 

## Creating Lists by Applying List Formatting

Aspose.Words allows the easy creation of lists by applying list formatting. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) provides the [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) property that returns a [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) object. This object has several methods to start and end a list and to increase/decrease the indent. There are two general types of lists in Microsoft Word: bulleted and numbered.

- To start a bulleted list, call [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- To start a numbered list, call [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

The bullet or number and formatting are added to the current paragraph and all further paragraphs created using [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) until [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) is called to stop bulleted list formatting.

In Word documents, lists may consist of up to nine levels. List formatting for each level specifies what bullet or number is used, left indent, space between the bullet and text etc. The following methods change the list level and apply the new level's formatting properties:

- To increase the list level of the current paragraph by one level, call [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- To decrease the list level of the current paragraph by one level, call [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

The methods change the list level and apply the formatting properties of the new level.

{{% alert color="primary" %}}

You can also use the [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) property to get or set the list level for the paragraph. The list levels are numbered 0 to 8.

{{% /alert %}}

Below example shows how to build a multilevel list.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Specify Formatting for a List Level

List-level objects are created automatically when a list is created. Use the properties and methods of the [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) class to control the formatting of individual levels of a list.

## Restart List for each Section

You can restart a list for each section using the [is_restart_at_each_section property](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) property. Note that this option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if OoxmlCompliance is higher then Ecma376.

The following code example shows how to create a list and restart it for each section:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
