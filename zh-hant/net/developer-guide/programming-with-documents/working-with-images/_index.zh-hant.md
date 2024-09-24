---
title: C#中工作與圖像
second_title: 「Aspose.Words for .NET」
articleTitle: 與圖像合作
linktitle: 與圖像合作
description: "在 Aspose.Words 為 .NET 提供的細節和進階功能中，以圖形來表示圖像。"
type: docs
weight: 300
url: /zh-hant/net/working-with-images/
---

「Aspose.Words 能讓使用者以非常靈活的方式與圖像處理。」 在本文中，你只能探索與圖像工作的一些可能性。

## 「如何插入圖像 {#insert-an-image}」

「[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 提供 [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) 方法的幾個重載，讓您可以插入內嵌或浮動式圖表。」 「如果圖片是 EMF 或 WMF 元檔案，它將會以元檔案格式插入到該文件中。」 所有其他圖像將以PNG格式儲存。 「 **InsertImage**」這個方法可從不同的來源使用圖像：

- 从文件或 `URL` 通过传递 `String` 参数 [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- 从流中通过传递一个 `Stream` 参数 **InsertImage**
- 透過傳入一個 Image 參數來獲取 Image 物件 **InsertImage**
"-透過傳遞字節陣列參數來從字節陣列中導出" **InsertImage** ""

「對於每個 **InsertImage** 方法，都有其他過載讓您能以以下選項插入圖像：」
"- 在特定位置內嵌或浮動，例如，**InsertImage**"
"- 百分比尺度或自定義大小，例如， **InsertImage**; 此外，**InsertImage**方法返回一個剛剛創建和插入的 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 物件，所以您可以進一步修改 Shape 的屬性。"

### 「如何將內線圖片插入 {#insert-an-inline-image}」

傳送一個代表包含該圖像的檔案的單字串給 **InsertImage**，以將圖像插入到文件中作為內嵌圖形。

以下範例顯示如何在光標位置插入內嵌圖像到文件中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### 如何插入浮動圖像 {#insert-a-floating-image}

以下程式碼範例示範了如何從檔案或 `URL` 中插入浮動圖像於特定位置與大小：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## 如何從文件中提取圖像 {#how-to-extract-images-from-a-document}

「所有圖像都儲存在 **Shape** 個節點中，以 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 的方式儲存。」 「從文件中提取所有圖片或特定類型的圖片，請按照以下步驟操作：」

- 使用 [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) 方法選取所有 **Shape** 節點。
「- 迭代 resulting node 集合。」
「- 檢查 [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) 的布爾值屬性。」
"- 透過 [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) 屬性提取圖像資料。"
"-將圖像資料儲存到檔案中。"

以下範例展示了如何從文件中提取圖像並將其儲存為檔案：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx) 下載此範例的樣本檔案。」

{{% /alert %}}

## 如何在每個文件頁面上插入條碼 {#how-to-insert-barcode-on-each-documen-page}

「這個範例會讓您在Word文件的所有或特定頁面上，新增相同的或不同的條碼。」 沒有方法可以直接在文件的所有頁面上加入條碼，但您可以利用「**MoveToSection**」、「**MoveToHeaderFooter**」和「**InsertImage**」的方法移動到任何章節或標題/腳注並插入條碼圖片，如以下代碼所示。

「接下來這個程式碼範例示範了如何在文件中每頁插入一個條碼圖像：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## 「將圖像 {#lock-aspect-ratio-of-image} 的長寬比鎖定」

「幾何圖形的纵横比是指其在不同维度上的尺寸之比。」 您可以使用 [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) 來鎖定圖像的長寬比。 預設的比例值取決於形状的 [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/)。 「它為 *true* 而 `ShapeType.Image`，為其他形狀而 *false*。」

以下範例說明如何與縦横比工作：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## 如何獲得形狀的實際邊界在點 {#how-to-get-actual-bounds-of-shape-in-points}?

「如果你想取得頁面上所繪製的物件的實際邊界，你可以透過使用 [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) 屬性來達至此目的。」

以下範例展示了如何使用此屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## 裁剪圖像 {#crop-images}

「修剪圖像」通常指的是移除圖像中的不受歡迎外部部分，以幫助改善構圖。 它也被用來移除圖像的特定部分，以增加某特定區域的焦點。

接下來這個程式碼範例示範如何透過 Aspose.Words API 來完成此工作：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## 「將圖片儲存為 WMF {#save-images-as-wmf}」

Aspose.Words提供在將DOCX轉為RTF的同時，將文件中的所有可用圖片儲存到[WMF](https://docs.fileformat.com/image/wmf/)格式的功能。

接下來的程式碼範例示範了如何以 RTF 儲存選項將圖像儲存在 WMF：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
