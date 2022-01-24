---
title: Windows Azure Platform
type: docs
description: "Use Aspose.Words for .NET when building applications for the Windows Azure Platform. Learn how Aspose.Words works well in the cloud."
weight: 10
url: /net/windows-azure-platform/
---

This section includes articles that describe possible scenarios for using Aspose.Words for .NET when building applications for the Windows Azure Platform.

Note that If this is your first time working with Windows Azure, please refer to the dedicated Windows Azure development resources. Articles in this section deliberately do not describe the detailed steps required to develop and deploy a Windows Azure application. Instead, the purpose of these articles is to demonstrate how Aspose.Words works well in the cloud.

## Prerequisites

- Active Microsoft Azure subscription. If you don’t have one, create a free account before you begin.
- Visual Studio 2019 or Visual Studio 2017 with installed Azure development and Azure Functions tools if you are going to develop Azure Functions in Visual Studio 2017.

## Requirements and Restrictions for Using Aspose.Words in Azure Applications

If you plan to use Aspose.Words to create, modify, or convert documents in any format except for PDF or XPS, then there are no special requirements. Aspose.Words is a CLS compliant .NET assembly written entirely in C# and running by default under Windows Azure Partial Trust.

However, if you need to use Aspose.Words to convert documents to PDF or XPS, or render page images, you need to run your application under Windows Azure Full Trust, because Aspose.Words needs to enumerate and read TrueType fonts installed on the computer. For more details about TrueType fonts, see the ["Using TrueType Fonts"](/words/net/using-truetype-fonts/) section. Running an application under Full Trust in Windows Azure is very simple – you need to change one setting in the service configuration file.

Alternatively, if you cannot run the application with full trust, you can specify the folders where Aspose.Words will look for fonts and place your fonts there. For more details on how to achieve this, see the ["Specifying TrueType Fonts Location"](/words/net/specifying-truetype-fonts-location/) article.

## Setting the License in Azure Functions

It is recommended to use the license file as an embedded resource in your application, which will enable you to avoid potential problems with the license file upon deployment. For more information about the license file, see the ["Licensing"](/words/net/licensing/#licensing-includingthelicensefileasanembeddedresource) article.

## See Also

- Update your [Azure Functions tools](https://docs.microsoft.com/en-us/azure/azure-functions/functions-develop-vs#check-your-tools-version) in Visual Studio 2017
