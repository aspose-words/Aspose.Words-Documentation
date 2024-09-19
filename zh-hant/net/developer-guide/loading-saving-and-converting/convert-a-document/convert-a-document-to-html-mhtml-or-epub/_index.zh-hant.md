---
title: 用 C# 將 dokumen 轉換為 HTML、MHTML 或 EPUB
second_title: 「Aspose.Words for .NET」
articleTitle: 將文件轉換為 HTML、MHTML 或 EPUB
linktitle: 將文件轉換為 HTML、MHTML 或 EPUB
description: "以 C# 將文件從幾乎任何格式轉換為 HTML 或 MHTML，以及使用 EPUB 格式。 您也可以為管理輸出文件而指定儲存選項。"
type: docs
weight: 20
url: /zh-hant/net/convert-a-document-to-html-mhtml-or-epub/
---

在 HTML 和 MHTML 流式格式的文件也是非常受歡迎的，并且可以在任何网络平台中使用。 「因此，將文件轉換為 HTML 和 MHTML 是 Aspose.Words 的一個重要功能。

電子出版格式，簡稱為「EPUB」，是一種以 HTML 為基礎的格式，常用於電子書的分發。 「此格式在 Aspose.Words 中完全支援，可用於輸出與大多數閱讀裝置相容的電子書。

## 「轉換文書」

「對於簡單的轉換為 HTML、MHTML 或 EPUB，會使用 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 方法之一。」 您可以將該文件儲存到檔案或串流中，並明確設定輸出文件的儲存格式，或從檔案的拡張名中定義。

「以下範例示範了如何以指定儲存格式來將 DOCX 轉換為 HTML：」

**.NET**

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "docx-to-html.cs" >}}

「若要將文件轉為 MHTML 或 EPUB，請分別使用 `SaveFormat.Mhtml` 或 `SaveFormat.Epub`。」

## 「將文件與來回資訊轉換」

「HTML格式不支持許多 Microsoft Word 功能，如果我們要恢復一 個文書檔盡可能接近原稿，我們需要在 HTML 檔案中儲存一些額外的資訊。」 這樣的資訊也稱為"來回資訊"。 「為此目的，Aspose.Words 在儲存 HTML、MHTML 或 EPUB 時，透過 [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) 屬性提供將來回資訊儲存的能力。」 「儲存來回資訊讓您可以在載入列出的格式的文件時，從 **Document** 物件中還原文書屬性，如標頭、附記、標題等。」

預設值為 HTML 的 **true** 和 MHTML、EPUB 的 **false**：

「- 在 **true** 時，來回資訊會以以下方式輸出：- aw - 對等 HTML 元素的 * CSS 屬性」
-當 **false**時，沒有任何往返資訊要輸出到生成的檔案中。

以下範例顯示如何在將文書從 DOCX 轉換為 HTML 時儲存來回資訊：

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-roundtrip-information.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載這個範例的模板檔案。」

{{% /alert %}}

## 在轉換為 HTML 時指定儲存選項

「Aspose.Words 能用預設或自訂儲存選項將 Word 文檔轉換為 HTML。」 自訂存檔選項的幾個例子如下：

### 指定儲存資源的資料夾"。

「使用 Aspose.Words ，我們可以指定一個實體文件夹，當資料以 HTML 格式轉換時，所有資源（如圖像、字體及外部 CSS）會儲存在這個檔案中。」 預設的話，這個就是空字串。

指定 [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) 屬性是設定所有資源應該寫入的資料夾最簡單的方式。 「我們可以利用個別屬性，例如 [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) 這個屬性會將字體儲存到指定的資料夾中，以及 [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) 這個屬性會將圖像儲存到指定的資料夹中。」 「當指定相對於路徑時，**FontsFolder** 和 **ImagesFolder** 是指向程式碼組裝檔所在目錄的位置，「 **ResourceFolder**」和「 [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/)」是指向 HTML 文檔存放位置的輸出目錄。

在這個例子中，**ResourceFolder** 指定相對於路徑。 此路徑是指儲存 HTML 文檔的輸出目錄。 「**ResourceFolderAlias**」屬性的值被用來創造所有資源的URL。

接下來的程式碼範例說明了如何使用這些屬性：

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-resources.cs" >}}

透過 [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) 屬性，我們也可以指定用於構建所有資源在 HTML 文檔中的 URI 的目錄名稱。 這是一個指定所有資源檔案的 URI 該如何生成的最簡單方式。 「透過[ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/)和[FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/)屬性分別可指定圖像和字型相同的資訊。」

「不過，CSS 沒有任何獨特的屬性。」 「**FontsFolder**、**FontsFolderAlias**、**ImagesFolder**、**ImagesFolderAlias** 和 **CssStyleSheetFileName** 的行為並非改變。」 請注意，**CssStyleSheetFileName** 屬性用於指定目錄名稱和檔案名稱。

- **ResourceFolder** 的優先權較低於透過 **FontsFolder**、**ImagesFolder** 和 **CssStyleSheetFileName** 指定的目錄。 如果指定在 **ResourceFolder** 的文件夹不存在，它會自動被創建。
- **ResourceFolderAlias** 的優先權較低於 **FontsFolderAlias** 和 **ImagesFolderAlias**。 「如果 **ResourceFolderAlias** 沒有提供，則會使用 **ResourceFolder** 屬性的值來建立資源 URI。」 「如果 **ResourceFolderAlias** 被設定為」點 "，資源 URI 只會包含檔案名稱而不指定路徑。」

### 「輸出Base64編碼字體資源」

Aspose.Words 提供能否指定字體資源是否應該被嵌入在 HTML 中並使用 Base64 編碼的能力。 「要做到這點，請使用[ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/)屬性–這是[ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/)屬性的延伸。」 預設值為 **false**，而字體則寫入獨立的檔案中。 「不過，若此選項設定為 **true**，字體會以 Base64 編碼方式嵌入在文件的 CSS 中。」 「**ExportFontsAsBase64** 属性仅影响 HTML 格式，不影响 EPUB 和 MHTML。」

以下範例示範如何將Base64編碼的字体輸出的到HTML：

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "export-fonts-as-base64.cs" >}}

## 在轉換到 EPUB 時指定儲存選項

「Aspose.Words 允許您使用預設或自訂儲存選項將 Word 文檔轉換為 EPUB 格式。」 「你可以指定數個選項，通過傳送一個 [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) 的實例到 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) 方法。」

以下範例顯示如何以指定某些自訂儲存選項來將Word檔轉換為EPUB：

{{< gist "aspose-words-gists" "c0df00d37081f41a7683339fd7ef66c1" "split-document-by-headings.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) 下載此範例的範本檔案。

{{% /alert %}}

## 另見

- [How to export round-trip information when saving to HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
