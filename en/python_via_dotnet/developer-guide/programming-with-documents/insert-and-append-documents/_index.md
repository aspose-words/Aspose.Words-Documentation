---
title: Insert and Append Documents
second_title: Aspose.Words for Python via .NET
articleTitle: Insert and Append Documents
linktitle: Insert and Append Documents
description: "Combine documents into one: insert or append a document into a new or existing one using find and replace, merge field, bookmark, or simply at the document end in Python."
type: docs
weight: 80
url: /python-net/insert-and-append-documents/
aliases:
 - /python/join-and-append-documents/
 - /python/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Sometimes it is required to combine several documents into one. You can do this manually or you can use Aspose.Words insert or append feature.

The insert operation allows you to insert the content of previously created documents into a new or existing one.

In turn, the append feature allows you to add a document only at the end of another document.

This article explains how to insert or append a document to another one in different ways and describes the common properties that you can apply while inserting or appending documents.

## Insert a Document

As mentioned above, in Aspose.Words a document is represented as a tree of nodes, and the operation of inserting one document into another is copying nodes from the first document tree to the second one.

You can insert documents in a variety of locations in different ways. For example, you can insert a document through a replace operation, a merge field during a merge operation, or via a bookmark.

You can also use the [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) or [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) method, which is similar to inserting a document in Microsoft Word, to insert a whole document at the current cursor position without any previous importing.

The following code example shows how to insert a document using the **insert_document** method:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

The following code example shows how to insert a document using the **insert_document_inline** method:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

The following subsections describe the options during which you can insert one document into another.

### Insert a Document at Bookmark

You can import a text file into a document and insert it right after a bookmark that you have defined in the document. To do this, create a bookmarked paragraph where you want the document to be inserted.

The following coding example shows how to insert the contents of one document to a bookmark in another document:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Note that the bookmark should not enclose multiple paragraphs or text that you want them to appear in your final resulting document.

{{% /alert %}}

## Append a Document

You may have a use case where you need to include additional pages from a document to the end of an existing document. To do this, you just need to call the [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) method to add a document to the end of another one.

{{% alert color="primary" %}}

Note that [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) is a node level method within a document. For example, you can create a paragraph, set formatting properties, and then append it as a child to the body using the [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) method.

{{% /alert %}}

The following code example shows how to append a document to the end of another document:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Import and Insert Nodes Manually

Aspose.Words allows you to insert and append documents automatically without any previous importing requirements. However, if you need to insert or append a specific node of your document, such as a section or a paragraph, then first you need to import this node manually.

When you need to insert or append one section or paragraph to another, you essentially need to import the nodes of the first document node tree into the second one using the [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) method. After importing your nodes, you need to use the [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) / [insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) method to insert a new node after/before the reference node. This allows you to customize the inserting process by importing nodes from a document and inserting it at given positions.

You can also use the [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) method to add a new specified node to the end of the list of child nodes, for example, if you want to append content at the paragraph level instead of at the section level.

The following code example shows how to manually import nodes and insert them after a specific node using the [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) method:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

The import creates a new node that is a copy of the original node and suitable for insertion into the destination document.

{{% /alert %}}

Content is imported into the destination document section by section, which means that settings, such as page setup and headers or footers, are preserved during import. It is also useful to note that you can define formatting settings when you insert or append a document to specify how two documents are joined together.

## Common Properties for Insert and Append Documents

Both [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) and [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) methods accept [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) and [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) as input parameters. The [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) allows you to control how document formatting is merged when you import content from one document into another by selecting different format modes such as [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting), and [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). The [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) allows you to select different import options such as [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/), and [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words allows you to adjust the visualization of a resulting document when two documents are added together in an insert or append operation by using the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) and [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). The [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) property contains all the attributes of a section such as [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/), and others. The most common use case is to set the [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) property to define if the added content will appear on the same page or split into a new one.

{{% alert color="primary" %}}

Note that the [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) and [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) do not control how two documents are inserted/appended together. They only allow you to change the appearance of your result document.

{{% /alert %}}

The following code example shows how to append one document to another while keeping the content from splitting across two pages:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
