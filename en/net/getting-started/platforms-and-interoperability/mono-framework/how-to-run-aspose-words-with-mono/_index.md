---
title: How to  Run Aspose.Words with Mono
second_title: Aspose.Words for .NET
articleTitle: How to  Run Aspose.Words with Mono
linktitle: How to  Run Aspose.Words with Mono
description: "Using Aspose.Words for .NET with Mono on Linux or Mac OS to generate DOC files, convert DOC and DOCX to PDF and much more in C#."
type: docs
weight: 10
url: /net/how-to-run-aspose-words-with-mono/
timestamp: 2024-10-21-11-17-44
---

{{% alert color="primary" %}}

Yes, you can now run Aspose.Words for .NET with Mono on Linux or Mac OS to generate DOC files, convert DOC and DOCX to PDF and much more. This article provides important information for getting up and running with Aspose.Words on Mono.

{{% /alert %}}

## Supported Platforms

We have successfully tested Aspose.Words for .NET running on Mono in the following configurations:

- Aspose.Words for .NET 10.2 
- Mono 2.10.2 
- MonoDevelop 2.4 
- openSUSE 11.4 
- Ubuntu 11.4 
- Mac OS X 10.6.4 

### Known Issues

Aspose.Words for .NET was initially designed to be used on Windows systems with the .NET Framework. It is a testament to the great work done by the developers working on the Mono project that when we ran Aspose.Words on Mono for the first time, most of the functionality worked straight away.

However Aspose.Words for .NET is a big product that relies on some .NET features that are either not available in Mono, or do not work exactly as they do in .NET because Mono is still under development. In some cases we've managed to implement missing functions ourselves, but in other cases there is still a limitation or difference in the output. 

The table below lists known issues and features that are not available in Aspose.Words for .NET when working on Mono. 

| Issue | Description | Planned |
| :- | :- | :- |
| Rendering of document pages or shapes to images can produce poor results. | Aspose.Words uses GDI+ to render document pages to images. While this is available on Mono, it seems to work differently with coordinate transformations and the output is often garbled. | N/A |
| Printing is unavailable. | Aspose.Words for .NET implements printing via the .NET printing infrastructure, which is not available on Mono. | N/A |

#### Install the mono-locale-extras Package

When running Aspose.Words on openSUSE we found the mono-locale-extras package was not installed by default. We had to install this package manually, otherwise the "CodePage not supported" exception was thrown on some documents.

#### Install Aspose.Words for use with Mono

You do not need to install a special build for use with Mono, just use the same Aspose.Words assembly as for a .NET application, i.e. Aspose.Words for .NET.

Aspose.Words for .NET is distributed as a Windows Installer Package (MSI) and as a ZIP download. You need to download **Aspose.Words.zip** because you will not be able to run MSI on Linux or Mac OS. 

Unpack **Aspose.Words.zip** and add a reference to **net2.0/Aspose.Words.dll** to your project. 

#### Verify the Location of TrueType Fonts

In order for Aspose.Words to render documents (for example to PDF or XPS), it needs to know where to find TrueType Fonts (TTF) files. See [How-to: Specify True Type Font Location](/words/net/specifying-truetype-fonts-location/) for more information. 
