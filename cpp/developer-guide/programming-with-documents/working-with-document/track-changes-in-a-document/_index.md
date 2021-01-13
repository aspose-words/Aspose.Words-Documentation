---
title: Track Changes in a Document
description: "Track changes to content and formatting made by you or others. Access individual revisions in a document and apply various properties to them."
type: docs
weight: 90
url: /cpp/track-changes-in-a-document/
---

The functionality of track changes, also known as reviewing, allows you to track changes to content and formatting made by you or other users. This track changes feature with Aspose.Words supports track changes in Microsoft Word. With this functionality, you can access individual revisions in your document and apply different properties to them.

When you enable the track changes feature, all inserted, deleted, and modified elements of the document will be visually highlighted with information about by whom, when, and what was changed. Objects that carry the information about what was changed are called “tracking changes”. For example, assume that you want to review a document and make important changes – this may mean that you need to make revisions. Also, you may need to insert comments to discuss some of the changes. That is where tracking changes in documents come in.

This article explains how to manage and track changes created by many reviewers on the same document, as well as the properties for tracking changes.

{{% alert color="primary" %}}

Note that the comment feature in Aspose.Words, as well as in Microsoft Word, can be associated with tracking changes. However, remember that comments are completely independent of tracking changes.

{{% /alert %}}

## What Is a Revision

