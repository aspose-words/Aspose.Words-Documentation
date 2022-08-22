---
title: Hello, World!
second_title: Simple example how to use Aspose.Words for Python via .NET
articleTitle: Hello, World!
linktitle: Hello World
description: "Create, edit and save your first document in any supported format using Aspose.Words for Python via .NET to experience its simplicity and power in Python."
type: docs
weight: 20
url: /python-net/hello-world/
---

A "Hello, World!" code is often the first simple example to write uisng "Aspose.Words for Python via .NET", and it can also be used as a sanity test to ensure the software intended to compile or run source code is correctly installed.

"Aspose.Words for Python via .NET" library gives developers direct access to create, modify, merge, convert, compare Word and Web documents. PDF, DOCX, DOC, RTF, ODT, EPUB, HTML and many other file formats are [supported](/words/python-net/supported-document-formats/).

Below code snippet follows these steps:

1. Create a new empty [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. Inisialize a [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) class
1. Insert text to the document start using simple [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) method
1. Open an existing [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) from a file. Automatically detects the file format
1. [Append](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) document "A" to the and of the document "B"
1. [Save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) the output as PDF

The following code snippet is a "Hello, World!" program to exhibit working of "Aspose.Words for Python via .NET" API:

```csharp
# Create a new empty document A
docA = aw.Document();

# Inisialize a DocumentBuilder
builder = aw.DocumentBuilder(docA);

# Insert text to the document A start
builder.move_to_document_start();
builder.write("First Hello World paragraph");

# Open an existing document B
docB = aw.Document("C:\\Temp\\documentB.docx");

# Add document B to the and of document A, preserving document B formatting
docA.append_document(docB, aw.ImportFormatMode.KEEP_SOURCE_FORMATTING);

# Save the output as PDF
docA.save("C:\\Temp\\output_AB.pdf");
```