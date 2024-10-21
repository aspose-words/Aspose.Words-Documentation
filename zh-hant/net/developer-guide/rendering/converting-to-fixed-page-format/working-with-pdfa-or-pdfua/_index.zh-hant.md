---
title: 「與 PDF/A 或 PDF/UA 一起工作」
second_title: Aspose.Words for .NET
articleTitle: 「與 PDF/A 或 PDF/UA 一起工作」
linktitle: 「與 PDF/A 或 PDF/UA 一起工作」
description: "透過 C# 將檔案轉換為 PDF/A-1、PDF/A-2、PDF/A-4 和 PDF/UA。 在將文件轉換為 PDF/A 文檔時有幾種問題，而 Aspose.Words 則可解決這些問題。"
type: docs
weight: 28
url: /zh-hant/net/working-with-pdfa-or-pdfua/
---

「PDF/A 和 PDF/UA 格式對文件內容有幾個要求，無法在自動將 Word 格式的檔案轉換成 PDF 時滿足。」 「這些要求應在轉換前於Word文件中驗證並更正，或在轉換後於PDF文件中驗證並更正，以生產一個符合PDF/A和PDF/UA的文件。」

「基本要求是指 PDF/A 或 PDF/UA 文檔的結構或字體，我們在接下來的部分會討論這些。」

{{% alert color="primary" %}}

「請注意，PDF/UA-1 的輸出也將符合 WCAG 2.0 和第 508 條。 」

{{% /alert %}}

## 文件結構需求

「目前的要求是需要 PDF/A-1a、PDF/A-2a、PDF/A-4 和 PDF/UA-1 格式。」

「在將資料轉換為各種 PDF 格式標準時，有一些細微的差異會影響 Aspose.Words 的操作方式。」 「如果你想要得到預期的結果，這些就必須被考慮進去。」

{{% alert color="primary" %}}

注意，PDF/A-4 沒有任何邏輯結構要求。 因為此原因，我們在此「文件結構要求」部分中不考慮 PDF/A-4 版本。

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>規格說明如下（展开以查看詳情）：</summary>
    <p></p>
    <p>不建議作者在未經過適當驗證的情況下，透過自動化過程來產生結構或語義資訊。</p>
    <p>ISO 19005-2，6.7.1</p>
</details>
{{% /alert %}}

以下子節段描述如何 Aspose.Words 在轉換到各種 PDF 格式標準和選項解決方案時所產生的細微差別。

### 結構類型

| 「PDF 標準符合度等級在 Aspose.Words」 | 存在要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF 文件是由標頭、段落、表格和其他要素組成的序列。 這些區塊形成了一種文件結構--堅固或弱。

「強弱結構都適用於 PDF/A。 Microsoft Word 文件由設計上具有弱結構，而 Aspose.Words 會分別以弱結構產生 PDF，也會根據源文件的段落層級來產生標題。」

对于具有弱结构的 PDF/UA-1 文档，必须额外要求标题编号按照顺序排列而没有间隙。

{{% alert color="secondary" %}}
<details>
    「<summary>本規格通知我們以下的事（展開以查看詳情）：</summary>」
    <p></p>
    <p>塊層次結構可能遵循兩種主要范式之一：</p>
    </ol>
      <li>強構造。 「分組元素能嵌套到所需的層級，以反映材料的組織結構，從文章、章節、小節等等。」 依據創用CC授權使用
      <li>弱結構化。 「這份文件相對地簡單，它只包含一些グループ化元素，所有標頭、段落、其他的BLSE都作為其直接 anak 的存在。」 在此情况下,材料的排列不反映在逻辑结构中;然而,它可能用有特定水平(H1-H6)的标题表示。
    </ol>
    <p></p>
    <p>ISO-32000-1， 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>对于 PDF/UA-1 文档，规范包含一个关于标题级别的附加说明（展开以查看详细信息）：</summary>
    <p></p>
    「<p>如果文件語義需要一個下述的標頭序列，這個序列應該按照嚴格的數值順序進行，而不會跳過中間的標頭等級。」 H1、H2、H3 可使用，但 H1 H3 不可。</p>
    <p>ISO-14289-1，7.4.2</p>
</details>
{{% /alert %}}

「若要確保正確的輸出，使用者必須確保來源文件內容有恰當的組織及段落中的劃分層次。」 否則，用戶應該驗證並修改輸出 PDF 文檔的結構。

