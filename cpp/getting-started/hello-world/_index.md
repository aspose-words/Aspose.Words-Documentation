---
title: Hello, World!
second_title: Simple example how to use Aspose.Words for C++
articleTitle: Hello, World!
linktitle: Hello World
description: "Create, edit and save your first document in any supported format using Aspose.Words for C++ to experience its simplicity and power in C++."
type: docs
weight: 15
url: /cpp/hello-world/
---

A "Hello, World!" code is often the first simple example to write uisng "Aspose.Words for C++", and it can also be used as a sanity test to ensure the software intended to compile or run source code is correctly installed.

"Aspose.Words for C++" library gives developers direct access to create, modify, merge, convert, compare Word and Web documents. PDF, DOCX, DOC, RTF, ODT, EPUB, HTML and many other file formats are [supported](/words/cpp/supported-document-formats/).

Below code snippet follows these steps:

1. Create a new empty [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document/)
1. Inisialize a [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder/) class
1. Insert text to the document start using simple [Write](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder#write_string) method
1. Open an existing [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document#document_string) from a file. Automatically detects the file format
1. [Append](https://reference.aspose.com/words/cpp/class/aspose.words.document#appenddocument_document_importformatmode) document "A" to the and of the document "B"
1. [Save](https://reference.aspose.com/words/cpp/class/aspose.words.document#save_string) the output as PDF

The following code snippet is a "Hello, World!" program to exhibit working of "Aspose.Words for C++" API:

```cpp
// Create a new empty document A
auto docA = MakeObject<Document>();

// Inisialize a DocumentBuilder
auto builder = MakeObject<DocumentBuilder>(docA);

// Insert text to the document A start
builder->MoveToDocumentStart();
builder->Write(u"First Hello World paragraph");

// Open an existing document B
auto docB = MakeObject<Document>(u"C:\\Temp\\documentB.docx");

// Add document B to the and of document A, preserving document B formatting
docA->AppendDocument(docB, ImportFormatMode::KeepSourceFormatting);

// Save the output as PDF
docA->Save(u"C:\\Temp\\output_AB.pdf");
```