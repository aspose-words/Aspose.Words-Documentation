---
title: 「從文件中單獨渲染形狀」
second_title: 「Aspose.Words for .NET」
articleTitle: 「從文件中分別渲染形狀」
linktitle: 「從文件中分別渲染形狀」
description: "從處理文件中提取各種圖形對象，例如圖像、包含段落的文本框或箭頭形狀，然後使用 C# 將它們輸出到外部位置。"
type: docs
weight: 40
url: /zh-hant/net/rendering-shapes-separately-from-a-document/
---

「當處理文件時，常見的任務是從文件中提取所有圖像並將其輸出到外部位置。」 「這個工作可以在 Aspose.Words 這個 API 的幫助下變得簡單，它已經為提取和保存圖像數據提供了功能。」 「不過，有時你可能想要以其他方式提取由不同類型的繪圖物件所表現出的其他類型的圖形內容，例如包含段落、箭頭形狀和一個小圖片的一个文字方塊。」 由於它是獨立內容元素的組合，因此沒有簡單的方式來表示這個對象。 「你也可能碰到一個案例，在那個案例中，內容被整合成一個看起來像單張圖片的外觀物件。」

「Aspose.Words 提供以相同方式提取此類內容的功能，就像您可以從圖形中提取簡單的圖像一樣。」 這篇文章描述了如何利用這個功能來獨立於文件繪製形狀。

## 在 Aspose.Words 中的形狀類型

在文件繪圖層中的所有內容都是由 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 或 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/)節點表示在 Aspose.Words 文檔物件模組 (DOM)。 這樣的內容可以有文本方塊、圖像、AutoShapes、ole物件等。 有些欄位也作為形狀輸入，例如「 `INCLUDEPICTURE`」這個欄位。

「簡單的圖像由一個 **Shape** 節點表示，其中 [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) 。」 「此形狀節點沒有子節點，但這個形狀節點內含的圖像資料可以透過 [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) 屬性存取。」 「另一方面，一形狀也可以由多個子節點組成。」 「例如，由 [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) 屬性表示的文字方框形狀可以由許多節點組成，例如 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 和 [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)。」 大多數圖形都能包含 **Paragraph** 和 **Table** 的塊級節點。 這些是與主要正文出現的節點相同的。 圖形總是某些段落的组成部分，要么直接内嵌在段落中，要么锚定到 **「段落」，**。但「浮动」在整个文档页面中。

![rendering-shapes-separately-from-a-document_1](rendering-shapes-separately-from-a-document-1.png)

「文件也可以包含一組的圖形。 Grouping 可以在 Microsoft Word 中啟用，方法是選取多個物件，然後在右鍵選單中點擊 Group。」

![rendering-shapes-separately-from-a-document_2](rendering-shapes-separately-from-a-document-2.png)

「在 Aspose.Words 中，這些形狀組由 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) 節點表示。 這些也可以以相同的方式來調用，將整個群組轉換為圖像。

![rendering-shapes-separately-from-a-document_3](rendering-shapes-separately-from-a-document-3.png)

DOCX格式可以包含特殊類型的圖像，例如圖形或圖表。 「這些形狀也透過 **Shape** 節點在 Aspose.Words 中表達，它也提供類似的方法來將它們作為圖像呈現。」 「設計上，一個形狀不能包含另一個形狀作為其子形，除非那個形狀是圖像（**ShapeType.Image**）。」 例如，Microsoft Word不讓你在另一個文字方塊內插入文字方塊。

上面所述的形狀類型提供了一個特殊的方法，透過 [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) 類別來渲染這些形狀。 透過 **GetShapeRenderer** 方法或將 **Shape** 傳到 **ShapeRenderer** 類別的建構函式中取得一個 **Shape** 或 **GroupShape** 的 **ShapeRenderer** 類別實例。 這個類別提供了存取成員，讓使用者可以將形狀渲染到以下：

「- 透過 [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) 方法在磁碟上開啟檔案」
- 使用 [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) 方法的串流
"- .NET 圖形物件，透過 [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) 和 [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) 方法"

{{% alert color="primary" %}}

「在 렌더링 **Shape** 할 때, 그것은 문서 계층 구조의 일부여야 합니다.」 「如果 **Shape** 不為文件樹的一部分，那麼在調用 **ShapeRenderer** 方法之後，顯示的輸出將會是空白。」

{{% /alert %}}

## 「 Rendering to File or Stream」

