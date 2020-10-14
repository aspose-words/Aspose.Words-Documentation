---
title: Working with Comments
type: docs
weight: 180
url: /java/working-with-comments/
---

{{% alert color="primary" %}} 

Comments of the document are represented by the [Comment](http://www.aspose.com/api/java/words/com.aspose.words/classes/Comment) class. Use [CommentRangeStart](http://www.aspose.com/api/java/words/com.aspose.words/classes/CommentRangeStart) and [CommentRangeEnd](http://www.aspose.com/api/java/words/com.aspose.words/classes/CommentRangeEnd) classes to specify a region of text that is to be commented.

{{% /alert %}} 

## How to Extract or Remove Comments

Using Comments in a Word document (in addition to Track Changes) is a common practice when reviewing documents, particularly when there are multiple reviewers. There can be situations where the only thing you need from a document is the comments. Say you want to generate a list of review findings, or perhaps you have collected all the useful information from the document and you simply want to remove unnecessary comments. You may want to view or remove the comments of a particular reviewer.

In this sample we are going to look at some simple methods for both gathering information from the comments within a document and for removing comments from a document. Specifically we'll cover how to:

- Extract all the comments from a document or only the ones made by a particular author.
- Remove all the comments from a document or only from a particular author.

### Solution

To illustrate how to extract and remove comments from a document, we will go through the following steps:

1. Open a Word document using the [Document](http://www.aspose.com/api/java/words/com.aspose.words/classes/Document) class.
1. Get all comments from the document into a collection.
1. To extract comments:
   1. Go through the collection using the foreach operator.
   1. Extract and list the author name, date & time and text of all comments.
   1. Extract and list the author name, date & time and text of comments written by a specific author, in this case the author ‘ks’.
1. To remove comments:
   1. Go backwards through the collection using the for operator.
   1. Remove comments.
1. Save the changes.

We’re going to use the following Word document for this exercise:

|![todo:image_alt_text](http://i.imgur.com/Tp1usVp.png)|
| :- |
As you can see, it contains several Comments from two authors with the initials “pm” and “ks”.

### The Code

The code in this sample is actually quite simple and all methods are based on the same approach. A comment in a Word document is represented by a Comment object in the Aspose.Words document object model. To collect all the comments in a document use the [Document.getChildNodes](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getChildNodes\(int,boolean\)/) method with the first parameter set to NodeType.Comment. Make sure that the second parameter of the [Document.getChildNodes](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getChildNodes\(int,boolean\)/) method is set to true: this forces the [Document.getChildNodes](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getChildNodes\(int,boolean\)/) to select from all child nodes recursively, rather than only collecting the immediate children.

The [Document.getChildNodes](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getChildNodes\(int,boolean\)/) method is very useful and you can use it every time you need to get a list of document nodes of any type. The resulting collection does not create an immediate overhead because the nodes are selected into this collection only when you enumerate or access items in it. Below example extracts the author name, date&time and text of all comments in the document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ExtractComments-1.java" >}}

After you have selected Comment nodes into a collection, all you have to do is extract the information you need. In this sample, author initials, date, time and the plain text of the comment is combined into one string; you could choose to store it in some other ways instead. The overloaded method that extracts the Comments from a particular author is almost the same, it just checks the author’s name before adding the info into the array. Below example extracts the author name, date&time and text of the comments by the specified author.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ExtractCommentsByAuthor-1.java" >}}

If you are removing all comments, there is no need to move through the collection deleting comments one by one; you can remove them by calling [NodeCollection.clear](http://www.aspose.com/api/java/words/com.aspose.words/classes/nodecollection/methods/clear\(\)/) on the comments collection. Below example removes all comments in the document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveComments-1.java" >}}

When you need to selectively remove comments, the process becomes more similar to the code we used for comment extraction. Below example removes comments by the specified author.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentsByAuthor-1.java" >}}

The main point to highlight here is the use of the for operator. Unlike the simple extraction, here you want to delete a comment. A suitable trick is to iterate the collection backwards from the last Comment to the first one. The reason for this if you start from the end and move backwards, the index of the preceding items remains unchanged, and you can work your way back to the first item in the collection. The demo-code that illustrates the methods for the comments extraction and removal. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-1.java" >}}

### End Result

When launched, the sample displays the following results. First it lists all comments by all authors, then it lists comments by the selected author only. Finally, the code removing all comments.

|![todo:image_alt_text](http://i.imgur.com/3q61fa2.png)|
| :- |
The output Word document has now comments removed from it:

|![todo:image_alt_text](http://i.imgur.com/2pvC9jC.png)|
| :- |

## How to Add a Comment

Below example shows how to add a comment to a paragraph in the document.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-1.java" >}}

Below example shows how to anchor a comment to a region of text.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-1.java" >}}

## How to Remove Text between CommentRangeStart and CommentRangeEnd

Below example shows how to remove text between CommentRangeStart and CommentRangeEnd nodes.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText.java.java" >}}

## How to Read Comment Reply

Aspose.Words support to read reply of a Comment. Comment.Replies property returns a collection of Comment objects that are immediate children of the specified comment. Below example shows how to iterate through a collection of comment replies and resolved them.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}

## How to Add and Remove Comment's Reply

The Comment.addReply method adds a reply to this comment. Please note that due to the existing MS Office limitations only 1 level of replies is allowed in the document. An exception of type InvalidOperationException will be raised if this method is called on the existing Reply comment.

You can use Comment.removeReply method to remove the specified reply to this comment. Following code example shows how to add a reply to comment and remove comment's reply.

{{< gist "aspose-words" "b37032675133885c4c91814fb3d51a25" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}
