---
title: 在C#中工作列表
second_title: 「Aspose.Words for .NET」
articleTitle: 「與清單一起工作」
linktitle: 「與清單一起工作」
description: "「對 .NET 的 Aspose.Words 中的數字格式功能進行介紹。」"
type: docs
weight: 200
url: /zh-hant/net/working-with-lists/
---

「一份在 Microsoft Word 文檔中的清單是一組的段落格式設定屬性。」 清單可用於文檔中結構化、安排和突出文字。 清單是組織文件中數據的極佳方式，使其易於讀者吸收和理解要點。

每個清單可以有最高 9 層，而格式化屬性（如數字風格、起始值、縮排、標籤位置等）則分別針對各層別定義。

「在 Aspose.Words 中，以列表工作的方式，是由 [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) 命名空間所表現出來的。」 「不過，那個 [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) 物件總是屬於 [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/)。」

本文描述以程式方式使用清單的方法，使用 Aspose.Words。

## 「透過套用清單格式來建立清單」

「Aspose.Words 讓你透過應用列表格式來輕鬆建立清單。[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 提供 [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) 屬性，回傳 **ListFormat** 物件。」 此物件有几种方法可以開始和結束列表, 以及增/ 減縮排 。 「有兩種一般類型的清單在Microsoft Word：有號碼的和沒有號碼的。」

「- 要開始有標記的清單，請打電話給 [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)」
"-要開始有序列表，請打電話給 [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)"

「段落中的項目或數字和格式設定被添加到當前段落和所有由 **DocumentBuilder** 創建的所有後續段落，直到 [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) 被呼叫以停止項目式格式。」

在 Word 文檔中，清單可能包含多達九個層級。 「各層級的列型格式設定會指定使用的項目或數字、左邊的縮排、項目與文字之間的空格等。 「以下方法會改變清單層級並套用新的層級之格式特性：」

"- 將當前段落的下級增加一層，請呼叫 [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)"
「- 要將目前段落中的區塊級別降低一層，請調用 [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)」

「您也可以利用 [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) 屬性取得或設定段落中的層級。」

{{% alert color="primary" %}}

「清單的層級從 0 到 8 。」

{{% /alert %}}

以下範例顯示如何建立多層清單：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## 為清單層級指定格式

「清單層級的物件會自動建立當清單被建立。」 「利用 [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) 類別的屬性和方法來控制清單中個層級的格式化。」

## 每個分節的重新啟動清單

「您可以透過 [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) 屬性，為每個章節重新啟動清單。」 請注意，此選項僅支援 RTF、DOC 和 DOCX 文檔格式。 這個選項僅會寫入 DOCX，如果 OoxmlCompliance 高於 Ecma376。

以下範例顯示如何建立清單並為每個部分重新啟動：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
