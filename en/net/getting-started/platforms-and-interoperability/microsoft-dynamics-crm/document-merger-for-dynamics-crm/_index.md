---
title: Document Merger for Dynamics CRM
second_title: Aspose.Words for .NET
articleTitle: Document Merger for Dynamics CRM
linktitle: Document Merger for Dynamics CRM
description: "The Aspose Document Merger is an open-source add-on to be used in Microsoft Dynamic CRM. It allows automatically merge two documents into single or creating new document using existing documents in C#."
type: docs
weight: 30
url: /net/document-merger-for-dynamics-crm/
---

This provide functionality to automatically merge two documents into single or creating new document using existing documents.
Major features of this Addon are:

- Merge two or more documents in a one.
- Merge two or more documents in new document.
- Provided a separate button that will trigger the Dialog automatically.

## System Requirements and Supported Platforms

### System Requirements

In order to install and use Aspose .NET Document Merger for Microsoft Dynamics CRM you need to have one of the following CRM version installed.

- Microsoft Dynamics CRM 2011.

Please feel free to contact us if you find any issues in installing or using this Add-on.

### Supported Platforms

This addon will work with all version of:

- Microsoft Dynamics CRM 2011.

## Downloading

You can download the latest solution at:

- [Github](https://github.com/asposemarketplace/asposenetcrm/wiki/Aspose-.NET-Document-Merger)
- [Sourceforge](https://sourceforge.net/p/asposenetcrm/wiki/Aspose%20.NET%20Document%20Merger/)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-.net-for-dynamics-crm/wiki/Aspose%20.NET%20Document%20Merger)

## Installing or Uninstalling

### Installing Aspose .NET Document Merger

It is simple to install Aspose .NET Document Merger. Please follow below Instructions:

- Download the Solution File.
- Open CRM and go to Import Solution.
- Click Browse and select the downloaded solution file and click next.
- Click Next and wait for the solution to import.
- Click close when the solution is imported successfully.

### Applying License

- Copy the license File on the server and copy the path of the file. 
  - Recommended: "C:\Aspose\Aspose.Total.Lic".
- Open CRM and Navigate to Processes.
- Open "Aspose .NET Document Merger" and deactivate it. 

![todo:image_alt_text](document-merger-for-dynamics-crm_1)

- Scroll Down to the "Aspose: Document Merger" Step and Click View Properties. 

![todo:image_alt_text](document-merger-for-dynamics-crm_2)

- Add the Path of License File. 

![todo:image_alt_text](document-merger-for-dynamics-crm_3)

- Activate the Process and Close it.

### Uninstalling Aspose .NET Document Merger

- Go to solution and select "Aspose .NET Document Merger".
- Press the Delete button.

## Using

- Open any contact record and click on "Document Merger" from the top ribbon.

- Select the First and Second document to merge and select the output option.

- Merged document will be attached to same contact record, based on the output selected.

## Support, Extend and Contribute

### Support

We offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose .NET Document Merger using any of the following platforms:

- [Github](https://github.com/asposemarketplace/asposenetcrm/wiki/Aspose-.NET-Document-Merger)
- [Sourceforge](https://sourceforge.net/p/asposenetcrm/wiki/Aspose%20.NET%20Document%20Merger/)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-.net-for-dynamics-crm/wiki/Aspose%20.NET%20Document%20Merger)

### Extend and Contribute

You can download the latest source code at:

- [CodePlex](https://www.microsoft.com/ru-ru/?p=asposenetcrm).
- [GitHub](https://github.com/asposemarketplace/asposenetcrm/tree/AsposeDocumentGenerator-1.0.0.2011/Aspose%20.NET%20Document%20Merger/Source%20Code).
- [BitBucket](https://bitbucket.org/asposemarketplace/aspose-.net-for-dynamics-crm/src/7ce93ebc181bba2b22539bfe183c68872f812070/Aspose%20.NET%20Document%20Merger/Source%20Code/?at=master).
- [SourceForge](https://sourceforge.net/p/asposenetcrm/code/ci/master/tree/Aspose%20.NET%20Document%20Merger/Source%20Code/).

Simply merge two documents here:

{{< highlight csharp >}}
Document doc1 = new Document(fileStream1);
Document doc2 = new Document(fileStream2);
doc1.AppendDocument(doc2, ImportFormatMode.KeepSourceFormatting);
MemoryStream UpdateDoc = new MemoryStream();
doc1.Save(UpdateDoc, SaveFormat.Docx);
{{< /highlight >}}
