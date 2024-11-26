---
title: C# でのフィールド プロパティのカスタマイズ
second_title: .NET用Aspose.Words
articleTitle: フィールドプロパティのカスタマイズ
linktitle: フィールドプロパティのカスタマイズ
description: "C# でフィールド プロパティをカスタマイズする方法を学びます。差し込みフィールドの名前を変更するか、.NET の区切りノードのないフィールドの結果を取得します。"
type: docs
weight: 27
url: /ja/net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words は、さまざまなフィールド プロパティをプログラムで操作する機能を提供します。この記事では、フィールド プロパティの操作の基本原則を理解できるように、いくつかの例を見ていきます。 [フィールドの名前空間](https://reference.aspose.com/words/net/aspose.words.fields/) 内の対応するクラスの各フィールド タイプのプロパティの完全なリストを確認できます。

## フィールドプロパティの更新

場合によっては、ユーザーはフィールド プロパティの値を変更する必要があります。たとえば、`AUTHOR` フィールドの [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) プロパティを更新するか、`MERGEFIELD` フィールドの [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) プロパティを変更します。

次のコード例は、Word 文書内の差し込みフィールドの名前を変更する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## フィールド表示結果

Aspose.Words は、フィールド区切りノードを持たないフィールドのフィールドの結果を取得するプロパティを提供します。これを「偽の結果」または表示結果と呼びます。 MS Word はフィールドの値をオンザフライで計算することによって文書内に表示しますが、文書モデルにはそのような値はありません。

次のコード例は、[DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) プロパティの使用法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
