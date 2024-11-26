---
title: 常见問題解答
second_title: Aspose.Words for .NET
articleTitle: 常見問題集– Aspose.Words for .NET
linktitle: 常見問題集– Aspose.Words for .NET
articleTitle: 常见問題解答
linktitle: 常见問題解答
type: docs
description: " Aspose.Words for .NET 回答了最常問的問題。 將此頁面記住，以快速解決您在一般問題或特定主題上的問題。"
weight: 75
url: /zh-hant/net/faq/
timestamp: 2024-11-18-12-56-02
---

本頁面包含回答最常問的問題。 請學習當前頁面，或許這樣你就能很快地解決問題。

如果你沒有找到你問題的答案，可以在支持論壇上詢問。 如需了解如何正確報告問題或問題，請參閱 [Technical Support](/words/net/technical-support/) 頁。

{{% alert color="primary" %}}

經常問的問題按主題分组，以便您的方便。

{{% /alert %}}

## 通用的

**問：Aspose.Words是什麼？**

Aspose.Words for .NET是一個讓您的應用程式能夠進行廣泛的文件處理工作類別庫。 用 Aspose.Words for .NET，您可以無需第三方應用程式即可生成、修改、轉換、呈現與列印文件。

詳細資料可在我們的文件中找到。

------

**Q：Aspose.Words 不需要第三方應用程式是什麼意思？**

Aspose.Words for .NET 不需要安裝任何第三方應用程式或額外軟體套件才能正常工作。 只要按照 [Installation](/words/net/installation/) 文章所述的方式下載並安裝 Aspose.Words，就能開啟使用。

------

**Q：Aspose.Words支援哪些平台？**

Aspose.Words for .NET涵蓋了大多數熱門的開發環境和部署平台。 It 的 API 可用於開發适用于多种操作系统的应用程序，如 Windows、Linux 和 Mac OS，以及各種平台。

詳細說明請參閱[Product Overview](/words/net/product-overview/)頁和[Platforms and Interoperability](/words/net/platforms-and-interoperability/)節。

------

**Q：Aspose.Words支援哪些文書格式？**

Aspose.Words for .NET支援大多數流行的文件格式，例如 DOC、DOCX、HTML、 Markdown、PDF、XML 等。

你可以在 [Supported Document Formats](/words/net/supported-document-formats/) 頁面上看到支援的格式完整清單。

------

**問：我怎麼能免費試用 Aspose.Words？**

您可以用兩種方式來做 – 使用試用版或30天臨時授權。 試用版與購買版相同，它提供了完整的產品功能，但在載入或儲存文件時會在文件上加上評鑑標記，且最大文件尺寸只到幾百個段落。 試用版授權讓您在 30 天內不受試用限制，測試 Aspose.Words。

查看 [Licensing and Subscription](/words/net/licensing/) 頁面以獲得更多資訊。

{{% alert color="primary" %}}

