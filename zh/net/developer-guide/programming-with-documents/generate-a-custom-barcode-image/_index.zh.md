---
title: `如何创建条形码`
second_title: `Aspose.Words为.NET`
articleTitle: 生成自定义条形码图像
linktitle: 生成自定义条形码图像
description: "使用 C# 的条形码形状生成示例。"
type: docs
weight: 350
url: /zh/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

条形码是一种以平行线或图案的形式呈现的数据的视觉表现。在零售、物流、医疗保健、银行等各个行业广泛使用的条形码。

"Microsoft Word 允许用户通过字段将条形码直接嵌入文档。用户可以通过"[BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19)"字段插入特定类型的条形码，例如QR码或线性条形码。"

"在这篇文章中，我们将探讨在 Aspose.Words 中如何实现 BARCODE 字段以及 Aspose.Words 如何允许用户与已经添加条形码的 Word 文档进行处理。"

## 由"Aspose.Words"支持的条形码类型

Aspose.Words支持多种类型的条形码。条形码类型通过字符串值传递给 [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) 属性。

{{% alert color="primary" %}}

由于功能有限，在 Aspose.Words 中使用条形码，用户可以使用任何库，包括 Aspose.Barcode，或者自己编写渲染，以工作与条形码。您可以了解更多关于条形码类型 [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/) 的信息。

{{% /alert %}}

在为支持条形码的ワード格式保存文件时，你可以使用任意类型的条形码，如"[supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3)"。如果传递了不正确类型的条形码，则Word会显示错误。

"当以其他格式（如PDF）保存，Aspose.Words将条形码渲染委托给用户代码，因此用户只能使用他们使用的实现或库的条形码类型。"

## "将条形码插入文档或加载带有添加的条形码的文档"

Aspose.Words 提供了以下功能：

"1.用[DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3)和[MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)字段代码程序化地将条形码插入到文档中"
"2. 或加载一个已经插入条形码的Word文档以进行进一步工作"

Aspose.Words有一个用于生成自定义条形码的接口，使其易于使用[Aspose.Words](https://products.aspose.com/words/net/)和[Aspose.BarCode](https://products.aspose.com/barcode/net/)一起在输出文档中呈现条形码图像。例如，您可以创建一个DOC、OOXML或RTF文档，并使用Aspose.Words添加DISPLAYBARCODE字段。或者，您可以加载带有DISPLAYBARCODE字段的DOC、OOXML或RTF文档，并提供您的自定义条形码生成器的实现。

"一个典型的DISPLAYBARCODE字段具有以下语法："

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

下面是一个使用Aspose.Words和Aspose.BarCode API的示例代码生成器。这个例子演示了如何在Word文档中插入条形码图像到DISPLAYBARCODE字段的位置：

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

您也可以将已加载或插入的新条形码保存为固定页格式，如PDF、 XPS等。 下面的代码示例说明了如何将Word文档保存为PDF格式：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

有关将文档从一种格式转换到另一种格式的更多信息，请参阅 [Convert a Document](/words/net/convert-a-document/) 文档部分。

{{% /alert %}}

{{% alert color="primary" %}}

您也可以使用 [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) 接口将嵌入到 Word 文档中的条形码转换为图片。生成的图片可以从文档中提取--请参阅《如何处理图片》文章以获取更多详细信息。

{{% /alert %}}

## 指定条形码选项

在处理条形码时，你可以设置一些额外的属性。 Aspose.Words 为您提供 [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) 类 – 用于将条形码参数传递给 BarcodeGenerator 的类。

Aspose.Words 支持嵌入式 96 ppi 分辨率，用于由 [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) 生成的图像，这限制了条形码图像的最小尺寸。为了解决这个问题，开发人员可以手动插入具有目标分辨率的条形码图像到 Word 文档中并将其保存为所需的格式。有关在处理条形码时更多细节和示例，请参阅文章 [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/) 。