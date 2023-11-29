---
title: Working with Comments in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Comments
linktitle: Working with Comments
description: "How to add, remove, or manipulate comments in a document using Python."
type: docs
weight: 260
url: /python-net/working-with-comments/
aliases: [/python/working-with-comments/]
---

{{% alert color="primary" %}}

**Try online**

You can try this functionality with our [Free online remove annotations](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words allows users to work with comments – comments in a document in Aspose.Words are represented by the [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) class. Also use the [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) and [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) classes to specify the region of text that should be associated with a comment.

## Add a Comment

Aspose.Words allows you to add comments in several ways:

1. Using the [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) class
2. Using the [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) and [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) classes

The following code example shows how to add a comment to a paragraph using the **Comment** class:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

The following code example shows how to add a comment to a paragraph using a region of text and the **CommentRangeStart** and **CommentRangeEnd** classes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Extract or Remove Comments

Using Comments in a Word document (in addition to Track Changes) is a common practice when reviewing documents, particularly when there are multiple reviewers. There can be situations where the only thing you need from a document is the comments. Say you want to generate a list of review findings, or perhaps you have collected all the useful information from the document and you simply want to remove unnecessary comments. You may want to view or remove the comments of a particular reviewer.

In this sample we are going to look at some simple methods for both gathering information from the comments within a document and for removing comments from a document. Specifically we'll cover how to:

- Extract all the comments from a document or only the ones made by a particular author.
- Remove all the comments from a document or only from a particular author.

### How to Extract or Remove Comments

The code in this sample is actually quite simple and all methods are based on the same approach. A comment in a Word document is represented by a [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) object in the Aspose.Words document object model. To collect all the comments in a document use the [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) method with the first parameter set to [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Make sure that the second parameter of the **get_child_nodes** method is set to true: this forces the **get_child_nodes** to select from all child nodes recursively, rather than only collecting the immediate children.

To illustrate how to extract and remove comments from a document, we will go through the following steps:

1. Open a Word document using the [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) class
1. Get all comments from the document into a collection
1. To extract comments:
   1. Go through the collection using the foreach operator
   1. Extract and list the author name, date & time and text of all comments
   1. Extract and list the author name, date & time and text of comments written by a specific author, in this case the author ‘ks’
1. To remove comments:
   1. Go backwards through the collection using the for operator
   1. Remove comments
1. Save the changes

### How to Extract All Comments

The [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) method is very useful and you can use it every time you need to get a list of document nodes of any type. The resulting collection does not create an immediate overhead because the nodes are selected into this collection only when you enumerate or access items in it.

The following code example shows how to extract the author name, date&time and text of all comments in the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### How to Extract Comments of a Specified Author

After you have selected [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) nodes into a collection, all you have to do is extract the information you need. In this sample, author initials, date, time and the plain text of the comment is combined into one string; you could choose to store it in some other ways instead.

The overloaded method that extracts the Comments from a particular author is almost the same, it just checks the author’s name before adding the info into the array.

The following code example shows how to extract the author name, date&time and text of the comments by the specified author:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### How to Remove Comments

If you are removing all comments, there is no need to move through the collection deleting comments one by one; you can remove them by calling [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) on the comments collection.

The following code example shows how to remove all comments in the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

When you need to selectively remove comments, the process becomes more similar to the code we used for comment extraction.

The following code example shows how to remove comments by the specified author:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

The main point to highlight here is the use of the for operator. Unlike the simple extraction, here you want to delete a comment. A suitable trick is to iterate the collection backwards from the last [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) to the first one. The reason for this if you start from the end and move backwards, the index of the preceding items remains unchanged, and you can work your way back to the first item in the collection.

The following code example shows the methods for the comments extraction and removal:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### How to Remove a Comment between CommentRangeStart and CommentRangeEnd

Using Aspose.Words you can also remove comments between the **CommentRangeStart** and **CommentRangeEnd** nodes.

The following code example shows how to remove text between **CommentRangeStart** and **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Add or Remove Comment's Reply

The [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) method adds a reply to this comment. Please note that due to the existing Microsoft Office limitations only 1 level of replies is allowed in the document. An exception of type **InvalidOperationException** will be raised if this method is called on the existing Reply comment.

You can use [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) method to remove the specified reply to this comment.

The following code example shows how to add a reply to comment and remove comment's reply:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Read Comment's Reply

The [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) property returns a collection of [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) objects that are immediate children of the specified comment.

The following code example shows how to iterate through a comment's replies and resolved them:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}