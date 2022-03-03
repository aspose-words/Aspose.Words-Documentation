---
title: Table Features Supported on EPUB Export
second_title: Aspose.Words for Java
articleTitle: Table Features Supported on EPUB Export
linktitle: Table Features Supported on EPUB Export
description: "Export to EPUB format using table saving features in Java."
type: docs
weight: 120
url: /java/table-features-supported-on-epub-export/
---

{{% alert color="primary" %}}

Table is exported to HTML as &lt;table&gt; and other applicable tags.

There is a save option to control how table and cell widths are exported. You can choose to export absolute and relative values, relative values only or no width. When no width is exported then the viewer must calculate the appropriate widths for the table elements.

See the following link in the documentation for further information:

- **HtmlSaveOptions.TableWidthOutputMode**

[Jump to this location in the import section]()

{{% /alert %}}

## Table

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Nested Tables |Yes | | |
|Right To Left Tables |Yes | | |
|Table Style |Yes |When a table style is present, it is converted to direct formatting on save so all formatting is still preserved. <br><br>There are plans to export table styles as CSS so they can be properly round-tripped. | |
|Conditional Formatting Style |Yes | | |
|Table Alignment |Yes |If the table is inline then it's exported as a &lt;table&gt; wrapped inside a &lt;div&gt; formatted with text-align style. <br><br>This is done so the the text does not wrap around the table. | |
|Table Indent |Yes |Exported as margin-left:XXX on table. | |
|Allow AutoFit |Planned |Consider export of such tables with "table-layout:fixed". | |
|Default Cell Margins |Yes |Margins are output on every cell. | |
|Default Cell Spacing |Planned | | |
|Preferred Table Width |Yes |Fixed width tables are exported as width=XXXpt on &lt;table&gt;. <br><br>A table with relative size (percent) is exported as a percent width e.g width=100%. | |
|Table Shading |Yes |Only solid fill color is supported. <br><br>Exported as background-color style attribute on all cells in the table. | |
|Hidden |Planned |Hidden table or row is currently exported as as collapsed with no content. This can produce the correct output with the exception of a row border present. | |

## Floating Tables

Floating tables are saved as normal tables.

Left, right and center alignment is supported.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Horizontal Position |Planned | | |
|Horizontal Position Relative To |Planned | | |
|Vertical Position |Planned | | |
|Vertical Position Relative To |Planned | | |
|Distance from Text |Planned | | |
|Move with Text |Planned | | |
|Allow Overlap Floating Tables |Planned | | |

## Table Borders

Currently borders are output on each cells as style attribute border-XXX-style, border-XXX-color etc.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Table Borders |Yes | | |

## Rows

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Allow Break Across Pages |Planned | | |
|Repeat as Header Row |Yes |A table that has heade rows are exported as &lt;thead&gt; and &lt;th&gt; elements. Normal rows exported with &lt;tbody&gt; and &lt;tr&gt; elements. <br><br>Tables without header rows are exported as &lt;tr&gt; elements without &lt;tbody&gt;. | |
|Height |Yes |Exported as style attribute height on &lt;tr&gt; | |
|Height Rule |Yes |Auto is exported with no height attribute allowing auto-resize. <br><br>At least and exact are both exported as height in points. | |

## Cells

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Cell Margins |Yes |Exported as padding-XXX on each cell. | |
|Borders |Yes |Supported except for diagonal borders. Not all line types are exported. <br><br>Exported as &lt;td&gt; style attribute border-XXX-style, border-XXX-width etc. | |
|Shading |Yes |Only solid fill is supported. <br><br>Exported as "background-color" style attribute on &lt;td&gt;. | |
|Wrap Text |Planned | | |
|Fit Text |Planned | | |
|Preferred Width |Yes |Exported as style attribute width on cells as either relative (percent) or fixed (points). | |
|Merged Horizontally |Yes |Exported as "row-span" attribute on &lt;td&gt;. | |
|Merged Vertically |Yes |Exported as "col-span" attribute on &lt;td&gt;. | |
|Vertical Alignment |Yes |Exported as "vertical-align" attribute on cell. | |
|Text Direction |Yes |Exported as "writing-mode" on style attribute. | |