Before diving into revisions, let’s explain the meaning of revisions. A [revision](https://apireference.aspose.com/words/cpp/class/aspose.words.revision) is a change that occurs in one node of a document while a revision group, represented by the [RevisionGroup](https://apireference.aspose.com/words/cpp/class/aspose.words.revision_group) class, is a group of sequential revisions that occur in many nodes of a document. Basically, revision is a tool for tracking changes.

Revisions are used in the tracking changes feature and within the compare documents feature, where revisions appear as a result of the comparison. So, revisions within the tracking changes feature show by whom and what was changed.

{{% alert color="primary" %}}

Note that Microsoft Word does not allow you to view individual revisions, it only allows you to view sequential revisions as a single entity. But Aspose.Words solves this limitation with the **RevisionGroup** class.

{{% /alert %}}

Aspose.Words supports different revision types, as well as in Microsoft Word, such as Insertion, Deletion, FormatChange, StyleDefinitionChange, and Moving. All revision types are represented with the [RevisionType](https://apireference.aspose.com/words/cpp/namespace/aspose.words#a43309065c8be1f20fae8bd689084cc2b) enumeration.

{{% alert color="primary" %}}

Note that revisions have a result similar to Microsoft Word but Aspose.Words does not detect formatting during tracking changes.

{{% /alert %}}

## Start and Stop Tracking Changes

Editing a document usually does not count as a revision until you begin tracking it. Aspose.Words allows you to automatically track all changes in your document with simple steps. You can easily start the process of tracking changes by using the [StartTrackRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a061d1158179354c8a22c3664a4fbf513) method. If you need to stop the process of tracking changes so that any future edits are not considered revisions, you will need to use the [StopTrackRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#ae56038652fb479eb9cd7f5917655f9f7) method.

{{% alert color="primary" %}}

Note that the StartTrackingRevisions method does not change the status of the [TrackRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#ab18436f335cff354e30a1570e6f7cd64) property and does not use its value for the aim of revision tracking. In addition, if a node was moved from one location to another inside the tracked document, then move revisions will be created, including move-from and move-to range.

{{% /alert %}}

At the end of the tracking changes process in your document, you will have the ability to even accept all revisions or reject them to revert the document to its original form. This can be achieved by either using the [AcceptAllRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#ae5d108969c269eb7f2f5da4d6669eec3) or [RejectAll](https://apireference.aspose.com/words/cpp/class/aspose.words.revision_collection#ade063e90e8632c54d0fb6b7c398fecd0) method. In addition, you can accept or reject each revision separately by using the [Accept](https://apireference.aspose.com/words/cpp/class/aspose.words.revision#a7b7ab08e3ed29d366c720286b2f882f6) or [Reject](https://apireference.aspose.com/words/cpp/class/aspose.words.revision#a4ccb1d9e69a3fb2783da8f8d737151ca) method.

All changes will be tracked for one iteration from the moment you start the process to the moment you stop it. The connection between different iterations is represented as the following scenario: you complete the tracking process, then make some changes, and start tracking changes again. With this scenario, all changes that you did not accept or reject will be displayed again.

{{% alert color="primary" %}}

Note that the AcceptAllRevisions method is similar to the “Accept All Changes” in Microsoft Word.

{{% /alert %}}

The following code example shows how to work with tracking changes:

{{< highlight csharp >}}
Document doc = new Document();
Body body = doc.FirstSection.Body;
Paragraph para = body.FirstParagraph;

// Add text to the first paragraph, then add two more paragraphs.
para.AppendChild(new Run(doc, "Paragraph 1. "));
body.AppendParagraph("Paragraph 2. ");
body.AppendParagraph("Paragraph 3. ");

// We have three paragraphs, none of which registered as any type of revision
// If we add/remove any content in the document while tracking revisions,
// they will be displayed as such in the document and can be accepted/rejected.
doc.StartTrackRevisions("John Doe", DateTime.Now);

// This paragraph is a revision and will have the according "IsInsertRevision" flag set.
para = body.AppendParagraph("Paragraph 4. ");
Assert.True(para.IsInsertRevision);

// Get the document's paragraph collection and remove a paragraph.
ParagraphCollection paragraphs = body.Paragraphs;
Assert.AreEqual(4, paragraphs.Count);
para = paragraphs[2];
para.Remove();

// Since we are tracking revisions, the paragraph still exists in the document, will have the "IsDeleteRevision" set
// and will be displayed as a revision in Microsoft Word, until we accept or reject all revisions.
Assert.AreEqual(4, paragraphs.Count);
Assert.True(para.IsDeleteRevision);

// The delete revision paragraph is removed once we accept changes.
doc.AcceptAllRevisions();
Assert.AreEqual(3, paragraphs.Count);
Assert.That(para, Is.Empty);

// Stopping the tracking of revisions makes this text appear as normal text.
// Revisions are not counted when the document is changed.
doc.StopTrackRevisions();

// Save the document.
doc.Save(ArtifactsDir + "Document.Revisions.docx");
{{< /highlight >}}

The following code example shows how revisions are generated when a node is moved within a tracked document:

{{< highlight csharp >}}
// Generate document contents.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("Paragraph 1");
builder.Writeln("Paragraph 2");
builder.Writeln("Paragraph 3");
builder.Writeln("Paragraph 4");
builder.Writeln("Paragraph 5");
builder.Writeln("Paragraph 6");
Body body = doc.FirstSection.Body;
Console.WriteLine("Paragraph count: {0}", body.Paragraphs.Count);

// Start tracking revisions.
doc.StartTrackRevisions("Author", new DateTime(2020, 12, 23, 14, 0, 0));

// Generate revisions when moving a node from one location to another.
Node node = body.Paragraphs[3];
Node endNode = body.Paragraphs[5].NextSibling;
Node referenceNode = body.Paragraphs[0];
while (node != endNode)
{
	Node nextNode = node.NextSibling;
	body.InsertBefore(node, referenceNode);
	node = nextNode;
}

// Stop the process of tracking revisions.
doc.StopTrackRevisions();

// There are 3 additional paragraphs in the move-from range.
Console.WriteLine("Paragraph count: {0}", body.Paragraphs.Count);
doc.Save(dir + @"out.docx");
{{< /highlight >}}

## Manage and Store Changes as Revisions

With the previous tracking changes feature, you can understand which changes were made in your document and who made those changes. While with the [TrackRevisions](https://apireference.aspose.com/words/cpp/class/aspose.words.document#ab658ac44514c4e24e5e6cfe142648b85) feature, you force any changes within your document to be stored as revisions.

Aspose.Words allows you to check if a document has a revision or not by using the [HasRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.document#a338b823b285cdb10a412c1c6253d9581) property. If you do not need to automatically track the changes in your document through the StartTrackRevisions and StopTrackRevisions methods, then you can use the TrackRevisions property to check if the changes are tracked while editing a document in Microsoft Word and stored as revisions.

The TrackRevisions feature makes revisions instead of real DOM changes. But the revisions themselves are separate. For example, If you delete any paragraph, Aspose.Words make it as a revision, marking it as deletion, instead of deleting it.

In addition, Aspose.Words allows you to check if an object was inserted, deleted, or changed formatting using the [IsDeleteRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#ad0beb416cfbf3364084abe0f4953449d), [IsFormatRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#a0f5429ed420b09883de9df99220f5f91), [IsInsertRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#a79d947ed19ffc663dd04cc94dc661ad2), [IsMoveFromRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#a0f5429ed420b09883de9df99220f5f91), and [IsMoveToRevision](https://apireference.aspose.com/words/cpp/class/aspose.words.inline#a11ebb4b8566fe5952a5d671445aa33a4) properties.

{{% alert color="primary" %}}

Note that there is no connection between the revisions themselves and the TrackRevisions property. In addition, you can accept/reject revisions regardless of the tracking changes feature.

{{% /alert %}}

The following code example shows how to apply different properties with revisions:

{{< highlight csharp >}}
// Open a blank document.
Document doc = new Document();

// Insert an inline shape without tracking revisions.
Assert.False(doc.TrackRevisions);
Shape shape = new Shape(doc, ShapeType.Cube);
shape.WrapType = WrapType.Inline;
shape.Width = 100.0;
shape.Height = 100.0;
doc.FirstSection.Body.FirstParagraph.AppendChild(shape);

// Start tracking revisions and then insert another shape.
doc.StartTrackRevisions("John Doe");
shape = new Shape(doc, ShapeType.Sun);
shape.WrapType = WrapType.Inline;
shape.Width = 100.0;
shape.Height = 100.0;
doc.FirstSection.Body.FirstParagraph.AppendChild(shape);

// Get the document's shape collection which includes just the two shapes we added.
List<Shape> shapes = doc.GetChildNodes(NodeType.Shape, true).Cast<Shape>().ToList();
Assert.AreEqual(2, shapes.Count);

// Remove the first shape.
shapes[0].Remove();

// Because we removed that shape while changes were being tracked, the shape counts as a delete revision.
Assert.AreEqual(ShapeType.Cube, shapes[0].ShapeType);
Assert.True(shapes[0].IsDeleteRevision);

// And we inserted another shape while tracking changes, so that shape will count as an insert revision.
Assert.AreEqual(ShapeType.Sun, shapes[1].ShapeType);
Assert.True(shapes[1].IsInsertRevision);

// The document has one shape that was moved, but shape move revisions will have two instances of that shape.
// One will be the shape at its arrival destination and the other will be the shape at its original location.
List<Shape> nc = doc.GetChildNodes(NodeType.Shape, true).Cast<Shape>().ToList();
Assert.AreEqual(2, nc.Count);

// This is the move to revision, also the shape at its arrival destination.
Assert.False(nc[0].IsMoveFromRevision);
Assert.True(nc[0].IsMoveToRevision);

// This is the move from revision, which is the shape at its original location.
Assert.True(nc[1].IsMoveFromRevision);
Assert.False(nc[1].IsMoveToRevision);
{{< /highlight >}}