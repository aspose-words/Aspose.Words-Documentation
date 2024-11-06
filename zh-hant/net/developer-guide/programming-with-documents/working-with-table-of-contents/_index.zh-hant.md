---
title: 在C#中與目錄工作
second_title: Aspose.Words for .NET
articleTitle: 與目錄一起工作
linktitle: 與目錄一起工作
description: "詳細資料中的目錄欄位。 如何透過C#來建立和修改`TOC`欄位。 插入 `TOC` C#。"
type: docs
weight: 170
url: /zh-hant/net/working-with-table-of-contents/
---

通常你會與包含目錄的文件（TOC）工作。 使用 Aspose.Words，您可以插入自己的目錄或完全重建文件中現有的目錄，只需幾行程式碼即可。 這篇文章說明如何使用目錄欄位，並示範：

"- 如何插入一個全新的 `TOC`"
"- 在該文件中更新新或現有的目錄。"
- 指定切換以控制目錄的格式化與整體結構。
"- 如何修改目錄的樣式與外观。"
"- 如何從文件中移除整個 `TOC` 欄位以及所有項目？"

## 以程式方式插入目錄

您可以透過呼叫 [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/) 方法，在當前位置插入 `TOC` (目錄) 欄位。

在 Word 文檔中，索引可以用許多方式建立起來，並可以採用多種格式。 在方法中傳入的欄位控制了您的文件中表格是如何被構建和顯示的。

在 `TOC` 中使用的預設開關，為 Microsoft Word 的 **\o 1-3 \h \z \u**。 這些開關的說明以及支援的開關清單可以在這篇文章的後半段找到。 您可以要么使用該說明書取得正確的開關，或如果您已經有包含您想要的類似 `TOC` 的文件，您可以顯示欄位代碼 (*ALT+F9*) 並直接從欄位中複製開關。

接下來這個程式碼範例會示範如何將目錄欄位插入到文件中：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

接下來這個程式碼範例示範了如何在文件中插入目錄（TOC），並使用標題風格作為目錄条目。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

不使用範例中使用的方法，當打開輸出文件時，你會發現 `TOC` 欄位，但沒有任何可見內容。 這是因為該 `TOC` 欄位已插入，但尚未填充直到其在文件中更新。 關於這些細節的更多資訊，請參閱下一節。

{{% /alert %}}

## 更新目錄表

Aspose.Words可讓您只需幾行程式碼就可完全更新一個 `TOC`。 這是可以用來填寫剛剛插入的 `TOC` 或更新已經存在的 `TOC` 的，在文件發生變更之後。 必須使用以下兩種方法來更新文件中的 `TOC` 欄位：

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

請注意這些更新方法必須按照順序來呼叫。 如果倒置目錄表，目錄表將會填充，但頁碼不會顯示。 任何数量的不同目錄都可以更新。 這些方法會自動更新在文件中找到的所有目錄。

以下程式碼示例顯示如何透過 Invoking Field Update 來完全重建文件中的 `TOC` 欄位：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

第一個對 **UpdateFields** 的呼叫會建立 `TOC`，所有文字記錄都已填入，`TOC` 看起來幾乎完整了。 唯一的缺失是頁碼，目前顯示為?。 第二個通話到 **UpdatePageLayout**將建立文件的布局， 這需要進行，以收集每個記錄的頁碼。 從這個呼叫中計算的正確頁碼會插入到目錄中。

## 使用切換來控制內容表的動作

像其他任何領域一樣，`TOC`欄位可以接受在欄位程式碼中定義的開關，這些開關控制目錄表是如何構建的。 某些開關用於控制哪些輸入被包含以及在何個層級，而其他開關則用於控制TOC的外觀。 切換可以結合在一起，以允許複雜的目錄產生。

![working-with-table-of-contents-aspose-words-net](working-with-table-of-contents-1.png)


預設這些開關在插入預設 `TOC` 文檔中都是被包含進來的。 A `TOC`無開關將包含內建標頭樣式（如果\O開關已設定）的內容。 可用的 `TOC` 切換，由 Aspose.Words 支援下列列舉並詳述其用途。 它們可以根據類型被分成不同的部分。 第一區段中的開關定義了要包含在 `TOC` 的內容，而第二區段的開關控制了目錄的出現。 如果開關未在此列出，則目前不受支持。所有開關將會在未來版本中支援。 我們在每次發行中都會增加更多支援。