{{% alert color="secondary" %}}
<details>
    <summary>在此塊中，您可以看到示例：如何在 Microsoft Word 中設定輪廓級別或檢查並更正輸出 PDF 文檔的結構（展開以查看細節）</summary>
    <p></p>
    「<p>在 Microsoft Word 預設的 "Heading X" 風格可以用來設定輪廓層級：</p>」
        <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>此外，您可以在「段落」視窗中檢查或更改分層水準：</p>
        <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>在Acrobat中，文件結構可以由"標籤"欄位檢查或改變：</p>
        <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### 將內容標記為工件

| PDF 標準符合度在 Aspose.Words | 存在要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

「目前，Aspose.Words 標記頁面標題和页脚、筆記分隔符、重複的表格標題細胞及裝飾圖像為 artifact。 「請注意，這個清單未必在未來更新。」

{{% alert color="secondary" %}}
<details>
    <summary>規格的說明告訴我們以下 (展開看細節)：</summary>
    <p></p>
    <p>文件中的圖形物件可分為兩類：</p>
    </ol>
      <li>一篇文件的真實內容包含物件，代表該檔案作者所引入的原始資料。</li>
      <li>工件是圖形物件，並非作者原本內容的一部分，而是書寫者透過分頁、排版或其他純機械過程所產生出來的。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1，14.8.2.2.1</p>
</details>
{{% /alert %}}

「如果資料包含應標記為文物的任何其他內容，或如果任何文物內容是真正的內容，顧客應該在輸出PDF中修正此問題。」

{{% alert color="secondary" %}}
<details>
    <summary>在本區塊中，您可以看到示例：如何在 Microsoft Word 中將形狀標記為裝飾或將形狀標記為輸出 PDF 文檔中的文物（展開以查看詳細信息）</summary>
    <p></p>
    <p>例如，在 Microsoft Word 中，形狀可以被標記為裝飾的，因此它們會在以工件的形式輸出到 PDF：</p>
        <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>您可以在輸出PDF中將形狀標記為工件：</p>
      <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>此外，您可以在輸出 PDF 中將檔案中的標題文字切換為真實內容：</p>
        <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### 自然語言規格

| 符合 PDF 標準的等級：Aspose.Words | 存在要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

「文字語言在Microsoft Word文件中指定。Aspose.Words輸出指定的語言至PDF輸出，並附加*Lang*屬性到被標記的內容序列或Span標籤上 – 它受[ExportLanguageToSpanTag](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/)屬性的控制。」 一般來說，當使用者透過 Microsoft Word 輸入文字時，不會有語言問題。 「但是如果文本由自動生成，語言可能會不準確。」

{{% alert color="secondary" %}}
<details>
    <summary>規格告訴我們以下內容（展開以查看細節）：</summary>
    <p></p>
    <p>檔案中的所有文字的預設自然語言應由文書目錄中的 Lang 欄位指定。</p>
    <p>檔案中所有與預設語言不同的文字內容，應以附在已標記的內容序列上的 `Lang` 屬性，或在結構元素字典中的語言（lang）欄位來表示...</p>
    <p>ISO-19005-2，6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>對於 PDF/UA-1 的附加說明，規格告訴我們以下這幾點 (展開以查看細節)：</summary>
    <p></p>
    <p>自然語言應被宣告…… تغییرات於自然語言應被宣告。</p>
    <p>ISO-14289-1，7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在這塊區塊中，你可以看到例子：如何確保語言指定正確（展開以查看細節）</summary>
    <p></p>
    <p>使用者應確保源Word文件中語言指定正確：</p>
        <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>或輸出 PDF 文檔：</p>
        <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### 圖案字幕

| 符合 PDF 標準的等級 Aspose.Words | 存在要求。 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

「Microsoft Word 文檔允許使用者添加圖像說明。」

{{% alert color="secondary" %}}
<details>
    <summary>此規格告訴我們以下内容（展開以查看細節）：</summary>
    <p></p>
    <p>圖示旁的字幕應標記為「Caption」標籤。</p>
    <p>ISO-14289-1，7.3</p>
</details>
{{% /alert %}}

「目前 Aspose.Words 不可以以字幕標籤輸出字幕，所以必須在輸出 PDF 中標記。」

