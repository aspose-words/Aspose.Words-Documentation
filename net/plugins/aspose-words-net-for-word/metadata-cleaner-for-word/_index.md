---
title: Metadata Cleaner for Word
type: docs
weight: 10
url: /net/metadata-cleaner-for-word/
---

**Contents Summary**

- [Introduction](#MetadataCleanerforWord-Introduction)
- [System Requirements and Supported Platforms](#MetadataCleanerforWord-SystemRequirementsandSupportedPlatforms)
- [Downloading](#MetadataCleanerforWord-Downloading)
- [Installing and Applying License](#MetadataCleanerforWord-InstallingandApplyingLicense) 
  - [Applying License](#MetadataCleanerforWord-ApplyingLicense)
- [Using](#MetadataCleanerforWord-Using)
- [Video Demo](#MetadataCleanerforWord-VideoDemo)
- [Support, Extend and Contribute](#MetadataCleanerforWord-Support,ExtendandContribute) 
  - [Support](#MetadataCleanerforWord-Support)
  - [Extend and Contribute](#MetadataCleanerforWord-ExtendandContribute)
## **Introduction**
Aspose.Words Metadata Cleaner is a metadata removal tool which protects organizations from accidental information and metadata leaks. Unintentional leaks have the potential to embarrass or negatively impact a company’s financial well-being. Aspose.Words Metadata Cleaner that will allow you to select the document and clean it. It will allow you to clean all Built-in and Custom properties from these files. You can select multiple files and clean them simultaneously in one click. Extract it on your machine and run it directly without installing.

Major features of this tool are:

- Allow you to select multiple files.
- Remove all Built-in Properties from word documents and OpenOffice documents.
- Remove all custom Properties from word document and OpenOffice documents.
- Show the status of all files.
- Show an overall status of all files.
- Provide reason if the metadata is not cleaned.
- Supports all word processing and Open Office documents (doc, docx, dot, docm, dotx, dotm, rtf, odt, ott).
- No Installation is required to run this tool.
## **System Requirements and Supported Platforms**
In order to use Aspose.Words Metadata Cleaner for Word you need to have these installed:

- .NET Framework 2.0 or higher

Please feel free to contact us if you find any issues in using this Add-on.
This tool will work with all version of windows.
## **Downloading**
You can download the latest solution at:

- [Codeplex](https://asposewordsoffice.codeplex.com/releases/view/620032)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/metadataCleanerWord)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Metadata-5445a838)
## **Installing and Applying License**
- It is a stand-alone app that can work on any system that have .NET 2.0 installed on it and it does not require any other software such as Microsoft Word or OpenOffice to clean the meta data.
- Extract it on your machine and run it directly without installing.
### **Applying License**
- Applying License functionality is provided inside the tool itself.
- Run the tool and click on Apply License button.
- If a valid license is provided, it will show the status of license.
## **Using**
![todo:image_alt_text](metadata-cleaner-for-word_1)

- Click on Browse Files to select Word Documents.
- It will allow you to select doc, docx, dot, docm, dotx, dotm, rtf, odt, ott and you can select any **.** file.
- You can select multiple files as well.
- Once the files are selected the files count will be changed.
- Click the Clean button to clean metadata from these files.
- Once the processing is complete, it will show a statistics of total cleaned files.
- Password protected files can not be cleaned.
## **Video Demo**
Please check [the video](https://youtu.be/eK0i8RKmCDM) below to see the plugin in action.
## **Support, Extend and Contribute**
### **Support**
We offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to this add-on using any of the following platforms:

- [Codeplex](https://asposewordsoffice.codeplex.com/discussions)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/issues)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Metadata-5445a838/view/Discussions)
### **Extend and Contribute**
You can download the latest source code at:

- [Codeplex](https://asposewordsoffice.codeplex.com/SourceControl/latest#Aspose.Words Metadata Cleaner for Word Processing Documents/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Word/Aspose.Words%20Metadata%20Cleaner%20for%20Word%20Processing%20Documents)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Metadata-5445a838/view/SourceCode)

To Extend, Open the Project in Visual Studio. It contains both the source code and setup project.
Here is some sample code to help you extend the code according to your own need:

{{< highlight java >}}

 // Remove all built-in and Custom Properties

doc.CustomDocumentProperties.Clear();

doc.BuiltInDocumentProperties.Clear();

{{< /highlight >}}
