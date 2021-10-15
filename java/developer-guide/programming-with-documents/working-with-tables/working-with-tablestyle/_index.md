---
title: Working with Table Styles
type: docs
aliases:
 - /java/working-with-table-styles/
weight: 50
url: /java/working-with-tablestyle/
---

{{% alert color="primary" %}} 

A table style defines a set of formatting that can be easily applied to a table. Formatting such as borders, shading, alignment and font can be set in a table style and applied to several tables for a consistent appearance.

{{% /alert %}} 


## Overview

Aspose.Words supports applying a table style to a table and also reading properties of any table style. Table styles are preserved during loading and saving in the following ways:

- Table styles in DOCX and WordML formats are preserved when loading and saving to these formats.
- Table styles are preserved when loading and saving in the DOC format (but not to any other format).
- When exporting to other formats, rendering or printing, table styles are expanded to direct formatting on the table so all formatting is preserved.

![table-style-aspose-words-java](working-with-table-styles_1.png)

### Applying a Table Style

In Aspose.Words you can apply a table style by using any of the [Table.getStyle()](http://www.aspose.com/api/java/words/com.aspose.words/classes/Table/properties/getStyle\(\)/), [Table.setStyleIdentifier(int)](http://www.aspose.com/api/java/words/com.aspose.words/classes/table/methods/setStyleIdentifier\(int\)/) and [Table.getStyleName()](http://www.aspose.com/api/java/words/com.aspose.words/classes/table/methods/getStyleName\(\)/) properties. You can also choose which features of the table style to apply, for example, first column, last column, banded rows. These are listed under the TableStyleOptions enumeration and are applied by using [Table.setStyleOptions(int)](http://www.aspose.com/api/java/words/com.aspose.words/classes/table/methods/setStyleOptions\(int\)/) property. The TableStyleOptions enumeration enables a bitwise combination of these features. Below example demonstrates how to build a new table with a table style applied.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-TableStyles-ApplyATableStyle.java" >}}

Aspose.Words also provides a method to take formatting found on a table style and expands it onto the rows and cells of the table as direct formatting. Test combine formatting with table style and cell style. This method will not override any other formatting that is already applied to the table through a row or cell format.

Below examples demonstrates how to expand the formatting from styles onto the rows and cells of the table as direct formatting.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-TableStyles-ExpandFormattingFromStylesOnToRowsAndCells.java" >}}

## Using the TableStyle

Aspose.Words provides TableStyle inherited from Style class. The TableStyle facilitates user to apply different styling options like as shading, padding, indentation, CellSpacing and Font etc. Aspose.Words also provides ConditionalStyle class which represents special formatting applied to some area of a table with an assigned table style and the ConditionalStyleCollection representing a collection of ConditionalStyle objects. This collection contains a permanent set of items representing one item for each value of the ConditionalStyleType enumeration type. The ConditionalStyleType enumeration defines all possible table areas to which conditional formatting may be defined in a table style.

### Create a Table Style

A table style can be created using the StyleCollection.Add method. The code example given below shows how to create a table style.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-TableStyles-CreateTableStyle.java" >}}

### Defining Conditional Formatting

Conditional formatting can be defined for all possible table area defined under ConditionalStyleType enumeration type. The following code example shows how to define conditional formatting for the header row of the table.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-TableStyles-DefineConditionalFormatting.java" >}}
