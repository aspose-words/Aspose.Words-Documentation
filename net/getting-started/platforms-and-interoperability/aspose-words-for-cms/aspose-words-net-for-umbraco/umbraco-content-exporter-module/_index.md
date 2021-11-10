---
title: Umbraco Content Exporter Module
type: docs
weight: 10
url: /net/umbraco-content-exporter-module/
---

## Export to Word

Umbraco’s Export to Word macro allow users to export online content into a Microsoft Word document using [Aspose.Words](http://www.aspose.com/word-component-suite.aspx). This macro makes it super simple to get an offline copy of your favorite online content for editing, sharing and printing in most popular Microsoft Word formats (DOC/DOCX). It adds a simple **Export to Word** button at any desired location on the web page. Clicking the button exports the page content to a Word document and automatically downloads the file to a disk location selected by the user in just seconds.

## Export to PDF

The Umbraco **Export to Pdf** macro allows users to export online content to a PDF document using [Aspose.Words](http://www.aspose.com/word-component-suite.aspx). This macro makes it very easy and simple to have an offline copy of your favorite online content for sharing and printing etc. in the popular PDF format. It adds a simple **Export to Pdf** button at any desired location on the page and clicking it exports the content of the page to a PDF document and automatically downloads the file to the location selected by the user in just couple of seconds.

## System Requirements and Supported Platforms

### System Requirements

In order to setup this module you need to have the following requirements met:

- Umbraco 6.0 +

Please feel free to contact us if you wish to install this module on other versions of Umbraco.

### Supported Platforms

The module is supported on all versions of

- Umbraco running on ASP.NET 4.0

## Downloading

You can download Export to Word and Export to PDF modules from one of the following locations

- [Github ](https://github.com/asposemarketplace/Aspose_for_Umbraco/releases)
- [Sourceforge ](https://sourceforge.net/projects/asposeumbraco/files/)
- [Bitbucket ](https://bitbucket.org/asposemarketplace/aspose-for-umbraco/downloads/)
- [Umbraco - Word Export ](https://our.umbraco.org/projects/developer-tools/export-to-word-using-aspose-words)
- [Umbraco - PDF Export ](https://our.umbraco.org/projects/developer-tools/export-to-pdf-using-aspose-words)

## Installing

Once downloaded, please follow these steps to install this package into your Umbraco website:

1. Log in to the Umbraco **Developer** section, for example `http://www.myblog.com/umbraco/`
1. From the tree, expand the **Packages** folder.
1. From here there are two ways to install a package: select **Install local package** or browse the **Umbraco Package Respository.**
1. If you install **local package**, do not unzip the package but load the zip into Umbraco.
1. Follow the instructions on screen.

**Note:** You may get a ‘Maximum request length exceeded’ error when installing. You can easily fix this issue by updating the ‘maxRequestLength’ value in your Umbraco web.config file.

{{< highlight csharp >}}
 <httpRuntime requestValidationMode="2.0" enableVersionHeader="false" maxRequestLength="25000" /> 
{{< /highlight >}}

## Using

### Using the Export to Word Macro

After you have installed the Export to Word macro it is really simple to start using it on your website. Please follow these simple steps to get started:

1. Make sure you are logged-in to Umbraco **Developer** section, for example `http://www.myblog.com/umbraco/`
1. Click **Settings** in the list of sections in bottom left of the screen.
1. Expand the **Templates** node and select the template that you want to add the Export to Word feature to, for example Blog post.
1. Select the position in the selected template where you want to export button to be added. Usually you probably want to add it to the top right of the page, or the bottom of the page.
1. Click **Insert Macro** on the top ribbon.
1. From **Choose a macro**, select the recently installed Export to Word using Aspose.Words macro and click **OK**.
   Please check the screenshot below for details.

You have successfully added Export to Word to the template. A button titled **Export to Word** will now appear on all pages created using this template. Anyone can simply click the button and export the content of the page into a Word document.

### Using the Export to Pdf Macro

After you have installed the Export to Pdf macro it is really simple to start using it on your website. Please follow these simple steps to get started:

1. Make sure you are logged in to the Umbraco **Developer** section, for example <http://www.myblog.com/umbraco/>
1. Click **Settings** in the list of sections in  the bottom left of the screen.
1. Expand the **Templates** node and select the template that you want to add the Export to Pdf feature to, for example Blog post.
1. Select the position in the selected template where you want to export button to be added. Usually you want to add it to the top right of the page, or the bottom of the page.
1. Click **Insert Macro** on the top ribbon.
1. From **Choose a macro**, select the recently installed Export to Pdf using Aspose.Words macro and click **OK**.
   Please check the screenshot below for details.

You have successfully added Export to Pdf to the template. A button titled **Export to Pdf** now appears on all pages created using this template. Anyone can simply click the button and export the content of the page into a PDF document.

## Video Demo

### Export to Word Video Demo

Please check [the video](https://www.youtube.com/watch?v=3EHf3Giq6l0) below to see the module in action.

### Export to PDF Video Demo

Please check [the video](https://www.youtube.com/watch?v=EcZZzswqybc) below to see the module in action.

## Support, Extend and Contribute

### Support

From the very first days of Aspose, we knew that just giving our customers good products would not be enough. We also needed to deliver good service. We are developers ourselves and understand how frustrating it is when a technical issue or a quirk in the software stops you from doing what you need to do. We're here to solve problems, not create them.

This is why we offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose.Words .NET for Umbraco Modules using any of the following platforms

- [Github ](https://github.com/asposemarketplace/Aspose_for_Umbraco/issues)
- [Sourceforge ](https://sourceforge.net/p/asposeumbraco/tickets/?source=navbar)
- [Bitbucket ](https://bitbucket.org/asposemarketplace/aspose-for-umbraco/issues?status=new&status=open)

**Export to Word**

- [Microsoft Developer Network - Q and A ](https://code.msdn.microsoft.com/Umbraco-Export-to-Word-5851c9bd/view/Discussions#content)

**Export to Pdf**

- [Microsoft Developer Network - Q and A ](https://code.msdn.microsoft.com/Umbraco-Export-to-PDF-ff5acc99/view/Discussions#content)

### Extend and Contribute

Export to Word, Export to Pdf and Import from Word macros are open source and their source code is available on the major social coding websites listed below. Developers are encouraged to download the source code and extend the functionality as per their own requirements.

#### Source Code

You can get the latest source code from one of the following locations

- [Github ](https://github.com/asposemarketplace/Aspose_for_Umbraco)
- [Sourceforge ](https://sourceforge.net/p/asposeumbraco/code/ci/master/tree/)
- [Bitbucket ](https://bitbucket.org/asposemarketplace/aspose-for-umbraco/src)

#### How to configure the source code

You need to have the following installed in order to open and extend the source code

- Visual Studio 2010 or higher

Please follow these simple steps to get started

1. Download/Clone the source code.
1. Open Visual Studio 2010 and Choose **File** > **Open Project**
1. Browse to the latest source code that you have downloaded and open **Aspose.ExportToWord.sln** or **Aspose.Import from Word.sln**
