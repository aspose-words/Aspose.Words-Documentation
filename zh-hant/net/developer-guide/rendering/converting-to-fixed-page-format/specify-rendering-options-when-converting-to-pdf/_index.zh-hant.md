---
title: 將檔案轉換為PDF時之選項
second_title: Aspose.Words for .NET
articleTitle: 在轉換為 PDF 時指定渲染選項
linktitle: 在轉換為 PDF 時指定渲染選項
description: "以 C# 的進階選項將文件轉換為 PDF。 將 DOCX 表單轉換為 PDF C#。 請使用 PdfSaveOptions 來改變儲存文書成 PDF 的結果。"
type: docs
weight: 20
url: /zh-hant/net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

PDF 格式是一個固定頁面的格式，在使用者之間非常流行，且各種應用程式也廣泛支援它，因為 PDF 文檔在各設備上看起來都是一樣的。 為此，將檔案轉換為PDF檔是Aspose.Words的重要功能。

PDF 是複雜的格式。 在將文件轉換成 PDF 的過程中，需要幾個計算階段，包括排版計算。 由於這些階段包括複雜的運算，它們是耗時的一項工作。 此外，PDF格式本身就相當複雜。 它具有特定的檔案結構、圖形模型和字型嵌入。 此外，它還具備複雜的輸出功能，例如文件結構標籤、加密、數字簽名和可編輯的表單。

 Aspose.Words 布局引擎模擬 Microsoft Word 的頁面排版引擎。 因此，Aspose.Words讓PDF輸出文件看起來與你能在Microsoft Word看到的盡可能接近。 有時需要指定額外的選項，這些選項可能影響以 PDF 格式儲存文件的結果。 這些選項可以使用具有決定 PDF 輸出顯示方式的屬性的 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 類別來指定。

以下提供了一些使用 **PdfSaveOptions** 的例子。

{{% alert color="primary" %}}

目前，您可以儲存至 PDF 1.7、PDF 2.0、PDF/A-1a、PDF/A-1b、PDF/A-2a、PDF/A-2u 和 PDF/UA-1 等格式。 使用 [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) 列舉來設定 PDF 標凖合乎程度。 請注意，在 PDF/A 格式中，輸出檔案的大小比一般 PDF 檔案大。

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) 和 [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) 已指定為過時。

有關 PDF/A 的更多資訊，請參閱接下來的一篇文章，"瞭解將檔案轉換為 PDF/A 的功能"。

{{% /alert %}}

## 以可填寫的樣式建立 PDF 文檔

也可以將可填寫的表單從 Microsoft Word 文檔輸出為具有可填寫的表單的 PDF，而非普通文字。 使用 [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) 屬性將文件儲存為可填寫表單的 PDF。

請注意，與 Microsoft Word 比較，PDF 格式的可編輯表單選項數有限，例如文本框、組合框和核對框。 Microsoft Word 有更多類型的表單，例如日历日期選擇器。 一般而言，在PDF中無法完全模仿 Microsoft Word 的動作。 因此，在某些複雜的案例中，PDF 的輸出可能會與您在 Microsoft Word 中看到的不同。

下面的程式碼範例示範如何以指定的 JPEG 壓縮和品質，儲存可填寫表單的文件為 PDF：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "image-compression.cs" >}}

## 輸出檔案結構與自訂屬性

這個[https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportdocumentstructure) 屬性讓您可以將文件結構輸出到PDF輸出。

PDF邏輯結構功能提供一種將文件內容結構中的資訊加入PDF檔案的機制。Aspose.Words 會從Microsoft Word 的文件中保存結構資訊，如段落、清單、表、腳注/尾注等。

以下範例示範了如何儲存文件為 PDF 格式，同時保留其結構：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "export-document-structure.cs" >}}

Aspose.Words也讓您可以將文件自訂屬性輸出至 PDF，如以下範例所示：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "custom-properties-export.cs" >}}

## 從書籤和標題中輸出概要

如果你想要將書籤輸出為PDF中的大綱，你可以使用 [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/) 屬性。 這個屬性指定在文件大綱中預設的級別，在該級別顯示 Microsoft Word 個書籤。 如果文件包含在文件頭/尾的書籤，您可以將 [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) 屬性設置為 [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) 或 [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) 以指定它們如何輸出到輸出 PDF。 標頭/腳部中的書籤在值為 **HeaderFooterBookmarksExportMode** 且為 [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) 時並不被輸出。

下面的程式碼範例說明如何從一個節目的第一個標題/页脚中輸出書籤：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "export-header-footer-bookmarks.cs" >}}

這個範例的輸出 PDF 在下面：

![specify-rendering-options-when-converting-to-pdf_1](specify-rendering-options-when-converting-to-pdf-1.png)

當 **HeaderFooterBookmarksExportMode** 設定為 [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/)，且文件有偶數或奇數的標頭/腳符，或者第一頁的標頭/腳符不同時，則該部分的第一個獨特的標頭/腳符會輸出書籤。

您也可以透過 [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/) 屬性將標題輸出至 PDF。 這個屬性指定了文件大綱中包含多少個標題層次。

以下代碼示例說明了如何輸出三級標籤：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "outline-options.cs" >}}

這例的輸出PDF如下所示：

![specify-rendering-options-when-converting-to-pdf_2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

在不同的 PDF 檢視器中，書籤或標題導航可能有不同的外觀。 此外，在某些應用程式中，書籤和標題導航不在 UI 中提供。

{{% /alert %}}

## 將圖像進行下取樣以減少文件大小

 Aspose.Words 提供了一個將圖像縮小到以減少輸出 PDF 大小的功能，使用 [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/) 屬性。 縮圖預設在 [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/) 屬性中啟用。

請注意，您也可以在 [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) 屬性中設定特定解析度，或在 [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold) 屬性中設定解析度門檻。 在第二個案例中，如果圖像解析度小於阈值值，那麼下采樣將不會被應用。

以下程式碼範例示範如何在輸出 PDF 文檔中改變圖像的解析度：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "downsampling-images.cs" >}}

