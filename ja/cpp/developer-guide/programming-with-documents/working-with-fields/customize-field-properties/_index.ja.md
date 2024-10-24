---
title: C++でのフィールドプロパティのカスタマイズ
second_title: C++の場合Aspose.Words
articleTitle: フィールドプロパティのカスタマイズ
linktitle: フィールドプロパティのカスタマイズ
description: "C++でフィールドプロパティをカスタマイズする方法について説明します。 C++では、差し込み項目の名前を変更するか、区切りノードなしの項目の結果を取得します。"
type: docs
weight: 27
url: /ja/cpp/customize-field-properties/
---

Aspose.Wordsは、さまざまなフィールドプロパティとプログラムで対話する機能を提供します。 この記事では、フィールドプロパティの操作の基本原則を理解できるように、いくつかの例を見ていきます。 [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields)の対応するクラスの各フィールドタイプのプロパティの完全なリストを見ることができます。

## フィールドプロパティの更新

ユーザーがフィールドプロパティの値を変更する必要がある場合があります。 たとえば、`AUTHOR`フィールドの[AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/)プロパティを更新したり、`MERGEFIELD`フィールドの[FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/)プロパティを変更したりします。

Word文書の差し込み項目の名前を変更する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## フィールド表示結果

Aspose.Wordsは、フィールドセパレータノードを持たないフィールドのフィールドの結果を取得するプロパティを提供します。 Microsoft Wordはフィールドの値をオンザフライで計算することによってドキュメントに表示しますが、ドキュメントモデルにはそのような値はありません。

次のコード例は、[DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/)プロパティの使用法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}