---
title: 在Java中创建BarCode
second_title: Aspose.Words为Java
articleTitle: 生成自定义BarCode图像
linktitle: 生成自定义BarCode图像
description: "使用Java生成条形码形状的示例。"
type: docs
weight: 350
url: /zh/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

条形码是平行线或图案形式的数据的视觉表示。 条码广泛应用于零售、物流、医疗、银行等行业。

Microsoft Word允许用户使用字段将条形码直接嵌入到文档中。 用户可以插入特定类型的条形码，例如QR代码或线性条形码，使用 [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) 场。

在本文中，我们将介绍BARCODE字段是如何在Aspose.Words中实现的，以及Aspose.Words如何允许用户使用已添加条形码的Word文档。

## Aspose.Words支持的条形码类型

Aspose.Words支持各种类型的条形码。 条形码类型在[BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType)属性中作为字符串值传递。

{{% alert color="primary" %}}

由于使用Aspose.Words功能内的条形码是有限的，用户可以使用任何库，包括Aspose。条形码，或者编写自己的渲染来处理条形码。 您可以了解有关条形码类型的更多信息 [由Aspose支持。BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

当保存为支持条形码的Word格式时，您可以使用任何类型的条形码 [支持Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). 如果传递了错误类型的条形码，Word将显示错误。

当保存为其他格式（如PDF）时，Aspose.Words将条形码呈现委托给用户代码，因此用户仅限于其实现或使用的库的条形码类型。

## 将条形码插入文档或加载添加了条形码的文档

Aspose.Words提供以下功能：:

1. 使用 [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) 和 [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) 字段代码
2. 或者加载已插入条形码的Word文档以进行进一步的工作

Aspose.Words具有用于生成自定义条形码的界面，使其易于使用 [Aspose.Words](https://products.aspose.com/words/java/) 和 [阿斯波斯。BarCode](https://products.aspose.com/barcode/java/) 一起在输出文档中呈现条形码图像。 例如，您可以创建DOC、OOXML或RTF文档，并使用Aspose.Words向其添加DISPLAYBARCODE字段。 或者您可以加载DOC，OOXML或RTF文档，其中已存在DISPLAYBARCODE字段，并提供自定义条形码生成器的实现。

典型的DISPLAYBARCODE字段具有以下语法:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

下面是使用Aspose.Words和Aspose的示例代码生成器。BarCode APIs. 此示例演示如何在Word文档中的DISPLAYBARCODE字段位置插入条形码图像:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

您还可以使用加载或新插入的条形码以固定页面格式（如PDF，XPS等）保存文档。 下面的代码示例演示如何将Word文档保存为PDF格式:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

有关将文档从一种格式转换为另一种格式的详细信息，请参阅 [转换文档](/words/java/convert-a-document/) 文件科。

{{% /alert %}}

{{% alert color="primary" %}}

您还可以使用[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)接口将Word文档中嵌入的条形码转换为图像。 生成的图像可以从文档中提取–有关详细信息，请参阅使用图像文章。

{{% /alert %}}

## 指定条码选项

使用条形码时，您可以设置一些其他属性。 Aspose.Words为您提供[BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/)类–用于条形码参数传递到BarcodeGenerator的类。

Aspose.Words支持使用[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)生成的图像的嵌入式96ppi分辨率，这限制了条形码图像的最小尺寸。 为了解决这个问题，开发人员可以手动将目标分辨率的条形码图像插入到Word文档中，并将其保存为所需的格式。 有关使用条形码的更多详细信息和示例，请参阅文章 [从Word文档读取条形码](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
