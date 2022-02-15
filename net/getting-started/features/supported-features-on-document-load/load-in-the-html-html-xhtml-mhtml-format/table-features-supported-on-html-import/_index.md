---
title: Table Features Supported on HTML Import – Aspose.Words for .NET
articleTitle: Table Features Supported on HTML Import
linktitle: Table Features Supported on HTML Import
type: docs
weight: 120
url: /net/table-features-supported-on-html-import/
---

{{% alert color="primary" %}} 

A table is comprised of rows and cells and is used to display data in a grid-like layout.

Aspose.Words supports imports of tables from all loaded formats including Microsoft Word, Open Office and HTML documents.

A table is represented in Aspose.Words by a Table node. Each row of the table is represented by a separate Row node. Likewise each cell of the row is represented by a Cell node. Each node type has it's own formatting properties which controls the table's apperance and behavior.

- Table contains the properties for controlling the formatting of a table as a whole.
- Each Row provides a RowFormat object which contains the properties that control formatting for that particular row.
- Each Cell has a CellFormat object which provides properties to control the formatting of each cell.

Using Aspose.Words you can access and modify all features and formatting of a table along with creating new tables and removing existing ones from the document.

Note that some elements of a table may be wrapped with Markup nodes such as CustomXmlMarkup or StructuredDocumentTag nodes.

A table is imported from source HTML from &lt;table&gt; and other applicable tags.

Currently CSS styles are not imported from table, tr and td elements on import. These feature are planned. You can define inline styles on TD in the mean time.

See the following links in the documentation for further information:

