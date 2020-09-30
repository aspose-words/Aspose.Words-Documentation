---
title: Annotation Features Supported on XPS Export
type: docs
weight: 10
url: /net/annotation-features-supported-on-xps-export/
---

##### **Bookmarks**
{{% alert color="primary" %}} 

All Word documents and most other formats that Aspose.Words export to only allow bookmarks with unqiue names, that is, no two bookmarks are allowed the exact same name.

If two bookmarks are given the same name in the model then no errors will occur. During export to any format the duplicate bookmarks are removed silently. The first bookmark visited in the model is the one that is retained, any other bookmarks are removed,

Bookmarks are exported to XPS and can be made to appear the document outline by using the appropriate save option.

See the following link in the documentation for further information:

- [XpsSaveOptions.BookmarksOutlineLevel](https://apireference.aspose.com/words/net/aspose.words.saving/outlineoptions/properties/bookmarksoutlinelevels)

{{% /alert %}} 

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bookmark Start |Yes | | |
|Bookmark End |Yes | | |
|Bookmark Name |Yes | | |
|Bookmark Table Columns |N/A | | |
##### **Comments**
Comments are exported to XPS.

In version 1.0 of comments rendering long or many comments are not truncated in XPS output.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Comment |Yes | | |
|Comment Range |Yes | | |
|Author |Yes | | |
|Date |Yes | | |
|Initial |Yes | | |
##### **Tracking Changes**
You may need to accept tracked changes before saving to different formats or else the deleted revisions will still show up in the output document.

In a future version there will be an option to render the document in any level of "mark up" e.g Final with Markup, Final (without markup) etc.

For now rendering simple insertion, change or deletion revisions can be simulated by applying appropriate run formatting on these revisions before rendering.

See the following link in the documentation for further information:

- [Document.AcceptAllRevisions](https://apireference.aspose.com/words/net/aspose.words/document/methods/acceptallrevisions)

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

