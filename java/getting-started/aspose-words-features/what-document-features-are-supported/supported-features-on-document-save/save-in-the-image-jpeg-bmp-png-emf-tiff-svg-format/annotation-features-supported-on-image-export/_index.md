---
title: Annotation Features Supported on Image Export
type: docs
weight: 10
url: /java/annotation-features-supported-on-image-export/
---

## **Bookmarks**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bookmark Start |Yes | | |
|Bookmark End |Yes | | |
|Bookmark Name |Yes | | |
|Bookmark Table Columns |N/A | | |

## **Comments**

Comments are exported to rendered formats.

In version 1.0 of comments rendering long or many comments are not truncated.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Comment |Yes | | |
|Comment Range |Yes | | |
|Author |Yes | | |
|Date |Yes | | |
|Initial |Yes | | |

## **Tracking Changes**

You may need to accept tracked changes before saving to different formats or else the deleted revisions will still show up in the output document.

Tracked changes are currently not rendered in the way they appear in Microsoft Word. This functionality will be included in a future version of Aspose.Words. At the moment any tracked changes are rendered as plain content and thefore may affect the apperance of the document. For this reason you may need to accept all revisions before rendering.

In a future version there will be an option to render the document in any level of "mark up" e.g Final with Markup, Final (without markup) etc.

For now rendering simple insertion, change or deletion revisions can be simulated by applying appropriate run formatting on these revisions before rendering.

See the following link in the documentation for further information:

- **Document.AcceptAllRevisions**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|On/Off State |Planned | | |
|Table Cell Deletion |Planned | | |
|Table Cell Insertion |Planned | | |
|Cell Merge or Split |Planned | | |
|Run Deletion |Planned | | |
|Run Insertion |Planned | | |
|Paragraph Deletion |Planned | | |
|Paragraph Insertion |Planned | | |
|Table Row Deletion |Planned | | |
|Table Row Insertion |Planned | | |
|Numbering Insertion |Planned | | |
|Numbering Change |Planned | | |
|Moves |Planned | | |
|Paragraph Properties Change |Planned | | |
|Run Properties Change |Planned | | |
|Section Properties Change |Planned | | |
|Table Properties Change |Planned | | |
|Cell Properties Change |Planned | | |
|Row Properties Change |Planned | | |
|RSIDs Session Identifiers |Planned |RSID ids on revisions are preserved even when converting to different formats. | |

