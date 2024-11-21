---
title: 在載入時檢測檔案格式。
second_title: Aspose.Words for .NET
articleTitle: 検出檔案格式並檢查格式相容性
linktitle: 検出檔案格式並檢查格式相容性
description: "在不確定檔案實際內容或要檢查檔案格式相容性時，用C#決定檔案格式。"
type: docs
weight: 20
url: /zh-hant/net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

有時若要打開一個檔案之前先決定它的格式是有必要的，因為檔案的拡張名並不保證檔案內容是適當的。 例如，已知 Crystal Reports 經常會輸出 RTF 格式的文件，但卻會給它加上 .doc 這一個擴展名。

Aspose.Words 提供了一個功能，可取得檔案類型的資訊，以避免如果您不確信檔案的實際內容會發生哪些異常情況。

## 偵測所有檔案格式無需例外

當你處理各種不同文件格式的文件時，可能需要將能由 Aspose.Words 處理的檔案與不能處理的檔案分開。 你可能還想知道，為什麼有些文件無法處理。

如果您試圖將檔案載入 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 物件且 Aspose.Words 無法辨識檔案格式或格式不受支援，Aspose.Words 將會扔出一個例外。 您可以捕獲這些例外並進行分析，但 Aspose.Words 也提供 [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/) 方法，讓我們可以在不加載可能出現異常的文件的情況下快速決定檔案格式。 此方法返回包含有關檔案類型的已檢測資訊的 [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) 物件。

{{% alert color="primary" %}}

DetectFileFormat 僅檢查檔案格式，但不驗證檔案格式。 即使 **DetectFileFormat** 返回該為支援格式之一，也無保證檔案會成功打開。 這是因為 **DetectFileFormat** 方法只讀取部分檔案格式資料，足矣檢查檔案格式，但不夠完全驗證。

{{% /alert %}}

## 檢查檔案格式兼容性

我們可以檢查所選資料夾中所有檔案的格式相容性，並依格式將它們排序至相應的子目錄中。

由於我們正在處理資料夾中的內容，因此我們需要先使用 **GetFiles** 方法從 `Directory` 類別（來自 `System.IO` 命名空間）取得此資料夹中所有檔案的集合。

以下範例顯示如何取得該目錄中所有檔案的清單：

{{< gist "aspose-words-gists" "7fe3fc4004f081628a63608db70332b3" "get-files.cs" >}}

當所有檔案都收集好後，其餘的工作由 **DetectFileFormat** 方法完成，它會檢查檔案格式。

以下範例顯示如何迭代收集的檔案清單，檢查每個檔案的格式並移動每個檔案到正確的資料夹：

{{< gist "aspose-words-gists" "7fe3fc4004f081628a63608db70332b3" "check-format-compatibility.cs" >}}

這些檔案使用 `Move` 方法從 `File` 類別中，用 `System.IO` 命名空間的方式，放入合適的子目錄。

以下檔案用於上述範例。 檔案名稱在左邊，描述在右邊：

| Group 個檔案 | 輸入文件 | 類型 |
| :- | :- | :- |
| 支援的檔案格式 | 測試檔案（Doc）.doc | Microsoft Word 95/6.0 或 Microsoft Word 97 - 2003 文檔。 |
|  | 測試檔案 (`Dot`)。dot | Microsoft Word 95/6.0 或 Microsoft Word 97 - 2003 模板。 |
|  | 測試檔案 (Docx).docx | Office Open XML WordprocessingML 文檔，不包含巨集。 |
|  | 測試檔案（Docm）.docm | 包含 macro 的 Office Open XML WordprocessingML 文檔。 |
|  | 測試檔案（Dotx）े.dotx | Office Open XML WordprocessingML模板。 |
|  | 測試檔案 (Dotm).dotm | 具有內嵌巨集功能的 Office Open XML WordprocessingML 範本。 |
|  | 測試檔案 (XML) 。xml | FlatOPC OOXML 文檔。 |
|  | 測試檔案 (RTF)。rtf |  Rich Text Format 文檔。 |
|  | 測試檔案 (WordML).xml | Microsoft Word 2003 WordprocessingML 文檔。 |
|  | 測試檔案 (HTML).html | HTML 文檔。 |
|  | 測試檔案 (MHTML) 。mhtml | MHTML (網頁檔案) 文檔。 |
|  | 測試檔案 (Odt). odt | OpenDocument 文本 (OpenOffice Writer)。 |
|  | 測試檔案 (Ott).ott | OpenDocument 文檔範本。 |
|  | Test File (DocPreWord60).doc | Microsoft Word v2.0 文檔。 |
| 加密文件 | 測試檔案 (加密).doc | 加密的 Microsoft Word 95/6.0 或 Microsoft Word 97 – 2003 文檔。 |
|  | 測試檔案（加密）.docx | 加密的 Office Open XML WordprocessingML 文檔。 |
| 未支援的檔案格式 | 測試檔案 (JPG).jpg | JPEG 圖像檔案。 |

