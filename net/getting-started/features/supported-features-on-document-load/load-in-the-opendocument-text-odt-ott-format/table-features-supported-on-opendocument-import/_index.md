---
title: OpenDocument Import - Table Features
second_title: Aspose.Words for .NET
articleTitle: Table Features Supported on OpenDocument Import
linktitle: Table Features Supported on OpenDocument Import
description: "Import ODT document using table load options in C#."
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

- [Working with Tables](/words/net/working-with-tables/)
- [Table](https://reference.aspose.com/words/net/aspose.words.tables/table)

[Jump to this location in the export section](/words/net/table-features-supported-on-opendocument-export/)

{{% /alert %}}

## Table

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Nested Tables|Yes| | |
|Right To Left Tables|Yes| |- [Table.Bidi](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/bidi)|
|Table Style|N/A| | |
|Conditional Formatting Style|N/A| | |
|Table Alignment|Yes| |- [Table.Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/alignment)|
|Table Indent|Yes| |- [Table.LeftIndent](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/leftindent)|
|Allow AutoFit|Yes| |- [Table.AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/allowautofit)|
|Default Cell Margins|Yes| |<p>- [Table.LeftPadding](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/leftpadding)</p><p>- [Table.RightPadding](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/rightpadding)</p><p>- [Table.BottomPadding](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/bottompadding)</p><p>- [Table.TopPadding](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/toppadding)</p>|
|Default Cell Spacing|N/A| | |
|Preferred Table Width|Yes|Preferred width on the table can be set to absolute (points), relative (per cent) or auto setting.|- [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/preferredwidth)|
|Table Shading|Yes| |- [Table.SetShading](https://reference.aspose.com/words/net/aspose.words.tables/table/methods/setshading)|
|Hidden|N/A| | |

## Floating Tables

Floating tables are supported during import and export. However, there is currently no API to access or modify the floating position of a table.

Floating tables are imported as inline tables with a left indent.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Floating Tables|Planned| | |

## Table Borders

Table borders are stored in the rows of the table. This mimics the structure of an OOXML document.

If you try to set borders or shading on a table without any rows then an exception will be thrown. Add at least one row first.

See the following links in the documentation for further information:

- [Table.SetBorders](https://reference.aspose.com/words/net/aspose.words.tables/table/methods/setborders)
- [Table.ClearBorders](https://reference.aspose.com/words/net/aspose.words.tables/table/methods/clearborders)
- [RowFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/table/methods/setshading)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Table Borders|Yes| | |

## Rows

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Break Across Pages|Yes| |<p>- [Keeping Tables and Rows from Breaking across Pages](/words/net/working-with-columns-and-rows/#workingwithcolumnsandrows-keepingtablesandrowsfrombreakingacrosspages)</p><p>- [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/properties/allowbreakacrosspages)</p>|
|Repeat as Header Row|Yes| |<p>- [Specifying Rows to Repeat on Subsequent Pages as Header Rows](/words/net/working-with-columns-and-rows/#workingwithcolumnsandrows-specifyingrowstorepeatonsubsequentpagesasheaderrows)</p><p>- [RowFormat.HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/properties/headingformat)</p>|
|Height|Yes| |- [RowFormat.Height](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/properties/height)|
|Height Rule|Yes| |- [RowFormat.HeightRule](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/properties/heightrule)|

## Cells

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Cell Margins|Yes| |<p>- [CellFormat.TopPadding](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/toppadding)</p><p>- [CellFormat.BottomPadding](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/bottompadding)</p><p>- [CellFormat.LeftPadding](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/leftpadding)</p><p>- [CellFormat.RightPadding](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/rightpadding)</p>|
|Borders|Yes|Diagonal borders are not saved to ODT. <br><br>Dashed, shadow and triple lines appear differently when saved to ODT.|- [CellFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/borders)|
|Shading|Yes|Textured fills are saved as solid fills to ODT.|- [CellFormat.Shading](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/shading)|
|Wrap Text|Yes| |- [CellFormat.WrapText](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/wraptext)|
|Fit Text|Yes| |- [CellFormat.FitText](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/fittext)|
|Preferred Width|Yes| |- [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/preferredwidth)|
|Merged Horizontally|Yes| |<p>- [Working with Merged Cells](/words/net/working-with-columns-and-rows/#workingwithcolumnsandrows-workingwithmergedcells)</p><p>- [CellFormat.HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/horizontalmerge)</p>|
|Merged Vertically|Yes| |- [CellFormat.VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/verticalmerge)|
|Vertical Alignment|Yes| |- [CellFormat.VerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/verticalalignment)|
|Text Direction|Yes| |- [CellFormat.Orientation](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/properties/orientation)|

