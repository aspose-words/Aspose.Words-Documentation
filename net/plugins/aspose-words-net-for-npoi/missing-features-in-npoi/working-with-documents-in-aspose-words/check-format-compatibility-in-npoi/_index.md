---
title: Check Format Compatibility in NPOI
type: docs
weight: 30
url: /net/check-format-compatibility-in-npoi/
---

## Aspose.Words - Check Format Compatibility

The **FileFormatUtil.DetectFileFormat** method checks the file format, but note that it only checks the file format, it does not validate the file format.

**C#**

{{< highlight csharp >}}
string dataPath = "../../data/";
string[] fileList = Directory.GetFiles(dataPath);

// Loop through all found files.
foreach (string filePath in fileList)
{
	FileInfo file = new FileInfo(filePath);

	// Extract and display the file name without the path.
	String nameOnly = file.Name;
	Console.WriteLine(nameOnly);

	// Check the file format and move the file to the appropriate folder.
	String fileName = file.FullName;
	FileFormatInfo info = FileFormatUtil.DetectFileFormat(fileName);

	// Display the document type.
	switch (info.LoadFormat)
	{
		case LoadFormat.Doc:
			Console.WriteLine("\tMicrosoft Word 97-2003 document.");
			break;
		case LoadFormat.Dot:
			Console.WriteLine("\tMicrosoft Word 97-2003 template.");
			break;
		case LoadFormat.Docx:
			Console.WriteLine("\tOffice Open XML WordprocessingML Macro-Free Document.");
			break;
		case LoadFormat.Docm:
			Console.WriteLine("\tOffice Open XML WordprocessingML Macro-Enabled Document.");
			break;
		case LoadFormat.Dotx:
			Console.WriteLine("\tOffice Open XML WordprocessingML Macro-Free Template.");
			break;
		case LoadFormat.Dotm:
			Console.WriteLine("\tOffice Open XML WordprocessingML Macro-Enabled Template.");
			break;
		case LoadFormat.FlatOpc:
			Console.WriteLine("\tFlat OPC document.");
			break;
		case LoadFormat.Rtf:
			Console.WriteLine("\tRTF format.");
			break;
		case LoadFormat.WordML:
			Console.WriteLine("\tMicrosoft Word 2003 WordprocessingML format.");
			break;
		case LoadFormat.Html:
			Console.WriteLine("\tHTML format.");
			break;
		case LoadFormat.Mhtml:
			Console.WriteLine("\tMHTML (Web archive) format.");
			break;
		case LoadFormat.Odt:
			Console.WriteLine("\tOpenDocument Text.");
			break;
		case LoadFormat.Ott:
			Console.WriteLine("\tOpenDocument Text Template.");
			break;
		case LoadFormat.DocPreWord60:
			Console.WriteLine("\tMS Word 6 or Word 95 format.");
			break;
		case LoadFormat.Unknown:
		default:
			Console.WriteLine("\tUnknown format.");
			break;
	}
}
{{< /highlight >}}

## Download Running Code

Download **Check Format Compatibility** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475279)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Check.Format.Compatibility.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Detect File Format and Check Format Compatibility](https://docs.aspose.com/words/net/detect-file-format-and-check-format-compatibility/).

{{% /alert %}}
