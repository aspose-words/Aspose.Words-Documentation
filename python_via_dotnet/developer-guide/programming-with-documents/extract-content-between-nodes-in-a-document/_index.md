---
title: Extract Content Between Document Nodes
second_title: Aspose.Words for Python
articleTitle: Extract Content Between Nodes in a Document
linktitle: Extract Content Between Nodes in a Document
description: "How to extract specific content from a range within the document easily using Python."
type: docs
weight: 140
url: /python-net/how-to-extract-selected-content-between-nodes-in-a-document/
aliases: [/python/how-to-extract-selected-content-between-nodes-in-a-document/]
---

A common requirement when working with documents is to easily extract specific content from a range within the document. This content can consist of complex features such as paragraphs, tables, images etc. Regardless of what content needs to extracted, the method in which to extract this content will always be determined by which nodes are chosen to extract content between. These could be entire bodies of text or simple runs of text. There are many possible situations and therefore many different node types to consider when extracting content. For instance, you may want to extract content between:

- Two specific paragraphs in the document.
- Specific runs of text.
- Different types of fields, for example merge fields.
- Between the start and end ranges of a bookmark or comment.
- Different bodies of text contained in separate sections.

In some situations you may even want to combine the different types of, for example, extract content between a paragraph and field, or between a run and a bookmark.

This article provides the full code implementation to achieve this along with samples of common scenarios using this method. These samples are just a few demonstrations of the many possibilities that this method can be used for. Some day this functionality will be a part of the public API and the extra code here will not be required. Feel free to post your requests regarding this functionality on the [Aspose.Words forum here](https://forum.aspose.com/c/words/8).

## Reasons for Extracting Content

Often the goal of extracting this content is to duplicate or save it separately into a new document. For example, you may wish to extract content and:

- Copy it to a separate document.
- Rendered a specific portion of a document to PDF or an image.
- Duplicate the content in the document many times.
- Work with this content separate from the rest of the document.

This is easy to achieve using Aspose.Words and the code implementation below.

## Extracting Content Algorithm

The code in this section addresses all of the possible situations above with one generalized and reusable method. The general outline of this technique involves:

1. Gathering the nodes which dictate the area of content that will be extracted from your document. Retrieving these nodes is handled by the user in their code, based on what they want to be extracted.
1. Passing these nodes to the **extract_content** method which is provided below. You must also pass a boolean parameter which states if these nodes that act as markers should be included in the extraction or not.
1. The method will return a list of cloned (copied nodes) of the content specified to be extracted. You can now use this in any way applicable, for example, creating a new document containing only the selected content.

## How to Extract Content

To extract the content from your document you need to call the **extract_content** method below and pass the appropriate parameters. The underlying basis of this method involves finding block level nodes (paragraphs and tables) and cloning them to create identical copies. If the marker nodes passed are block level then the method is able to simply copy the content on that level and add it to the array.

However if the marker nodes are inline (a child of a paragraph) then the situation becomes more complex, as it is necessary to split the paragraph at the inline node, be it a run, bookmark fields etc. Content in the cloned parent nodes not present between the markers is removed. This process is used to ensure that the inline nodes will still retain the formatting of the parent paragraph. The method will also run checks on the nodes passed as parameters and throws an exception if either node is invalid. The parameters to be passed to this method are:

1. **startNode** and **endNode**. The first two parameters are the nodes which define where the extraction of the content is to begin and to end at respectively. These nodes can be both block level ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) or inline level (e.g [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) etc.):
   1. To pass a field you should pass the corresponding [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) object.
   1. To pass bookmarks, the [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) and [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) nodes should be passed.
   1. To pass comments, the [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) and [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) nodes should be used.
1. **isInclusive**. Defines if the markers are included in the extraction or not. If this option is set to false and the same node or consecutive nodes are passed, then an empty list will be returned:
   1. If a [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) node is passed then this option defines if the whole field is to be included or excluded.
   1. If a [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) or [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) node is passed, this option defines if the bookmark is included or just the content between the bookmark range.
   1. If a [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) or [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) node is passed, this option defines if the comment itself is to be included or just the content in the comment range.

The implementation of the **extract_content** method you can find [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). This method will be referred to in the scenarios in this article.

We will also define a custom method to easily generate a document from extracted nodes. This method is used in many of the scenarios below and simply creates a new document and imports the extracted content into it.

