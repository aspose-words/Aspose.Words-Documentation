---
title: Open and Add text to Word Document
type: docs
weight: 30
url: /net/open-and-add-text-to-word-document/
---

## OpenXML Word

Following are the namespace we need to use:

{{< highlight csharp >}}
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;
{{< /highlight >}}

Below is the code explaining this functionality by using **OpenAndAddTextToWordDocument** as a function.

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Open and add text.docx";
string strTxt = "Append text in body - OpenAndAddTextToWordDocument";
OpenAndAddTextToWordDocument(File, strTxt);
}
private static void OpenAndAddTextToWordDocument(string filepath, string txt)
{
// Open a WordprocessingDocument for editing using the filepath.
WordprocessingDocument wordprocessingDocument =
    WordprocessingDocument.Open(filepath, true);

// Assign a reference to the existing document body.
Body body = wordprocessingDocument.MainDocumentPart.Document.Body;

// Add new text.
Paragraph para = body.AppendChild(new Paragraph());
Run run = para.AppendChild(new Run());
run.AppendChild(new Text(txt));

// Close the handle explicitly.
wordprocessingDocument.Close();
}
{{< /highlight >}}

### Aspose.Words

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "Open and add text.docx";
Document doc = new Document(File);
DocumentBuilder builder = new DocumentBuilder(doc);

// Specify font formatting before adding text.
Aspose.Words.Font font = builder.Font;
font.Size = 16;
font.Bold = true;
font.Color = Color.Blue;
font.Name = "Arial";
font.Underline = Underline.Dash;
builder.Write("Insert text");
doc.Save(File);
{{< /highlight >}}

## Download Sample Code

- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [Sourceforge](https://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/Open%20and%20add%20text%20to%20Word%20Document%20\(Aspose.Words\).zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/Open%20and%20add%20text%20to%20Word%20Document%20\(Aspose.Words\).zip)
