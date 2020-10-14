---
title: Track Changes in a Document
type: docs
weight: 90
url: /net/track-changes-in-a-document/
---

This article outlines how Aspose.Words supports the Track Changes feature of Microsoft Word. The Track Changes feature (also called Reviewing) in Microsoft Word allows you to track changes to content and formatting made by users. When you turn this feature on, all inserted, deleted and modified elements of the document will be visually highlighted with information about who, when and what was changed. The objects that carry the information about what was changed are called "tracking changes" or "revisions".

The Comments feature in Microsoft Word is also related to tracking changes. It allows a user to add a comment to any fragment of text in the document. Note that comments are completely independent of tracking changes.

## Preserving Comments and Revisions

When you use Aspose.Words to open a Microsoft Word document and then save it, all comments and revisions in the document are preserved.

## Accept Revisions

The [Document.AcceptAllRevisions](http://www.aspose.com/api/net/words/aspose.words/document/methods/AcceptAllRevisions) method allows you to "accept" all revisions in the document. Calling this method is similar to selecting "Accept All Changes" in Microsoft Word. Aspose.Words will actually delete fragments that were "delete revisions", retain fragments that were "insert revisions" and apply formatting changes. Note that comments are not affected during this operation. In Aspose.Words, you can accept tracking changes of the document by calling the [Document.AcceptAllRevisions ](http://www.aspose.com/api/net/words/aspose.words/document/methods/acceptallrevisions)method. The following code example demonstrates how to accept all tracking changes in the document. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Document/Document.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AcceptAllRevisions-AcceptAllRevisions.cs" >}}

You can also check if a document has any tracking changes using the Document.HasRevisions property.

## Programmatically Access Revisions

There could be insert, delete and formatting change revisions in a Word document. Aspose.Words allows you to programmatically detect certain types of revisions. The IsInsertRevision, IsDeleteRevision, IsMoveFromRevision, and IsMoveToRevision properties available for the [Run](http://www.aspose.com/api/net/words/aspose.words/run) and [Paragraph](http://www.aspose.com/api/net/words/aspose.words/paragraph) objects allow you to detect whether this object was inserted, deleted, or moved in Microsoft Word while change tracking was enabled. The [Document.HasRevisions](http://www.aspose.com/api/net/words/aspose.words/document/properties/hasrevisions) property returns true if the document has at least one revision. The [Document.TrackRevisions](http://www.aspose.com/api/net/words/aspose.words/document/properties/trackrevisions) property can be set to true to indicate whether the revision tracking in Microsoft Word will be enabled.

{{% alert color="primary" %}} 

Note that this setting does not affect the changes made to the document using Aspose.Words. Changes made to the document using Aspose.Words are never tracked as revisions.

{{% /alert %}} 

The following code example demonstrates how to check move from (deleted) and move to (inserted) revisions. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRevisions-GetRevisionTypes.cs" >}}

## How to Access the Revised Version of a Document

The API provides *RevisionsView* public enumeration which allows specifying whether to work with the original or revised version of a document. The document class provides RevisionsView property which gets or sets enumeration value. The default value is Aspose.Words.RevisionsView.Original. 

The following code example demonstrates how to use this enumeration and access the revised version.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRevisions-AccessRevisedVersion.cs" >}}

## Access Revision Group

A revision in Aspose.Words is a change in one document node. A set of sequential revisions of the same type in adjacent document nodes forms a revision group. Similar revision groups are displayed in the "Reviewing Pane" of MS Word. RevisionGroup class represents a group of sequential Revision objects. The following code example demonstrates how to get a revision and its group.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRevisions-GetRevisionGroups.cs" >}}

## Programmatically Access Comments

Comments are represented in the document tree as objects of the Comment class. You can add, delete or modify comments programmatically like any other node in Aspose.Words Document Object Model. Comment is a composite node and can contain paragraphs and tables that constitute the text of the comment. The Comment class also provides access to the name and initials of the author of the comment.

## Revision Group Details

The Revision.Group property in Revision class can be used to get details if the revision belongs to any group. Its value will be null if the revision does not belong to any group. If the revision type is RevisionType.StyleDefinitionChange or if the revision no longer exists in document context (accepted/rejected) then it means that Revision has no group.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRevisions-GetRevisionGroupDetails.cs" >}}
