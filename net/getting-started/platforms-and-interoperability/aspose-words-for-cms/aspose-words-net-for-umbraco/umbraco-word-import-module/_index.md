---
title: Umbraco Word Import Module
description: "Read contents of any Word processing document using Aspose.Words Umbraco Word Import Module."
type: docs
weight: 20
url: /net/umbraco-word-import-module/
---

Umbraco Word Import is an open source module from [Aspose](https://www.aspose.com/) that allow developers to get/read contents of any Word processing document without requiring any other software such as Microsoft Word or OpenOffice. This module demonstrates the powerful import feature provided by [Aspose.Word](https://www.aspose.com/word-component-suite.aspx). It adds a simple file browser control and **Import from Word** button on the page where the add-on is added. When clicking on the button, the document contents are fetched from the file and displayed on the screen immediately.

## System Requirements and Supported Platforms

### System Requirements

In order to setup this module you need to have the following requirements met:

- Umbraco 6.0 +

Please feel free to contact us if you wish to install this module on other versions of Umbraco.

### Supported Platforms

The module is supported on all versions of

- Umbraco running on ASP.NET 4.0

## Downloading

You can download Aspose .NET Word Import for Umbraco module from one of the following locations

- [Github](https://github.com/asposemarketplace/Aspose_for_Umbraco/releases)
- [Sourceforge](https://sourceforge.net/projects/asposeumbraco/files/)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-umbraco/downloads/)

## Installing

Once downloaded, please follow these steps to install this package into your Umbraco website:

1. Log in to the Umbraco **Developer** section, for example `http://www.myblog.com/umbraco/`
1. From the tree, expand the **Packages** folder.
   From here there are two ways to install a package: select **Install local package** or browse the **Umbraco Package Respository.**
1. If you install **local package**, do not unzip the package but load the zip into Umbraco.
1. Follow the instructions on screen.

**Note:** You may get a ‘Maximum request length exceeded’ error when installing. You can easily fix this issue by updating the ‘maxRequestLength’ value in your Umbraco web.config file.

{{< highlight csharp >}}
<httpRuntime requestValidationMode="2.0" enableVersionHeader="false" maxRequestLength="25000" />
{{< /highlight >}}

## Using

After you have installed the macro it is really simple to start using it on your website:

1. Make sure you are logged in to the Umbraco **Developer** section, for example `http://www.myblog.com/umbraco/`
1. Click **Settings** in the list of sections at the bottom left of the screen.
1. Expand the **Templates** node and select the template that you want to add macro to, for example Blog post.
1. Select the position in the selected template where you want to the button.
1. Click **Insert Macro** on the top ribbon.
1. From **Choose a macro**, select the installed macro and click **OK**.

You have successfully added the template. A button titled **Import to Word** now appears on all pages created using this template. Anyone can simply click the button and import the contents from a Word document.

## Video Demo

Please check [the video](https://www.youtube.com/watch?v=SSggrpVYkXs) below to see the module in action.

### Support

From the very first days of Aspose, we knew that just giving our customers good products would not be enough. We also needed to deliver good service. We are developers ourselves and understand how frustrating it is when a technical issue or a quirk in the software stops you from doing what you need to do. We're here to solve problems, not create them.

This is why we offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose.Words .NET for Umbraco Modules using any of the following platforms

- [Github](https://github.com/asposemarketplace/Aspose_for_Umbraco/issues)
- [Sourceforge](https://sourceforge.net/p/asposeumbraco/tickets/?source=navbar)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-umbraco/issues?status=new&status=open)

### Extend and Contribute

Import from Word macro ia an open source and their source code is available on the major social coding websites listed below. Developers are encouraged to download the source code and extend the functionality as per their own requirements.

#### Source Code

You can get the latest source code from one of the following locations

- [Github](https://github.com/asposemarketplace/Aspose_for_Umbraco)
- [Sourceforge](https://sourceforge.net/p/asposeumbraco/code/ci/master/tree/)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-umbraco/src)

#### How to configure the source code

You need to have the following installed in order to open and extend the source code

- Visual Studio 2010 or higher

Please follow these simple steps to get started

1. Download/Clone the source code.
1. Open Visual Studio 2010 and Choose **File** > **Open Project**
1. Browse to the latest source code that you have downloaded and open **Aspose.Import from Word.sln**
