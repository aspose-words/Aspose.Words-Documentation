---
title: Clone a Document
type: docs
description: “Aspose.Words for Java allows you to clone a document to get its identical copy. When creating a copy, nodes and properties of the original document are cloned.”
weight: 60
url: /java/clone-a-document/
aliases: [/java/clone-and-combine-documents/]
---

Cloning a document is the process of creating an identical copy of an original document, which can improve performance and save you from potential memory leaks.

This article will explain the main use cases of cloning a document and how to create a document clone using Aspose.Words.

## Operations with Cloning Documents

The clone operation allows you to make the process of creating documents faster as you will not need to load and parse a document from a file every time.

After creating a clone of your document, you will be able to edit it and perform different operations on it, for example, compare it with the original document, append or insert it into another document. You can also modify cloned elements or their content before inserting them into another document.

## Creating a Document Clone

Aspose.Words allows you to clone a document using the [Clone](https://apireference.aspose.com/words/java/com.aspose.words/document#deepClone()) method that performs a deep copy of the document and returns it. In other words, it will get a full copy of the DOM. The Clone method speeds up the documents generation, and you only need one line of code to get a copy of your document.

Cloning produces a new document with the same contents as the original, but with a unique copy of each of the original document's [nodes](https://apireference.aspose.com/words/java/com.aspose.words/Node). You can also apply the clone operation to a document node by using the node [Clone](https://apireference.aspose.com/words/java/com.aspose.words/node#deepClone(boolean)) method, which allows you to duplicate composite document nodes with and without their child nodes.

{{% alert color="primary" %}}

Note that when applying the cloning method all document properties will be cloned.

{{% /alert %}}

The following code example shows how to clone a document and create a duplicate of a section in that document:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
