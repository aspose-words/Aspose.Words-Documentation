---
title: Create a Word Processing Document
type: docs
weight: 60
url: /net/create-a-word-processing-document/
---

## OpenXML SDK

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Create a Document - OpenXML.docx";
CreateWordprocessingDocument(File);
public static void CreateWordprocessingDocument(string filepath)
{
    // Create a document by supplying the filepath. 
    using (WordprocessingDocument wordDocument =
        WordprocessingDocument.Create(filepath, WordprocessingDocumentType.Document))
    {
        // Add a main document part. 
        MainDocumentPart mainPart = wordDocument.AddMainDocumentPart();

        // Create the document structure and add some text.
        mainPart.Document = new Document();
        Body body = mainPart.Document.AppendChild(new Body());
        Paragraph para = body.AppendChild(new Paragraph());
        Run run = para.AppendChild(new Run());
        run.AppendChild(new Text("Create text in body - CreateWordprocessingDocument"));
    }
}
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Create a Document - Aspose.docx";
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("Hello World!");
doc.Save(File);
{{< /highlight >}}

## Download Sample Code

- [CodePlex](https://archive.codeplex.com/?p=asposewordsopenxml)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Create%20a%20word%20processing%20document%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/Create%20a%20word%20processing%20document%20\(Aspose.Words\).zip)