解析度是根據頁面上的真實影像大小來計算的。

## 在 Adobe PDF 格式中嵌入字體

Aspose.Words 也讓您控制結果的 PDF 文件中嵌入字型的方式。 字型必須被嵌入於任何的 Adobe PDF 文檔中，以確保該文檔可以在任何機器上正確地顯示（請見第 [Using TrueType Fonts](/words/net/using-truetype-fonts/) 節中有關字型渲染的詳細說明）。 在預設情況下，Aspose.Words會將文檔中使用的字體嵌入到生成的 PDF 檔案中。 在这种情况下，只有在文档中使用的字体（字符）被保存为PDF。

### 何時使用全字型，何時使用子集

有方法可設定選項來嵌入完整的 Aspose.Words 字體。 進一步細節及各設定優缺點，請見下表。

| 嵌入字體模式 | 優點 | 缺點 |
| :- | :- | :- |
| `Full` | 當你想在後面編輯結果的 PDF 並添加或修改文字時，它很有用。 所有字型都有包含在內，因此所有字體都存在。 | 因為某些字體很大（幾兆位元組），不進行子集化即可將它們嵌入，可能會導致大輸出檔案。 |
| `Subset` | 子集運算如果你想要保持輸出檔案大小更小，是很有用的。 | <p>使用者無法透過輸出 PDF 文檔中的字體來完全加入或編輯文字。 這是因為字型的格言都存在 。<p>如果多個 PDF 用子集字型儲存並組合在一起, 那么合并的 PDF 文件可能會有包含很多不必要的子集的字型 。</p></p> |

### 在PDF中嵌入全字型

[EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/)屬性可讓您指定 Aspose.Words 在輸出 PDF 文檔中嵌入字體的方式。

"-若要將全字體嵌入至輸出之 PDF 文檔中，請設定 **EmbedFullFonts** 為 true"
"- 在儲存至 PDF 的時候，將字體設定為子集 **EmbedFullFonts** 至 false"

接下來的範例示範了如何在輸出 PDF 文檔中嵌入完整的字型：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "embedded-all-fonts.cs" >}}

接下來的範例示範如何在輸出 PDF 中將 Aspose.Words 設定為子集字型：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "embedded-subset-fonts.cs" >}}

{{% alert color="primary" %}}

您可以從[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)下載這些範例的範本檔案。

{{% /alert %}}

## 如何控制嵌入式核心字體和 Windows 標準字體

核心字體和 Windows 標準字體是標準字體組，通常是目標機器上已存在或由文件讀取器提供，因此不需要嵌入在輸出 PDF 中。 透過不嵌入這些字體，您可以減少已渲染的 PDF 文檔的大小，而又能維持可攜性。

Aspose.Words 提供選項來選擇字體如何被輸出到 PDF。 您可以選擇將核心字體和標準字體嵌入到輸出 PDF 中，或者跳過嵌入並使用目標機器上的標準核心 PDF 字體或系統字體。 這些選項通常會為由 Aspose.Words 產生之 PDF 文檔，產生顯著的檔案大小減少。

由於這些選項是相互排斥的，你應該一次只選擇一個。
當以 PDF/A-1 符合性儲存時，必須將所有使用的字體嵌入到 PDF 文檔中。 當以此相容性儲存時，[UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)屬性的值必須設定為false，而 [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/)屬性的值必須設定為[EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/)。

### 內嵌核心字體

內嵌核心字體的選項可以使用 [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) 屬性來啟用或停用。 當它設定為 true 時，以下最受歡迎的 TrueType 字型（基底 14 字型）不會被嵌入輸出 PDF 文檔中：

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

這些字體會用相應的核心字體（Type 1）取代，而字體會由開啟PDF時提供的讀者提供。

下面的範例示範如何將 Aspose.Words 設定成避免嵌入核心字體，並讓讀者以 PDF Type 1 字體替換：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "avoid-embedding-core-fonts.cs" >}}

{{% alert color="primary" %}}

你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載範例的範本檔案。

{{% /alert %}}

由於 PDF 瀏覽器會在任何支援的平台上提供核心字體，這個選項在需要更大的文件可攜性時也很有用。 不過，核心字型可能與系統字型有不同的樣子。

{{% alert color="primary" %}}

這個設定只適用於 ASCII (Windows-1252) 編碼的文字。 寫入非 ASCII 文本到 PDF 會總是需要嵌入相應的字體。

{{% /alert %}}

### 內嵌系統字體

此選項可透過使用 [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) 屬性來啟用或停用。 當此屬性設定為 [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/) 時，Ariel 和 Times New Roman true 字體不會被嵌入 PDF 文檔中。 在此情況下，用戶端瀏覽器依賴於用戶端操作系統所安裝的字體。 當 **FontEmbeddingMode** 屬性設定為 [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/) 時，Aspose.Words 不要嵌入任何字體。

下面的範例說明如何設定 Aspose.Words 來跳過將 Arial 和 Times New Roman 字體嵌入 PDF 文檔：

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "disable-embed-windows-fonts.cs" >}}

此模式在您希望在相同平台上查看文件並保留輸出 PDF 中字體確實樣貌時最為有用。

{{% alert color="primary" %}}

此設定只適用於 ASCII (Windows-1252) 編碼文字。 寫非 ANSI 文本到 PDF 需要嵌入對應的字體。

{{% /alert %}}
