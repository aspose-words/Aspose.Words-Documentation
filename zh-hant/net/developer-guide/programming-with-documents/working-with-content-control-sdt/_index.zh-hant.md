---
title: 與內容控制 SDT 一起工作
second_title: Aspose.Words for .NET
articleTitle: 與內容控制 SDT 一起工作
linktitle: 與內容控制 SDT 一起工作
description: "進階文件內容管理，如何使用C#創造和操作內容控制項目（結構化文件標籤）？"
type: docs
weight: 390
url: /zh-hant/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

在 Microsoft Word 中，您可以透過從模板開始並加入內容控制來建立一個表單，包括複選框、文字方塊、日期選取器和下拉式清單。 在 Aspose.Words 中，從 Aspose.Words 加載的任何文件所帶來的結構化文檔標籤或內容控制會被進口為結構化文檔標籤節點。 結構化文件標籤 (SDT 或內容控制) 允許在文件中嵌入客戶定義的語義、其行為及外觀。

StructuredDocumentTag 可在文件中以下位置出現：

"- 塊級 – 在段落與表中，作為 Body、HeaderFooter、Comment、Footnote 或 Shape 節點的子節點"
"- 行層級 – 在一個表格中的行，作為一個表節點的子女"
- Cell-level – 在一張表格中的一列中的細胞，作為一列節點的子節點
"- 在線式 – 在內聯內容中，作為段落的一個孩子"
- 在另一個StructuredDocumentTag內嵌入

## 在文件中插入內容控制項

此版本 Aspose.Words 中，可以建立以下類型的 SDT 或內容控制：

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

接下來的程式碼範例說明如何建立類型為選項框的內容控制。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

接下來這個程式碼範例示範了如何建立一種稱為rich text box的內容控制項：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

以下範例展示如何建立類別選單的內容控制項：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## 如何更新內容控制

本節會說明如何以程式方式更新 SDT 或內容控制值。

以下範例說明如何設定選項框的目前狀態：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

接下來是一個示例程式碼，說明如何修改文字方框、彈出式清單和圖片的內容控制項：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## 將內容控制綁定到自訂的 XML 部分

您可以在 Word 文檔中將內容控制項目與 XML 資料（*自訂 XML 部分*）綁定。

接下來這段程式碼範例示範了如何將內容控制項綁定到自訂的 XML 分節：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## 結構化文件標籤範圍的 XML Mapping

您可以在『當前文件』中的自訂 XML 部分，使用 **StructuredDocumentTagRangeStart.XmlMapping屬性** 取得此結構化標籤範圍與 XML 資料之間的對應關係。 不過，[SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/)方法可用於將結構化文件標籤範圍映射到XML資料。

以下範例顯示如何設定 XML 對應：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## 清除內容控制

您可以透過顯示占位標記來清除內容控制項的內容。 **StructuredDocumentTag.Clear**"方法會清除此結構化文件標籤的內容，如果有定義則會顯示空位子。 然而，如果有版本控制，就不可能清除內容控制。 如果一個內容控制沒有占位符，在 Microsoft Word 裡（除了重複的節點、重複節點項目、群組、核對框及引用）會插入五個空格。 如果內容控制映射到自訂的 XML，則參考的 XML 節點清除。

以下範例展示了如何清除內容控件的內容：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## 變更內容控制背景與邊框顏色

`StructuredDocumentTag.Color`屬性允許您取得或設定內容控制的顏色。 顏色在兩個情況下影響內容控制：

1. MS Word會在滑鼠移動到內容控制項目時，強調內容控制項目的背景。 這有助於識別內容控制。 高亮顯示的顏色比 *Color* 稍微淡一點。 例如，當*Color*是紅色的時候，MS Word會把背景以粉紅色亮出。
2. 當您與內容控制（編輯、選取等）互動時，內容控制的邊框會以 *Color* 的顏色。

以下程式碼範例示範如何變更內容控制項目的顏色：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## 如何設定樣式以格式化輸入到內容控制中的文字？

如果您要設定內容控制之样式，您可以使用 `StructuredDocumentTag.Style` 或 `StructuredDocumentTag.StyleName` 属性。 當您在輸出文件中的內容控制中輸入文本時，輸入的文本將具有引號風格。

{{% alert color="primary" %}}

請注意，只有連結和字型風格才能應用在內容控制上。 當样式存在但尚未連結或適用文字時，會發生 InvalidOperationException ("無法將此樣式套用至 SDT")。

{{% /alert %}}

接下來的範例顯示如何設定內容控制元素的樣式：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## 與重複節奏內容控制一起工作

重複節內容控制允許在其中包含內容中重複。 使用 Aspose.Words，結構化文件標籤節和重複節項目類型可以創建，為了這目的，[SdtType enumeration type](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) 提供 **RepeatingSectionItem** 屬性。

接下來的程式碼範例示範了如何將重複節點內容控制項綁定到一個表格上。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
