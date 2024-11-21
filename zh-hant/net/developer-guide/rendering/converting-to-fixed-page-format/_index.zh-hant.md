---
title: 以固定頁面格式在C#轉換
second_title: Aspose.Words for .NET
articleTitle: 轉換為固定頁面格式
linktitle: 轉換為固定頁面格式
description: "以C#儲存至PDF、XPS、HTML、XAML、PostScript和PCL格式的文件。"
type: docs
weight: 10
url: /zh-hant/net/converting-to-fixed-page-format/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words 實作其自己的頁面排版引擎。 在深入探討其規格之前，最好先高階討論文件。 當思考一篇文件時，使用者通常會想像一張張的紙包含文字、圖片、表格和圖表。 文件可以有各種格式，如文字、試算表、簡報、CAD圖形、流程圖等等。因此其頁面布局可能有很大差異。 大多數應用程式允許將文件傳送到印表機；這是使用者可以實際觀看文件最終預期的樣貌時。

## 在各種應用程式中顯示文件

許多文件查看或出版應用程式允許使用者打開（Adobe Acrobat, XPS 觀看器），有時甚至編輯（Adobe InDesign）特定格式的檔案。 這些應用程式會產生所謂固定頁格格式的文件。 這份文件格式會描述每頁上文檔內容的位置。 內部的 PDF 或 XPS 格式包含每個頁面的描述，以及繪圖指令，指定頁面上的內容排版。 這與圖像格式相似，描述內容在 Raster 或 Vector 形式顯示的位置。

然而，有些文字編輯應用程式不支援顯示文件的頁面。 例如，Microsoft Notepad 在除了簡單顯示、編輯和列印文字之外的各種功能上支持非常少。 重要觀察是這樣的應用程式無法顯示文檔中的頁面，也無法告訴使用者將要列印多少頁，只能讓使用者查看文書內容。 該檔案可以儲存在文字格式下，並且可以用許多其他應用程式開啟。 使用能顯示任意檔案二進位內容的應用程式，你可以看到儲存在文件中的東西──它只是一些簡單的文字，沒有其他東西。

較進階的文字編輯程式，如 Microsoft WordPad，會以支援更多格式化功能的 Rich Text Format (RTF) 儲存文件，例如插入圖像、字符格式設定、段落邊距和間隔。 然而，RTF格式也只包含文件內容，而沒有任何關於頁面的資訊。

Microsoft Word 是 Windows 中最先進的文字編輯器。 它以DOCX格式儲存檔案，該格式能以彈性且廣泛的方式描述檔案中的內容，讓使用者可指定檔案的頁面大小與方向，並能透過這個以什麼見樣樣（WYSIWYG）應用程式來顯示檔案中的頁面。 然而，目前仍沒有任何資訊說明該文件的內容是如何在文件中顯示。 該文件僅描述內容本身，以及文檔物件之間的關係，並附上一些幾何的限制。 因此，在顯示一個文件之前，Microsoft Word 會先計算那個資訊。 這就是頁面排版發揮作用的地方。

## 什麼是頁面布局

文書頁面排版是描述在所有文書對象中某個對象在頁面上的位置的數據結構。 此外，因為物件有影響其外觀的屬性，例如字體大小、陰影或繪圖效果，你除了要知道該物件在何處以外，也要知道它佔領的頁面區域，以及是否會應用於多個頁面，這樣其他物件就不會重疊相同的區域。

Aspose.Words 在內部實作頁面排版功能，讓它能產生所有固定頁面格式，例如 PDF、XPS 和各種圖片格式。 若不設頁面排版，儲存在固定頁面檔案中的資訊將無法使用且所有這些格式均不會被支援。

文件與頁面排版的關係相當簡單。 而一篇文件則描述內容，相應的頁面布局則描述該內容的幾何形狀。 請注意，頁面布局無法存在於文件中，因為沒有內容來計算幾何形狀；然而文件可以存在而沒有頁面布局。 例如，當 DOCX 文檔轉換成 RTF 文檔時，通常不需要知道其幾何形狀，因為兩個格式都不會儲存它。

## 建立頁面布局

建立頁面配置可能是一個昂貴的程序， zowel在速度和記憶體方面。 這是由於多個原因。

- 該文件可能包含大量的內容，並且可能需要在數千頁中顯示。 每個物件在每個頁面上的幾何結構都必須被描述，需要消耗記憶資源。
- 文檔可能會有許多規則，對幾何學施加限制。 很長時間的運算可能花費，確保每個限制都得到滿足。
某些文件功能，例如 `NUMPAGES` 欄位，會為未在計算時可用的未來屬性值產生遞歸依賴項。 這導致重複的計算，並且在運算時間上增加。