### 入口標記開關

| 切換 | 描述 |
| :- | :- |
| **Heading Styles** <br>(*\O 開關)* | <p>這個開關定義了 `TOC` 應該建立在內建的標題風格上。 在 Microsoft Word 中，這些被定義為標題 1 – 標題 9。 在 Aspose.Words 這些風格是由相應的 StyleIdentifier 列舉表示。 這個列舉代表一個不依賴語言的風格識別符，例如 `StyleIdentifier.Heading1` 代表頭 1 式的風格。 透過此方式，可以從 दस्तावेज़ की स्टाइल संग्रह से स्टाइल के फॉर्मेटिंग और प्रॉपर्टीज़ प्राप्त करना। 相應的樣式類別可透過使用類型 StyleIdentifier 的索引屬性從 `Document.Styles` 集合中擷取。 <p>![working-with-table-of-contents-styles](working-with-table-of-contents-2.png)</p> <p>任何以這些格式樣式格式化的內容都包含在目錄中。</p> 標題的等級將定義目錄中該項目的對應階層級別。 例如，以 Heading 1 格式的段落將在 `TOC` 中被視為第一階層，而以 Heading 2 格式的段落將在階層中列為下一個階層等等。</p> |
| **Outline Levels** <br>*(\U switch)* | <p>每個段落可以在段落選項中定義一個大綱等級。 <p>![working-with-table-of-contents-paragraph](working-with-table-of-contents-3.png)</p> <p>這個設定決定了這段落在文件階層中應該如何處理。</p> 這是用來快速構造文件布局的常見做法。 這個階層可以在 Microsoft Word 中的『大綱』檢視中查看。 類似於標題風格，除了正文層級之外，可以有 1 – 9 個目錄層級。 大綱第 1 – 9 階層會在 `TOC` 中的相應階層中出現 <br>任何以段落風格設定或直接在段落本身上設定的大綱階層都會包含在目錄中。 在 Aspose.Words 中，段落節的層級是由 Paragraph 節點的 `ParagraphFormat.OutlineLevel` 屬性表示的。 段落樣式的縮排層級由 `Style.ParagraphFormat` 屬性來表示。</p> <p>{{% alert color="primary" %}}</p> <p>請注意，內建標題樣式如 Heading 1 的縮排層級必須在样式設定中指定。</p> <p>{{% /alert %}}</p> |
| **Custom Styles** <br>*(\T switch)* | <p>這個切換將允許在收集用於 TOC 的項目時使用自定義風格。 這常用於與 \O 開關結合使用，以包含自訂風格以及內建標題風格在目錄中。 <br>開關的參數應該被置於引號內。 許多客製風格可以包含，對於每個風格，名字應該指定後面接著逗號和表示風格在 `TOC` 中出現的等級。 其他樣式也是用逗號分隔。 <br>例如： <p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p> <p>將會使用以CustomHeading1格式呈現的內容作為第1級內容於`TOC`，而以CustomHeading2格式呈現的內容為第2級。</p></p> |
| **Use TC Fields** <br>*(\F 和 \L 開關)* | <p>舊版本的 {6} 中，唯一能建構 {3} 的方法就是使用 TC 欄位。 這些欄位是在文字中隱藏插入，就算顯示欄位標記也是如此。 這些包括應該在輸入欄中顯示的文字，而 {3} 就是從他們中組裝出來的。 這個功能現在不太常被使用，但是可能在某些情況下還是有用。若是在 {3} 中加入不分嵌的項目，可以使其在文件中顯示。 <br>這些欄位插入後，即使欄位代碼顯示，也會隱藏起來。 他們無法在不顯示隱藏內容的情況下被看到。 要看到這些欄位，必須先勾選顯示段落格式。 <p>{0}</p>這些字段可以像其它字段一樣插入到任何位置的文件中, 並且以 {4} 的點數來表示 。 <br/>{3} 中的 \ F 切換是指定 TC 字段應用作項目 。 無任何額外識別符的開關表示任何在文件中的TC欄位都會被包含。 任何額外參數，通常只是一個字母，會指定只將具有匹配 \f 開關的 TC 欄位包含在目錄中。 例如*<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p><p>只包含 TC 欄位, 例如 </p><p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p><p>{3} 字段也有相關開關, \ L 開關指定只包含指定範圍內的 TC 字段 。 </p><p>{1}</p><p>{5} 字段本身也可以有{2} 開關 。</p> 這些是：</p> <p>- *\F – 如上所述。*</p> <p>- *\L – 定義此TC欄位會在 {3} 的哪個層級出現。 使用此切換器的 { 3} 只在指定範圍內包含此 TC 字段 。 *<p>-嗯 此 {3} 項目的頁號沒有顯示 。 如何插入 TC 字段的樣本代碼可以在下一节找到 。</p></p> |

