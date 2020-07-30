---
title: Open a word processing document for read-only access
type: docs
weight: 120
url: /net/open-a-word-processing-document-for-read-only-access/
---

Sometimes you want to open a document to inspect or retrieve some information, and you want to do so in a way that ensures the document remains unchanged. In these instances, you want to open the document for read-only access.
## **OpenXML Words**
The below sample code shows how you can add some text and attempt to save the changes to show that access is read-only. Once you have access to the body of the main document part, you add text by adding instances of the **Paragraph, Run, and Text** classes. This generates the required **WordprocessingML** markup.

Below is the code sample

{{< highlight csharp >}}

 private static string FilePath = @"..\..\..\..\Sample Files\";

private static string fileName = FilePath + "OpenReadOnlyAccess.docx";

static void Main(string[] args)

{

    OpenWordprocessingDocumentReadonly(fileName);

}

public static void OpenWordprocessingDocumentReadonly(string filepath)

{

    // Open a WordprocessingDocument based on a filepath.

    using (WordprocessingDocument wordDocument =

        WordprocessingDocument.Open(filepath, false))

    {

        // Assign a reference to the existing document body.

        Body body = wordDocument.MainDocumentPart.Document.Body;

        // Attempt to add some text.

        Paragraph para = body.AppendChild(new Paragraph());

        Run run = para.AppendChild(new Run());

        run.AppendChild(new Text("Append text in body, but text is not saved - OpenWordprocessingDocumentReadonly"));

        // Call Save to generate an exception and show that access is read-only.

        // wordDocument.MainDocumentPart.Document.Save();

    }

}


{{< /highlight >}}
## **Aspose.Words**
Make the **Document** object having parameter filename and LoadOptions without setting password we cant protect or open document for read-only access . **LoadOptions** is a shortcut to initialize a new instance of this class with the specified password to load an encrypted document. Then initialize the **DocumentBuilder** object which provides methods to insert text, images and other content, specify font, paragraph and section formatting of word document.

Below is the sample code

{{< highlight csharp >}}

 private static string FilePath = @"..\..\..\..\Sample Files\";

private static string fileName = FilePath + "OpenReadOnlyAccess.docx";

OpenWordprocessingDocumentReadonly(fileName);

private static void OpenWordprocessingDocumentReadonly(string fileName)

{

    Document doc = new Document(fileName, new LoadOptions("1234"));

    DocumentBuilder db = new DocumentBuilder(doc);

    string txt = "Append text in body - OpenAndAddToWordprocessingStream";

    db.Writeln(txt);

    doc.Save(fileName);

}


{{< /highlight >}}
## **Download Sample Code**
- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [SourceForge](http://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/OpenReadOnlyAccess.zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/OpenReadOnlyAccess.zip)