由於上述原因，Aspose.Words將只會必要時才會製作頁面排版。 這可能是由於請求呈現文件頁面或取得依页面排版中可用的資訊而取決的欄位值。 可能更不顯而易見的理由是輸出一個文件到HTML。 雖然 HTML 不是一個固定頁面格式，也不描述內容物件的幾何圖形，但它仍然支援圖像。 這些圖像是以 Microsoft Word 中創建的形狀形式存在，其中包含文字。 例如，带有軸標籤的圖表可以以圖像形式輸出到HTML中，但在進行此操作之前，Aspose.Words需要渲染該圖像，因此需要知道如何顯示標籤。 看下面的圖表例子。

<img src="converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format_1" style="width:800px"/>

### 非幾何性性質

在處理幾何資訊之外，頁面編排還負責計算顏色和邊框樣式。 在 Microsoft Word 中，文字顏色可以指定為自動，這意味著顏色的選擇應該是基於該單元格或段落的高暗色調，或是基於頁面上的文字出現的顏色。

頁面配置會計算文字將出現在哪裡以及會在後方渲染的內容，使顏色計算成為可能。 其他特定計算是由頁面排版所執行的。 例如，一張桌子的水平邊框取決於是否是一列文字的最後一行，以及它是否跨越了數個欄位。 若是一行是在一列最後渲染，則底邊框被用來代替水平線。

![converting-to-fixed-page-format_2](converting-to-fixed-page-format-2.png)

在 Aspose.Words 中，使用者可以要求建立新的頁面版式或更新現有的頁面版式。 這兩種動作可以使用 [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/) 方法來完成，該方法是由 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 類別提供的。 如果頁面排版不存在的話，但仍有需要它時（例如，當文書輸出到固定頁數格式時），Aspose.Words 會自動呼叫此方法。 不過，如果已經存在頁面布局，Aspose.Words將使用現有的，以免消耗更新它的必要資源。 在這種情況下，用戶必須呼叫 `UpdatePageLayout` 方法，以確保頁面設計符合文件模型。

### 動態結構

建立頁面布局的過程包含以下幾個步驟：

"- *Conversion* – 列舉文件模型中的內容並準備相應的レイアウト物件。"
"- *Build* – 在頁面上安排版面物件以表示文件的內容。"
"- *Reflow* – 更新對象排列來滿足幾何限制。"
"- *將布局物件投射到固定頁面呈現，並最終化顏色資訊*。"
- *形狀內容的建立與重新配置* – 如果文件包含具有嵌套文本內容的形狀，則需要此步驟。

請注意，此頁面編排是一種動態結構體，可以部分重建。 這特別需要在無法計算字段值，而不重新構建文件布局結構的情況下。 這個欄位可以設定物件在頁面的位置，而同時該欄位本身也是在頁面上渲染出來的，影響了被設定位置的物件。 頁面排版不能一次完成，因為在定位於頁面的時候，場值可能尚未可用。

考慮當 `NUMPAGES` 欄位出現在文件第一頁的腳踏板中時。 此欄位之值是頁數總和。 為了在頁面上定位這個欄位，其值必須是已知的。 如果目前只建第一頁，則尚未知道總頁數。 在這種情況下，頁面排版必須使用預設值，並且後來會再返回該欄位並根據實際計算來改變它的值。 然而，改變欄位值可能會影響到頁面上的其他文件內容，最終造成新的頁面被附加或現有的頁面被移除，從而使計算出的值過時。 這個問題可以透過使現有的頁面布局能夠更新來解決。

在建立版面時，也可以設定 [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) 個會影響文件輸出到分頁的屬性。

## 儲存為固定頁面格式

在頁面排版完成、物件的幾何與其在頁面的位置計算之後，該文件就能以 Aspose.Words 支援的固定版面格式儲存。 儲存文件到固定頁面格式時，可利用所有此格式的共同渲染選項。 他們允許控制：

- 在輸出文件中包含的頁面數目與範圍（[PageCount](https://reference.aspose.com/words/net/aspose.words/document/pagecount/)）。
- 分頁儲存文件的進度 ([PageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/pagesavingcallback/)).
- 一組用於數字的字符 ( [NumeralFormat](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/numeralformat/) )。
- 一種元檔案播放器（[MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/metafilerenderingoptions/)）。 更多細節請參閱該[Handling Windows Metafiles](/words/net/handling-windows-metafiles/)篇文章。
- 一項用於重新壓縮JPEG圖檔的品質評分值，其值可能略有差異，取決於所選儲存格式（[JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)）。
- 向量圖形的優化在 Aspose.Words 輸出 ([OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)).
- 儲存為Tiff、Png、Bmp、Jpeg或Emf格式時的圖形選項 ([UseAntiAliasing](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/useantialiasing/)，[UseHighQualityRendering](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/usehighqualityrendering/)).
-以灰階保存檔案 ([ColorMode](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/colormode/)).
"- 切換 DrawingML 圖形與備用圖形的渲染 ([DmlRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmlrenderingmode/))"
- 切換 DM 效果的渲染模式（[DmlEffectsRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmleffectsrenderingmode/)）。

下面的範例示範了如何透過 `Save` 方法和渲染選項儲存檔案到 JPEG 格式：

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "get-jpeg-page-range.cs" >}}
