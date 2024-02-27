---
title: 如何创建条形码
second_title: .NET 格式的 Aspose.Words
articleTitle: 生成自定义条形码图像
linktitle: 生成自定义条形码图像
description: "使用 C# 生成条形码形状的示例。"
type: docs
weight: 350
url: /zh/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words 具有用于生成自定义条形码的接口，这使得可以非常轻松地一起使用 Aspose.Words 和 [Aspose.BarCode](https://products.aspose.com/barcode/net/) 在输出文档中呈现条形码图像。例如，您可以将包含 `DISPLAYBARCODE` 字段的 DOC、OOXML 或 RTF 文档加载到 Aspose.Words，提供自定义条形码生成器的实现并保存为固定页面格式，例如 PDF、XPS 等。

典型的 `DISPLAYBARCODE` 字段具有以下语法：

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

下面是利用 `Aspose.BarCode` API 的示例代码生成器。此示例演示如何使用 Aspose.Words 和 `Aspose.BarCode` API 在 Word 文档中的 `DISPLAYBARCODE` 字段位置插入条形码图像：

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
