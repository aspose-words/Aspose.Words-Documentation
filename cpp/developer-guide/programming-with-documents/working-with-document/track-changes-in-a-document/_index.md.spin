---
title: Track Changes in a Document
description: "Track changes to content and formatting made by you or others. Access individual revisions in a document and apply various properties to them using C++."
type: docs
weight: 90
url: /cpp/track-changes-in-a-document/
---

The functionality of track changes, also known as reviewing, {allows|enables} you to track changes to content and formatting made by you or other users. This track changes feature with Aspose.Words supports track changes in Microsoft Word. With this functionality, you can access individual revisions in your document and apply different properties to them.

When you enable the track changes feature, all inserted, deleted, and modified elements of the document will be visually highlighted with information about by whom, when, and what was changed. Objects that carry the information about what was changed are called “tracking changes”. For example, assume that you want to review a document and make important changes – this may mean that you need to make revisions. Also, you may need to insert comments to discuss some of the changes. That is where tracking changes in documents come in.

This article explains how to manage and track changes created by {many|multiple|several|a few|numerous} reviewers on the same document, as well as the properties for tracking changes.

{{% alert color="primary" %}}

Note that the comment feature in Aspose.Words, as well as in Microsoft Word, can be associated with tracking changes. However, remember that comments are completely independent of tracking changes.

{{% /alert %}}

## What Is a Revision

Before diving into revisions, let’s explain the meaning of revisions. A [revision](https://apireference.aspose.com/words/cpp/class/aspose.words.revision) is a change that occurs in one node of a document while a revision group, represented by the [RevisionGroup](https://apireference.aspose.com/words/cpp/class/aspose.words.revision_group) class, is a group of sequential revisions that occur in {many|multiple|several|a few|numerous} nodes of a document. Basically, revision is a tool for tracking changes.

Revisions are used in the tracking changes feature and within the compare documents feature, where revisions appear as a result of the comparison. So, revisions within the tracking changes feature show by whom and what was changed.

{{% alert color="primary" %}}

Note that Microsoft Word does not allow you to view individual revisions, it only {allows|enables} you to view sequential revisions as a single entity. But Aspose.Words solves this limitation with the **RevisionGroup** class.

{{% /alert %}}

Aspose.Words supports different revision types, as well as in Microsoft Word, such as Insertion, Deletion, FormatChange, StyleDefinitionChange, and Moving. All revision types are represented with the [RevisionType](https://apireference.aspose.com/words/cpp/namespace/aspose.words#revisiontype) enumeration.

{{% alert color="primary" %}}

Note that revisions have a result similar to Microsoft Word but Aspose.Words does not detect formatting during tracking changes.

{{% /alert %}}

## Start and Stop Tracking Changes

Editing a document usually does not count as a revision until you begin tracking it. Aspose.Words {allows|enables} you to automatically track all changes in your document with simple steps. You can easily start the process of tracking changes by using the [StartTrackRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#starttrackrevisions_string) method. If you need to stop the process of tracking changes so that any future edits are not considered revisions, you will need to use the [StopTrackRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#stoptrackrevisions) method.

{{% alert color="primary" %}}

Note that the StartTrackingRevisions method does not change the status of the [TrackRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#set_trackrevisions) property and does not use its value for the aim of revision tracking. In addition, if a node was moved from one location to another inside the tracked document, then move revisions will be created, including move-from and move-to range.

{{% /alert %}}

At the end of the tracking changes process in your document, you will have the ability to even accept all revisions or reject them to revert the document to its original form. This can be achieved by either using the [AcceptAllRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#acceptallrevisions) or [RejectAll](https://apireference.aspose.com/words/cpp/class/aspose.words.revision_collection#rejectall) method. In addition, you can accept or reject each revision separately by using the [Accept](https://apireference.aspose.com/words/cpp/class/aspose.words.revision#accept) or [Reject](https://apireference.aspose.com/words/cpp/class/aspose.words.revision#reject) method.

All changes will be tracked for one iteration from the moment you start the process to the moment you stop it. The connection between different iterations is represented as the following scenario: you complete the tracking process, then make some changes, and start tracking changes again. With this scenario, all changes that you did not accept or reject will be displayed again.

{{% alert color="primary" %}}

Note that the AcceptAllRevisions method is similar to the “Accept All Changes” in Microsoft Word.

{{% /alert %}}

The following code example {shows|demonstrates} how to work with tracking changes:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

The following code example {shows|demonstrates} how revisions are generated when a node is moved within a tracked document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## Manage and Store Changes as Revisions

With the previous tracking changes feature, you can understand which changes were made in your document and who made those changes. While with the [TrackRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#get_trackrevisions) feature, you force any changes within your document to be stored as revisions.

Aspose.Words {allows|enables} you to check if a document has a revision or not by using the [HasRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.document#get_hasrevisions) property. If you do not need to automatically track the changes in your document through the StartTrackRevisions and StopTrackRevisions methods, then you can use the TrackRevisions property to check if the changes are tracked while editing a document in Microsoft Word and stored as revisions.

The TrackRevisions feature makes revisions instead of real DOM changes. But the revisions themselves are separate. For example, If you delete any paragraph, Aspose.Words make it as a revision, marking it as deletion, instead of deleting it.

In addition, Aspose.Words {allows|enables} you to check if an object was inserted, deleted, or changed formatting using the [IsDeleteRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#get_isdeleterevision), [IsFormatRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#get_isformatrevision), [IsInsertRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#get_isinsertrevision), [IsMoveFromRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#get_isformatrevision), and [IsMoveToRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#get_ismovetorevision) properties.

{{% alert color="primary" %}}

Note that there is no connection between the revisions themselves and the TrackRevisions property. In addition, you can accept/reject revisions regardless of the tracking changes feature.

{{% /alert %}}

The following code example {shows|demonstrates} how to apply different properties with revisions:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
