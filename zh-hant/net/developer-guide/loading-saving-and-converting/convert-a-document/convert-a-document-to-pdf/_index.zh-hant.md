---
title: 在C#中將Word轉換為PDF
second_title: Aspose.Words for .NET
articleTitle: 將文件轉換為 PDF
linktitle: 將文件轉換為 PDF
description: "用C#將文件轉換為PDF。 將 DOCX 轉換為 PDF C#。 各種輸入格式皆受支援，包含Word、OpenOffice、Image和eBook格式。"
type: docs
weight: 10
url: /zh-hant/net/convert-a-document-to-pdf/
timestamp: 2024-09-25-11-08-55
---

能夠輕鬆且可靠地將文件從一種格式轉換成另一種格式是 Aspose.Words 的關鍵特點。 最受歡迎的轉檔格式之一是 PDF - 固定格式，在各種平台上呈現文書時會保持其原始外观。 在 Aspose.Words 中，" rendering " 這個詞用來描述將一份文件轉換成具有分頁或以分頁為概念的檔案格式的過程。

## 將 Word 文檔轉換為 PDF

從 Word 轉換到 PDF 是一個相當複雜的過程，需要許多計算階段。Aspose.Words 排版引擎模擬 Microsoft Word 的排版引擎運作，讓 PDF 輸出文件看起來盡可能接近您在 Microsoft Word 中看到的。

透過 Aspose.Words，您可程式化地將文件從 Word 格式（例如 DOC 或 DOCX）轉換為 PDF，而無需使用 Microsoft Office。 這篇文章說明如何執行這個轉換。

{{% alert color="primary" %}}

請注意，文件中的頁面數影響了轉換時間。

{{% /alert %}}

### 將 DOCX 或 DOC 轉換為 PDF

將從 DOC 或 DOCX 文檔格式轉換成 PDF 格式的 Aspose.Words 非常簡單，只需兩行程式碼即可完成：

1. 使用其某個建構函式，以指定文件名稱及其格式延展子來載入您的文件至 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 物件。
1. 在 **Document** 物件上調用 [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 方法之一，並指定以 PDF 為所需的輸出格式，輸入具有 .PDF 拡張子的檔案名稱。

以下範例程式碼示範了如何透過 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 方法將檔案從 DOCX 轉換為 PDF：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載本範例的模板檔案。

{{% alert color="primary" %}}

有時需要指定額外的選項，以影響儲存文書為 PDF 的結果。 這些選項可透過使用包含確定如何顯示PDF輸出之屬性的[PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/)類別來指定。

請注意，使用相同的技術，您可以將任何流式排版格式的文件轉換為 PDF 格式。

{{% /alert %}}

### 轉換至不同的 PDF 標準

Aspose.Words提供[PdfCompliace ](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)枚數以支援將DOC或DOCX轉換成各種PDF格式標準(例如:PDF 1.7、PDF 1.5等)。

接下來的程式碼範例示範了如何透過 [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) 將文件轉換成符合 PDF17 的 PDF 1.7：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## 將圖像轉換為PDF

將資料轉換為PDF並不受限於 Microsoft Word 文檔格式。 任何由 Aspose.Words 支援的格式，包括以程式方式建立的檔案，也可以轉換為 PDF。 例如，我們可以將單頁的圖像（如JPEG、PNG、BMP、EMF或WMF）以及多頁的圖像（如TIFF和GIF）轉換為PDF。

以下示例代碼展示了如何將JPEG和TIFF圖像轉換為PDF：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

要使此程式碼正常運作，您必須將 Aspose.Words 和 `System.Drawing` 的參考項目加入您的專案中。

## 縮小PDF輸出大小

儲存成PDF時，您可以指定是否要優化輸出。 要做到這點，您需要將 [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) 旗標設定為 true，然後多餘的嵌套畫布和空白畫布會從中移除，相邻具有相同格式化之字元會進行串聯。

接下來的程式碼範例示範如何優化輸出：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

使用 **OptimizeOutput** 屬性可能影響內容的顯示精確度。

{{% /alert %}}

## 見也

"- 文章 [Rendering](/words/net/rendering/) 提供更多關於固定頁面和流式排版格式的資訊"
"-該文章 [Converting to Fixed-page Format](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 提供關於頁面布局的更多資訊"
"- 該文章 [Specify Rendering Options When Converting to PDF](/words/net/specify-rendering-options-when-converting-to-pdf/) 提供有關使用 `PdfSaveOptions` 的更多資訊。"
-該文章[Learn Features of Conversion to PDF/A and PDF/UA](/words/net/learn-features-of-conversion-to-pdf-a-pdf-ua/)描述哪個PDF標準以及與PDF標準相關的ISO以支援Aspose.Words
"-該文章 [Which PDF Standard Is Better to Choose](/words/net/which-pdf-standard-is-better-to-choose/) 來決定哪些 PDF 標準對哪些案例有意義。"

- 文章 [Working with PDF/A or PDF/UA](/words/net/working-with-pdfa-or-pdfua/) 描述 PDF/A 和 PDF/UA 格式的文件內容要求 - 主要為結構和字體的要求"。

-文章 [Accessibility Issue Warnings When Saving to PDF/A and PDF/UA](/words/net/warnings-when-saving-to-pdfa-and-pdfua/) 描述了 PDF/A 和 PDF/UA 的內容存取要求
