---
title: Open a word processing document from a stream
type: docs
weight: 130
url: /net/open-a-word-processing-document-from-a-stream/
---

## **OpenXML Word**
The example **OpenAndAddToWordprocessingStream** method shown here can be used to open a Word document from an already open stream and append some text using the Open XML SDK. You can call it by passing a handle to an open stream as the first parameter and the text to add as the second. For example, the following code example opens the file OpenDocumentFromStream.docx in the Public Documents folder and adds text to it.
Below is the sample code

{{< highlight csharp >}}

 private static string FilePath = @"..\..\..\..\Sample Files\";

private static string fileName = FilePath + "OpenDocumentFromStream.docx";

 string txt = "Append text in body - OpenAndAddToWordprocessingStream";

 Stream stream = File.Open(fileName, FileMode.Open);

 OpenAndAddToWordprocessingStream(stream, txt);

 stream.Close();


private static void OpenAndAddToWordprocessingStream(Stream stream, string txt)

{

    WordprocessingDocument wordprocessingDocument =

        WordprocessingDocument.Open(stream, true);

    Body body = wordprocessingDocument.MainDocumentPart.Document.Body;

    Paragraph para = body.AppendChild(new Paragraph());

    Run run = para.AppendChild(new Run());

    run.AppendChild(new Text(txt));

    wordprocessingDocument.Close();

}

{{< /highlight >}}
## **Aspose.Words**
Simply pass a stream object that contains a document to the **Document** constructor.
Below is the sample code

{{< highlight csharp >}}

 private static string FilePath = @"..\..\..\..\Sample Files\";

private static string FileName = FilePath + "OpenDocumentFromStream.docx";

string txt = "Append text in body - OpenAndAddToWordprocessingStream";

Stream stream = File.Open(FileName, FileMode.Open);

OpenAndAddToWordprocessingStream(stream, txt);

private static void OpenAndAddToWordprocessingStream(Stream stream, string txt)

{

    Document doc = new Document(stream);

    stream.Close();

    DocumentBuilder db = new DocumentBuilder(doc);

    db.Writeln(txt);

    doc.Save(FileName);

}

{{< /highlight >}}
## **Download**
- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [Sourceforge](http://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/OpenDocumentFromStream.zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/OpenDocumentFromStream.zip)