{{% alert color="secondary" %}}
<details>
    <summary>在這個區塊，你可以看到示例：如何插入標題（展開以查看詳細資訊）</summary>
    <p></p>
    <p>在 Microsoft Word 中，標題可以透過上下文選單插入</p>
        <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>在Acrobat中，標題可以透過`Object`屬性對話框來加或變</p>
        <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### 替代說明

| 符合 PDF 標準的等級在 Aspose.Words 內。 | 存在要求的情況。 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word 文檔讓使用者可以將替代文字加入圖像、圖形和表格中。 Aspose.Words 輸出此類替代文字到输出PDF中。

{{% alert color="secondary" %}}
<details>
    「<summary>本規格通知我們以下（展開以查看細節）：</summary>」
    <p></p>
    <p>所有結構元素的內容，如果沒有自然預先設定的文本對應，例如圖像、公式等，應該使用結構元素字典中的 Alt 項目提供替代文本描述。</p>
    <p>NOTE：替代描述提供文字描述，以輔助正確理解非文字內容。</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在這個區塊中，你可以看到範例：如何確保所有元素都有替代文字（展開以查看詳細資訊）。</summary>
    <p></p>
    <p>使用者應確保所有元素在源 Word 文檔中都有替代文字：</p>
        <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>或者輸出PDF文件：</p>
        <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### 超連結之替代描述

| 「PDF 標準符合度在 Aspose.Words」 | 「要求的存在」 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

在之前一點的基礎上，Microsoft Word 文檔也允許使用者為超連結增加替代文字。Aspose.Words 會將此替代文字輸出到輸出 PDF。

"不幸的是，並非所有應用程式都允許您設定替代描述。 例如，「Adobe Acrobat」目前無法設定超連結的描述。 「不過在 Microsoft Word 中，您可以按照以下這個步驟來做：」

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

有時，在目錄中的自動生成的超連結中無法設定alt文字的問題會發生。 Microsoft Word GUI 無法解決這個問題。 Aspose.Words可以更新這些欄位，並自行生成連結。

按照範例碼來更新 `TOC` 欄位，使用 Aspose.Words Document Object Model (DOM)。

{{< gist "aspose-words-gists" "8b0ab362f95040ada1255a0473acefe2" "update-screen-tip.cs" >}}

### 表格標題

| PDF 標準符合度在 Aspose.Words 內 | 存在要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF/UA-1 文檔中的表格必須有標題 - 列、行或兩者兼備。 「PDF/A僅需要標準表格標記，且沒有額外限制。」 請注意 Aspose.Words 自動產生標準表格標記。

{{% alert color="secondary" %}}
<details>
    <summary>規格指示我們以下（展開以查看細節）：</summary>
    <p></p>
    <p>表格應包含標題……表格可以包含列標頭、行標頭或兩者皆含。</p>
    <p>ISO-14289-1，7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此區塊中，您可以看到範例：如何設定表格標題（展開以查看詳細說明）</summary>
    <p></p>
    <p>此表格標題可以在來源 Microsoft Word 文檔中設定：</p>
        <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>或是輸出PDF：</p>
        <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### 替換文字

| 符合 PDF 標準等級在 Aspose.Words 內 | 存在要求。 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>該仕様告訴我們以下的事 (展開看細節)：</summary>
    <p></p>
    <p>仕様告訴我們以下事項：</p>
    <p>非標準方式表達的所有文字結構元素（例如自定義字符或內嵌圖形），應該透過結構元素字典中的 `ActualText` 欄位提供替代文字</p>
    <p>ISO-19005-2，6.7.7</p>
</details>
{{% /alert %}}

「Microsoft Word 文檔不允許使用者設定替換文字。」 這需要在輸出 PDF 中驗證並修正：

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### 「縮寫與首字母縮寫」

| 在 PDF 標凖符合度層級「Aspose.Words」內 | 存在要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>規格告訴我們以下內容（展開以查看細節）：</summary>
    <p></p>
    <p>所有在文本內容中出現的縮略詞或缩写應放入具有 Span 標籤标记的內容序列，其中 E 屬性提供對縮略詞或縮寫的文字擴展...</p>
<p>「ISO-19005-2，6.7.8」</p>
</details>
{{% /alert %}}

Microsoft Word 文檔不容許使用者設定縮略字和縮約詞的擴張。 因此，這需要在輸出PDF中驗證並修正：

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## 文書名稱

