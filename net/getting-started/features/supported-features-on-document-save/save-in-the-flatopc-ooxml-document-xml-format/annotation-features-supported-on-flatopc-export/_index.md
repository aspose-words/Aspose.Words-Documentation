---
title: Annotation Features Supported on FlatOPC Export – Aspose.Words for .NET
articleTitle: Annotation Features Supported on FlatOPC Export
linktitle: Annotation Features Supported on FlatOPC Export
description: "Aspose.Words for .NET allows you to work with annotation field supported when saving to FlatOPC – XML format."
type: docs
weight: 10
url: /net/annotation-features-supported-on-flatopc-export/
---

{{% alert color="primary" %}}

[Jump to this location in the import section](/words/net/annotation-features-supported-on-flatopc-import/)

{{% /alert %}}

## Bookmarks

All Word documents and most other formats that Aspose.Words export to only allow bookmarks with unqiue names, that is, no two bookmarks are allowed the exact same name.

If two bookmarks are given the same name in the model then no errors will occur. During export to any format the duplicate bookmarks are removed silently. The first bookmark visited in the model is the one that is retained, any other bookmarks are removed,

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Bookmark Start |Yes | | |
|Bookmark End |Yes | | |
|Bookmark Name |Yes | | |
|Bookmark Table Columns |Yes | | |

## Comments

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Comment |Yes | | |
|Comment Range |Yes | | |
|Author |Yes | | |
|Date |Yes | | |
|Initial |Yes | | |

## Tracking Changes

You may need to accept tracked changes before saving to different formats or else the deleted revisions will still show up in the output document.

See the following link in the documentation for further information:

- [Document.AcceptAllRevisions](https://apireference.aspose.com/words/net/aspose.words/document/methods/acceptallrevisions)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|On/Off State |Yes | | |
|Table Cell Deletion |Planned | | |
|Table Cell Insertion |Planned | | |
|Cell Merge or Split |Planned | | |
|Run Deletion |Yes | | |
|Run Insertion |Yes | | |
|Paragraph Deletion |Yes | | |
|Paragraph Insertion |Yes | | |
|Table Row Deletion |Yes | | |
|Table Row Insertion |Yes | | |
|Numbering Insertion |Yes | | |
|Numbering Change |Yes | | |
|Moves |Planned | | |
|Paragraph Properties Change |Yes | | |
|Run Properties Change |Yes | | |
|Section Properties Change |Yes | | |
|Table Properties Change |Yes | | |
|Cell Properties Change |Yes | | |
|Row Properties Change |Yes | | |
|RSIDs Session Identifiers |Yes |RSID ids on revisions are preserved even when converting to different formats. | |

