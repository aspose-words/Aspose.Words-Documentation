---
title: Document Generator for Dynamics CRM
type: docs
weight: 20
url: /net/document-generator-for-dynamics-crm/
---

**Contents Summary**

- [Introduction](#DocumentGeneratorforDynamicsCRM-Introduction)
- [System Requirements and Supported Platforms](#DocumentGeneratorforDynamicsCRM-SystemRequirementsandSupportedPlatforms) 
  - [System Requirements](#DocumentGeneratorforDynamicsCRM-SystemRequirements)
  - [Supported Platforms](#DocumentGeneratorforDynamicsCRM-SupportedPlatforms)
- [Downloading](#DocumentGeneratorforDynamicsCRM-Downloading)
- [Installing or Uninstalling](#DocumentGeneratorforDynamicsCRM-InstallingorUninstalling) 
  - [How to Install](#DocumentGeneratorforDynamicsCRM-HowtoInstall)
  - [Applying License](#DocumentGeneratorforDynamicsCRM-ApplyingLicense)
  - [How to Uninstall](#DocumentGeneratorforDynamicsCRM-HowtoUninstall)
- [Using](#DocumentGeneratorforDynamicsCRM-Using)
- [Support, Extend and Contribute](#DocumentGeneratorforDynamicsCRM-Support,ExtendandContribute) 
  - [Support](#DocumentGeneratorforDynamicsCRM-Support)
  - [Extend and Contribute](#DocumentGeneratorforDynamicsCRM-ExtendandContribute)
## **Introduction**
The Aspose Document Generator is an open-source add-on to be used in Microsoft Dynamic CRM. This add-on is capable of automatically generate a document using a template defined. One-click will generate a document for individual contact based on the template selected. This can be used with all versions of Microsoft Dynamics CRM 2011.
Major features of this Addon are:

- Create Templates in Microsoft Word and Upload them in CRM.
- Create a Document in CRM using the templates.
- Allow users to Add OptionSet fields in the templates.
- Allow users to Add Lookup fields in the templates.
- Provided a separate button that will trigger the Dialog automatically.
## **System Requirements and Supported Platforms**
### **System Requirements**
In order to install and use Aspose .Net Document Generator for Microsoft Dynamics CRM, you need to have one of the following CRM version installed

- Microsoft Dynamics CRM 2013.
- Microsoft Dynamics CRM 2015.
- Microsoft Dynamics CRM Online.
  Please feel free to contact us if you find any issues in installing or using this Add-on.
### **Supported Platforms**
This addon will work with all version of Microsoft Dynamics CRM:

- Microsoft Dynamics CRM 2013.
- Microsoft Dynamics CRM 2015.
- Microsoft Dynamics CRM Online.
## **Downloading**
You can download Aspose .NET Document Generator for CRM from one of the following locations:

- [Codeplex](http://goo.gl/eMcjA9)
- [Github](http://goo.gl/rrLOLu)
- [Sourceforge](http://goo.gl/mua233)
- [Bitbucket](http://goo.gl/ngjuJg)
- [Code.MSDN](http://goo.gl/bqPhfr)
## **Installing or Uninstalling**
### **How to Install**
- Copy Aspose.Words.dll into CRM installation directory under the CRMWeb/Bin folder.
- Download the Solution and place it on your hard disk.
- Open CRM and go to Import Solution. 

![todo:image_alt_text](document-generator-for-dynamics-crm_1)

- Click Browse and select the downloaded file and click next. 

![todo:image_alt_text](document-generator-for-dynamics-crm_2)

- Click Next and Activate any process within the solution. 

![todo:image_alt_text](document-generator-for-dynamics-crm_3)

- Click the close button when the solution import is successful. 

![todo:image_alt_text](document-generator-for-dynamics-crm_4)
### **Applying License**
- Copy the license file on the server and copy the path of the file.
- Recommended: "C:\Aspose\Aspose.Total.Lic"
- Open CRM and Navigate to Processes.
- Open "Aspose .NET Document Generator" and deactivate it. 

![todo:image_alt_text](document-generator-for-dynamics-crm_5)

- Scroll Down to the "Create Document From Template" Step and Click View Properties. 

![todo:image_alt_text](document-generator-for-dynamics-crm_6)

- Add the Path of License File. 

![todo:image_alt_text](document-generator-for-dynamics-crm_7)

- Activate the Process and Close it.
### **How to Uninstall**
- Go To Solution and select Aspose .Net Document Generator. 

![todo:image_alt_text](document-generator-for-dynamics-crm_8)

- Click Ok on the next screen. 

![todo:image_alt_text](document-generator-for-dynamics-crm_9)
## **Using**
Easily configure and Use Aspose .NET Document Generator for Dynamics CRM by following the instructions [here](http://docs.aspose.com/docs/display/wordsnet/Using+and+Configuring+CRM+Document+Generator).
## **Support, Extend and Contribute**
### **Support**
We offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose .NET Document Generator using any of the following platforms:

- [Codeplex](http://goo.gl/eMcjA9)
- [Github](http://goo.gl/rrLOLu)
- [Sourceforge](http://goo.gl/mua233)
- [Bitbucket](http://goo.gl/ngjuJg)
- [Code.MSDN](http://goo.gl/bqPhfr)
### **Extend and Contribute**
You can download the latest source code at:

- [CodePlex](https://asposenetcrm.codeplex.com/SourceControl/latest#Aspose .NET Document Generator/).
- [GitHub](https://github.com/asposemarketplace/asposenetcrm/tree/AsposeDocumentGenerator-1.0.0.2011/Aspose%20.NET%20Document%20Generator/Source%20Code).
- [BitBucket](https://bitbucket.org/asposemarketplace/aspose-.net-for-dynamics-crm/src/7ce93ebc181bba2b22539bfe183c68872f812070/Aspose%20.NET%20Document%20Generator/Source%20Code/?at=master).
- [SourceForge](http://sourceforge.net/p/asposenetcrm/code/ci/master/tree/Aspose%20.NET%20Document%20Generator/Source%20Code/).
- [Code.MSDN](https://code.msdn.microsoft.com/Aspose-NET-Document-1b4405dd/view/SourceCode#content).

Retrieve Note and Read in FileStream. Then read the list of Fields from CRM

{{< highlight java >}}

 if (Note.Contains("documentbody"))

{

     byte[] DocumentBody = Convert.FromBase64String(Note["documentbody"].ToString());

     MemoryStream fileStream = new MemoryStream(DocumentBody);

     Document doc = new Document(fileStream);

     string[] fields = doc.MailMerge.GetFieldNames();

     Entity contact = service.Retrieve("contact", Contact.Id, new ColumnSet(fields));


{{< /highlight >}}

The values retrieved from CRM can be simply used in MailMerge:

{{< highlight java >}}

 doc.MailMerge.Execute(fields, values);

MemoryStream UpdateDoc = new MemoryStream();

doc.Save(UpdateDoc, SaveFormat.Docx);


{{< /highlight >}}