The following code example shows how to take a list of nodes and inserts them into a new document:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Extract Content Between Paragraphs

This demonstrates how to use the method above to extract content between specific paragraphs. In this case, we want to extract the body of the letter found in the first half of the document. We can tell that this is between the 7 th and 11 th paragraph.

The code below accomplishes this task. The appropriate paragraphs are extracted using the [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) method on the document and passing the specified indices. We then pass these nodes to the **extract_content** method and state that these are to be included in the extraction. This method will return the copied content between these nodes which are then inserted into a new document.

The following code example shows how to extract the content between specific paragraphs using the **extract_content** method above:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extract Content Between Different Types of Nodes

We can extract content between any combinations of block level or inline nodes. In this scenario below we will extract the content between first paragraph and the table in the second section inclusively. We get the markers nodes by calling [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) and [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) method on the second section of the document to retrieve the appropriate [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) and [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) nodes. For a slight variation let’s instead duplicate the content and insert it below the original.

The following code example shows how to extract the content between a paragraph and table using the **extract_content** method:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extract Content Between Paragraphs Based on Style

You may need to extract the content between paragraphs of the same or different style, such as between paragraphs marked with heading styles. The code below shows how to achieve this. It is a simple example which will extract the content between the first instance of the “Heading 1” and “Header 3” styles without extracting the headings as well. To do this we set the last parameter to false, which specifies that the marker nodes should not be included.

In a proper implementation this should be run in a loop to extract content between all paragraphs of these styles from the document. The extracted content is copied into a new document.

The following code example shows how to extract content between paragraphs with specific styles using the **extract_content** method:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extract Content Between Specific Runs

You can extract content between inline nodes such as a [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) as well. Runs from different paragraphs can be passed as markers. The code below shows how to extract specific text in-between the same [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) node.

The following code example shows how to extract content between specific runs of the same paragraph using the **extract_content** method:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extract Content using a Field

To use a field as marker, the [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) node should be passed. The last parameter to the **extract_content** method will define if the entire field is to be included or not. Let’s extract the content between the “FullName” merge field and a paragraph in the document. We use the [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) method of [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) class. This will return the [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) node from the name of merge field passed to it.

In our case let’s set the last parameter passed to the **extract_content** method to `False` to exclude the field from the extraction. We will render the extracted content to PDF.

The following code example shows how to extract content between a specific field and paragraph in the document using the **extract_content** method:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extract Content from a Bookmark

In a document the content that is defined within a bookmark is encapsulated by the [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) and [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) nodes. Content found between these two nodes make up the bookmark. You can pass either of these nodes as any marker, even ones from different bookmarks, as long as the starting marker appears before the ending marker in the document. We will extract this content into a new document using the code below. The **isInclusive** parameter option shows how to retain or discard the bookmark.

The following code example shows how to extract the content referenced a bookmark using the **extract_content** method:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extract Content from a Comment

A comment is made up of the [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) and [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) nodes. All of these nodes are inline. The first two nodes encapsulate the content in the document which is referenced by the comment, as seen in the screenshot below. The [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) node itself is an [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) that can contain paragraphs and runs. It represents the message of the comment as seen as a comment bubble in the review pane. As this node is inline and a descendant of a body you can also extract the content from inside this message as well.

The comment encapsulates the heading, first paragraph and the table in the second section. Let’s extract this comment into a new document. The **isInclusive** option dictates if the comment itself is kept or discarded.

The following code example shows how to do this:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## How to Extract Text Only

The ways to retrieve text from the document are:

- Use [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) to save as plain text into a file or stream.
- Use [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) and pass the [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) parameter. Internally, this invokes save as text into a memory stream and returns the resulting string.
- Use [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) to retrieve text with all Microsoft Word control characters including field codes.

### Using Node.get_text and Node.to_string

A Word document can contains control characters that designate special elements such as field, end of cell, end of section etc. The full list of possible Word control characters is defined in the [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) class. The [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) method returns text with all of the control character characters present in the node.

Calling [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) returns the plain text representation of the document only without control characters. For further information on exporting as plain text see Using [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). 

The following code example shows the difference between calling the [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) and [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) methods on a node:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}


...

### Using SaveFormat.Text (!need to add, exists in net and java!)

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

ToDo: Add chapter about extraction images from the document which are locate as image data in shape objects.

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
