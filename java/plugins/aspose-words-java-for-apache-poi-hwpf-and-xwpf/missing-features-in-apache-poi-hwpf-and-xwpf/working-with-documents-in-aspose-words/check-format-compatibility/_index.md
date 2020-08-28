---
title: Check Format Compatibility
type: docs
weight: 30
url: /java/check-format-compatibility/
---

## **Aspose.Words - Check Format Compatibility**
The **FileFormatUtil.DetectFileFormat** method checks the file format, but note that it only checks the file format, it does not validate the file format.

**Java**

{{< highlight csharp >}}
File[] fileList = new java.io.File(dataPath).listFiles();

// Loop through all found files.
for (File file : fileList)
{
    if (file.isDirectory())
        continue;

    // Extract and display the file name without the path.
    String nameOnly = file.getName();
    System.out.print(nameOnly);

    // Check the file format and move the file to the appropriate folder.
    String fileName = file.getPath();
    FileFormatInfo info = FileFormatUtil.detectFileFormat(fileName);

    // Display the document type.
    switch (info.getLoadFormat())
    {
        case LoadFormat.DOC:
            System.out.println("\tMicrosoft Word 97-2003 document.");
            break;
        case LoadFormat.DOT:
            System.out.println("\tMicrosoft Word 97-2003 template.");
            break;
        case LoadFormat.DOCX:
            System.out.println("\tOffice Open XML WordprocessingML Macro-Free Document.");
            break;
        case LoadFormat.DOCM:
            System.out.println("\tOffice Open XML WordprocessingML Macro-Enabled Document.");
            break;
        case LoadFormat.DOTX:
            System.out.println("\tOffice Open XML WordprocessingML Macro-Free Template.");
            break;
        case LoadFormat.DOTM:
            System.out.println("\tOffice Open XML WordprocessingML Macro-Enabled Template.");
            break;
        case LoadFormat.FLAT_OPC:
            System.out.println("\tFlat OPC document.");
            break;
        case LoadFormat.RTF:
            System.out.println("\tRTF format.");
            break;
        case LoadFormat.WORD_ML:
            System.out.println("\tMicrosoft Word 2003 WordprocessingML format.");
            break;
        case LoadFormat.HTML:
            System.out.println("\tHTML format.");
            break;
        case LoadFormat.MHTML:
            System.out.println("\tMHTML (Web archive) format.");
            break;
        case LoadFormat.ODT:
            System.out.println("\tOpenDocument Text.");
            break;
        case LoadFormat.OTT:
            System.out.println("\tOpenDocument Text Template.");
            break;
        case LoadFormat.DOC_PRE_WORD_97:
            System.out.println("\tMS Word 6 or Word 95 format.");
            break;
        case LoadFormat.UNKNOWN:
        default:
            System.out.println("\tUnknown format.");
            break;
    }
}
{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/checkformatcompatibility/AsposeCheckFormatCompatibility.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/checkformatcompatibility/AsposeCheckFormatCompatibility.java)

{{% alert color="primary" %}} 

For more details, visit [How to Check Format Compatibility](/words/java/creating-or-loading-a-document/#creatingorloadingadocument-howtodetectthefileformatandcheckformatcompatibility).

{{% /alert %}}
