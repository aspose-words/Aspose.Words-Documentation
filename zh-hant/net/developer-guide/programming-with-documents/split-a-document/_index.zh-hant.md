---
title: 以C#分割文件
second_title: Aspose.Words for .NET
articleTitle: 分割文件
linktitle: 分割文件
description: "使用C#將文件分割成多個檔案。 透過分段功能，可有效地根據標題或分節來分割文件，也可以根據頁面或頁面範圍來分割。"
type: docs
weight: 90
url: /zh-hant/net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* 或 *Split a Document*是將大型文件拆分成多個較小的檔案的過程。 有許多原因可以將檔案拆分。 例如，你只需要某份特定文件的部分頁面，而不是一整份。 或是因為隱私的理由，你只想與他人分享文件的部分內容。 透過分段功能，您可以只取得文件所需的部份並對它們採取必要的動作，例如標記、儲存或傳送。

Aspose.Words提供您將一個文件分割成多個文件的有效方法，方法是根據標題或分節。 您也可以根據頁面或頁碼範圍來分割文件。 兩種分割選項將在此篇文章中描述。

要使用 Aspose.Words 将文件分成較小的檔案，你需要按照以下步驟來。

1. 以任何支援的格式載入該文件。
1. 將文件拆分。
1. 保存輸出文件。

一旦你將文件切割，你便能打開所有由所需頁數、文字等開始的輸出文件。

{{% alert color="primary" %}}

**試試看網路上**

你可以用我們的 [Free online document splitter](https://products.aspose.app/words/splitter) 來試用這個功能。

{{% /alert %}}

## 以不同的基準來分割文件 {#split-a-document-using-different-criteria}

Aspose.Words 可讓您根據各種準則將 EPUB 或 HTML 文檔分成章節。 在這個過程中，來源文件的風格與格式會保留到輸出文件中。

您可以用 [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/) 列舉來指定準則。 因此，您可以根據以下條件將文件分成章節，或將多個條件結合一起：

"- 標題段落,"
- 分段標記，
- 列斷詞，
- 頁面斷位。

在將輸出儲存為HTML時，Aspose.Words 請將每個個別章節儲存為獨立的HTML檔案。 因此，該文件會分成多個 HTML 檔案。 當將輸出存成 EPUB 格式時，Aspose.Words 會將結果儲存在一個單一的 EPUB 檔案中，無論您使用的 `DocumentSplitCriteria` 值為何。 因此，只使用 DocumentSplitCriteria 來處理 EPUB 文檔，將會影響到讀取器應用程式中文檔內容的顯示：內容將被劃分為章節，而文檔則不再連続。

{{% alert color="primary" %}}

您無法透過 [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) 屬性將檔案儲存為 MHTML 格式來分割檔案。

{{% /alert %}}

在這段中，我們只考慮可能的分割準則中的一些。

### 用標籤拆分文件 {#split-a-document-by-headings}

若要透過標題將文件拆分成章節，請使用 **HeadingParagraph** 值的 **DocumentSplitCriteria** 屬性。

若您需要根據特定數量的標題段落來拆分文件，例如 1、2 和 3 等標題，請使用 [DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/) 屬性。 輸出會用指定的標題級別分段格式化。

接下來這個範例會教您如何透過標題將文件分割成較小的部分。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

請注意，對於此條件，Aspose.Words 僅在分割時支援儲存到 HTML 格式。

儲存到EPUB時，文件不會被分成多個檔案，並且只會產生一個輸出檔案。

### 透過章節分割文件 {#split-a-document-by-sections}

Aspose.Words可讓您利用分節來分割文件，並儲存成 HTML。 為了這目的，請用 **SectionBreak** 作為 **DocumentSplitCriteria**：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

有種其他方式可以將源文件分成多個輸出文件，而您可以選擇由 Aspose.Words 支援的任何輸出格式。

示例程式碼顯示如何透過使用分段斷詞（不使用 `DocumentSplitCriteria` 屬性）來將文件分成較小的部分。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## 按頁分割 {#splitting-by-pages}

您可以按頁、頁碼範圍或從指定頁碼開始來分割檔案。 在這種情況下，[ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) 方法可以完成工作。

本節描述將文件分頁並使用 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 類別和 **ExtractPages** 方法來處理的幾個用例。

{{% alert color="primary" %}}

你可以隨便用任何 [output format supported by Aspose.Words](/words/net/supported-document-formats/)。

{{% /alert %}}

{{% alert color="primary" %}}

由於減少頁數時出現的細微差異眾多，要完全符合 Microsoft Word 版面設計是一項非常複雜的任務。 因此，依於文件的複雜程度，可能在 النات成的文件排版上與原始文件有些許不同。

{{% /alert %}}

### 拆分文件頁面每頁 {#split-a-document-page-by-page}

Aspose.Words可讓您逐頁拆分多頁文件。

以下程式範例示範如何將文件分成多個部分，並每個部分儲存為獨立的檔案：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### 按頁範圍拆分文件 {#split-a-document-by-page-ranges}

Aspose.Words可讓您依頁範圍將多頁的文件分割。 您可以將一個檔案分成多個檔案，以各種頁面範圍來分割，或者只選擇一個範圍並僅儲存該部分源文件。 請注意，您可以根據文檔的最大及最小頁碼來選擇頁碼範圍。

接下來的程式碼範例說明如何透過頁碼範圍來將文件拆分為較小的部分，並使用特定的開始與結束索引：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## 回叫選項以儲存文件 {#callback-option-for-saving-a-document}

您可以利用 [DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) 屬性來控制當此文件以 HTML 格式輸出時，Aspose.Words 如何保存文件部分。 此屬性允許您重命名輸出檔或甚至將其重新導向到自訂的資料流。

請注意，此回呼在儲存到EPUB時並不用處，因為所有輸出部分都必須儲存到單一的容器--`.epub`檔案。 因此，流重定向不支援，且由於檔案是在容器內重新命名的，改名的效果無法看見。

## 將分拆的文件與其他文件合併 {#merge-the-split-document-with-another-file}

Aspose.Words 可讓您將輸出分割文件與另一份文件合併，形成新的文件。 這可被稱為文檔合併。

以下範例示範了如何將分片的文件與另一份文件合併：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
