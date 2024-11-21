---
title: 如何創建條形碼
second_title: Aspose.Words for .NET
articleTitle: 生成自訂條碼圖像
linktitle: 生成自訂條碼圖像
description: "C# 程式設計語言的條形碼形狀生成範例。"
type: docs
weight: 350
url: /zh-hant/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

條碼是透過平行線或圖案的方式，以視覺方式呈現資料。 條碼在許多行業中廣泛使用，包括零售業、物流業、醫療保健業、銀行業等等。

Microsoft Word 讓使用者透過欄位直接將條碼嵌入在文件中。 使用者可以在 [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) 欄位中插入特定類型的條碼，例如 QR 碼或線性條碼。

在本文中，我們將探討 BARCODE 欄位是如何在 Aspose.Words 中實作的，以及 Aspose.Words 是如何讓使用者能夠與已經加上條碼的 Word 文檔進行作業的。

## 由 Aspose.Words 支援的條形碼類型

Aspose.Words 支援各種類型的條碼。 條碼類型是作為一個字串值傳遞到 [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) 屬性。

{{% alert color="primary" %}}

由於在功能性 Aspose.Words 中與條碼的工作受到限制，使用者可以利用任何程式庫（包括 Aspose.Barcode），或自己寫出自己的渲染來工作。 您可以了解更多有關條碼的種類 [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/)。

{{% /alert %}}

儲存到支援條碼的Word格式時，您可以用任何類型的條碼，它是 [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3)。 如果傳入字元不正確的條碼，Word 會顯示錯誤訊息。

儲存至其他格式，例如 PDF 時，Aspose.Words 將列印條碼的權限交給使用者程式碼，因此使用者只能使用他們實作或使用的程式庫所支援的條碼類型。

## 將條碼插入文件或載入附有條碼的文件

Aspose.Words可提供以下功能：

1. 透過 [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) 和 [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) 欄位碼自動將條形碼插入至文件中
2。 或將已插入條碼的 Word 文檔載入，以便進一步作業

Aspose.Words 具有生成自訂條碼的介面，使其易於使用 [Aspose.Words](https://products.aspose.com/words/net/) 和 [Aspose.BarCode](https://products.aspose.com/barcode/net/) 一起來產生條碼圖像以用於輸出文件。 例如，您可以透過 Aspose.Words 來建立 DOC、OOXML 或 RTF 文檔並新增 DISPLAYBARCODE 欄位。 或是您可以載入有 DISPLAYBARCODE 欄位之 DOC、OOXML 或 RTF 文檔，並提供自訂條碼產生器實作。

典型的 DISPLAYBARCODE 欄位有以下語法:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

以下是一個使用 Aspose.Words 和 Aspose. Barcode API 的範例程式碼產生器。 示例說明了如何在 Word 文檔的DISPLAYBARCODE欄位中插入條形碼圖像：

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

您也可以將已載入或插入的新條碼儲存在固定頁面格式（例如PDF， XPS 等）的文件中。 以下範例示範了如何將 Word 文檔儲存成 PDF 格式：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

有關將文件從一種格式轉換為另一種格式的詳細資訊，請參閱 [Convert a Document](/words/net/convert-a-document/) 文檔專區。

{{% /alert %}}

{{% alert color="primary" %}}

您也可以利用[IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/)介面將Word文件中嵌入的條碼轉換成影像。 結果的圖像可以從文件中抽取出來－請參閱『用圖像工作』文章以獲取更多細節。

{{% /alert %}}

## 指定條形碼選項

在處理條碼時，您可以設定一些額外的屬性。Aspose.Words提供給您 [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/)類別 – 用於傳遞到 BarcodeGenerator 的條碼參數類別。

Aspose.Words 支援以內嵌 96 PPI 解析度，用於透過 [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) 生成的圖像，這會限制條碼圖像的最小大小。 為了解決此問題，開發人員可以手動將目標解析度的條碼圖像插入Word文件中並儲存成所需的格式。 有關使用條形碼的更多詳情及例子，請參閱文章 [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/)。
