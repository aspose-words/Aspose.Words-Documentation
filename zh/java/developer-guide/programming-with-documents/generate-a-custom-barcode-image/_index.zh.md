---
title: 在 Java 中创建条形码
second_title: Aspose.Words为Java
articleTitle: 生成自定义条形码图像
linktitle: 生成自定义条形码图像
description: "`使用Java生成的条形码形状的例子。`"
type: docs
weight: 350
url: /zh/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

条形码是一种以平行线或图案的形式呈现的数据的视觉表示。条形码在零售、物流、医疗保健、银行业等各个行业得到了广泛应用。

Microsoft Word允许用户在文档中使用字段直接嵌入条形码。用户可以通过[BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19)字段插入特定类型的条形码，例如QR码或线性条形码。

在这篇文章中，我们将看看BARCODE字段是如何在Aspose.Words中被实现的，以及Aspose.Words是如何允许用户与已经添加了条形码的Word文档一起工作的。

## "由 Aspose.Words 支持的条形码类型"

Aspose.Words支持多种类型的条形码。条形码类型在 [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) 属性中传递为字符串值。

{{% alert color="primary" %}}

由于与 Aspose.Words 功能内条形码的相关工作受限，用户可以使用任何库，包括 Aspose. Barcode，或者自己编写渲染以工作与条形码。你可以了解更多关于条形码类型 [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/)。

{{% /alert %}}

在保存到支持条码的Word格式时，您可以使用任何类型的条码，它是 [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3)。如果传递了不正确的条码类型，Word 将显示错误。

在将文件保存为PDF和其他格式时，当保存到其他格式，例如PDF时，Aspose.Words委托条码渲染到用户代码，因此用户只能用他们使用的实现或库的条码类型。

## 在文件中插入条形码或加载带有附加条形码的文档

Aspose.Words 提供能够：

1.使用 [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) 和 [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) 字段代码编程性地将条形码插入到文档中
2. 或进一步工作时，将已插入条形码的 Word 文档加载到系统

Aspose.Words 有一个生成自定义条码的界面，这使得使用 [Aspose.Words](https://products.aspose.com/words/java/) 和 [Aspose.BarCode](https://products.aspose.com/barcode/java/) 一并来在输出文档中呈现条码图像变得很容易。例如，您可以创建一个 DOC、OOXML 或 RTF 文档并使用 Aspose.Words 向其中添加 DISPLAYBARCODE 字段。或者，您可以加载一个已经包含 DISPLAYBARCODE 字段的 DOC、OOXML 或 RTF 文档，并为自定义条码生成器提供您自己的实现。

一个典型的DISPLAYBARCODE字段有以下语法：

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

下面是一段使用Aspose.Words和Aspose.BarCode API的示例代码生成器。这个示例展示了如何在Word文档的DISPLAYBARCODE字段位置插入条形码图像：

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

您也可以在固定页格式（如PDF、 XPS）中保存已加载或插入的新条码的文档。下面的代码示例显示了如何将Word文档保存为PDF格式：

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

有关将文档从一种格式转换为另一种格式的更多信息，请参阅[Convert a Document](/words/java/convert-a-document/)文档部分。

{{% /alert %}}

{{% alert color="primary" %}}

您也可以利用 [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) 接口将嵌入在 Word 文档中的条形码转换为图像。生成的图像可以从文档中提取--请参阅《使用图像》的文章以获取更多详细信息。

{{% /alert %}}

## 指定条形码选项

在处理条形码时，您可以设置一些额外的属性。 Aspose.Words为您提供 [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) 类--类，用于将条形码参数传递给 BarcodeGenerator。

Aspose.Words 对使用 [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) 生成的图像支持嵌入式 96 ppi 分辨率，这限制了条形码图像的最小尺寸。为了解决这个问题，开发人员可以手动将目标分辨率的条形码图像插入到 Word 文档中并将其保存为所需的格式。有关处理条形码的更多细节和示例，请参阅文章 [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/) 。
