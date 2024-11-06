---
title: 使用 C# 中的水印
second_title: Aspose.Words for .NET
articleTitle: 與水印共事
linktitle: 與水印共事
description: "使用 C# 文件水印操控 。"
type: docs
weight: 340
url: /zh-hant/net/working-with-watermark/
---

這個主題討論了如何在 Aspose.Words 中以程式方式使用水印。 水印是文檔中顯示在文字背後的背景圖像。 一個水印可以包含由 [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) 類別所代表的一句文字或一張圖像。

{{% alert color="primary" %}}

**試試線上**

你可以用我們的 [Free online document watermark](https://products.aspose.app/words/watermark) 來試試這個功能。

{{% /alert %}}

## 在文件上加水印

在 Microsoft Word 中，您可以使用 Insert Watermark 指令在文件中輕鬆插入水印。 Aspose.Words 提供 [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) 類別，用於在文件中添加或移除水印。 Aspose.Words 提供了定義三種可能的水印類型（文字、圖像和無）的 [WatermarkType](https://reference.aspose.com/words/net/aspose.words/watermark/type/) 列舉類型，以便您進行處理。

### 添加文字水印

接下來的程式碼範例示範了如何透過定義 [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) 來在文件中插入文字水印，並使用 [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) 方法。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### 添加圖像水印

以下程式碼範例示範了如何透過定義 [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) 來在文件中插入圖像水印，並使用 [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) 方法：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

您也可以透過使用形狀類別來插入水印。 您可以輕易地將任何形狀或圖像插入到標題欄或腳欄中，進而創造出所有想像得到的水印。

以下程式碼範例在 Word 文檔中插入水印：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載這個範例的樣本檔案。

{{% /alert %}}


## 從文件中移除水印

[Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) 類別提供 remove 方法，從文件中移除水印。

以下範例示範了如何從文件中移除水印。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

若使用 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 類別物件添加水印，若要從文件中移除該水印，僅需在插入時設定水印樣式名稱即可，然後再以所分配的名稱移除該水印樣式。

接下來這段程式碼示例會教你如何設定水印形状的名称並將其從文件中移除：

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## 在一個表格單元格中加入水印。

有時你需要將水印/圖片放入表格儲存格中，並顯示在表格外，你可以使用 [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) 屬性。 此屬性取得或設定一旗幟，表示該形狀是否在表格中顯示或在外面。 請注意，這特性只有在使用 [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) 方法優化文件為 Microsoft Word 2010 時才有效。

接下來的程式碼範例示範了如何使用這個屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
