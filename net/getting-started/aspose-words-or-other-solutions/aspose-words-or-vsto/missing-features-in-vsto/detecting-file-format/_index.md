---
title: Detecting File Format
type: docs
weight: 60
url: /net/detecting-file-format/
---

{{% alert color="primary" %}} 

Sometimes it is necessary to detect the format of a document file before opening because the file extension does not guarantee that the file content is appropriate.

{{% /alert %}} 

For example, it is known that Crystal Reports often outputs documents in RTF format, but gives them the .doc extension . Therefore, if you are not sure what the actual content of the file is and want to avoid throwing an exception, you can use the [FileFormatUtil.DetectFileFormat](https://apireference.aspose.com/words/net/aspose.words/fileformatutil/methods/detectfileformat/index) method. This is a static (shared) method that accepts either a file name or stream object that contains the file data. The method returns a [FileFormatInfo](https://apireference.aspose.com/words/net/aspose.words/fileformatinfo) object that contains the detected information about the file type.

Shows how to use the FileFormatUtil class to detect the document format and other features of the document:

**C#**

{{< highlight csharp >}}
FileFormatInfo info = FileFormatUtil.DetectFileFormat(MyDir + "Document.doc");
Console.WriteLine("The document format is: " + FileFormatUtil.LoadFormatToExtension(info.LoadFormat));
Console.WriteLine("Document is encrypted: " + info.IsEncrypted);
Console.WriteLine("Document has a digital signature: " + info.HasDigitalSignature);
{{< /highlight >}}

## Download Running Examples

- [Codeplex](https://archive.codeplex.com/?p=asposewordsvsto#Aspose.Words%20Features%20missing%20in%20VSTO/Detect%20the%20File%20Format/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Aspose.Words%20Features%20missing%20in%20VSTO/Detect%20the%20File%20Format/)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c/view/SourceCode#content)

## Download Sample Code

- [Codeplex](https://asposewordsvsto.codeplex.com/releases/view/619474)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofVSTOv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c#content)

{{% alert color="primary" %}} 

For more details, visit [How to Detect the File Format](https://docs.aspose.com/words/net/detect-file-format-and-check-format-compatibility/).

{{% /alert %}}
