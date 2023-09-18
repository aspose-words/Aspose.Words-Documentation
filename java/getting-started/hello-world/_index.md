---
title: Hello, World!
second_title: Simple example how to use Aspose.Words for Java
articleTitle: Hello, World!
linktitle: Hello World
description: "Create, edit and save your first document in any supported format using Aspose.Words for Java to experience its simplicity and power in Java."
type: docs
weight: 20
url: /java/hello-world/
---

A "Hello, World!" code is often the first simple example to write uisng "Aspose.Words for Java", and it can also be used as a sanity test to ensure the software intended to compile or run source code is correctly installed.

"Aspose.Words for Java" library gives developers direct access to create, modify, merge, convert, compare Word and Web documents. PDF, DOCX, DOC, RTF, ODT, EPUB, HTML and many other file formats are [supported](/words/java/supported-document-formats/).

Below code snippet follows these steps:

1. Create a new empty [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Initialize a [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) class
1. Insert text to the document start using simple [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String) method
1. Open an existing [Document](https://reference.aspose.com/words/java/com.aspose.words/document/#Document-java.lang.String) from a file. Automatically detects the file format
1. [Append](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) document "A" to the and of the document "B"
1. [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) the output as PDF

The following code snippet is a "Hello, World!" program to exhibit working of "Aspose.Words for Java" API:

```java
// Create a new empty document A
Document docA = new Document();

// Initialize a DocumentBuilder
DocumentBuilder builder = new DocumentBuilder(docA);

// Insert text to the document A start
builder.moveToDocumentStart();
builder.write("First Hello World paragraph");

// Open an existing document B
Document docB = new Document("C:\\Temp\\documentB.docx");

// Add document B to the and of document A, preserving document B formatting
docA.appendDocument(docB, ImportFormatMode.KEEP_SOURCE_FORMATTING);

// Save the output as PDF
docA.save("C:\\Temp\\output_AB.pdf");
```
