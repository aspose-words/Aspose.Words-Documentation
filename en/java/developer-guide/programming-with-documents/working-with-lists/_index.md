---
title: Working with Lists in Java
second_title: Aspose.Words for Java
articleTitle: Working with Lists
linktitle: Working with Lists
description: "Introduction to numbering formatting feature in Aspose.Words for Java."
type: docs
weight: 200
url: /java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

A list in a Microsoft Word document is a set of list formatting properties. Lists can be used in your documents to format, arrange, and emphasize text. Lists are a great way to organize data in documents, and they make it easier for readers to understand key points.

Each list can have up to 9 levels and formatting properties, such as number style, start value, indent, tab position, and others are defined separately for each level.

This article describes programmatically working with lists using Aspose.Words.

## Creating Lists by Applying List Formatting

Aspose.Words allows the easy creation of lists by applying list formatting. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) provides the [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) property that returns a **ListFormat** object. This object has several methods to start and end a list and to increase/decrease the indent. There are two general types of lists in Microsoft Word: bulleted and numbered:

- To start a bulleted list, call [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- To start a numbered list, call [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

The bullet or number and formatting are added to the current paragraph and all further paragraphs created using **DocumentBuilder** until [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) is called to stop bulleted list formatting.

In Word documents, lists may consist of up to nine levels. List formatting for each level specifies what bullet or number is used, left indent, space between the bullet and text etc. The following methods change the list level and apply the new level's formatting properties:

- To increase the list level of the current paragraph by one level, call [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- To decrease the list level of the current paragraph by one level, call [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

The methods change the list level and apply the formatting properties of the new level.

{{% alert color="primary" %}}

You can also use the [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) property to get or set the list level for the paragraph. The list levels are numbered 0 to 8.

{{% /alert %}}

The following code example shows how to build a multilevel list:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Specify Formatting for a List Level

List-level objects are created automatically when a list is created. Use the properties and methods of the [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) class to control the formatting of individual levels of a list.

## Restart List for each Section

You can restart a list for each section using the [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) property. Note that this option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if OoxmlCompliance is higher then Ecma376.

The following code example shows how to create a list and restart it for each section:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

