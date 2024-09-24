---
title: 在C#中指定負載選項。
second_title: 「Aspose.Words for .NET」
articleTitle: 指定加載選項
linktitle: 指定加載選項
description: "透過 C#更精確地控制加載過程。"
type: docs
weight: 10
url: /zh-hant/net/specify-load-options/
---

「當載入文件時，您可以設定一些進階的屬性。 Aspose.Words 提供給您 [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) 類別，這個類別允許更精確地控制載入過程。」 有些載入格式有相應的類別，用來儲存該載入格式的選項。例如：為載入至 PDF 格式而使用的 [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) 或為載入至 TXT 格式而使用的 [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/)。 本文提供了一些如何與 **LoadOptions** 類別的選項進行工作範例。

## 「設定 Microsoft Word 版本以改變外觀」

不同版本的 Microsoft Word 應用程式可以以不同的方式顯示文件。 例如，使用 WPS Office 製作的 OOXML 文檔，如 DOCX 或 DOTX 等，就存在著知名的問題。 「在這種情況下，基本的文件標記元素可能缺失或可能被解釋不同，導致 Microsoft Word 2019 顯示該文件的方式與 Microsoft Word 2010 有所不同。」

「預設 Aspose.Words 會用 Microsoft Word 2019 年規則開啟文件。」 「若您需要使檔案的載入方式與以前的三個 Microsoft Word 應用程式版本一致，您應透過 **LoadOptions** 類別的 [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) 屬性來明確指定所需的 phiên本。」

「以下範例程式碼示範如何設定以負載選項的 Microsoft Word 版本：」

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "set-ms-word-version.cs" >}}

## 「設定語言首選來改變樣式」

在 Microsoft Word 顯示文檔的細節不只取決於應用程式版本和 **MswVersion** 屬性值，也取決於語言設定。 Microsoft Word 可能會根據「Office 語言偏好」對話框的設定（可以在「檔案 → 選項 → 語言」中找到），以不同的方式顯示文檔。 透過此對話方塊，使用者可以選擇，例如主要語言、校對語言、顯示語言等等。 Aspose.Words 提供 [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) 屬性作為此對話方塊的等效物。 如果 Aspose.Words 的輸出與 Microsoft Word 的輸出不同，請設定適當的值給 **EditingLanguage** – 這可以提升輸出文件的品質。

接下面的程式碼範例示範了如何設定日本語為 **EditingLanguage**:

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "add-editing-language.cs" >}}

## 「在載入文件時使用 WarningCallback 來控制問題。」

某些文件可能破損、包含無效的條目，或具有 Aspose.Words 目前不支援的特徵。 「如果你想要了解在載入文書時所發生的問題，Aspose.Words會提供 [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/) 介面。」

以下程式碼示例說明了 **IWarningCallback** 介面的實作：

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "i-warning-callback.cs" >}}

為了獲取所有問題的資訊，請使用 [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/) 屬性。

以下範例顯示如何使用此屬性：

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "warning-callback.cs" >}}

## 「使用ResourceLoadingCallback來控制外部資源的加載」

文書中可能包含指向某個地方存放的圖像的外部連結，可能是本機磁碟、網路或網際網路。 Aspose.Words 自動載入這些圖像到該文件中，但是有些情況下，這個過程需要被控制。 例如，決定是否真的需要載入某張圖片或跳過它。 「[ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/)負載選項」讓你能控制它。

接下來的程式碼範例示出了 [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/) 介面之實作：

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "i-resource-loading-callback.cs" >}}

以下範例展示了如何使用 **ResourceLoadingCallback** 屬性：

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "resource-loading-callback.cs" >}}

## 「使用TempFolder來避免記憶體例外狀況」

「Aspose.Words支援極為龐大的文件，包含數千頁的豐富內容。」 「載入此類文件可能需要大量的RAM。」 在載入過程中，Aspose.Words需要更多記憶體來容納用來解析文書的暫時結構。

如果您在載入文件時遇到 Out of Memory 例外狀況，請嘗試使用 [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/) 屬性。 在這種情況下，Aspose.Words將把某些資料儲存在臨時檔案中而不是記憶體中，這可以幫助避免這樣的例外情況。

接下來的程式碼範例示範如何設定 **TempFolder**：

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "temp-folder.cs" >}}

## 「設定編碼明確」

「大多數現代的文件格式會以 Unicode 儲存其內容，且不需要特別處理。」 另一方面，仍有許多文件使用一些先前的編碼（encoding），有時會遺漏編碼資訊或根本不支持編碼資訊。Aspose.Words 試圖自動偵測適當的編碼，但在罕見情況下你可能需要使用與我們的編碼辨識算法偵測出的不同編碼。 在這種情況下，請使用 [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) 屬性取得或設定編碼。

以下程式碼範例示範如何設定編碼以覆盖自動選取的編碼：

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "load-with-encoding.cs" >}}

## 載入加密文件

「您可以載入以密碼加密的Word文件。」 「要做到這一點，請使用一個特殊的建構函式重載，它會接受一個 [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/) 的物件。」 「此物件包含名為 [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) 的屬性，其指定密碼串。」

以下範例顯示了如何使用密碼加密的文件：

{{< gist "aspose-words-gists" "40be8275fc43f78f5e5877212e4e1bf3" "open-encrypted-document.cs" >}}

「如果您不知道該檔是否已加密，您可以使用 [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/) 類別，它為處理檔案格式提供公用程式方法，例如偵測檔案格式或將檔案扩展名轉換成/從檔案格式枚舉。」 若要確認文件是否加密且需要密碼才能打開，請使用 [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) 屬性。

以下範例展示了如何驗證 OpenDocument 是否已加密：

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}
