---
title: Python でのフィールド プロパティのカスタマイズ
second_title: Python via .NET用Aspose.Words
articleTitle: フィールドプロパティのカスタマイズ
linktitle: フィールドプロパティのカスタマイズ
description: "Python でフィールド プロパティをカスタマイズする方法を学びます。差し込みフィールドの名前を変更するか、Python via .NET の区切りノードのないフィールドの結果を取得します。"
type: docs
weight: 27
url: /ja/python-net/customize-field-properties/
---

Aspose.Words は、さまざまなフィールド プロパティをプログラムで操作する機能を提供します。この記事では、フィールド プロパティの操作の基本原則を理解できるように、いくつかの例を見ていきます。 [フィールドモジュール](https://reference.aspose.com/words/python-net/aspose.words.fields/) 内の対応するクラスの各フィールド タイプのプロパティの完全なリストを確認できます。

## フィールドプロパティの更新

場合によっては、ユーザーはフィールド プロパティの値を変更する必要があります。たとえば、`AUTHOR` フィールドの [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) プロパティを更新するか、`MERGEFIELD` フィールドの [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) プロパティを変更します。

次のコード例は、Word 文書内の差し込みフィールドの名前を変更する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## フィールド表示結果

Aspose.Words は、フィールド区切りノードを持たないフィールドのフィールドの結果を取得するプロパティを提供します。これを「偽の結果」または表示結果と呼びます。 MS Word はフィールドの値をオンザフライで計算することによって文書内に表示しますが、文書モデルにはそのような値はありません。

次のコード例は、[display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) プロパティの使用法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}