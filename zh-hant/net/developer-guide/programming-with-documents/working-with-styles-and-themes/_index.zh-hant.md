---
title: 在C#中工作於樣式與主題
second_title:  Aspose.Words for .NET
articleTitle: 與風格和主題一起工作
linktitle: 與風格和主題一起工作
description: " gelişmiş Microsoft Word biçimlendirme özellikleri, C# kullanarak stiller ve temalarla çalışmak."
type: docs
weight: 110
url: /zh-hant/net/working-with-styles-and-themes/
---

[StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/)類別用於管理內建設定和使用者定義的風格。

## 存取風格

透過 [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) 屬性，您可以取得文件中定義的風格集合。 這個集合儲存了文件中內建和使用者定義的樣式。 特定樣式可通過名稱/別名、样式标识符或索引來取得。 接下來的範例程式碼示範如何取得在文件中定義的風格集合的存取權。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## 如何根據風格提取內容

在簡單的層面上，根據 Word 文檔中的風格來擷取內容，可以有助於辨識、列舉和計數使用特定風格格式化的段落與文字連續字串。 例如，您可能需要在文件中識別特定類別的内容，如例子、標題、參考、關鍵字、圖形名稱和案例研究。

若將此舉往更進一步，它也可以用來利用文件的結構，這是由其使用的樣式定義而來的，來重新利用文件來產生另一個的輸出，例如 HTML。 這實際上是阿波索（Aspose）的文件是如何建立出來的，把 Aspose.Words 放在考驗中。 使用 Aspose.Words 建成的工具會從標頭層級的某些主題中抽取源 Word 文檔。 透過 Aspose.Words 產生的 XML 檔案會用來建立你在左邊可以看到的導航樹。 然後，Aspose.Words將每個主題轉換成 HTML。

在 Word 文檔中檢索以特定格式排版之文字的解決方案，通常是以 Aspose.Words 作為經濟且簡單的做法。

### 解決方案

要說明 Aspose.Words 如何輕鬆地根據風格取得內容，我們來看一個例子。 在這個例子中，我們將從樣本的 Microsoft Word 文檔中擷取以特定段落格式和字符格式文稿的文字。概括而言，這將涉及：# 使用 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 類別打開一個 Word 文檔。# 取得文檔中所有段落及所有字串的集合。# 只選擇所需的特定段落和字串。 具體來說，我們將從此 Word 文檔中擷取以 "Heading 1"段落格式和 "Intense Emphasis"文字格式的文字。

![working-with-styles-and-themes-aspose-words-net](working-with-styles-and-themes-1.png)


在這個樣本文件中，以頭1段落格式的文字是插入標籤、快速風格和主題，而以強烈強調文字格式的文字是幾個藍色的斜體和粗體的文字，如畫廊和整體外觀。

### The Code

在 Aspose.Words 文檔物件模型中，以样式为基础的查询实现相当简单，因为它只使用已经到位的工具。为这个解决方案实施了两个类方法：# **ParagraphsByStyleName** – 此方法获取文档中具有特定样式名称的段落数组；# **RunsByStyleName** – 此方法获取文档中具有特定样式名称的行数组。这两个方法非常相似，唯一的区别是节点类型和样式信息在段落和行节点中的表示。以下是 ParagraphsByStyleName 的实现：以下示例找到所有以指定样式格式化的段落。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

這実装也使用 `Document.GetChildNodes` 方法的 `Document` 類別，它會返回所有指定類型的節點集合，這裡是所有的段落。

請注意，**Document.GetChildNodes** 方法的第二個參數設定為 true。 這會使 **Document.GetChildNodes** 方法從所有子節點遞歸地選擇，而不是僅僅選擇直接的子節點。

{{% /alert %}}

此外，值得注意的是段落集合不會產生即時額外負擔，因為當你存取其中項目時，段落才會載入到這個集合中。 接著，你只需要使用標準的 foreach 運算子來走過這個集合，並把符合指定樣式的段落加上去 paragraphsWithStyle 陣列。 `Paragraph` 這样式名稱可以在 [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) 屬性的 [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) 物件中找到。 RunsByStyleName 的實作方式幾乎相同，雖然我們當然使用 [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) 來取得執行節點。 一個 [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) 物件的 [Run](https://reference.aspose.com/words/net/aspose.words/run/) 屬性用於在 **Run** 節點中存取風格資訊。 下面示例找到所有以指定格式風格格式化的跑步。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


當兩個查詢都實作的時候，你只需要傳遞一個文件物件，並指定你想要檢索的內容的風格名稱：下面示例的查詢和顯示結果。 您可以從 [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx) 下載本例的範本檔案。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### 最終結果

當一切完成後，運行範例會顯示以下輸出：

![styles-and-themes-aspose-words-net](working-with-styles-and-themes-2.png)


你可以看到，這是一個非常簡單的示例，顯示了樣本 Word 文檔中收集到的段落和行數。

## 從範本複製所有樣式

當你想要從一篇文件中複製所有風格到另一篇文件時，有時會發生這種情況。 您可以使用 `Document.CopyStylesFromTemplate` 方法將指定模板中的格式複製到文件中。 當样式从模板复制到文档时，与文档中具有相同名称的样式重定义为匹配模板中的样式描述。 從範本中複製獨特的樣式，並將其貼到文件中。 該文件中獨特的風格仍完整不變。 以下範例顯示如何將風格從一篇文件複製到另一篇。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## 如何操縱主題屬性

我們在Aspose.Words中增加基本的API來存取文件主題屬性。 目前，這個 API 包含以下公共物件：

- 主題
"- 字體主題"
- 主題顏色

以下是如何取得主題屬性：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

而這就是您可以設定主題屬性的方法：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
