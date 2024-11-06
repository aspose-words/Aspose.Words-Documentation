---
title: 在 C# 中將一個檔案儲存為多頁的 TIFF 檔
second_title: Aspose.Words for .NET
articleTitle: 將文字檔儲存為多頁 TIF
linktitle: 將文字檔儲存為多頁 TIF
description: "以 C# 将一份文件轉換為多頁的 TIFF。 要決定文件在您的畫面上的顯示方式，您需要指定其他選項：解析度、頁面數、圖像二值化等。"
type: docs
weight: 30
url: /zh-hant/net/saving-a-document-as-a-multipage-tiff/
---

在處理文件時，你常常需要將你的文書轉換成一張或多張位圖檔案。 這尤其重要，如果你必須以可讀性與可列印但不是可編輯的格式來呈現你的文件。 舉例來說，您可以將文件第一頁的Raster圖像用作預覽。 這篇文章描述了如何使用蒂芙格式為例，將文件轉換成栅格圖像。它是最受歡迎的圖像格式之一。

## 將 DOC 轉換成多頁 TIFF

在 Aspose.Words 中，由 DOC 轉換至 TIFF 只需一行程式碼，只需傳送保存到路徑和相關檔案附件給 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) 方法即可。 **Save**方法會從路徑中指定的檔案名稱拡張名自動取得`SaveFormat`。 以下範例示範如何將文件轉換為 TIFF 格式：

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "save-as-tiff.cs" >}}

## 在 렌더링 시 TIFF 에 대한 추가 옵션 지정

你經常需要指定額外的選項，這些選項會影響渲染結果。 為了這種目的，請使用 [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) 類別，它包含定義顯示於圖像上的文件的屬性的物件。 你可以指定以下：

 "- 儲存格式來決定可用選項的清單（[SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat)）
"-解析度（[HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/)， [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/)， [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))"
- 頁數 ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
"- 顏色和照明設定（[PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)，[ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/)，[ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/)，[ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast)）"
- 圖像品質 ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/)， [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/)， [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/)， [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- 使用的方法來二進位化圖像（[TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/)， [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering)）
- 用於生成的圖像的像素格式 ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
"- Windows metafiles由 Aspose.Words 處理 ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))"
"- 其他選項可以見到 **ImageSaveOptions** 類別"

以下示例展示了如何使用預設選項將DOC轉換為TIFF：

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "get-tiff-page-range.cs" >}}

## TIFF 二值化閾值

在設定 [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) 屬性為格式 1bpp Indexed 的像素格式時，TIFF 圖像可以儲存於 1bpp 黑色/白色格式中。同時將 [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) 屬性設定為 Ccitt3 或 Ccitt4。

對圖像分割來說，Aspose.Words 使用了最簡單的方法 - 門檻值。 這方法將灰調的 TIFF 圖像轉換成二進位圖片，使用一個臨界值。 因此，當需要將檔案轉換為 TIFF 檔案格式時，可透過 [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) 屬性取得或設定 TIFF 二進位化所需的阈值。 該屬性的預設值為 128，該值越大，圖片就越暗。

以下示例以特定閾值執行TIFF二進位化：

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "expose-threshold-control.cs" >}}

以下您可以比較在各種臨界值下執行的 TIFF 二進位化圖像：

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