「[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)」方法會提供過載，可以將形狀直接寫入檔案或串流中。 「兩個過載都接受一個 [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) 類別的實例，這讓我們可以為形状的渲染定義選項。」 「這種方法與 [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) 方法的工作方式相同。」 「雖然這個參數是必需的，但您可以傳送一個 null 值，指定沒有任何自訂選項。」

「該形狀可以以指定於 [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列舉中的任何圖像格式輸出。」 例如，透過指定 [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列舉，圖像可以以雷射圖形格式來顯示，如 JPEG，或是透過指定 [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列舉，以向量圖形格式來顯示，如 EMF。

以下代碼示例演示了從文件中獨立渲染形狀，並將圖像保存到磁盤：

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "render-shape-as-emf.cs" >}}

範例碼示意將一個形狀渲染到 JPEG 圖像，獨立於文件，然後儲存在流中。

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "render-shape-as-jpeg.cs" >}}

「**ImageSaveOptions**」類別允許您指定可控制圖像如何渲染的各種選項。 「上述功能可以以相同的方式套用至 **GroupShape** 和 **Shape** 節點。」

## 「渲染到 .NET 圖形物件」

「直接 rendering 到 **Graphics** 物件可以讓您定義自己的設定和 **Graphics** 物件的狀態。」 「常見的情況，是在從 **Graphics** Form 或 Windows Bitmap 中取得的物件中直接渲染一個形状。」 「當 **Shape** 節點被渲染，設定會影響形狀的外觀。」 「例如，你可以透過使用**RotateTransform**或**ScaleTransform**方法來旋轉或縮放**Graphics**物件。」

「下面的範例示意如何從文件中獨立渲染一個 .**NET Graphics** 物件，並將旋轉施加於渲染的圖像上：」

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "render-shape-to-graphics.cs" >}}

「同樣，在 [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) 方法中，從 [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) 傳來的 [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) 方法在建立文件內容的縮略圖時非常有用。」 「形狀的尺寸是透過建構器來指定的。」 「**RenderToSize**」方法接受一個「**Graphics**」物件、圖像位置的 X 和 Y 座標，以及將繪製在「**Graphics**」物件上的圖像大小（寬度和高度）。

「**Shape**」透過從 [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) 類別遺傳的 [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) 方法，可以以某個規模來 rendering。 這是類似於接受相同主要參數的 [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) 方法。 「這兩種方法之間的差異在於，以 **ShapeRenderer.RenderToScale** 方式來看，你選擇一個浮點數，而不是實際的體積值，以調整在渲染時的形狀。」 若浮點值等於1.0會導致形狀以原始尺寸的100％來渲染。 浮點值為0.5會將圖像大小減少一半。

## 渲染一個形狀圖像

「[Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)」類別代表繪圖層中的物件，例如自動形狀、文字方塊、自由形式、 OLE 物件、ActiveX 控制項或圖片。 「使用 **Shape** 類別，您可以在 Microsoft Word 文檔中建立或修改形狀。」 一個形狀的重要性質是其 [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype)。 不同類型的圖形在 Word 文檔中可能有不同的功能。 「例如，只有圖像和 OLE 圖形才能包含圖片而其他大部分圖形只能包含文字。」

以下範例說明如何從文件中獨立渲染一個Shape圖像並儲存到磁碟上：

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "render-shape-image.cs" >}}

## 「取得形狀尺寸」

「[ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/)」類別也提供了一個以像素為單位獲取圖形大小的功能，透過「[GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/)」方法即可。 這個方法接受兩個浮點數（單）參數 – 尺度與DPI，當形狀被渲染時，它們被用來計算形状的大小。 這個方法會返回一個 [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) 物件，其中包含計算出的大小之寬度和高度。 這在需要事先知道已渲染形狀的尺寸時很有用，例如當從渲染輸出中創建新位圖時。

以下示例顯示如何建立新 Bitmap 和 Graphics 物件，其寬度和高度為要描繪的形狀：

{{< gist "aspose-words-gists" "7fc867ac8ef1b729b6f70580fbc5b3f9" "find-shape-sizes.cs" >}}

「當使用 **RenderToSize** 或 **RenderToScale** 方法時，渲染後的圖像大小也會被返回在 [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) 物件中。」 「這個可以分配給一個變數，必要時可以使用。」

「**SizeInPoints**」屬性會回傳以點為單位的 Shape 大小 （見「[ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/)」）。 「結果是一個 `SizeF` 物件，其中包含寬度和高度。」
