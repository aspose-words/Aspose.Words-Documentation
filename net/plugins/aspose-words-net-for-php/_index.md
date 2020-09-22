---
title: Aspose.Words .NET for PHP
type: docs
weight: 70
url: /net/aspose-words-net-for-php/
---

Project Aspose.Words .NET for PHP shows how different tasks can be performed using Aspose.Words .NET APIs in PHP. This project is aimed to provide useful examples for PHP Developers who want to utilise Aspose.Words for .NET in their PHP Projects.

**Contents Summary**

- [Introduction Aspose.Words .NET for PHP](#Aspose.Words.NETforPHP-IntroductionAspose.Words.NETforPHP)
- [System Requirements and Supported Platforms](#Aspose.Words.NETforPHP-SystemRequirementsandSupportedPlatforms) 
  - [System Requirements](#Aspose.Words.NETforPHP-SystemRequirements)
  - [Supported Platforms](#Aspose.Words.NETforPHP-SupportedPlatforms)
- [Download and Configure](#Aspose.Words.NETforPHP-DownloadandConfigure) 
  - [Download Required Libraries](#Aspose.Words.NETforPHP-DownloadRequiredLibraries)
  - [Download Examples from Social Coding Sites](#Aspose.Words.NETforPHP-DownloadExamplesfromSocialCodingSites)
  - [How to configure the source code on Windows Platform](#Aspose.Words.NETforPHP-HowtoconfigurethesourcecodeonWindowsPlatform) 
    - [1. Register dll files e.g. Aspose.Words.dll.](#Aspose.Words.NETforPHP-1.Registerdllfilese.g.Aspose.Words.dll.)
    - [2. Enable COM and DOTNET Extensions in PHP.](#Aspose.Words.NETforPHP-2.EnableCOMandDOTNETExtensionsinPHP.)
    - [3. Configure Aspose.Words NET for PHP Examples](#Aspose.Words.NETforPHP-3.ConfigureAspose.WordsNETforPHPExamples) 
      - [Method 1](#Aspose.Words.NETforPHP-Method1)
      - [Method 2](#Aspose.Words.NETforPHP-Method2)
- [Support](#Aspose.Words.NETforPHP-Support)
- [Extend and Contribute](#Aspose.Words.NETforPHP-ExtendandContribute)
- [Source Code](#Aspose.Words.NETforPHP-SourceCode)

[Sample Code Examples](#Aspose.Words.NETforPHP-SampleCodeExamples)

## **Introduction Aspose.Words .NET for PHP**

Project Aspose.Words .NET for PHP shows how different tasks can be performed using Aspose.Words .NET APIs in PHP. This project is aimed to provide useful examples for PHP Developers who want to utilise Aspose.Words for .NET in their PHP Projects.

## **System Requirements and Supported Platforms**

### **System Requirements**

**Following are the system requirements to use Aspose.Words .NET for PHP:**

- IIS with PHP and PHP Manager installed.
- Aspose.Total APIs.

### **Supported Platforms**

**Following are the supported platforms:**

- PHP 5.3 or above
- Windows OS

## **Download and Configure**

### **Download Required Libraries**

Download required libraries mentioned below. These are the required for executing Aspose.Words .NET for PHP examples.

- [Download Aspose.Words for .NET (DLL or MSI) files from download section](http://www.aspose.com/community/files/51/.net-components/aspose.words-for-.net/category1188.aspx)

If you download msi version, you will find Aspose.Words.dll in installed location which is C:\Program Files (x86)\Aspose\Aspose.Words for .NET\Bin\net2.0 folder by default.
However in case you have downloaded DLL version you can extract it and then copy Aspose.Words.dll from .NET 2.0 folder to your c:\temp folder for ease of use.

### **Download Examples from Social Coding Sites**

Following releases of running examples are available to download on below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose_Words_NET_for_PHP)
- [Codeplex](https://asposenetphp.codeplex.com/SourceControl/latest#Aspose.Words-for-.NET_for_PHP)

### **How to configure the source code on Windows Platform**

Please follow these simple steps in order to open and extend the source code while using:

#### **1. Register dll files e.g. Aspose.Words.dll.**

{{< highlight csharp >}}
Register dll files e.g. Aspose.Words.dll.
C:\Windows\Microsoft.NET\Framework\v2.0.50727>regasm c:\words\Aspose.Words.dll /codebase
Microsoft (R) .NET Framework Assembly Registration Utility 2.0.50727.7905
Copyright (C) Microsoft Corporation 1998-2004. All rights reserved.
Types registered successfully
{{< /highlight >}}

#### **2. Enable COM and DOTNET Extensions in PHP.**

In IIS open PHP Manager and then Click ‘Enable to Disable and Extension‘. Find php_com_dotnet.dll and make sure it is enabled.

#### **3. Configure Aspose.Words NET for PHP Examples**

##### **Method 1**

Clone PHP Examples from [github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose_Words_NET_for_PHP)
and run the following command

{{< highlight csharp >}}
composer install
{{< /highlight >}}

##### **Method 2**

In your PHP Project's composer.json file add following lines

{{< highlight csharp >}}
{
    "require": {
        "aspose-words/Aspose.Words-for-.NET_for_php": "dev-master"
    }
}
{{< /highlight >}}

and run the install command

{{< highlight csharp >}}
composer install
{{< /highlight >}}

To read about composer visit <https://getcomposer.org/>

## **Support**

From the very first days of Aspose, we knew that just giving our customers good products would not be enough. We also needed to deliver good service. We are developers ourselves and understand how frustrating it is when a technical issue or a quirk in the software stops you from doing what you need to do. We're here to solve problems, not create them.

This is why we offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose.Words .NET for PHP using any of the following platforms:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/issues)
- [Codeplex](https://asposenetphp.codeplex.com/workitem/list/basic)

## **Extend and Contribute**

Aspose.Words .NET for PHP is open source and its source code is available on the major social coding websites listed below. Developers are encouraged to download the source code and contribute by suggesting or adding new feature or improving the existing ones, so that others could also benefit from it.

## **Source Code**

You can get the latest source code from one of the following locations

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose_Words_NET_for_PHP)
- [Codeplex](https://asposenetphp.codeplex.com/SourceControl/latest#Aspose.Words-for-.NET_for_PHP)

## **Sample Code Examples**

This section includes the following topics

- [PHP Programmers Guide](https://docs.aspose.com/words/net/php-programmers-guide/)
  - [Loading and Saving Documents](https://docs.aspose.com/words/net/loading-and-saving-documents/)
    - [Load Text File in PHP](https://docs.aspose.com/words/net/load-text-file-in-php/)
  - [Quick Start](https://docs.aspose.com/words/net/quick-start/)
    - [Append Documents in PHP](https://docs.aspose.com/words/net/append-documents-in-php/)
    - [Document to PDF Conversion in PHP](https://docs.aspose.com/words/net/document-to-pdf-conversion-in-php/)
    - [Find and Replace in PHP](https://docs.aspose.com/words/net/find-and-replace-in-php/)
    - [HelloWorld Example in PHP](https://docs.aspose.com/words/net/helloworld-example-in-php/)
