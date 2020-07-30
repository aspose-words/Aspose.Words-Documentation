---
title: Table Features Supported on HTML Import
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

A table is imported from source HTML from <table> and other applicable tags.

Currently CSS styles are not imported from table, tr and td elements on import. These feature are planned. You can define inline styles on TD in the mean time.

See the following links in the documentation for further information:

- [Working with Tables](/pages/createpage.action?spaceKey=wordsnet&title=Working+with+Tables+old&linkCreation=true&fromPageId=2596075)
- [Table](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.html)

{{% /alert %}} 
## **Table**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Nested Tables |Yes | | |
|Right To Left Tables |Yes | |- [Table.Bidi](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.bidi.html)|
|Table Style |Planned |Table styles are supported in model and during conversion. <br><br>A table style can be applied or removed from tables. Only in-built or table styles already in the document can be applied - there is currently no support for creating new table styles. <br><br>There are plans to import CSS style on table as a Table Style. |<p>- [Working with Table Styles]() </p><p>- [Table.Style](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.style.html) </p><p>- [Table.StyleIdentifier](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.styleidentifier.html)</p>|
|Conditional Formatting Style |N/A | | |
|Table Alignment |Yes |Imported as a table wrapped inside a <div> formatted with text-align. |- [Table.Alignment](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.alignment.html)|
|Table Indent |Yes |Imported from margin-left:XXX on table. |- [Table.LeftIndent](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.leftindent.html)|
|Allow AutoFit |Planned |Can be imported from "table-layout:fixed" attribute. |- [Table.AllowAutoFit](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.allowautofit.html)|
|Default Cell Margins |Planned |Can be imported from "spacing" style attribute on table. |<p>- [Table.LeftPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.leftpadding.html) </p><p>- [Table.RightPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.rightpadding.html) </p><p>- [Table.BottomPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.bottompadding.html) </p><p>- [Table.TopPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.toppadding.html)</p>|
|Default Cell Spacing |Planned |Can be imported from "padding-left", "padding-right" etc style attribute on table. |- [Table.CellSpacing](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.cellspacing.html)|
|Preferred Table Width |Yes |Preferred width on table can be set to absolute (points), relative (percent) or auto setting. <br><br>Imported from width as relative (percent) or absolute (point) width from <table>. |- [Table.PreferredWidth](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.preferredwidth.html)|
|Table Shading |Yes |Imported from background-color style attribute on all cells in the table. |- [Table.SetShading](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.setshading.html)|
|Hidden |Planned |Will be imported from display:none style attribute on table. | |
## **Floating Tables**
Floating tables are supported during import and export. However there is currently no API to access or modify the floating position of a table.

Floating tables are imported as inline.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Floating Tables |Planned | | |
## **Table Borders**
Table borders are stored in the rows of the table. This mimics the structure of an OOXML document.

If you try to set borders or shading on a table without any rows then an exception will be thrown. Add at least one row first.

Borders are imported from each cell from style attribute border-XXX-style, border-XXX-color etc.

See the following links in the documentation for further information:

- [Table.SetBorders](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.setborders.html)
- [Table.ClearBorders](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.table.clearborders.html)
- [RowFormat.Borders](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.borders.html)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Table Borders |Planned | | |
## **Rows**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Break Across Pages |Planned | |<p>- [Keeping Tables and Rows from Breaking across Pages]() </p><p>- [RowFormat.AllowBreakAcrossPages](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.allowbreakacrosspages.html)</p>|
|Repeat as Header Row |Planned |Will be imported from <thead> and <th> elements. <br><br>Currently content from such elements are still imported properly but not as header rows. |<p>- [Specifying Rows to Repeat on Subsequent Pages as Header Rows]() </p><p>- [RowFormat.HeadingFormat](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.headingformat.html)</p>|
|Height |Yes |Imported from "height" of style attribute on <tr>. Row height is only from <tr> and not from <td> cells. |- [RowFormat.Height](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.height.html)|
|Height Rule |Planned |A row without any height is imported as "Auto" height rule. <br><br>A row with height defined is imported as "At Least". |- [RowFormat.HeightRule](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.rowformat.heightrule.html)|
## **Cells**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Cell Margins |Yes |Imported from padding-XXX on <td> elements. |<p>- [CellFormat.TopPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.toppadding.html) </p><p>- [CellFormat.BottomPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.bottompadding.html) </p><p>- [CellFormat.LeftPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.leftpadding.html) </p><p>- [CellFormat.RightPadding](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.rightpadding.html)</p>|
|Borders |Yes |Imported from <td> style attribute border-XXX-style, border-XXX-width etc. |- [CellFormat.Borders](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.borders.html)|
|Shading |Yes |Imported from "background-color" style attribute on <td>. <br><br>Note that background-image attribute is not supported as a Cell in a Microsoft Word document does not have a corresponing feature to this>. <br><br>Instead consider applying the background image to the paragraph inside the cell in the HTML document. |- [CellFormat.Shading](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.shading.html)|
|Wrap Text |Planned | |- [CellFormat.WrapText](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.wraptext.html)|
|Fit Text |Planned | |- [CellFormat.FitText](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.fittext.html)|
|Preferred Width |Yes |Imported from style attribute width from cells as either relative (percent) or fixed (points). |- [CellFormat.PreferredWidth](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.preferredwidth.html)|
|Merged Horizontally |Yes |Imported from "row-span" attribute on <td>. |<p>- [Working with Merged Cells]() </p><p>- [CellFormat.HorizontalMerge](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.horizontalmerge.html)</p>|
|Merged Vertically |Yes |Imported from "col-span" attribute on <td>. |- [CellFormat.VerticalMerge](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.verticalmerge.html)|
|Vertical Alignment |Yes |Imported from vertical-align attribute on cell. |- [CellFormat.VerticalAlignment](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.verticalalignment.html)|
|Text Direction |Yes |Imported from "writing-mode" style attribute. |- [CellFormat.Orientation](http://www.aspose.com/documentation/.net-components/aspose.words-for-.net/aspose.words.tables.cellformat.orientation.html)|

