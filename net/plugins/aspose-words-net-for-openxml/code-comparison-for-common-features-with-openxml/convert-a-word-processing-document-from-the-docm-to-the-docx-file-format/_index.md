---
title: Convert a word processing document from the DOCM to the DOCX file format
type: docs
weight: 140
url: /net/convert-a-word-processing-document-from-the-docm-to-the-docx-file-format/
---

The **ConvertDOCMtoDOCX** sample method can be used to convert a Word 2010 or Word 2013 document that contains VBA code (and has a .docm extension) to a standard document (with a .docx extension). Use this method to remove the macros and the vbaProject part that contains them from a document stored in .docm file format.

## OpenXML Words

The sample code modifies the document that you specify, verifying that the document contains a vbaProject part, and deleting the part. After the code deletes the part, it changes the document type internally and renames the document so that it uses the .docx extension.

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "ConvertFromDOCMtoDOCX - OpenXML.docm";
string NewFile = FilePath + "ConvertFromDOCMtoDOCX - OpenXML - Output.docx";
ConvertDOCMtoDOCX(File, NewFile);

// Given a .docm file (with macro storage), remove the VBA
 
// project, reset the document type, and save the document with a new name.
    public static void ConvertDOCMtoDOCX(string oldfileName, string newfileName)
    {
    bool fileChanged = false;
    using (WordprocessingDocument document =
        WordprocessingDocument.Open(oldfileName, true))
    {
        // Access the main document part.
        var docPart = document.MainDocumentPart;

        // Look for the vbaProject part. If it is there, delete it.
        var vbaPart = docPart.VbaProjectPart;
        if (vbaPart != null)
        {
            // Delete the vbaProject part and then save the document.
            docPart.DeletePart(vbaPart);
            docPart.Document.Save();

            // Change the document type to
            // not macro-enabled.
            document.ChangeDocumentType(
                WordprocessingDocumentType.Document);

            // Track that the document has been changed.
            fileChanged = true;
        }
    }

    // If anything goes wrong in this file handling,
    // the code will raise an exception back to the caller.
    if (fileChanged)
    {
        // Create the new .docx filename.
        // If it already exists, it will be deleted!
        if (File.Exists(newfileName))
        {
            File.Delete(newfileName);
        }

        // Rename the file.
        File.Move(oldfileName, newfileName);
    }
    }
{{< /highlight >}}

## Aspose.Words

We can use **Document** constructor of Aspose.Words API to load .doc or .docm files and use **Document.Save** method to save to .docx.

{{< highlight csharp >}}
string FilePath = @"..\..\..\..\Sample Files\";
string File = FilePath + "ConvertFromDOCMtoDOCX - Aspose.docm";
string NewFile = FilePath + "ConvertFromDOCMtoDOCX - Aspose - Output.docx";
ConvertDOCMtoDOCX(File, NewFile);
private static void ConvertDOCMtoDOCX(string oldfileName, string newfilename)
{
    Document doc = new Document(oldfileName);
    doc.Save(newfilename, SaveFormat.Docx);
}
{{< /highlight >}}

## Download

- [CodePlex](https://asposewordsopenxml.codeplex.com/releases/view/620544)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsOpenXMLv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/Code-Comparison-of-Common-4ffff4d7#content)
- [Sourceforge](http://sourceforge.net/projects/asposeopenxml/files/Aspose.Words%20Vs%20OpenXML/ConvertFromDOCMtoDOCX.zip/download)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-openxml/downloads/ConvertFromDOCMtoDOCX.zip)
