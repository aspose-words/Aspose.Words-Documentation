---
title: 在 C# 中自訂資料欄位屬性
second_title: 「Aspose.Words for .NET」
articleTitle: 「自訂欄位屬性」
linktitle: 「自訂欄位屬性」
description: "「學會如何在 C# 中自訂欄位屬性。」 「重命名合併欄位或取得 .NET 中無分號節點的欄位結果。」"
type: docs
weight: 27
url: /zh-hant/net/customize-field-properties/
---

「Aspose.Words」提供程式化與各種欄位屬性互動的能力。 「在本文中，我們將看一些例子，讓您了解在與欄位屬性工作的基本原則。」 你可以在 [Fields namespace](https://reference.aspose.com/words/net/aspose.words.fields/) 中的對應類別中找到每個欄位型的完整屬性清單。

## 「場域屬性更新」

「有時用戶需要更改欄位屬性的值。」 例如，更新 [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) 屬性的 `AUTHOR` 欄位或更改 [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) 屬性的 `MERGEFIELD` 欄位。

以下範例示範了如何在Word文件中重命名結合欄位：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## 顯示結果

「Aspose.Words 提供一個屬性來取得沒有使用欄位分界節點的欄位結果。」 我們稱此為「假結果」或「顯示結果」，MS Word 在文件中透過計算欄位值來顯示它，但該文件模型中並沒有這樣的值。

接下來的程式碼範例示範了 [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) 屬性的使用方式：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
