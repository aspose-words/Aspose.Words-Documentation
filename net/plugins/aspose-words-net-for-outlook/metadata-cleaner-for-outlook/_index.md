---
title: Metadata Cleaner for Outlook
type: docs
weight: 10
url: /net/metadata-cleaner-for-outlook/
---

**Contents Summary**

- [Introduction](#MetadataCleanerforOutlook-Introduction)
- [System Requirements and Supported Platforms](#MetadataCleanerforOutlook-SystemRequirementsandSupportedPlatforms) 
  - [System Requirements](#MetadataCleanerforOutlook-SystemRequirements)
  - [Supported Platforms](#MetadataCleanerforOutlook-SupportedPlatforms)
- [Downloading](#MetadataCleanerforOutlook-Downloading)
- [Installing or Uninstalling](#MetadataCleanerforOutlook-InstallingorUninstalling) 
  - [Installing Aspose.Words Metadata Cleaner](#MetadataCleanerforOutlook-InstallingAspose.WordsMetadataCleaner)
  - [Applying License](#MetadataCleanerforOutlook-ApplyingLicense)
  - [Uninstalling Aspose.Words Metadata Cleaner](#MetadataCleanerforOutlook-UninstallingAspose.WordsMetadataCleaner)
- [Using](#MetadataCleanerforOutlook-Using)
- [Video Demo](#MetadataCleanerforOutlook-VideoDemo)
- [Support, Extend and Contribute](#MetadataCleanerforOutlook-Support,ExtendandContribute) 
  - [Support](#MetadataCleanerforOutlook-Support)
  - [Extend and Contribute](#MetadataCleanerforOutlook-ExtendandContribute)

## Introduction

Aspose.Words Metadata Cleaner is a metadata removal tool which protects organizations from accidental information and metadata leaks. Unintentional leaks have the potential to embarrass or negatively impact a company’s financial well-being. Aspose.Words Metadata Cleaner integrates tightly with Outlook to ensure all hidden metadata is removed from documents sent from an organization. It works in the background before sending an email, Verify all word attachments in the email and clean all Built-in and Custom properties from these attachments.

This Provide functionality to clean metadata tags from all the word attachments in the email before sending any email.

Major features of this Addon are:

- This plugin executes automatically before sending any email from Outlook.
- Automatically read all attachments using Aspose.Words in background.
- Remove all Built-in Properties from word processing document attachments.
- Remove all custom Properties from word processing document attachments.
- Re-attach the attachments automatically after clearing metadata.
- It provides ability to enable or disable add-on from the top ribbon button.
- Supports Outlook 2010 and Outlook 2013

## System Requirements and Supported Platforms

### System Requirements

In order to install and use Aspose.Words Metadata Cleaner for Outlook you need to have these installed:

- .NET Framework
- Microsoft Office Outlook.

Please feel free to contact us if you find any issues in installing or using this Add-on.

### Supported Platforms

This add-on will work with all version of:

- Microsoft Office Outlook 2010.
- Microsoft Office Outlook 2013.

## Downloading

You can download the latest solution at:

- [Codeplex](https://asposewordsoutlook.codeplex.com/releases/view/619420)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MetadataCleanerOutlook)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Metadata-80b9dc89)

## Installing or Uninstalling

### Installing Aspose.Words Metadata Cleaner

- Extract the Setup on a location on your hard disk.
- Run Setup.exe and follow the on screen instructions.

### Applying License

- The default location for License is already set for Aspose.
- To Set/Change the location of License please go to the installed directory on the Add-on. C:\Users[ur user]\AppData\Roaming\Aspose\Aspose.Words Metadata Cleaner
- Open Aspose.Words Metadata Cleaner.dll.config in notepad and go to the value section of AsposeLicense.
- Set the location of the license. 

![todo:image_alt_text](metadata-cleaner-for-outlook_1)

- Save the notepad file and re-start Outlook.

### Uninstalling Aspose.Words Metadata Cleaner

- Uninstall the add-on from Control Panel >> Uninstall the program. 

![todo:image_alt_text](/download/thumbnails/2596237/1912245038)

## Using

- Open Outlook and Click on new Email.
- Add word attachments where you want to remove metadata.
- Fill the required information of the email.
- Click send Button 

![todo:image_alt_text](/download/thumbnails/2596237/1789678006)

To Enable/Disable the plugin, in New Email window, Click Enable/Disable Aspose.Words metadata Cleaner from Aspose Menu on the top.

![todo:image_alt_text](/download/thumbnails/2596237/1011171143)

## Video Demo

Please check [the video](https://www.youtube.com/watch?v=nLnQmgwCIE4) below to see the plugin in action.

## Support, Extend and Contribute

### Support

We offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to this add-on using any of the following platforms:

- [Codeplex](https://asposewordsoffice.codeplex.com/discussions)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/issues)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Metadata-80b9dc89/view/Discussions#content)

### Extend and Contribute

You can download the latest source code at:

- [Codeplex](https://asposewordsoutlook.codeplex.com/SourceControl/latest#Aspose.Words Metadata Cleaner/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Outlook/Aspose.Words%20Metadata%20Cleaner)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Metadata-80b9dc89)

To Extend, Open the Project in Visual Studio. It contains both the source code and setup project.
Here is some sample code to help you extend the code according to your own need:

{{< highlight csharp >}}

// Remove all built-in and Custom Properties
doc.CustomDocumentProperties.Clear();
doc.BuiltInDocumentProperties.Clear();
{{< /highlight >}}