- [Working with Tables](/words/net/working-with-tables/)
- [Table](https://apireference.aspose.com/words/net/aspose.words.tables/table)

{{% /alert %}} 

## Table

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Nested Tables |Yes | | |
|Right To Left Tables |Yes | |- [Table.Bidi](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/bidi)|
|Table Style |Planned |Table styles are supported in model and during conversion. <br><br>A table style can be applied or removed from tables. Only in-built or table styles already in the document can be applied - there is currently no support for creating new table styles. <br><br>There are plans to import CSS style on table as a Table Style. |<p>- [Working with Table Styles](/words/net/working-with-tablestyle/) </p><p>- [Table.Style](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/style) </p><p>- [Table.StyleIdentifier](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/styleidentifier)</p>|
|Conditional Formatting Style |N/A | | |
|Table Alignment |Yes |Imported as a table wrapped inside a &lt;div&gt; formatted with text-align. |- [Table.Alignment](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/alignment)|
|Table Indent |Yes |Imported from margin-left:XXX on table. |- [Table.LeftIndent](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/leftindent)|
|Allow AutoFit |Planned |Can be imported from "table-layout:fixed" attribute. |- [Table.AllowAutoFit](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/allowautofit)|
|Default Cell Margins |Planned |Can be imported from "spacing" style attribute on table. |<p>- [Table.LeftPadding](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/leftpadding) </p><p>- [Table.RightPadding](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/rightpadding) </p><p>- [Table.BottomPadding](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/bottompadding) </p><p>- [Table.TopPadding](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/toppadding)</p>|
|Default Cell Spacing |Planned |Can be imported from "padding-left", "padding-right" etc style attribute on table. |- [Table.CellSpacing](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/cellspacing)|
|Preferred Table Width |Yes |Preferred width on table can be set to absolute (points), relative (percent) or auto setting. <br><br>Imported from width as relative (percent) or absolute (point) width from &lt;table&gt;. |- [Table.PreferredWidth](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/preferredwidth)|
|Table Shading |Yes |Imported from background-color style attribute on all cells in the table. |- [Table.SetShading](https://apireference.aspose.com/words/net/aspose.words.tables/table/methods/setshading)|
|Hidden |Planned |Will be imported from display:none style attribute on table. | |

## Floating Tables

Floating tables are supported during import and export. However there is currently no API to access or modify the floating position of a table.

Floating tables are imported as inline.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Floating Tables |Planned | | |

## Table Borders

Table borders are stored in the rows of the table. This mimics the structure of an OOXML document.

If you try to set borders or shading on a table without any rows then an exception will be thrown. Add at least one row first.

Borders are imported from each cell from style attribute border-XXX-style, border-XXX-color etc.

See the following links in the documentation for further information:

- [Table.SetBorders](https://apireference.aspose.com/words/net/aspose.words.tables/table/methods/setborders)
- [Table.ClearBorders](https://apireference.aspose.com/words/net/aspose.words.tables/table/methods/clearborders)
- [RowFormat.Borders](https://apireference.aspose.com/words/net/aspose.words.tables/rowformat/properties/borders)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Table Borders |Planned | | |

## Rows

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Allow Break Across Pages |Planned | |<p>- [Keeping Tables and Rows from Breaking across Pages](/words/net/working-with-columns-and-rows/#keeping-tables-and-rows-from-breaking-across-pages) </p><p>- [RowFormat.AllowBreakAcrossPages](https://apireference.aspose.com/words/net/aspose.words.tables/rowformat/properties/allowbreakacrosspages)</p>|
|Repeat as Header Row |Planned |Will be imported from &lt;thead&gt; and &lt;th&gt; elements. <br><br>Currently content from such elements are still imported properly but not as header rows. |<p>- [Specifying Rows to Repeat on Subsequent Pages as Header Rows](/words/net/working-with-columns-and-rows/#specifying-rows-to-repeat-on-subsequent-pages-as-header-rows) </p><p>- [RowFormat.HeadingFormat](https://apireference.aspose.com/words/net/aspose.words.tables/rowformat/properties/headingformat)</p>|
|Height |Yes |Imported from "height" of style attribute on &lt;tr&gt;. Row height is only from &lt;tr&gt; and not from &lt;td&gt; cells. |- [RowFormat.Height](https://apireference.aspose.com/words/net/aspose.words.tables/rowformat/properties/height)|
|Height Rule |Planned |A row without any height is imported as "Auto" height rule. <br><br>A row with height defined is imported as "At Least". |- [RowFormat.HeightRule](https://apireference.aspose.com/words/net/aspose.words.tables/rowformat/properties/heightrule)|

## Cells

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Cell Margins |Yes |Imported from padding-XXX on &lt;td&gt; elements. |<p>- [CellFormat.TopPadding](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/toppadding) </p><p>- [CellFormat.BottomPadding](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/bottompadding) </p><p>- [CellFormat.LeftPadding](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/leftpadding) </p><p>- [CellFormat.RightPadding](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/rightpadding)</p>|
|Borders |Yes |Imported from &lt;td&gt; style attribute border-XXX-style, border-XXX-width etc. |- [CellFormat.Borders](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/borders)|
|Shading |Yes |Imported from "background-color" style attribute on &lt;td&gt;. <br><br>Note that background-image attribute is not supported as a Cell in a Microsoft Word document does not have a corresponing feature to this>. <br><br>Instead consider applying the background image to the paragraph inside the cell in the HTML document. |- [CellFormat.Shading](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/shading)|
|Wrap Text |Planned | |- [CellFormat.WrapText](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/wraptext)|
|Fit Text |Planned | |- [CellFormat.FitText](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/fittext)|
|Preferred Width |Yes |Imported from style attribute width from cells as either relative (percent) or fixed (points). |- [CellFormat.PreferredWidth](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/preferredwidth)|
|Merged Horizontally |Yes |Imported from "row-span" attribute on &lt;td&gt;. |<p>- [Working with Merged Cells]() </p><p>- [CellFormat.HorizontalMerge](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/horizontalmerge)</p>|
|Merged Vertically |Yes |Imported from "col-span" attribute on &lt;td&gt;. |- [CellFormat.VerticalMerge](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/verticalmerge)|
|Vertical Alignment |Yes |Imported from vertical-align attribute on cell. |- [CellFormat.VerticalAlignment](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/verticalalignment)|
|Text Direction |Yes |Imported from "writing-mode" style attribute. |- [CellFormat.Orientation](https://apireference.aspose.com/words/net/aspose.words.tables/cellformat/properties/orientation)|