### 外貌相關的切換

| 切換 | 描述 |
| :- | :- |
| **Omit Page Numbers** <br>*(\N 切換)* | <p>這個切換是用來隱藏某些等級的目錄的頁碼。 例如,你可以定義 <p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p><p>3 和 4 等級項目的頁號會與領袖點一起隱藏( 如果有的話) 。</p> 要指定只一個層級，仍需使用範圍，例如1-1只會排除第一層的頁碼。 <br>如果不提供任何層級範圍，則會省略目錄中所有層級的頁碼。 這在將文件輸出成 HTML 或類似格式時很有用。 這是因為以 HTML 為基礎的格式沒有頁面概念，所以不需要任何頁面編號。 <p></p>"![todo:image_alt_text](working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks** <br>*(\H 開關)* | <p>這個切換指定有 `TOC` 個項目被插入為超連結。 在 Microsoft Word 中查看文件時，這些項目將仍會顯示為 `TOC` 中的一般文字，但它們是超連結的，因此可以用來瀏覽文件中原始項目的位置，方法是使用 Microsoft Word 中的 *Ctrl + 左鍵點擊*。 當這個切換被包含在內時，這些連結也被保存於其他格式中。 例如在以 HTML為基礎的格式，包括 EPUB 和渲染格式，如 PDF，以及 XPS，它們將被輸出為有效的連結。 <br>若不設定此選項，所有這些輸出中的`TOC`將以純文字形式輸出，且不會顯示此動作。若在MS Word中打開一篇文章，文章中的標籤也將無法以這個方式點選，但頁碼仍可用來導向原記事。 <p>![working-with-table-of-contents-titles](working-with-table-of-contents-7.png)</p></p> |
| **Set Separator Character** <br>*(\P Switch)* | <p>這個切換讓標題和頁碼分開的內容在目錄中能輕鬆改變。 應該在這個開關後指定要使用的分隔符號，並在引號中包裝。 <br>與Office文件所記載的相反，只有一個字符可以用來代替五個。 這適用於 MS Word 和 Aspose.Words。 <br>使用此切換不建議，因為它不允許控制其用於分開目錄和頁碼。 相反，建議編輯適當的 `TOC` 樣式，例如 `StyleIdentifier.TOC1` 等，然後再編輯有權存取特定字型元件等之領導樣式。 如何做到這一點的進一步細節，可以在文章後面找到。 <p>![working-with-table-of-contents-toc](working-with-table-of-contents-8.png)</p></p> |
| **Preserve Tab Entries** <br>*（\W switch）* | <p>使用此切換會指定任何具有制表字符的条目，例如以行尾的制表符結束的標題，都會保留為正確的制表字符，並將其填入目錄。 這意味著標籤功能將在 `TOC` 中存在，並可用來格式化輸入。 例如，某些条目可能使用制表停止和制表字符来均匀地間隔文字。 只要對應的 `TOC` 層定義了等價的排版標記，然後生成的 `TOC` 條目將具有類似的間隔。 <br><br>在相同的狀況下，如果此開關未定義，則標籤字符會轉換為白空間等於非功能性標籤。 結果輸出不會如預期般出現。 <p>![working-with-table-of-contents-aspose](working-with-table-of-contents-9.png)</p></p> |
| **Preserve New Line Entries** <br>*（\X開關）* | <p>與上方開關相似，此開關指定跨越多個行頭的標題（使用新行字符而不是分段）將在生成的目錄中被保留。 例如，若要將標題跨多個行顯示，請使用新行字元（Ctrl + Enter 或 `ControlChar.LineBreak`）來分開不同行內容。 這開關指定後，文件 `TOC` 中的這個項目會保留這些新行字符，如下所示。 <br><br>在這個情況下，如果切換沒有被定義，那個新行文字會轉換成一個單白空格。 <p>![working-with-table-of-contents-aspose-words](working-with-table-of-contents-10.png)</p></p> |

