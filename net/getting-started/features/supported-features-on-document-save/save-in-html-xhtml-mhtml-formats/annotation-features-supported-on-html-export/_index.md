---
title: Annotation Features Supported on HTML Export – Aspose.Words for .NET
articleTitle: Annotation Features Supported on HTML Export
linktitle: Annotation Features Supported on HTML Export
description: "Aspose.Words for .NET allows you to work with annotation features supported when saving to HTML-based format."
type: docs
weight: 10
url: /net/annotation-features-supported-on-html-export/
---

{{% alert color="primary" %}} 

[Jump to this location in the import section](/words/net/annotation-features-supported-on-html-import/)

{{% /alert %}} 

Try Online

You can check the quality of HTML Export and view the results online at this link:

<https://products.aspose.app/words/viewer>


## Bookmarks

All Word documents and most other formats that Aspose.Words export to only allow bookmarks with unique names, that is, no two bookmarks are allowed the exact same name.

If two bookmarks are given the same name in the model then no errors will occur. During export to any format, the duplicate bookmarks are removed silently. The first bookmark visited in the model is the one that is retained, any other bookmarks are removed,

Bookmark is represented by &lt;a&gt; element. The only bookmark start is output. Nesting and overlapping are not allowed.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Bookmark Start|Yes| | |
|Bookmark End|Planned|There are plans to support bookmark end. This is good to have for a roundtrip. <br><br>Currently, if bookmark end is required then it is suggested to export two bookmarks instead of one to achieve this.| |
|Bookmark Name|Yes| | |
|Bookmark Table Columns|N/A| | |

## Comments

There are plans to export comments to HTML as footnotes.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Comment|Yes|Currently, a comment is exported as "title" attribute on &lt;span&gt;.| |
|Comment Range|Yes|The same comment is exported as title attribute for all spans inside a comment range. <br>This will be improved in the future.| |
|Author|Planned| | |
|Date|Planned| | |
|Initial|Planned| | |

## Tracking Changes

You may need to accept tracked changes before saving to different formats or else the deleted revisions will still show up in the output document.

Exported as &lt;ins&gt; and &lt;del&gt; elements.

See the following link in the documentation for further information:

- [Document.AcceptAllRevisions](https://apireference.aspose.com/words/net/aspose.words/document/methods/acceptallrevisions)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|On/Off State|N/A| | |
|Table Cell Deletion|N/A| | |
|Table Cell Insertion|N/A| | |
|Cell Merge or Split|N/A| | |
|Run Deletion|Planned| | |
|Run Insertion|Planned| | |
|Paragraph Deletion|Planned| | |
|Paragraph Insertion|Planned| | |
|Table Row Deletion|N/A| | |
|Table Row Insertion|N/A| | |
|Numbering Insertion|N/A| | |
|Numbering Change|N/A| | |
|Moves|Planned|Will be represented just by pair of deletion and insertion.| |
|Paragraph Properties Change|N/A| | |
|Run Properties Change|N/A| | |
|Section Properties Change|N/A| | |
|Table Properties Change|N/A| | |
|Cell Properties Change|N/A| | |
|Row Properties Change|N/A| | |
|RSIDs Session Identifiers|N/A| | |

