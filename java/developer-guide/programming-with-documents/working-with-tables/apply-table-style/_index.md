---
title: Working with Table Styles in Java
second_title: Aspose.Words for Java
articleTitle: Apply Table Style
linktitle: Apply Table Style
description: "Advanced table formatting Java. Create a table style using Java. Introduction to advanced table formatting, Table styles using Java."
type: docs
aliases:
 - /java/working-with-table-styles/
weight: 80
url: /java/working-with-tablestyle/
---

A table style defines a set of formatting that can be easily applied to a table. Formatting such as borders, shading, alignment, and font can be set in a table style and applied to many tables for a consistent appearance.

Aspose.Words supports applying a table style to a table and also reading properties of any table style. Table styles are preserved during loading and saving in the following ways:

- Table styles in DOCX and WordML formats are preserved when loading and saving to these formats
- Table styles are preserved when loading and saving in  DOC format (but not to any other format)
- When exporting to other formats, rendering or printing, table styles are expanded to direct formatting in the table, so all formatting is preserved

## Create a Table Style

The user can create a new style and add it to style collection. The [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) method is used to create a new table style.

The following code example shows how to create a new user defined table style:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-TableStyles-CreateTableStyle.java" >}} //CreateTableStyle

## Copy an Existing Table Style 

If necessary, you can copy a table style that already exists in a certain document into your style collection using the AddCopy method.

It is important to know that with this copying, the linked styles are also copied.

The following code example shows how to import a style from one document to another document:

EXAMPLE //CopyStyleDifferentDocument

## Apply an Existing Table Style

Aspose.Words provides a [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) inherited from the [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) class. **TableStyle** facilitates the user to apply different style options like as shading, padding, indentation, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) and [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), etc.

In addition, Aspose.Words provides the [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) class and a few properties of the Table class to specify which table style we will work with: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), and [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words also provides [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) class that represents special formatting applied to some area of a table with an assigned table style, and the [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) that represents a collection of **ConditionalStyle** objects. This collection contains a permanent set of items representing one item for each value of the [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) enumeration type. The **ConditionalStyleType** enumeration defines all possible table areas to which conditional formatting may be defined in a table style.

In this case, conditional formatting can be defined for all possible table area defined under the ConditionalStyleType enumeration type.

The following code example shows how to define conditional formatting for header row of the table:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-TableStyles-DefineConditionalFormatting.java" >}} //DefineConditionalFormatting

You can also choose which table parts to apply styles to, such as first column, last column, banded rows. They are listed in the [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) enumeration and are applied through the [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) property. The **TableStyleOptions** enumeration allows a bitwise combination of these features.

The following code example shows how to create a new table with a table style applied:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-TableStyles-applyTableStyle.java" >}} //BuildTableWithStyle

The pictures below show a representation of the **Table Styles** in Microsoft Word and their corresponding properties in Aspose.Words.

![table-style-aspose-words-java](working-with-table-styles-1.png)

## Take Formatting from Table Style and Apply it as Direct Formatting

Aspose.Words also provides the [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) method to take formatting found on a table style and expands it onto the rows and cells of the table as direct formatting. Try combining formatting with table style and cell style.

{{% alert color="primary" %}}

This method will not override any other formatting already applied to the table through a row or cell format.

{{% /alert %}}

The following code example shows how to expand the formatting from styles onto table rows and cells as direct formatting:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-TableStyles-expandFormattingFromStylesOnToRowsAndCells.java" >}} //ExpandFormattingOnCellsAndRowFromStyle