## 插入TC欄位

您可以在 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 的当前位置插入新的 TC 字段，方法是调用 [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) 方法并指定字段名为"TC"，以及任何所需的标志。

接下來的程式碼範例示範了如何透過 **DocumentBuilder** 在文件中插入 `TC` 欄位：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

常常會指定特定行來標記 `TOC`，並用 `TC` 欄位來標記。在 Microsoft Word 中完成這個動作的簡單方式是，選取文本並按下 *ALT+SHIFT+O*。 這會自動創建一個 `TC` 欄位，使用選中的文字。 透過程式碼就可以完成相同的技術。 以下代碼將找到與輸入文本匹配的文本，在相同位置插入一個 `TC` 字段。 這個程式碼是基於文章中使用的相同技巧。

接下來範例示範如何在文檔中找到並插入`TC`字段：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## 修改目錄表

在 `TOC` 中記錄的格式，不會使用被標記的記錄的原始風格，而是每個等級都是用同等 `TOC` 的風格來格式化。 例如，第一階層在`TOC`中是以**TOC1**的方式格式化的，第二階層是以**TOC2**的方式格式化的，以此類推。 這意味著要改變 `TOC` 的樣式，必須修改這些風格。 在 Aspose.Words 中，這些風格由不可靠的 `StyleIdentifier.TOC1` 透過 `StyleIdentifier.TOC9` 來表示，且可以透過這些識別子從 [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) 集合中取得。

一旦取得文件的合適風格，則此風格之格式化方式可被修改。 任何對這些風格的修改將會自動反映在文件中的目錄上。

以下範例程式碼會改變第一層 `TOC` 樣式中使用的格式化屬性。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

請注意任何直接格式化段落（定義於段落本身而不是在樣式中）的標記將被包含在 `TOC` 中，並會复制到目錄中的項目。 例如，如果標頭1的樣式被用來標記內容為 `TOC`，而此樣式的格式有加粗，而段落本身也直接使用斜體來格式化。 結果的 `TOC` 条目不會有斜體，因為這部分是風格格式的一部分，但會有斜體，因為這部分是直接格式化於段落上。

您也可以控制用於各錄入項目與頁碼之間之分界符的格式。 預設此為用點線連到頁碼，並以換行字符和右邊的制表符對齊在接近右邊的邊緣。

使用從特定 `TOC` 層級獲取的 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 類別，你也可以修改這些在文件中顯示的方式。 要改變這個樣子出現的方式，首先 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) 必須被調用來取得該樣式的段落格式。 透過此，可透過調用 [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/)來取得分頁停止並修改適當的分頁停止。 使用這個相同技術，標籤本身可以移動或完全移除。

以下範例示範如何在`TOC`段落中修改右邊的選項卡位置：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## 從文件中移除此目錄

目錄可以在文件中移除，只要將所有在{2}與{3}欄位中{FieldEnd}节点之間的節點都移除即可。 下面列出的程式碼示範了這個。 移除 {3} 欄位比正常的欄位簡單，因為我們不需要追蹤嵌套的欄位。 我們檢查 {0} 節點是類型 {1}，這意味著我們已經遇到了目錄的尾端。 此技術可以在這個情況下被使用，而無需擔心任何嵌套字段，因為我們可以假設，任何經過妥善格式化的文件將不會有任何完全嵌套的 {3} 字段，而另一個 {3} 字段內。

首先，每個 `TOC` 的 [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) 個節點被收集並儲存。 指定的 `TOC` 會被枚舉，以便所有在字段內的節點都被造訪並儲存。 這些節點接著從文件中移除。

以下範例說明如何從文件中移除指定的 `TOC`：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## 提取目錄表

如果您要從任何Word文件中提取目錄，以下程式碼樣本可被使用：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
