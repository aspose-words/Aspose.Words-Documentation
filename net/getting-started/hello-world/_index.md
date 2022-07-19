---
title: Hello, World!
second_title: Simple example how to use Aspose.Words for .NET
articleTitle: Hello, World!
linktitle: Hello World
description: "Create, edit and save your first document in any supported format using Aspose.Words for .NET to experience its simplicity and power in C#."
type: docs
weight: 20
url: /net/hello-world/
---

A "Hello, World!" code is often the first simple example to write uisng "Aspose.Words for .NET", and it can also be used as a sanity test to ensure the software intended to compile or run source code is correctly installed.

"Aspose.Words for .NET" C# library gives developers direct access to create, modify, merge, convert, compare Word and Web documents. PDF, DOCX, DOC, RTF, ODT, EPUB, HTML and many other file formats are [supported](/words/net/supported-document-formats/).

Below code snippet follows these steps:

1. Create a new empty [Document](https://reference.aspose.com/words/net/aspose.words/document)
1. Inisialize a [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder) class
1. Insert text to the document start using simple [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/methods/write) method
1. Open an existing [Document](https://reference.aspose.com/words/net/aspose.words/document/constructors/3) from a file. Automatically detects the file format
1. [Append](https://reference.aspose.com/words/net/aspose.words/document/methods/appenddocument) document "A" to the and of the document "B"
1. [Save](https://reference.aspose.com/words/net/aspose.words.document/save/methods/2) the output as PDF

The following code snippet is a "Hello, World!" program to exhibit working of "Aspose.Words for .NET" API:

```csharp
namespace Aspose.Words.Examples
{
    public class ExampletHelloWorld
    {
        static void Main(string[] args)
        {
            // Create a new empty document A
            Document docA = new Document();

            // Inisialize a DocumentBuilder
            DocumentBuilder builder = new DocumentBuilder(docA);

            // Insert text to the document A start
            builder.MoveToDocumentStart();
            builder.Write("First Hello World paragraph");

            // Open an existing document B
            Document docB = new Document("C:\\Temp\\documentB.docx");

            // Add document B to the and of document A, preserving document B formatting
            docA.AppendDocument(docB, ImportFormatMode.KeepSourceFormatting);

            // Save the output as PDF
            docA.Save("C:\\Temp\\output_AB.pdf");
        }
    }
}
```