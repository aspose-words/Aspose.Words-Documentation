---
title: Document Merger for Dynamics CRM
type: docs
weight: 30
url: /net/document-merger-for-dynamics-crm/
---

**Contents Summary**

- [Introduction](#DocumentMergerforDynamicsCRM-Introduction)
- [System Requirements and Supported Platforms](#DocumentMergerforDynamicsCRM-SystemRequirementsandSupportedPlatforms) 
  - [System Requirements](#DocumentMergerforDynamicsCRM-SystemRequirements)
  - [Supported Platforms](#DocumentMergerforDynamicsCRM-SupportedPlatforms)
- [Downloading](#DocumentMergerforDynamicsCRM-Downloading)
- [Installing or Uninstalling](#DocumentMergerforDynamicsCRM-InstallingorUninstalling) 
  - [Installing Aspose .NET Document Merger](#DocumentMergerforDynamicsCRM-InstallingAspose.NETDocumentMerger)
  - [Applying License](#DocumentMergerforDynamicsCRM-ApplyingLicense)
  - [Uninstalling Aspose .NET Document Merger](#DocumentMergerforDynamicsCRM-UninstallingAspose.NETDocumentMerger)
- [Using](#DocumentMergerforDynamicsCRM-Using)
- [Support, Extend and Contribute](#DocumentMergerforDynamicsCRM-Support,ExtendandContribute) 
  - [Support](#DocumentMergerforDynamicsCRM-Support)
  - [Extend and Contribute](#DocumentMergerforDynamicsCRM-ExtendandContribute)
## **Introduction**
This Provide functionality to automatically merge two documents into single or creating new document using existing documents.
Major features of this Addon are:

- Merge two or more documents in a one.
- Merge two or more documents in new document.
- Provided a separate button that will trigger the Dialog automatically.
## **System Requirements and Supported Platforms**
### **System Requirements**
In order to install and use Aspose .NET Document Merger for Microsoft Dynamics CRM you need to have one of the following CRM version installed.

- Microsoft Dynamics CRM 2011.

Please feel free to contact us if you find any issues in installing or using this Add-on.
### **Supported Platforms**
This addon will work with all version of:

- Microsoft Dynamics CRM 2011.
## **Downloading**
You can download the latest solution at:

- [Codeplex](http://goo.gl/nZJc8N)
- [Github](http://goo.gl/QHL5V6)
- [Sourceforge](http://goo.gl/vKdnuX)
- [Bitbucket](http://goo.gl/EHLHBr)
- [Code.MSDN](http://goo.gl/Vlaj4q)
## **Installing or Uninstalling**
### **Installing Aspose .NET Document Merger**
It is simple to install Aspose .NET Document Merger. Please follow below Instructions:

- Download the Solution File.
- Open CRM and go to Import Solution.
- Click Browse and select the downloaded solution file and click next.
- Click Next and wait for the solution to import.
- Click close when the solution is imported successfully.
### **Applying License**
- Copy the license File on the server and copy the path of the file. 
  - Recomended: "C:\Aspose\Aspose.Total.Lic".
- Open CRM and Navigate to Processes.
- Open "Aspose .NET Document Merger" and deactivate it. 

![todo:image_alt_text](document-merger-for-dynamics-crm_1)

- Scroll Down to the "Aspose: Document Merger" Step and Click View Properties. 

![todo:image_alt_text](document-merger-for-dynamics-crm_2)

- Add the Path of License File. 

![todo:image_alt_text](document-merger-for-dynamics-crm_3)

- Activate the Process and Close it.
### **Uninstalling Aspose .NET Document Merger**
- Go to solution and select "Aspose .NET Document Merger".
- Press the Delete button.
## **Using**
- Open any contact record and click on "Document Merger" from the top ribbon. 

![todo:image_alt_text](/download/thumbnails/2589724/693935211)

- Select the First and Second document to merge and select the output option: 

![todo:image_alt_text](/download/thumbnails/2589724/1045759710)

- Merged document will be attached to same contact record, based on the output selected.
## **Support, Extend and Contribute**
### **Support**
We offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose .NET Document Merger using any of the following platforms:

- [Codeplex](http://goo.gl/nZJc8N)
- [Github](http://goo.gl/QHL5V6)
- [Sourceforge](http://goo.gl/vKdnuX)
- [Bitbucket](http://goo.gl/EHLHBr)
- [Code.MSDN](http://goo.gl/Vlaj4q)
### **Extend and Contribute**
You can download the latest source code at:

- [CodePlex](https://asposenetcrm.codeplex.com/SourceControl/latest#Aspose .NET Document Merger/).
- [GitHub](https://github.com/asposemarketplace/asposenetcrm/tree/AsposeDocumentGenerator-1.0.0.2011/Aspose%20.NET%20Document%20Merger/Source%20Code).
- [BitBucket](https://bitbucket.org/asposemarketplace/aspose-.net-for-dynamics-crm/src/7ce93ebc181bba2b22539bfe183c68872f812070/Aspose%20.NET%20Document%20Merger/Source%20Code/?at=master).
- [SourceForge](http://sourceforge.net/p/asposenetcrm/code/ci/master/tree/Aspose%20.NET%20Document%20Merger/Source%20Code/).
- [Code.MSDN](https://code.msdn.microsoft.com/Aspose-NET-Document-Merger-f3f7822d/view/SourceCode#content).

Simply merge two documents here:

{{< highlight java >}}

 Document doc1 = new Document(fileStream1);

Document doc2 = new Document(fileStream2);

doc1.AppendDocument(doc2, ImportFormatMode.KeepSourceFormatting);

MemoryStream UpdateDoc = new MemoryStream();

doc1.Save(UpdateDoc, SaveFormat.Docx);

{{< /highlight >}}
