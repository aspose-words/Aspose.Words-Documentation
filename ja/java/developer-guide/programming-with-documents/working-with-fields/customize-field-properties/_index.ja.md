---
title: フィールドプロパティのカスタマイズ
second_title: Aspose.WordsのためのJava
articleTitle: フィールドプロパティのカスタマイズ
linktitle: フィールドプロパティのカスタマイズ
description: "Javaでフィールドプロパティをカスタマイズする方法を学習します。 差し込み項目の名前を変更するか、Javaに区切りノードがない項目の結果を取得します。"
type: docs
weight: 27
url: /ja/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsは、さまざまなフィールドプロパティとプログラムで対話する機能を提供します。 この記事では、フィールドプロパティの操作の基本原則を理解できるように、いくつかの例を見ていきます。 対応するクラスの各フィールドタイプのプロパティの完全なリストを表示できます。

## フィールドプロパティの更新

ユーザーがフィールドプロパティの値を変更する必要がある場合があります。 たとえば、`AUTHOR`フィールドの[AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName)プロパティを更新したり、`MERGEFIELD`フィールドの[FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName)プロパティを変更したりします。

Word文書の差し込み項目の名前を変更する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## フィールド表示結果

Aspose.Wordsは、フィールドセパレータノードを持たないフィールドのフィールドの結果を取得するプロパティを提供します。 MSWordは、フィールドの値をオンザフライで計算することによってドキュメントに表示しますが、ドキュメントモデルにはそのような値はありません。

次のコード例は、[DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult)プロパティの使用法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
