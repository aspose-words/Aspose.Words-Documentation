---
title: Table Features Supported on OpenDocument Import
type: docs
weight: 120
url: /net/table-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}} 

A table is comprised of rows and cells and is used to display data in a grid-like layout.

Aspose.Words supports imports of tables from all loaded formats including Microsoft Word, Open Office and HTML documents.

A table is represented in Aspose.Words by a Table node. Each row of the table is represented by a separate Row node. Likewise, each cell of the row is represented by a Cell node. Each node type has it's own formatting properties which control the table's appearance and behavior.

- The Table class contains the properties for controlling the formatting of a table as a whole.
- Each Row provides a RowFormat object which contains the properties that control formatting for that particular row.
- Each Cell has a CellFormat object which provides properties to control the formatting of each cell.

Using Aspose.Words you can access and modify all features and formatting of a table along with creating new tables and removing existing ones from the document.

Note that some elements of a table may be wrapped with Markup nodes such as CustomXmlMarkup or StructuredDocumentTag nodes.

See the following links in the documentation for further information:

- [Working with Tables old](/pages/createpage.action?spaceKey=wordsnet&title=Working+with+Tables+old&linkCreation=true&fromPageId=2595960)
- [Table](https://apireference.aspose.com/net/words/aspose.words.tables/table)

[Jump to this location in the export section](/pages/createpage.action?spaceKey=wordsnet&title=Odt+Export&linkCreation=true&fromPageId=2595960)

{{% /alert %}} 
##### **Table**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Nested Tables|Yes| | |
|Right To Left Tables|Yes| |- [Table.Bidi](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.bidi.html)|
|Table Style|N/A| | |
|Conditional Formatting Style|N/A| | |
|Table Alignment|Yes| |- [Table.Alignment](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.alignment.html)|
|Table Indent|Yes| |- [Table.LeftIndent](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.leftindent.html)|
|Allow AutoFit|Yes| |- [Table.AllowAutoFit](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.allowautofit.html)|
|Default Cell Margins|Yes| |<p>- [Table.LeftPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.leftpadding.html)</p><p>- [Table.RightPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.rightpadding.html)</p><p>- [Table.BottomPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.bottompadding.html)</p><p>- [Table.TopPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.toppadding.html)</p>|
|Default Cell Spacing|N/A| | |
|Preferred Table Width|Yes|Preferred width on the table can be set to absolute (points), relative (per cent) or auto setting.|- [Table.PreferredWidth](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.preferredwidth.html)|
|Table Shading|Yes| |- [Table.SetShading](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.setshading.html)|
|Hidden|N/A| | |

##### **Floating Tables**
Floating tables are supported during import and export. However, there is currently no API to access or modify the floating position of a table.

Floating tables are imported as inline tables with a left indent.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Floating Tables|Planned| | |

##### **Table Borders**
Table borders are stored in the rows of the table. This mimics the structure of an OOXML document.

If you try to set borders or shading on a table without any rows then an exception will be thrown. Add at least one row first.

See the following links in the documentation for further information:

- [Table.SetBorders](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.setborders.html)
- [Table.ClearBorders](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.clearborders.html)
- [RowFormat.Borders](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.borders.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Table Borders|Yes| | |

##### **Rows**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Break Across Pages|Yes| |<p>- [Keeping Tables and Rows from Breaking across Pages](/words/net/working-with-columns-and-rows/#workingwithcolumnsandrows-keepingtablesandrowsfrombreakingacrosspages)</p><p>- [RowFormat.AllowBreakAcrossPages](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.allowbreakacrosspages.html)</p>|
|Repeat as Header Row|Yes| |<p>- [Specifying Rows to Repeat on Subsequent Pages as Header Rows](/words/net/working-with-columns-and-rows/#workingwithcolumnsandrows-specifyingrowstorepeatonsubsequentpagesasheaderrows)</p><p>- [RowFormat.HeadingFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.headingformat.html)</p>|
|Height|Yes| |- [RowFormat.Height](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.height.html)|
|Height Rule|Yes| |- [RowFormat.HeightRule](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.heightrule.html)|

##### **Cells**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Cell Margins|Yes| |<p>- [CellFormat.TopPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.toppadding.html)</p><p>- [CellFormat.BottomPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.bottompadding.html)</p><p>- [CellFormat.LeftPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.leftpadding.html)</p><p>- [CellFormat.RightPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.rightpadding.html)</p>|
|Borders|Yes|Diagonal borders are not saved to ODT. <br><br>Dashed, shadow and triple lines appear differently when saved to ODT.|- [CellFormat.Borders](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.borders.html)|
|Shading|Yes|Textured fills are saved as solid fills to ODT.|- [CellFormat.Shading](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.shading.html)|
|Wrap Text|Yes| |- [CellFormat.WrapText](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.wraptext.html)|
|Fit Text|Yes| |- [CellFormat.FitText](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.fittext.html)|
|Preferred Width|Yes| |- [CellFormat.PreferredWidth](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.preferredwidth.html)|
|Merged Horizontally|Yes| |<p>- [Working with Merged Cells](/words/net/working-with-columns-and-rows/#workingwithcolumnsandrows-workingwithmergedcells)</p><p>- [CellFormat.HorizontalMerge](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.horizontalmerge.html)</p>|
|Merged Vertically|Yes| |- [CellFormat.VerticalMerge](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.verticalmerge.html)|
|Vertical Alignment|Yes| |- [CellFormat.VerticalAlignment](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.verticalalignment.html)|
|Text Direction|Yes| |- [CellFormat.Orientation](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.orientation.html)|

