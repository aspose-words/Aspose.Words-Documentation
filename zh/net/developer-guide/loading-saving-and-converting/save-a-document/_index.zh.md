---
title: 将文档保存为 C#
second_title: .NET 格式的 Aspose.Words
articleTitle: 保存文档
linktitle: 保存文档
type: docs
description: "使用 C# 以任何支持的格式保存文档。"
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /zh/net/save-a-document/
---

您需要使用 Aspose.Words 执行的大多数任务都涉及保存文档。 Aspose.Words提供了[Document](https://reference.aspose.com/words/net/aspose.words/document/)类的[Save](https://reference.aspose.com/words/net/aspose.words/document/save/)方法来保存文档。有一些重载允许将文档保存到文件、流或 ASP.NET HttpResponse 对象以发送到客户端浏览器。文档可以保存为 Aspose.Words 支持的任何保存格式。有关所有支持的保存格式的列表，请参阅 [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 枚举。

## 保存到文件 {#save-a-document-to-a-file}

只需使用带有文件名的 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 方法即可。 Aspose.Words 将根据您指定的文件扩展名确定保存格式。

以下代码示例演示如何加载文档并将其保存到文件：

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc)下载本示例的模板文件。

{{% /alert %}}

## 保存到流 {#save-a-document-to-a-stream}

将流对象传递给 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 方法。保存到流时需要明确指定保存格式。

以下代码示例演示如何将文档加载和保存到流中：

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)下载本示例的模板文件。

{{% /alert %}}

## 将文档发送到客户端浏览器 {#sending-a-document-to-a-client-browser}

为了将文档发送到客户端浏览器，请使用带有四个参数的特殊重载：文件名、保存格式、保存类型和 ASP.NET HttpResponse 对象。文档呈现给用户的方式由 [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) 枚举表示，它确定发送到浏览器的文档是否提供直接在浏览器中或在与文件扩展名关联的应用程序中打开自身的选项。

以下代码示例演示如何从 ASP.NET 代码将文档发送到客户端浏览器：

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)下载本示例的模板文件。

{{% /alert %}}

使用 .NET 客户端配置文件 DLL 时，`Save` 方法的此重载不可用。该 DLL 位于 **net3.5_ClientProfile** 文件夹中。 .NET 客户端配置文件不包括 **System.Web** 等程序集，因此 **HttpResponse** 不可用。这完全是设计使然。

这可能会表现为错误：

**"‘Save’方法没有重载，需要‘4’个参数。"**

如果您需要在 ASP.NET 应用程序中使用 Aspose.Words，建议使用可提供正确重载的 .NET 2.0 DLL，如本文所述。

## 保存到 PCL {#save-a-document-to-pcl}

Aspose.Words 支持将文档保存为 PCL（打印机命令语言）。 Aspose.Words 可以将文档保存为 PCL 6（PCL 6 增强型或 PCL XL）格式。 `PclSaveOptions` 类可用于在将文档保存为 PCL 格式时指定附加选项。

以下代码示例演示如何使用保存选项将文档保存到 PCL：

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## 也可以看看

- 有关 ASP.NET [Http响应](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) 对象的信息
