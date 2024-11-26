---
title: C# 中的文字文件工作
second_title: Aspose.Words for .NET
articleTitle: 與文字文件合作
linktitle: 與文字文件合作
description: "進階 txt 文檔處理、清單、從右向左、標題/页脚，使用 C#。"
type: docs
weight: 430
url: /zh-hant/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

在本文中，我們將學習透過 Aspose.Words 可以為處理文字文件提供哪些選項。 請注意，這不是所有可用選項的完整清單，而只是如何使用某些選項的示例。

## 增加雙向標記

您可以在以纯文本格式导出时使用 [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) 属性来指定在每个 BiDi 运行之前是否添加双向标记。 Aspose.Words 在文本中每一次双向运行之前插入 Unicode 字符 'RIGHT-TO-LEFT MARK' (U+200F)。 此選項对应於 Microsoft Word 檔案轉換對話方塊中的新增雙向標記選項，當您以原始文字格式輸出時。 請注意，它只會出現在 Microsoft Word 中，如果有任何阿拉伯或希伯來編輯語言被加入。

接下來這個程式碼範例示範了如何使用 **AddBidiMarks** 屬性。 此屬性的預設值為 *false*：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## 在載入 TXT 檔案時要辨認列表項目

Aspose.Words可以在其 문서 객체 모델中將文字文件中的項目列表作為清單數字或纯文本輸入。 [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/)" 屬性可指定當從純文本格式導入文件時如何識別有序清單項目：

*如果此選項設定為 *true*，空格也會用作清單數字分界符：阿拉伯數字格式的清單識別演算法（1.、1.1.2.）會使用空格和點。符號。

* 如果此選項設定為 *false*，則清單識別演算法會検出清單段落，當清單號碼以點、右括號或方塊符號結束時（例如 "•"、"* "、"-" 或 "o"）。

接下來的程式碼範例示範如何使用此屬性。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## 在載入 TXT 檔案時處理領先和尾隨空格

您可以在載入 TXT 檔案時控制處理領先與落後的空格。 前導空格可以修剪、保留或轉換成引號，而後導空格可以修剪或保留。

以下範例顯示如何在輸入 TXT 檔案時削去前導與尾隨空白：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## 檢測文檔文字方向

Aspose.Words 在 [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) 類別中提供 [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) 屬性，用於在文書中檢測文字方向 (RTL/LTR)。 這個屬性設定或取得從 [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/) 列出的文字方向。 預設值是留給 *right* 。

接下來這段範例會說明如何在進口 TXT 檔案時，檢測文字方向：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## 在輸出文本中輸出標頭和腳部

如果您想要在輸出文件中顯示標題與尾部，可以使用 [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/) 屬性。 此屬性指定標頭和腳欄是如何輸出到纯文本格式的。

以下程式碼示例顯示如何將標頭和腳線輸出至文字格式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## 輸出清單缩進在輸出 TXT

 Aspose.Words 導入了可指定如何在以純文字格式輸出時縮排清單等級的 [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) 類別。 當你在與[TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/)一起工作時，[ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/)屬性是用來指定要用於縮排列表層級的字符，而數值則指定在每個列表層級應使用的縮排字符數。

預設字元屬性值為 '\0'，表示無縮排。 對於縮排屬性，預設值為 0，表示沒有縮排。

### 使用Tab字符

接下來的程式碼範例展示了如何透過分號來輸出清單層級：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### 使用空間字符

接下來的程式碼範例示範了如何以空格文字輸出清單等級：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### 使用預設的缩進

以下範例示範了如何以預設的縮排來輸出清單等級：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
