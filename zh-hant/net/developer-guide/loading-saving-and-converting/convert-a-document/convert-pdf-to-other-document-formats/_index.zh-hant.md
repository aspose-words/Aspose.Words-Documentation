---
title: 在C#中將PDF轉換為其他文書格式
second_title: Aspose.Words for .NET
articleTitle: 將 PDF 檔案轉換成其他文件格式
linktitle: 將 PDF 檔案轉換成其他文件格式
type: docs
description: "以C#將PDF檔案轉換為Word格式，如DOCX、DOC、图像格式，如JPG或PNG，或任何其他由Aspose.Words支援的格式。"
keywords: convert pdf to other formats c#
weight: 45
url: /zh-hant/net/convert-pdf-to-other-document-formats/
---

 Aspose.Words 可以載入甚至如此複雜的格式，如 PDF。 這開啟了新機會，可以將PDF轉換為Word或其他格式，讓使用者在解決許多應用問題時領先一步。

## 先決條件

* 已新增 Aspose.Words 套件 ***OR*** 的引用，給 Aspose.Words.Pdf2Word.dll。
* 至少 .NET Framework 4.6.1 或 .NET Standard 2.0。 像 .NET Core 2.x 或 3.0、 .NET 5 和 Xamarin 等目標也支援，透過與 .NET Standard 的相容性。

## 將 PDF 轉為各種格式 {#convert-pdf-to-other-formats}

最受歡迎的 PDF 轉換是將之轉換為 Microsoft Word 格式，例如 DOCX、DOC 等，以及圖像格式，例如 JPG 或 PNG。 因此，將一個檔案從一種格式轉換到另一种格式時，會以熟悉的方式進行。

以下範例顯示如何將 PDF 文檔轉換為 DOCX：

{{< gist "aspose-words-gists" "a0d52b62c1643faa76a465a41537edfc" "pdf-to-docx.cs" >}}

## 在匯入PDF時指定負載選項 {#specify-load-options-when-importing-pdf}

Aspose.Words為您提供 [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) 類別，讓您可以更精確地控制如何載入 PDF 文檔。

大多數屬性都從已存在於 `LoadOptions` 類別中的屬性中 thừa襲或過載。 除了他們之外，其他一些屬性也指定了 PDF 格式。 例如，您可以將 [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) 和 [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) 屬性用於定義從 PDF 文檔中載入的頁面範圍，以及 [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) 屬性用於控制在載入 PDF 時是否跳過圖像。 另一個支援的參數是 [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/) ，必須為 [password-protected documents](/words/net/protect-documents-and-parts-of-documents/) 提供。

## 支援的 PDF 內容：{#supported-pdf-content}

PDF2Word插件目前支援以下數據類型：

"*文字段落"
* 圖像
* 表格
* 清單
* 標頭與尾部
* 脚注
"*頁碼"
* 右到左的文字（有部分限制）
* 可搜索的PDF (前圖像會移除以取而代之背景文字)

## 未來功能 {#planned-features}

有些功能仍處於早期開發階段或包含在開發路線圖中：

* 表格
* 可搜索與不可搜索的 PDF
* 進度報告
* 多列文字
"*數學公式"
*更多自動欄位（除了`PAGE`和NUMPAGES）

## PDF 讀取錯誤

在PDF文件轉換時，可能發生以下之一例外：

| 例外 | 描述 |
| -------------------------------- | ------------------------------------------------------------ |
| `FileLoadException` | 因為某些原因，PDF 檔案無法處理。<br />{{% alert color="primary" %}}你可以使用 [technical support](/words/net/technical-support/). {{% /alert %}} 來將問題提交給開發團隊進行詳細調查。 |
| `DrmProtectedFileException` | PDF檔案受到Adobe DRM的保護，無法用Pdf2Word來解碼。 |
| `PasswordProtectedFileException` | 為受密碼保護的 PDF 提供正確的密碼。 |

## 見也

* [Nuget reference to Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

