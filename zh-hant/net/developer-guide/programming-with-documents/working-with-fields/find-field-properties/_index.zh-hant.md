---
title: 在 C# 中如何找到字段的屬性？
second_title: Aspose.Words for .NET
articleTitle: 查找欄位屬性
linktitle: 查找欄位屬性
description: "如何在C#中找到一些字段屬性，如字段代碼和字段結果。"
type: docs
weight: 25
url: /zh-hant/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

透過 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) 插入的欄位會返回 [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) 物件。 這是提供快速查找一些欄位屬性的有用方法的 фасад類別。

以下代碼示例說明如何找到字段代碼和字段結果：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

如果您只是尋找文書中的合併欄位名稱，則可以採用內建 [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) 方法。

下面的程式碼範例說明如何取得一份文件中所有合併欄位之名稱：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
