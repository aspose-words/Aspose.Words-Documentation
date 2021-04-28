---
title: Annotation Features Supported on DOCX Import
description: ""
type: docs
weight: 10
url: /net/annotation-features-supported-on-docx-import/
---

Annonations allow the user to add extra information to the document normally for use in review or collaboration. Annonation functions are supported by Aspose.Words as described in this article.

{{% alert color="primary" %}}

See also the article ["Annotation Features Supported on DOCX Export"](/words/net/annotation-features-supported-on-docx-export/) in the saving section.

{{% /alert %}} 

## Bookmarks

|Feature|Comment|Supported|Supported Formats|Aspose.Words public API|
| :- | :- | :- | -- | -- |
|Bookmark Start | Designates the start of a bookmark region in the document | Yes | ...<br />Microsoft Word Document 97-2003 formats: .DOC, .DOT<br />Open Office XML 2007 and 2010 formats: .DOCX, .DOTX, .DOCM, .DOTM<br />... |[BookmarkStart](https://apireference.aspose.com/words/net/aspose.words/bookmarkstart)|
|Bookmark End | Designates the end of a bookmark region in the document | Yes | ...<br />Microsoft Word Document 97-2003 formats: .DOC, .DOT<br />Open Office XML 2007 and 2010 formats: .DOCX, .DOTX, .DOCM, .DOTM<br />... |[BookmarkEnd](https://apireference.aspose.com/words/net/aspose.words/bookmarkend)|
|Bookmark Name | Defines the name of a bookmark | Yes | ...<br />Microsoft Word Document 97-2003 formats: .DOC, .DOT<br />Open Office XML 2007 and 2010 formats: .DOCX, .DOTX, .DOCM, .DOTM<br />... |[Name](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/name)|
|Bookmark Text | Defines text content of a bookmark | Yes | ...<br />Microsoft Word Document 97-2003 formats: .DOC, .DOT<br />Open Office XML 2007 and 2010 formats: .DOCX, .DOTX, .DOCM, .DOTM<br />... |[<br/>Text](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/text)|
|Bookmark Table Columns | Allows to get information about table column associated with a bookmark | Yes | ...<br />Microsoft Word Document 97-2003 formats: .DOC, .DOT<br />Open Office XML 2007 and 2010 formats: .DOCX, .DOTX, .DOCM, .DOTM<br />... | [FirstColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/firstcolumn)<br />[IsColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/iscolumn)<br />[LastColumn](https://apireference.aspose.com/words/net/aspose.words/bookmark/properties/lastcolumn) |

Bookmarks are imported into a document as the **BookmarkStart** and **BookmarkEnd** nodes. Bookmark nodes are represented as inline nodes (children of a paragraph).

The Aspose.Words model is based on Microsoft Word document formats. In these formats, bookmark names must be unique. The Aspose.Words model allows bookmarks with the same name, but all duplicates are automatically removed on export. Note that duplicate bookmarks can occur when you accentitly create a bookmark with the same name, or when documents containing the same bookmark are joined together using the AppendDocument or InsertDocument methods.

In Microsoft Word document formats, a bookmark range can span a over long amoutns of content, including various paragraphs and even tables. Thus, some bookmark markers in Word documents are at different levels of the document hierarchy than just inline. This means that when they are imported into Aspose.Words, they are translated to the cloesest inline position. This is usually not a problem, but some bookmarks in tables may appear differently when imported.

You can access a bookmark as a "single object" using the Bookmark facade. While working with bookmarks, you can add and remove them from a document, as well as set and get the text of the bookmark content.

Useful links:

- [Working with Bookmarks](/words/net/working-with-bookmarks/)
- [Range.Bookmarks](https://apireference.aspose.com/words/net/aspose.words/range/properties/bookmarks)
- [Bookmark](https://apireference.aspose.com/words/net/aspose.words/bookmark)


## Comments

A comment in a document is imported as a Comment node in the Aspose.Words DOM.

The range of a comment can span over various parts of the document text, including over many paragraphs and tables.

In Aspose.Words this range is represented by the following nodes:

- Comment
- CommentRangeStart
- CommentRangeEnd

The CommentRangeStart and CommentRangeEnd nodes define the area of the document that the comment is applied to. The Comment node defines the actual content of the comment and provides members to access the comment properties such as Author and Time.

All three comment nodes are related through the use of the ID properties on each node.

See the following links in the documentation for further information:

- [How to Extract or Remove Comments](https://docs.aspose.com/words/net/working-with-comments/#how-to-extract-or-remove-comments)
- [Comment](https://apireference.aspose.com/words/net/aspose.words/comment/)
- [Comment.Id](https://apireference.aspose.com/words/net/aspose.words/comment/properties/id)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Comment |Yes | |- [Comment.ToTxt](https://apireference.aspose.com/words/net/aspose.words/compositenode/methods/gettext)|
|Comment Range |Yes | |<p>- [CommentRangeStart](https://apireference.aspose.com/words/net/aspose.words/comment/properties/rangestart) </p><p>- [CommentRangeEnd](https://apireference.aspose.com/words/net/aspose.words/comment/properties/rangeend)</p>|
|Author |Yes | |- [Comment.Author](https://apireference.aspose.com/words/net/aspose.words/comment/properties/author)|
|Date |Yes | |- **Comment.Date**|
|Initial |Yes | |- **Comment.Inital**|

## Tracking Changes

Tracked changes are imported into the model as regular nodes. Paragraphs, Runs and Shapes all provide special properties to specify if they are insert or delete revisions.

You can work with each these revisions manually or choose to accept all revisions at once. There is currently no API to reject changes.

Using Aspose.Words you can set tracked changes to be on or off. Note however that any changes made in the DOM using Aspose.Words are not recorded as tracked changes.

You may need to accept tracked changes before saving to different formats or else the deleted revisions will still show up in the output document.

Most revision types properly round-tripped to the appropriate formats. Currently only Insert and Delete revisions are made avaliable in the public API. Also Move and some Table revisions are unsupported. Additionally formatting changes are also unsupported.

These additonal features will be included in a future version as well as an API to easily retrieve revisions by author, date etc.

See the following links in the documentation for further information:

- [Manage Tracking Changes](/words/net/track-changes-in-a-document/)
- [Document.HasRevisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/hasrevisions)
- [Document.TrackRevisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/trackrevisions)
- [Document.AcceptAllRevisions](https://apireference.aspose.com/words/net/aspose.words/document/properties/acceptallrevisions)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|On/Off State |Yes | | |
|Table Cell Deletion |Planned | | |
|Table Cell Insertion |Planned | | |
|Cell Merge or Split |Planned | | |
|Run Deletion |Yes | |- [Run.IsDeleteRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/isdeleterevision)|
|Run Insertion |Yes | |- [Run.IsInsertRevision](https://apireference.aspose.com/words/net/aspose.words/inline/properties/isinsertrevision)|
|Paragraph Deletion |Yes | |- [Paragraph.IsDeleteRevision](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/isdeleterevision)|
|Paragraph Insertion |Yes | |- [Paragraph.IsInsertRevision](https://apireference.aspose.com/words/net/aspose.words/paragraph/properties/isinsertrevision)|
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
|RSIDs Session Identifiers |Yes | | |
