---
title: Annotation Features Supported on PDF Export
description: "Aspose.Words for Java allows you to work with annotation features supported when saving to PDF format."
type: docs
weight: 10
url: /java/annotation-features-supported-on-pdf-export/
---

## Bookmarks

{{% alert color="primary" %}} 

All Word documents and most other formats that Aspose.Words export to only allow bookmarks with unique names, that is, no two bookmarks are allowed the exact same name.

If two bookmarks are given the same name in the model then no errors will occur. During export to any format the duplicate bookmarks are removed silently. The first bookmark visited in the model is the one that is retained, any other bookmarks are removed,

Bookmarks are exported to PDF and can be made to appear the document outline by using the appropriate save option.

See the following link in the documentation for further information:

- [OutlineOptions.DefaultBookmarksOutlineLevel](https://apireference.aspose.com/words/java/com.aspose.words/OutlineOptions)

{{% /alert %}} 

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bookmark Start|Yes| | |
|Bookmark End|Yes| | |
|Bookmark Name|Yes| | |
|Bookmark Table Columns|N/A| | |

## Comments

Comments are exported to PDF.

In version 1.0 of comments rendering long or many comments are not truncated in PDF output.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Comment|Yes| | |
|Comment Range|Yes| | |
|Author|Yes| | |
|Date|Yes| | |
|Initial|Yes| | |

## Tracking Changes

You may need to accept tracked changes before saving to different formats or else the deleted revisions will still show up in the output document.

Tracked changes are currently not exported to PDF in the way they appear in Microsoft Word. This functionality will be included in a future version of Aspose.Words. At the moment any tracked changes are exported to PDF as plain content and therefore may affect the appearance of the document. For this reason you may need to accept all revisions before rendering.

See the following link in the documentation for further information:

- [Document.AcceptAllRevisions](https://apireference.aspose.com/words/java/com.aspose.words/document#acceptAllRevisions())

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|On/Off State|Planned| | |
|Table Cell Deletion|Planned| | |
|Table Cell Insertion|Planned| | |
|Cell Merge or Split|Planned| | |
|Run Deletion|Planned| | |
|Run Insertion|Planned| | |
|Paragraph Deletion|Planned| | |
|Paragraph Insertion|Planned| | |
|Table Row Deletion|Planned| | |
|Table Row Insertion|Planned| | |
|Numbering Insertion|Planned| | |
|Numbering Change|Planned| | |
|Moves|Planned| | |
|Paragraph Properties Change|Planned| | |
|Run Properties Change|Planned| | |
|Section Properties Change|Planned| | |
|Table Properties Change|Planned| | |
|Cell Properties Change|Planned| | |
|Row Properties Change|Planned| | |
|RSIDs Session Identifiers|Planned|RSID ids on revisions are preserved even when converting to different formats.| |

