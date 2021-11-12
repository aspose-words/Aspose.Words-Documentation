---
title: Specifying Table and Cell Widths
type: docs
weight: 40
url: /java/specifying-table-and-cell-widths/
---

{{% alert color="primary" %}} 

A table in a Microsoft word document provides {several|multiple|a few|many|numerous} different ways to size a table and individual cells. These properties allow considerable control over the overall appearance and behavior of the table.

This article gives an in-depth look into how the different width calculation properties of tables work and provides information which will allow you gain full control of how table widths are calculated. This is useful to know in such cases where a table layout does not appear as expected.

{{% /alert %}} 

## Different Widths on Table

Table elements present {several|multiple|a few|many|numerous} different properties that can affect how the width of the overall table as well as individual cells are calculated. These are each explained in detail in this article.

- Preferred width on the table.
- Preferred width on individual cells.
- Allowing autofit on the table.
- Regular cell width

All of the properties and techniques that are described in this article all link back to how tables work in Microsoft Word. Therefore in most cases, if you are building your table programmatically but are finding it hard to create the desired table you can instead try visually creating it in Microsoft Word first and then simply copy the formatting values to your application.

A preferred cell is recommended rather than the width in most cases. Cell preferred width is more aligned with DOCX format specification and with Aspose.Words model as well. Cell width is actually a calculated value for Docx format. The actual cell width may depend on {many|multiple|several|a few|numerous} things. For example, changing page margins or preferred table width may affect the actual cell width. Cell preferred width is a cell property that is stored in the document. It does not depend on anything and it does not change when a table or other cell properties change.

### Using Preferred Widths

The desired width of a table or individual cells is defined through the preferred width property. That is a preferred width can be specified on individual cells or to the table as a whole. This is the size that the element strives to fit to. In some cases it may not be possible to fit to this exact width, but the real width will come close to this value on most occasions.

![use-preffered-widths-aspose-words-java](specifying-table-and-cell-widths_1.png)

The preferred width property can be expressed in one of {several|multiple|a few|many|numerous} different ways:

|Width Type|Behavior|
| :- | :- |
|Absolute|This fits the element to the given width in points.|
|Percent|Fits the element relative of the available space in the window or container size. If the available width changes then the table will automatically grow or shrink to reflect these changes.|
|Auto|This is the same as having no preferred width set. In this case size of the element is calculated using one of the other elements belonging to the table which does have a size set.|
An example of how these are applied to a real table in a document can be seen in the diagram below. 

![use-preffered-widths-example-aspose-words-java](specifying-table-and-cell-widths_2.png)

The table can be described as being fitted to 100% of the available space on the page. In this case this means the table will try to take up the space between the left and right page margins.

The cells in the above table can be described as such:

