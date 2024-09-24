---
title: 比較文件在C#
second_title: 「Aspose.Words for .NET」
articleTitle: 比較文件
linktitle: 比較文件
description: "以 C# 比較兩種任何支援的格式的文件並顯示內容更改。 您在比較時可以選用進階選項。"
type: docs
weight: 60
url: /zh-hant/net/compare-documents/
---

「比較文件」是一個過程，它會識別出兩份文件之間的改變，並把改變記錄下來作為修訂版。 這個過程會將任何兩份文件進行比較，包括某份特定文件的不同版本，然後顯示出這兩份文件之間的改變，這些變化會在第一份文件中呈現。

比對方法是透過字元或字詞層級進行比較達到。 若一個字中至少有一個字元的變化，在結果中該差異會顯示為整個字元的改變，而非單個字元的變化。 這個比較過程是在法律與金融產業中常見的任務。

「而不是手動地尋找文件之間的差異或他們不同的版本，你可以用 Aspose.Words來比較文件，並得到內容的變化：格式化、標題/页脚、表格等等。」

這篇文章說明如何比較文件以及如何指定進階比較屬性。

{{% alert color="primary" %}}

**試試線上。**

「你可以透過 [Document comparison online](https://products.aspose.app/words/comparison) 工具在線上比較兩份文件。」

「請注意，下文所述的比較方法在此工具中用以確保結果相同。」 「因此，您無論使用線上比較工具或在 Aspose.Words 中使用的比較方法都能得到相同的結果。」

{{% /alert %}}

## 限制與支援的檔案格式 {#limitations-and-supported-file-formats}

比較文件是非常複雜的功能。 有各種需要分析的內容結合部分，才能辨識出所有差異。 這複雜的原因是因為Aspose.Words的目標是要得到與Microsoft Word比較演算法相同的比較結果。

「兩個文件進行比較時的一般限制是，它們必須在呼叫比較方法前沒有任何修改，因為此限制存在於 Microsoft Word 中。」

{{% alert color="primary" %}}

請注意，您可以在 [supported file formats](/words/net/supported-document-formats/) 中比較任何兩份文件。 「基本上，你可以比較文件物件甚至可以在不使用特定格式的情況下從頭來創造這些物件。」

{{% /alert %}}

## 比較兩份文件 {#compare-two-documents}

「當你比較文件時，後者與前者之間的差異會出現在前者上的修訂中。」 「當您修改一篇文件時，每次編輯都將有自己的版本後面接上比較法。」

Aspose.Words讓您透過 [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) 方法，識別文件的差異 – 此功能類似 Microsoft Word 文件比較功能。 它能讓您檢視文件或文書版本，找到不同的地方與變更，包括格式修改，如字體變更、間隔變更、添加文字或段落。

透過比較，文件可確定為等於或不等于。 「等號」文件這個詞表示比較方法不能將更改表示為修訂。 這意味著文件文字與格式文字是一樣的。 「但是文件間可以有其他的差異。」 例如，Microsoft Word只支援格式版本為样式，而您無法表現样式插入/删除。 所以文件可以有不同的風格集，而**Compare**方法仍然產生零個修訂。

「接下來的程式碼範例示範了如何檢查兩份文件是否等於或不等於：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

以下程式碼範例示範了如何簡單地將 `Compare` 方法應用於兩份文件：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## 指定進階比較選項 {#specify-advanced-comparing-properties}

「當你想比較文件時，可以應用的 [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) 類別的特性有很多。」

例如，「 Aspose.Words」讓你可以在原始文件中比較某些類型的物件時忽略所做的變更。 「您可以為物件類型選擇適當的屬性，例如 [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/)、[IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/)、[IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/) 等，或設定為 "" true ""。」

「此外，Aspose.Words 提供 [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/) 屬性，可讓您指定是否要追蹤按字符或按字元進行的更改。」

「另一個常見的性質是，可以選擇哪一篇文件來顯示比較結果。」 「例如，在 Microsoft Word 中的『比較文件』對話方塊有『顯示更改於』這個選項；這也會影響比較結果。 Aspose.Words 提供 [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) 屬性來做到這一點。」

以下程式碼示例顯示如何設定進階比較屬性：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