您也可以透過[Aspose.Words free online Apps](https://products.aspose.app/words)試用一些最受欢迎的 Aspose.Words 功能。

{{% /alert %}}

------

**Q：我怎麼能買到 Aspose.Words？**

要購買 Aspose.Words 版權，你需要前往 [Purchase](https://purchase.aspose.com/buy) 頁面，選擇 "Aspose.Words" 產品以及適合你的版權類型。 接著將授權加入您的購物車並按照購物車指示操作。

購買後，如第 [Purchased License](/words/net/licensing/#purchased-license) 節所述，請申請授權。

如何安裝 Aspose.Words 的細節，可以在 [Installation](/words/net/installation/) 頁面中讀取。

------

**Q：我怎麼才能得到支援？**

請使用免費技術支援討論區。 關於如何正確地報告問題和聯絡論壇前需要做什麼，詳細說明請見 [Technical Support](/words/net/technical-support/)。

## 呈现文件

{{% alert color="primary" %}}

您可以在 [Rendering](/words/net/rendering/) 文檔中找到有關渲染的詳細資訊。

{{% /alert %}}

**為何輸出文件的排版和字體與原始文件不同？**

字體可能無法使用，或字體格式支援 Microsoft Word 但不支援 Aspose.Words。Aspose.Words 會執行 [font substitution](/words/net/manipulating-and-substitution-truetype-fonts/)。

若要檢查字體是否缺失：

* 在 Aspose.Words 中使用字型替換警告 (詳見 [Manipulate and Substitute TrueType Fonts](/words/net/manipulating-and-substitution-truetype-fonts/) 文章的如何辨別字型已被替換部分)。
* 在 Microsoft Word 開啟字體替換對話方塊 (檔案 → 選項 → 高級 → 字體替換)。

------

**Q：我應該把 ASP.NET 個應用程式的字體儲存在哪裡？**

在 `APS.NET` 中，沒有對中信賴的系統字體目錄存取。 使用者必須將字體儲存在自己的文件夹中。

------

**Q：為什麼在非-Windows平台上，字型降階（font fallback）不動作，而 Unicode 文字被替換成 .notdef glyph？**

我們常常會看到 `.notdef` glyph 的替換，而不是某些的 Unicode 字符。 這通常是個盒子或一個問題（glyph）。

這是因為，Microsoft Office 預設選取了備用設定，且 Microsoft Office 字型不可用。 用戶必須安裝 Microsoft 辦公室字型或改變備用設定。

------

**Q：為何某種複雜的文字，例如泰文或希伯來文，可能會因某些原因（例如錯誤的位置標記或不準確的連接字符）而顯示不正確？**

某些複雜的書體需要進階排版功能來處理，才能正確地顯示。 進階排版在 Aspose.Words 預設禁用。 使用者必須在 [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) 中啟用進階字型。

------

**Q：我使用的字體是否需要授權文件？**

對，你有。 因此，當複製字體時，要記住大部分字體都是版權保護的。 事先找到字型授權，並驗證它們是否可以自由轉讓到另一台機器。

## 嵌套 Mail Merge

{{% alert color="primary" %}}

您可以在 [Mail Merge and Reporting](/words/net/mail-merge-and-reporting/) 文檔部分找到有關 Mail Merge 的詳細資訊。

{{% /alert %}}

**為什麼生成的輸出中沒有結合的欄位？**

合併欄位的原始名稱不會被從資料來源獲得的必要資料取代，然後：

* 檢查資料是否正確載入到表格中：設定 [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) 並包含所有必要的主要鍵和關聯。
* 確認合併字段是否以正確的方式命名。 利用 [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) 方法取得所有合適的合併欄位名稱，並確保您模板中合併欄位的名稱與資料源中相符。

------

**Q:為什麼嵌套結合的輸出會從子表中省略母表第一筆資料，但卻顯示母表最後一筆資料的所有項目，即使這些項目並非與它相連結？**

這是因為模板中併合區域沒有正確形成，這可以讓所有嵌套的 Mail Merge 區域完全停止顯示。 [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)開頭標籤和[EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/)結尾標籤必須匹配且在同一個欄或細胞中。 例如，如果您在表格的一單元格中開始嵌套合併區域，您必須在相同的行中結束合併區域，就像第一單元格一樣。

------

**Q：為什麼從父表中每個記錄都顯示出子表中的每個項目，即使這些項目並不實際與它連結？**

這是因為母表和子表之間的關係沒有設定或錯誤設定。 "有必要做："

* 確保您的**DataSet**中的資料完整性，並使用**DataRelation**物件來表示相關資料表格之間的親子關係。
* 在文章 [Nested Mail Merge with Regions](/words/net/nested-mail-merge-with-regions/) 的如何在具有區域的嵌套 Mail Merge 中設定資料關係部分檢查。

------

**Q:為什麼會出現『System.ArgumentException:此限制無法啟用，因為所有值都沒有對應的父值』的例外狀況，當執行嵌套的 Mail Merge 時？**

這發生在不是每個父紀錄都有子紀錄所以您的資料源不符合下列條件：*每個資料列在父表中應該與子表中的資料列一對一關係，根據主要鍵和外鍵*。

在建立 **DataRelation** 時，禁用外鍵約束。

## 附加或插入一個文件

{{% alert color="primary" %}}

您可以在 [Programming with Documents](/words/net/programming-with-documents/) 文檔部分找到有關用文件編程的更詳盡資訊。

{{% /alert %}}

**Q: 為什麼附加到文件中的內容不會出現在同一頁上？**

附加結果會出現在不同的頁面上，因為在附加文件的設定中有 [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) 的差異。 為接合的文件部分設定相同的 **PageSetup** 設定。

## 將文書轉換

{{% alert color="primary" %}}

您可以在 [Convert a Document](/words/net/convert-a-document/) 的 dokumentacja 部分找到有關轉換文件的更多詳細資訊。

{{% /alert %}}

**Q: 如何將PDF轉換為Word？**

這非常容易，只需將文件載入模型並儲存到任何支援的格式中即可。

以下程式碼範例說明如何將PDF檔案轉換成DOC檔的過程：

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**問：如何將 DOCX 轉換成 PDF？**

它非常容易，只需將文件載入模型中並儲存到任何支援的格式。

以下範例展示了將 DOCX 檔轉換為 PDF 的過程。

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## 操作文件

{{% alert color="primary" %}}

您可以在 [Programming with Documents](/words/net/programming-with-documents/) 文檔部分找到更多有關編程的詳盡資訊。

{{% /alert %}}

**Q：如何將文書分成頁碼？**

Aspose.Words 可讓您逐頁分割多頁文件。

以下範例顯示如何將一篇文件分割並保存每個頁面為獨立的文件：

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**Q：如何打開加密的** **文件?**

您可以嘗試在沒有密碼的情況下打開加密文件，這應該會導致例外狀況。

以下範例示範了如何透過密碼開啟加密的文件：

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**問：要如何列印一篇文件？**

只是兩行程式碼。

以下範例顯示如何以兩種方式列印文件：

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**Q：如何編輯 PDF 文檔？**

只需將 PDF 加載到 Aspose.Words 文檔模型，並進行更改。

以下範例顯示了如何編輯文件：

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**問：要在 Docker 中怎麼使用 Aspose.Words？**

為了詳細的答案，請參閱文章 [How to Run Aspose.Words in Docker](/words/net/how-to-run-aspose-words-in-docker/)。
