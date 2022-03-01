---
title: HelloWorld Example in PHP – Aspose.Words for .NET
articleTitle: HelloWorld Example in PHP
linktitle: HelloWorld Example in PHP
description: "Building documents from scratch using Aspose.Words for .NET in PHP via COM using C#."
type: docs
weight: 40
url: /net/helloworld-example-in-php/
---

## Aspose.Words - HelloWorld Example

Hello World Example

**PHP Code**

{{< highlight php >}}
$dataDir = '.';
$doc = new \COM("Aspose.Words.Document");
$builder = new \COM("Aspose.Words.DocumentBuilder");
$builder->Document = $doc;
$builder->Write("Hello world!");
$doc->Save($dataDir . "/HelloWorld Out.docx");
{{< /highlight >}}

## Download Running Code

Download **HelloWorld Example (Aspose.Words)** from any of the below mentioned social coding sites:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Plugins/Aspose_Words_NET_for_PHP/src/aspose/words/quickstart/HelloWorld.php)