| 「 PDF 標準符合度等級在 Aspose.Words」 | 存在要求 |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | 「{{< emoticons/tick >}}」<br />「PDF/UA-1 的文件應該有標題。」 |

{{% alert color="secondary" %}}
<details>
    「<summary>此規範告訴我們以下內容（展開以查看詳細資訊）：</summary>」
    <p></p>
    <p>該規格告訴我們以下內容：</p>
    「<p>該文件的目錄字典中的元資料流應包含一項dc：標題項目，其中dc為杜林核心元資料模式的推薦前綴……</p>」
    <p>ISO-14289-1，7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在本區块中，你可以看到例子：如何設定文件標題（展開以查看細節）。</summary>
    <p></p>
    <p>這份文件的標題可以在來源 Microsoft Word 文檔中設定：</p>
        <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>或者輸出PDF：</p>
        <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## 「字型要求」

| 在 Aspose.Words 內的 PDF 標準合規等級 | 存在性要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2u | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

「在使用 Aspose.Words 轉換成 PDF/A-1、PDF/A-2、PDF/A-4 或 PDF/UA-1 格式時，字體處理也有數種細微差別。」 「若你想避免可能出問題的輸出文件，就必須考慮他們。」

「下面的部分描述這些細微差別以及解決它們的選項。」

### 字體合法要求

| 符合 PDF 標準的等級在 Aspose.Words 內。 | 存在要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2u | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

「Aspose.Words 沒有檢查所用字體的法律限制 – 這一切取決於使用者。」 换句話說，使用者不應該透過 Aspose.Words 使用不適當的字體來進行 PDF 轉換。

{{% alert color="secondary" %}}
<details>
    <summary>規格告訴我們以下內容（展開以查看詳細資訊）：</summary>
    <p></p>
    <p>僅使用能合法嵌入檔案中，且具有無限制、普遍呈現功能的字型程式。</p>
    <p>「 ISO-19005-2，6.2.11.4.1；ISO-14289-1，7.21.4.1（兩份規格中都有相同的引號） 」</p>
</details>
{{% /alert %}}

### ".notdef Glyph"

| 「PDF標凖符合度等級在 Aspose.Words」 | 存在要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2u | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

「`.notdef` glyph 的使用是被禁止的。」 如果文件包含在所選字體中沒有且也無法透過字體遞換機制解決的字符，`.notdef` glyph 會出現。

{{% alert color="secondary" %}}
<details>
    <summary>說明文件告訴我們以下內容 (展開以查看細節)：</summary>
    <p></p>
    <p>符合規範的文件不應該在任何顯示運算子中包含對 .notdef glyph 的參考，無論文字渲染模式如何，也不論在任何內容流中。</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (兩份規格中都是這相同的引號)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此方塊中，你可以看到例子：如何移除或替換這些字元（展開以查看細節）</summary>
    <p></p>
    <p>用戶應從源 Word 文檔中刪除或替換這些字符：</p>
        <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>或是透過「編輯PDF」工具輸出PDF檔案：</p>
        <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### 私人使用區 (PUA)

| 在 Aspose.Words 內符合 PDF 標準的等級 | 存在要求 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2u | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

私人使用區 (PUA) 字元主要出現在 Windows 具象徵意義的書體，如 "Symbol"、"Wingdings" 和 "Webdings" 等。 Microsoft Word 格式不提供儲存實際文字的選項給字元。

{{% alert color="secondary" %}}
<details>
    <summary>規格告诉我们以下内容（展开以查看详情）：</summary>
    <p></p>
    <p>對於 Level A 相符性僅需，任何字符 ... 已經映射到 Unicode 隱私使用區域 (PUA) 中的代碼或代碼，實際文本項目 ... 必須存在此字符，或者由該字符所組成的特定字元序列。</p>
    <p>ISO-19005-2，6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI符號"是 Windows 可用作符号字型替代的 Unicode 字型 。

{{% alert color="secondary" %}}
<details>
    <summary>在此區塊中，你可以看到範例：使用者該如何解決有象徵字體的問題（展開以查看詳細內容）。</summary>
    <p></p>
    <p>在源 Word 文檔中用一個 유니코드字體替換象徵性字體：</p>
        <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>或是在输出PDF文件的"问题字符"处添加ActualText条目：</p>
        <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
