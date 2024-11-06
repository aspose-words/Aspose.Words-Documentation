---
title:  Replace Fields C#
second_title: Aspose.Words For .NET
articleTitle: 以靜態文字取代欄位
linktitle: 以靜態文字取代欄位
description: "學會如何在C#中用文字取代欄位。 透過 .NET API 來用靜態資料取代欄位。"
type: docs
weight: 37
url: /zh-hant/net/replace-fields/
---

替換欄位通常是在您想要將文件儲存在靜態副本時必須的。 例如，當以附件在電子郵件中傳送。 將例如 `DATE` 或 `TIME` 的欄位轉換為靜態文字，會讓文件顯示與发送時間相同的日期。 在有些情況下，你可能需要從你的文件中移除條件性`IF`欄位並用最新的文字結果替換它。 例如，將 `IF` 欄位結果轉換為靜態文字，所以它會不再隨著文檔中欄位的更新而動態地改變其值。

下方圖示說明了 `IF` 欄位儲存在文件中的方式。

*文本被特殊的字段节点 – [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) 和 [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend) 包围
"* [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/)節點將欄位中的文字分開為欄位代碼和欄位結果"
* 欄位代碼定義了該欄位的一般行為，而欄位結果會保留使用 Microsoft Word 或 Aspose.Words 更新此欄位時最新的結果。
"*欄位結果是當在文件中查看時，儲存在欄位並顯示於該文件中的值"

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

結構也可以在下面的階層式形式中使用 [demo project *“DocumentExplorer”*](https://github.com/aspose-words/Aspose.Words-for-.NET) *.* 來看到。

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## 不可用文字取代的欄位

將字段替換成靜態文本，在某些標頭或腳注中不會正常工作。

例如，如果試圖將標頭或页腳中的 `PAGE` 欄位轉換為靜態文字，那麼所有頁面上都會顯示相同的值。 這是因為標頭和尾端是跨多個頁面重複的，而當它們仍然是欄位，他們是特別處理的，以便在每個頁面都能顯示正確的结果。

不過，在標頭中，`PAGE` 這個欄位翻譯得很好，成為靜態文字。 這個文本段會如最後頁般評估，這會導致任何 `PAGE` 欄位顯示最後頁過所有頁面。

以下程式碼範例示範了如何以最近一次結果替換該欄位：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UnlinkFields.cs" >}}

## 在特定文件部分轉換某些字段類型

由於 **ConvertFieldsToStaticText** 方法接受兩個參數── [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) 屬性和 [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) 數值，因此可以將任何複合節點傳遞給此方法。 這使得在文件的某特定部分可以將欄位轉換為靜態文字。

例如，你可以傳送一個 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 物件並將指定類型之字段從整個文件轉換為靜態文字，或是傳送一個 [Body](https://reference.aspose.com/words/net/aspose.words/body/) 物件（即某個節點）僅將該節點中找到的字段轉換。

{{% alert color="primary" %}}

當通過一個塊級節點，例如一個 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 時，請注意在有些情況下，字段可以跨越多個段落。 如果發生這種情況，建議傳遞複合元素的父元素，以避免這個問題。

{{% /alert %}}

[FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/)這個枚舉傳入給**ConvertFieldsToStaticText**的方法，會指定哪種類型的欄位該轉換成靜態文字。 文檔中發現的任何其他字段類型都會保持不變。

接下來的程式碼範例展示如何選擇特定類型的欄位- *targetFieldType*-在特定的節點- *compositeNode*-然後將其轉換為靜態文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

以下範例展示了如何將文檔中的所有 `IF` 欄位轉換為靜態文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Linked%20fields.docx) 下載此範例的樣本檔案。

{{% /alert %}}

以下範例顯示如何將文件的本文中所有 `PAGE` 欄位轉換為靜態文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInBody-ConvertFieldsInBody.cs" >}}

接下來的程式碼範例示範了如何將最後一段所有 `IF` 欄位轉換為靜態文字：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.cs" >}}