- The width of the first cell is set at 40 points. This width shouldn’t vary even if the table is resized or other cells removed.
- The second cell is specified as taking up 20% of the available space in the table. This means if the table size was changed, the width of this cell should change as well to reflect this.
- The third cell is defined as auto or “width not defined”. This means the width of the cell is calculated using the other size information of the table. Normally such a cell will take up the remaining space in the table. 
  In Aspose.Words the sizing modes described above can be found under the [PreferredWidthType](https://apireference.aspose.com/words/java/com.aspose.words/PreferredWidthType) enumeration and are set using the [Table.PreferredWidth](https://apireference.aspose.com/words/java/com.aspose.words/Table#PreferredWidth) property and [CellFormat.PreferredWidth](https://apireference.aspose.com/words/java/com.aspose.words/CellFormat#PreferredWidth) property.

  The appropriate preferred width type and value is set by using the methods of the [PreferredWidth](https://apireference.aspose.com/words/java/com.aspose.words/PreferredWidth) class. For instance, to specify a width from points you would use the [PreferredWidth.FromPoints](https://apireference.aspose.com/words/java/com.aspose.words/preferredwidth#fromPoints(double)) method. To specify a percentage width you would use [PreferredWidth.FromPercent](https://apireference.aspose.com/words/java/com.aspose.words/preferredwidth#fromPercent(double)). Finally to specify auto or “no preferred width” you would use [PreferredWidth.Auto](https://apireference.aspose.com/words/java/com.aspose.words/PreferredWidth).

#### Specifying a Preferred Width on a Table in Aspose.Words

Using the [Table.setPreferredWidth(com.aspose.words.PreferredWidth)](https://apireference.aspose.com/words/java/com.aspose.words/table#PreferredWidth) property will adjust its preferred width relative to the container (i.e the page, text column or outer table cell). 

The following code example {shows|demonstrates} how to set a table to auto fit to 50% of the page width.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-SpecifyAPreferredWidthOnATable-SpecifyAPreferredWidthOnATable.java" >}}

{{% alert color="primary" %}} 

Before you can use preferred widths on a table you must make sure that the table contains at least one row. This is because such table formatting in a Microsoft Word document is stored in the rows of a table.

{{% /alert %}} 

#### Specifying Preferred Width on a Cell

Using the [CellFormat.setPreferredWidth(com.aspose.words.PreferredWidth)](https://apireference.aspose.com/words/java/com.aspose.words/CellFormat#PreferredWidth) property on a given cell will adjust its preferred width. Below example {shows|demonstrates} how to set the different preferred width settings.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-SpecifyPreferredWidthOnACell-SpecifyPreferredWidthOnACell.java" >}}

#### Finding Preferred Width Type and Value of a Table or Cell

You can use the [PreferredWidth.getType()](https://apireference.aspose.com/words/java/com.aspose.words/preferredwidth#Type) and [PreferredWidth.getValue()](https://apireference.aspose.com/words/java/com.aspose.words/preferredwidth#Value) properties to find the preferred width details of the desired table or cell. Below example {shows|demonstrates} how to retrieves the preferred width type of a table cell.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-SpecifyPreferredWidthOnACell-findPreferredWidthTypeAndValueOfATableOrCell.java" >}}

#### Allowing AutoFit

The [Table.setAllowAutoFit(boolean)](https://apireference.aspose.com/words/java/com.aspose.words/table#AllowAutoFit) property {enables|allows} cells in the table to grow and shrink to accommodate their contents. This property can be used in conjunction with a preferred cell width to format a cell which auto fits its content but which also has an initial width. The cell width can then grow past this width if needed. 

The following code example {shows|demonstrates} how to set a table to shrink or grow each cell to accommodate its contents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ApplyFormatting-SpecifyPreferredWidthOnACell-allowAutoFit.java" >}}

#### Using Cell Width

In Aspose.Words the [CellFormat](https://apireference.aspose.com/words/java/com.aspose.words/CellFormat) object also provides a width property. This property is mainly left over from previous versions, however it is still useful as a way to simplify setting a cell’s width. This property now acts differently depending on which of the other width properties already exist on the table:

- If a cell has a preferred width of PreferredWidthType.Auto type (no preferred width set) then the value from the [CellFormat.getWidth()](https://apireference.aspose.com/words/java/com.aspose.words/cellformat#Width) is copied over and becomes the preferred width of the cell (in points).
- If a cell has a cell preferred width of PreferredWidthType.Percent then any changes to [CellFormat.getWidth()](https://apireference.aspose.com/words/java/com.aspose.words/cellformat#Width) is ignored.
- If a cell already has a preferred width of type PreferredWidthType.Points then any changes to [CellFormat.getWidth()](https://apireference.aspose.com/words/java/com.aspose.words/cellformat#Width) is ignored. That is, any changes to the width property are not updated in the preferred width and should be applied to the preferred width instead.
- If the table has [Table.getAllowAutoFit()](https://apireference.aspose.com/words/java/com.aspose.words/table#AllowAutoFit) enabled then any change in CellFormat.Width value is ignored and the cell is fitted to its contents instead.

#### The Order of Precedence during Cell Width Calculations

Aspose.Words uses the following order when calculating cell widths.

|Order|Property|Description|
| :- | :- | :- |
|1|**CellFormat.PreferredWidth**|Ideally the preferred widths are used to calculate the cell sizes.|
|2|**Table.AllowAutoFit**|If the auto fit is allowed then the table may grow past the preferred width to accommodate contents. Normally it will not shrink below the preferred width.|
|3|**CellFormat.Width**|If neither of the settings above are present then the width defined under **CellFormat.Width** is used.|
While creating a fixed table layout, specify the cell width. A cell without width cannot be saved to .doc format. Document formats other than .doc, such as .docx, allow, in principle, saving cells without width in a fixed table layout.
