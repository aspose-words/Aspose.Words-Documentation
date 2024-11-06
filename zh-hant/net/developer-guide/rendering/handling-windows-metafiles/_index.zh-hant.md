---
title: 在 C# 中處理 Windows Meta 檔案
second_title: Aspose.Words為.NET
articleTitle: 處理 Windows Meta 檔案
linktitle: 處理 Windows Meta 檔案
description: "Aspose.Words for .NET 實作了自己的 Windows Metafile 播放器，可以在所有平台上播放 Metafile 格式，支援處理基本的 Metafile 功能，並可以使用 C# 進行 Fallback 到其他類型的 Metafile 播放器。"
type: docs
weight: 30
url: /zh-hant/net/handling-windows-metafiles/
---

Windows Metafile格式是一種能包含向量圖與陣列圖的圖像檔格式。 此格式用於在記憶體或磁碟檔案中儲存圖形資料。 元檔案儲存了顯示圖片中必須執行的 Windows 圖形裝置介面 (GDI) 中的函數呼叫清單。 系統在顯示語境下解釋並執行這些指令。

以前，Windows Metafile 是 Microsoft Word 支援的唯一向量圖格式。Microsoft Word 現在也支援 SVG 格式，但 Metafile 格式仍常被 Word 文檔使用。 此外，Metafile也能是其他應用程式的交換格式，例如 Microsoft Visio。 基本上，元文件的主要目的是在 Windows 應用程式之間交換圖形資訊。

有 3 種 Windows Metafile 的版本：

- WMF – 儲存呼叫到 16 位 GDI。
- EMF – 儲存到 Win32/GDI 的呼叫。
- EMF+ Metafile 儲存了對 GDI+ 的呼叫。 EMF+ Metafile 也可能為雙重，描述以 EMF 和 EMF+ 部分表達的相同圖形。

Windows Metafile這個問題是它不支援大多數非 Word 格式，而文書通常是儲存在這些格式中。 因此，我們必須將 MetaFile 格式轉換成其他陣列或向量格式。 您可以在 .NET 中透過傳遞到 GDI+，輕鬆將 Windows Metafile 轉換為雷射影像，但其他平台無法執行此動作，因為即使是 GDI+ 也不提供從 Metafile 中擷取向量圖形的功能。 解決這些問題，Aspose.Words實作自己的Windows元檔案播放器，可以在所有平台上播放向量及點陣圖形。

## 控制 Aspose.Words Metafile 播放器

[MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/)類別可讓您控制元檔案播放器。 例如，您可以使用 [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) 屬性來指定類比圖像應如何渲染，此屬性在轉換為位圖時有特殊含義（也請參閱 [MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/) 屬性）。

儲存到位圖的方式在其他平台上與 .NET 不同。 .NET GDI+ 繪製方式是近乎完美甚至對最複雜的圖檔格式的参考，但在其他平台上可能會造成問題或根本不受支援。

## 支援陣列運算

Raster operations是一種複雜的元文件功能，目前支援有限。 Rasters 的操作在 WMF 和 EMF 元檔案格式中可用。 EMF+ 元文件格式直接不使用圖形操作，但可以包含 EMF 部分、嵌入的 WMF 或 EMF 元文件。

二進制和三進制 Raster 運算：

二進位圖形運算被應用於筆繪製指令，如繪製線條和曲線。 當繪製一條線時，筆色會與目的地位圖顏色（裝置表面的對應像素顏色）結合，並使用指定的位運算與十六進制顏色值來進行處理。 以下圖片範例說明了將所有16個二進位 Raster 運算符套用到20種不同的顏色條上的影響。 垂直顏色條是先繪製，然後再在每個二進位格子操作完成後繪製水平條。 對於簡單的案例，R2_BLACK會繪製黑色，R2_NOT會反轉顏色，R2_NOP不會改變背景，而R2_WHITE會繪製白色。

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

"- 三元位圖操作在繪製位圖圖像時應用。" 他們透過使用指定的十六進位色值進行位移邏輯運算，將對應的位圖圖像像素、筆刷和目標位圖的顏色組合在一起。 使用三元網格運算的最常見目的之一，就是擬合透明度。 示例下提供的圖像示範了如何仿效圖標不透明度。 位圖有兩種: b/w 面具位圖和顏色位圖. 首先，使用 SRCAND 繪圖運算來繪製蒙版位圖。 它將不透明的圖標區域變更成黑白，留下透明的區域不變。 接著以 SRCINVERT 圖像運算來繪製第二個位圖。 它顯示黑色區域中的顏色像素，並保持透明區域不變。

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

 raster 操作無法直接轉換為向量圖形。 Aspose.Words 透過部分 rasterize 影響 raster 操作的裝置表面來模擬 raster 操作。 為了這個目的，[EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/)屬性被用來做。

{{% alert color="primary" %}}

二進位圖形運算目前不支援，而三進位圖形運算則由 Aspose.Words 支援。它可以直接處理轉換為向量圖形的基礎案例，例如 R2_BLACK、R2_WHITE、R2_NOP。 此外，將裝置表面進行位圖化會大幅影響性能，尤其是在涉及大量位圖運算記錄的情況。

{{% /alert %}}

下面的範例示範了當某些元檔記錄無法正確轉換為向量圖形時，Aspose.Words 如何將元檔轉換成位圖：

{{< gist "aspose-words-gists" "f9c5250f94e595ea3590b3be679475ba" "pdf-render-warnings.cs" >}}

##  Metafile Fallback 設定

Aspose.Words 不支援許多元檔案特質，這些特質要么是複雜的、要么是不常見。 使用者可以實作 [IWarningCallBack](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) 介面並接收警告訊息。 若 Aspose.Words 在 metafile 中遇到不支援的功能，將會發出警告訊息 [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/).**Metafile**。 在這情況下，Aspose.Words可能會轉落到一種不同的元檔案播放器。 回退的警告訊息也發出。

首先，Aspose.Words從向量元文件播放器切換到位圖，由 [RenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) 屬性控制。 如果回退功能被關閉，Aspose.Words會嘗試以一些替換圖形來呈现，而不是不支援的特效。

Aspose.Words 在 .NET 使用 GDI+ 成功地將元文件轉換為位圖，使其回呼選項安全。

其次，有 EMF+ 双重 metafile 的選項來退回從播放 EMF+ 部分到 EMF 部分。 它是由 [EmfPlusDualRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/) 控制的。 若在播放 EMF 部分時出現問題，則也可以進行回落到陣列。

對於紋理操作，若 [EmulateRasterOperations](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) 禁用，則紋理操作被視為不支援，會觸發備份至位圖元檔播放器。 因此，如果您有具有陣列操作的元檔案，但您不想使用陣列操作仿真並卻想要得到向量輸出以替代圖形，那麼選擇 [MetafileRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingmode/).**Vector**。
