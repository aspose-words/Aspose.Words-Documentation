---
title: Aspose Export to Image for ASP.NET MVC
type: docs
weight: 10
url: /net/aspose-export-to-image-for-asp-net-mvc/
---

**Contents Summary**

- [Introduction](#AsposeExporttoImageforASP.NETMVC-Introduction)
- [System Requirements and Supported Platforms](#AsposeExporttoImageforASP.NETMVC-SystemRequirementsandSupportedPlatforms)
- [Downloading and Installing](#AsposeExporttoImageforASP.NETMVC-DownloadingandInstalling) 
  - [Downloading](#AsposeExporttoImageforASP.NETMVC-Downloading)
  - [Installing](#AsposeExporttoImageforASP.NETMVC-Installing) 
    - [Test a running demonstration](#AsposeExporttoImageforASP.NETMVC-Testarunningdemonstration)
    - [Add “Export web page content to an image” feature to an existing MVC project](#AsposeExporttoImageforASP.NETMVC-Add)
- [Using and Video Demo](#AsposeExporttoImageforASP.NETMVC-UsingandVideoDemo) 
  - [How to apply Aspose License?](#AsposeExporttoImageforASP.NETMVC-HowtoapplyAsposeLicense?)
  - [Video Demo](#AsposeExporttoImageforASP.NETMVC-VideoDemo)
- [Support, Extend and Contribute](#AsposeExporttoImageforASP.NETMVC-Support,ExtendandContribute) 
  - [Support](#AsposeExporttoImageforASP.NETMVC-Support)
  - [Extend and Contribute](#AsposeExporttoImageforASP.NETMVC-ExtendandContribute) 
    - [Source Code](#AsposeExporttoImageforASP.NETMVC-SourceCode)
    - [How to configure source code](#AsposeExporttoImageforASP.NETMVC-Howtoconfiguresourcecode)

## **Introduction**

Are you facing problems in converting a lengthy web page into single/multiple images (PNG, JPEG,TIFF, or BMP). Here is how [Apose.Words for .NET](http://www.aspose.com/.net/word-component.aspx) will help you achieve this. Aspose.Words for .NET exports the entire content of the web page into a single image or multiple images, as per user choice , in any image format (options available are PNG, JPEG,TIFF,BMP). Users can easily download the exported image(s) and use it as desired. Developers can add this feature of Aspose.Words for .NET to their MVC website projects by performing few simple steps.

This initial version of the module contains following features:

- Simple to integrate.
- Exports the entire content of a web page with no limitation on page length or content type, into one or more images.
- Stores the exported images in zipped archive (in case of multiple images).
- Allows users to export content into four different Image formats (PNG, JPEG,TIFF, or BMP).
- It has the capability of auto-sequencing multiple images.
- Allows users to have an offline copy of their favorite online content into image formats for sharing and printing etc.
- The exported image(s) is highly optimized without loss of any critical information.
- Exported document is automatically sent to the browser for downloading.
- The generated image can then be opened using any image viewing application such as windows photo viewer etc.

## **System Requirements and Supported Platforms**

In order to install and use export content to images for ASP.NET MVC, you need to have one of the following installed.

- Microsoft Visual Studio.
- ASP.NET MVC 4.5+.

Please feel free to contact us if you find any issues in installing or using this Add-on.

This addon will work with ASP.NET MVC 4.5+:

- Microsoft Visual Studio.
- ASP.NET MVC 4.5+.

## **Downloading and Installing**

You can download Export web page contents to an image for ASP.NET MVC from one of the following locations

### **Downloading**

- [CodePlex](https://asposewordsnetmvc.codeplex.com/downloads/get/1559922)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.MVC.ExportContentToImagesv1.0/Aspose.MVC.ExportContentToImages-v1.0.zip)
- [Code.MSDN](https://code.msdn.microsoft.com/Aspose-Export-to-Image-for-538cb0ea)

### **Installing**

#### **Test a running demonstration**

- Step 1 – Download ExportContentToImages Project.
- Step 2 – Open ExportContentToImages Project.
- Step 3 – Run the project.

#### **Add “Export web page content to an image” feature to an existing MVC project**

- Step 1 – Download ExportContentToImages Project and open your existing ASP.NET MVC Solution / Project.
- Step 2 – Copy “Controllers/ExportToImageController.cs” and paste it in your project “Controllers” folder.
- Step 3 – Modify namespace in ExportToImageController.cs file with your current project namespace.
- Step 4 – Copy “Views/Shared/AsposeContentToImage.cshtml” file and paste in your project “Views/Shared” folder.
- Step 5 – Add partial view “AsposeContentToImage.cshtml” in your desired view.

{{< highlight csharp >}}
e.g @{ Html.RenderPartial("~/Views/Shared/AsposeContentToImage.cshtml"); }
{{< /highlight >}}

- Step 6 – To resolve “References” by taking the following the steps 
  - Step 6.1 – Make sure “Package Restore” during build option is [enabled](https://docs.nuget.org/images/consume/allow-package-restore-configuration.png)
  - Step 6.2 – In Solution Explorer , Right click on “References” then select “Manage NuGet Packages” 
    - Step 6.2.1 – Type “Aspose.Words” in the search box at the top right of the dialog box.
    - Step 6.2.2 – Select “Aspose.Words for .NET” and then click install.
  - Step 6.3 – Right click on “References” then select “Add References”.
  - Step 6.4 – Type “System.IO.Compression” in “Search Assembiles” and select the following assemblies 
    - Step 6.4.1 – System.IO.Compression.
    - Step 6.4.2 – System.IO.Compression.FileSystem.
    - Step 6.4.3 – Click Ok.
- Step 7 – Run the project.

## **Using and Video Demo**

### **How to apply Aspose License?**

This Plugin uses an evaluation version of Aspose.Words. Once you are happy with your evaluation, you can purchase a license at the [Aspose website](http://www.aspose.com/purchase/default.aspx).
To remove evaluation message and feature limitations, product license should be applied. You will receive a license file after you have purchased the product. Please follow the steps below to apply the license.

- Make sure the license file is named as **Aspose.Words.lic.**
- Place **Aspose.Words.lic** file in **App_Data** folder of your project directory e.g. "MVC project Root Folder/App_Data/Aspose.Words.lic".

### **Video Demo**

Please check [the video](https://youtu.be/CCC96GvkD0M) below to see the module in action.

## **Support, Extend and Contribute**

### **Support**

From the very first days of Aspose, we knew that just giving our customers good products would not be enough. We also needed to deliver good service. We are developers ourselves and understand how frustrating it is when a technical issue or a quirk in the software stops you from doing what you need to do. We're here to solve problems, not create them.

This is why we offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.
You can log any issues or suggestions related to Aspose.Words.NET for ASP.NET MVC Modules using any of the following platforms

- [CodePlex](https://asposewordsnetmvc.codeplex.com/workitem/list/basic)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/issues)

### **Extend and Contribute**

#### **Source Code**

You can download the latest source code at:

- [Codeplex](https://asposewordsnetmvc.codeplex.com/SourceControl/latest)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET)
- [Code.MSDN](https://code.msdn.microsoft.com/Aspose-Export-to-Image-for-538cb0ea/view/SourceCode#content)

#### **How to configure source code**

You need to have the following installed in order to open and extend the source code

- Visual Studio 2010 or higher.
- ASP.NET MVC 4.5+.

Please follow these simple steps to get started

1. Download/Clone the source code.
1. Open Visual Studio 2010 and Choose **File** > **Open Project.**
1. Browse to the latest source code that you have downloaded and open **ExportContentToImages.csproj.**
