---
title: 在C#中找到並替換
second_title:  Aspose.Words for .NET
articleTitle: 查找與取代
linktitle: 查找與取代
type: docs
description: "透過C#在文件中找到字串或正規表達式模式，並用您想要的文字替換它。"
weight: 100
url: /zh-hant/net/find-and-replace/
---

您可以用鍵盤和滑鼠在文書中輕鬆移動，但如果您要翻閱大量頁面，那麼要找到長篇文件中的特定文字將花費不少時間。 當你想要取代在文件中使用的某些字元或詞語時，這將需要更長的時間。 找到並取代功能讓您可以在文件中找到一組字符，並將之替換為另一組字符。

 Aspose.Words 讓您可以在您的文件中尋找特定文字或正規表達式模式，且不需安裝並使用其他應用程式（例如 Microsoft Word）即可將它替換成替代字串。 這會加速許多打字與格式化任務，或許可以省下你數小時的工作時間。

本文說明如何透過元字符的支援來應用字串替換與正規表達式。

## 如何尋找和取代 {#ways-to-find-and-replace}

Aspose.Words 透過下面的方法，提供使用查找與取代操作的兩種方式：

1. *簡單字串替換* – 要找到並替換特定字串，您需要指定要替換的字串（字母數字字元）來根據所有出現的發生與另一指定替換字串相符。 兩個字串都不能包含任何符號。 考慮到字串比較可能會敏感於大小寫，或者你可能對拼字感到不確定，或有好幾個類似的拼法。
2. *正規表達式* – 指定正規表達式以尋找準確的字符串匹配並根據您的正規表達式替換它們。 請注意，一個字元定義為僅由字母或數字組成的。 如果只匹配全詞的替換執行，且輸入字串包含符號，則不會找到任何短語。

此外，您可以在查找與替換動作中指定斷點時使用特殊元字符來指定簡單字串替換與正規表示式。

Aspose.Words 在 [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/) 命名空間中呈現找尋與取代功能。 您可以在使用 [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) 類別的尋找與替換過程時，使用許多選項。

### 透過簡單的文字替換來找出並取代文字Find and Replace Text Using Simple String Replacement {#find-and-replace-text-using-simple-string-replacement}

您可以使用 [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) 中的其中一項方法來找到或取代特定字串，並回傳所做的取代數。 這情況下，你可以指定要替換的串、要替換的所有串、是否需要區分大小寫，以及只有獨立詞會受到影響。

以下程式碼示例顯示如何找到字串 " _CustomerName_" 並用 " *James Bond*" 替換之：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

您可以在應用簡單字串替換之前，注意到該文件之間的差異：

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

並且在簡單的字串替換後：

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### 透過正規表達式來尋找並替換文字 {#find-and-replace-text-using-regular-expressions}

正規表達式（regex）是一種描述某段文字序列的模式。 如果你想要將一個字的雙重出現替換成單一次出現。 接著你可以將以下正規表達式應用於指定雙字模式：`([a-zA-Z]+) \1`。

使用其他 [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) 方法來検索並取代特定的字元組合，設定 `Regex` 參數為正規表達式模式，以找到匹配的結果。

接下來範例會示範如何將符合正規表達式模式的文字替換為指定的替換文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

您可以在不使用正規表達式進行字串替換之前，觀察文件之間的差異：

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

在用正規表達式進行字串替換後，

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### 透過元字符查找與替換字串 {#find-and-replace-text-using-metacharacters}

如果特定的文字或句子是由多個段落、分節或頁面組成的，你可以在搜索字串或替代字串中使用元字符。 有些元字符包括 **&p**為段落換行、 **&b**為章節換行、 **&m**為頁面換行，以及 **&l**為行換行。

{{% alert color="primary" %}}

請注意，元字符 **&&** 等于 **&**。 例如，如果你需要找到不是段落分線的 **&p** 的文字，那你可以使用 **&&p**。

{{% /alert %}}

接下來的程式碼範例示範了如何以段落和頁面斷詞來取代文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## 在文件的標題/页脚中尋找和替換文字 {#find-and-replace-string-in-header-or-footer-of-a-document}

您可以在 Microsoft Word 文檔的標頭/页脚區段中透過 [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) 類別來尋找並替換文字。

接下來的程式碼範例示範如何在您的文件中替換標頭區段中的文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

您可發現在应用标头字符串替换前后的文档有差異：

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

而經過標頭字串替換後：

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

您的文件中腳邊欄文本替換的程式碼範例與前一個標頭程式碼範例非常相像。 只需把以下兩行替換就好了。

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

以以下方式：

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

在適用腳部字串替換之前，您可以觀察文件的差異：

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

在应用页脚字符串替换后：

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## 忽略文字 během 尋找與替換 {#ignore-text-during-find-and-replace}

在應用查找與替換運算時，你可以忽略某些文字段落。 所以，某些文字部分可以被排除在搜索之外，而尋找與替換功能僅能適用於剩下的部分。

Aspose.Words為忽略文字如 [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/)、 [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/)、 [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/)、 [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) 和 [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/) 等提供許多查找與取代選項。

接下來的程式碼範例顯示了如何忽略 delete revisions 內的文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## 自訂找取與替換操作 {#customize-find-and-replace-operation}

Aspose.Words 提供許多不同的 [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) 來尋找和取代文字，例如使用具特定格式的 [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) 和 [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) 屬性、在替代模式中使用 [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) 屬性等。

接下來的程式碼範例示範了如何在您的文件中突出特定字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words讓您能在取代操作時，使用[IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/)介面來建立與呼叫自訂方法。 您可能有某些需要自訂尋找與替換動作的使用案例，例如用正規表達式指定的文字用 HTML 標籤替換，因此基本上您將透過插入 HTML 來進行替換。

若你需要以 HTML 標籤替換一個字串，請將 **IReplacingCallback** 介面套用到自訂搜尋與取代操作上，讓匹配開始於文件中與您的匹配節點同處的字串。 讓我們提供一些使用 **IReplacingCallback** 的例子。

以下範例顯示如何用 HTML 取代特定文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

以下範例顯示如何以綠色突出正數以及紅色突出負數：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

以下範例顯示如何在每行前加入行號：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
