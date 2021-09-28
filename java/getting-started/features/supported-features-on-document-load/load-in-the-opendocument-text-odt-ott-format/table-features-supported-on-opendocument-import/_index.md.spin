---
title: Table Features Supported on OpenDocument Import
type: docs
weight: 110
url: /java/table-features-supported-on-opendocument-import/
---

{{% alert color="primary" %}} 

A table is comprised of rows and cells and is used to display data in a grid-like layout.

Aspose.Words supports imports of tables from all loaded formats including Microsoft Word, Open Office and HTML documents.

A table is represented in Aspose.Words by a Table node. Each row of the table is represented by a separate Row node. Likewise each cell of the row is represented by a Cell node. Each node type has it's own formatting properties which controls the table's appearance and behavior.

- Table contains the properties for controlling the formatting of a table as a whole.
- Each Row provides a RowFormat object which contains the properties that control formatting for that particular row.
- Each Cell has a CellFormat object which provides properties to control the formatting of each cell.

Using Aspose.Words you can access and modify all features and formatting of a table along with creating new tables and removing existing ones from the document.

Note that some elements of a table may be wrapped with Markup nodes such as CustomXmlMarkup or StructuredDocumentTag nodes.

See the following links in the documentation for further information:

- [Working with Tables]()
- **Table**

[Jump to this location in the export section]()

{{% /alert %}} 

## Table

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Nested Tables |Yes | | |
|Right To Left Tables |Yes | |- **Table.Bidi**|
|Table Style |N/A | | |
|Conditional Formatting Style |N/A | | |
|Table Alignment |Yes | |- **Table.Alignment**|
|Table Indent |Yes | |- **Table.LeftIndent**|
|Allow AutoFit |Yes | |- **Table.AllowAutoFit**|
|Default Cell Margins |Yes | |<p>- **Table.LeftPadding** </p><p>- **Table.RightPadding** </p><p>- **Table.BottomPadding** </p><p>- **Table.TopPadding**</p>|
|Default Cell Spacing |N/A | | |
|Preferred Table Width |Yes |Preferred width on the table can be set to absolute (points), relative (percent) or auto setting. |- **Table.PreferredWidth**|
|Table Shading |Yes | |- **Table.SetShading**|
|Hidden |N/A | | |

## Floating Tables

Floating tables are supported during import and export. However there is currently no API to access or modify the floating position of a table.

Floating tables are imported as inline tables with a left indent.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Floating Tables |Planned | | |

## Table Borders

Table borders are stored in the rows of the table. This mimics the structure of an OOXML document.

If you try to set borders or shading on a table without any rows then an exception will be thrown. Add at least one row first.

See the following links in the documentation for further information:

- **Table.SetBorders**
- **Table.ClearBorders**
- **RowFormat.Borders**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Table Borders |Yes | | |

## Rows

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Break Across Pages |Yes | |<p>- [Keeping Tables and Rows from Breaking across Pages]() </p><p>- **RowFormat.AllowBreakAcrossPages**</p>|
|Repeat as Header Row |Yes | |<p>- [Specifying Rows to Repeat on Subsequent Pages as Header Rows]() </p><p>- **RowFormat.HeadingFormat**</p>|
|Height |Yes | |- **RowFormat.Height**|
|Height Rule |Yes | |- **RowFormat.HeightRule**|

## Cells

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Cell Margins |Yes | |<p>- **CellFormat.TopPadding** </p><p>- **CellFormat.BottomPadding** </p><p>- **CellFormat.LeftPadding** </p><p>- **CellFormat.RightPadding**</p>|
|Borders |Yes |Diagonal borders are not saved to ODT. <br><br>Dashed, shadow and triple lines appear differently when saved to ODT. |- **CellFormat.Borders**|
|Shading |Yes |Textured fills are saved as solid fills to ODT. |- **CellFormat.Shading**|
|Wrap Text |Yes | |- **CellFormat.WrapText**|
|Fit Text |Yes | |- **CellFormat.FitText**|
|Preferred Width |Yes | |- **CellFormat.PreferredWidth**|
|Merged Horizontally |Yes | |<p>- [Working with Merged Cells]() </p><p>- **CellFormat.HorizontalMerge**</p>|
|Merged Vertically |Yes | |- **CellFormat.VerticalMerge**|
|Vertical Alignment |Yes | |- **CellFormat.VerticalAlignment**|
|Text Direction |Yes | |- **CellFormat.Orientation**|

