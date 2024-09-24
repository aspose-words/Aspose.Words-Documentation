---
title: 以C#將文書轉換為圖像
second_title: 「Aspose.Words for .NET」
articleTitle: 「將文件轉換成圖像」
linktitle: 「將文件轉換成圖像」
type: docs
description: "將文件轉換為圖片格式 (JPG，PNG 等)。 使用 C# 创建文件預覽或掃描以發送帳單。"
weight: 43
url: /zh-hant/net/convert-a-document-to-an-image/
---

「有時你必須從其他格式的文件中獲取圖像，例如 DOCX 或 PDF。」 例如，你需要在你的網站或應用程式中加上任何文件頁面的預覽，或是為發送發票而掃描文件。 「這時你可能需要將任何 [supported load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) 轉換成圖像，再一次，在任何 [supported save format](https://reference.aspose.com/words/net/aspose.words/saveformat/)。」

## 「轉換成圖像 {#convert-to-image-format}」

正如之前描述的所有轉換範例，您需要建立新的檔案或以任何支援的格式載入現有檔案，進行必要的更改，然後儲存成任何可用圖像格式，例如JPEG、PNG或BMP。

以下範例展示了如何將 PDF 轉換為 JPEG：

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "pdf-to-jpeg.cs" >}}

## 「在轉換為圖像時指定儲存選項 {#specify-save-options-when-converting-to-an-image}」

「 Aspose.Words 提供您一個讓人更能掌控不同圖檔儲存方式的「 [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) 」類別。 有些屬性會從基底類別延續或重載，例如 [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) 或 [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/)，但也有專為儲存圖片而設的選項。

「透過 [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) 屬性來指定要轉換成圖像格式的頁面是可能的。」 例如，如果你只需要預覽第一頁或特定頁面的話。

您也可以透過下列属性控制輸出圖像品質和像素格式── [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/)，以及設定影像顏色設定，使用下列屬性── [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)。

「還有某些格式適用的屬性，例如 [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) 或 [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/)。」

以下範例示範了如何在應用一些額外的設定時，創造第一份文件的預覽：

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "get-jpeg-page-range.cs" >}}
