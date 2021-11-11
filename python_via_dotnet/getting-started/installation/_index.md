---
title: Installation
description: "Install Aspose.Words for .NET using Visual Studio tools such as Manage NuGet Packages or Package Manager Console and the MSI installer. Use the Full Trust permission set."
type: docs
weight: 90
url: /python/installation/
---

Make sure your machine meets the [system requirements](/words/python/system-requirements/) before you begin.

This article explains how to instal Aspose.Words for Python via .NET on your computer.

`pip` is the easiest way to download and install [Aspose.Words for Python via .NET](https://pypi.org/project/aspose-words/) APIs. To do this run the following command:

`pip install aspose-words`

Once module is installed, you can use it fom your Python code:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}