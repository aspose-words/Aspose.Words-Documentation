---
title: フィールドプロパティをカスタマイズ
second_title: Aspose.Words お問い合わせ Java
articleTitle: フィールドプロパティをカスタマイズ
linktitle: フィールドプロパティをカスタマイズ
description: "フィールドプロパティをカスタマイズする方法を学ぶ Javaお問い合わせ フィールドをマージするか、セパレータノードなしでフィールドに結果を得る Javaお問い合わせ"
type: docs
weight: 27
url: /ja/java/customize-field-properties/
---

Aspose.Words さまざまなフィールドプロパティとプログラム的に相互作用する機能を提供します。 この記事では、フィールドプロパティで作業する基本原則を理解するために、いくつかの例を見てみましょう。 各フィールドタイプのプロパティの一覧を該当するクラスで確認できます。

## フィールドプロパティの更新

場合によっては、フィールドプロパティの値を変更する必要があります。 例えば、更新 [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) のプロパティ `AUTHOR` フィールドまたは変更 [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) のプロパティ `MERGEFIELD` フィールド。

以下のコードの例では、Word ドキュメントでフィールドをマージする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## フィールド表示結果

Aspose.Words フィールドセパレータノードを持たないフィールドのフィールドの結果を取得するプロパティを提供します。 この "fake result" を呼び出したり、結果を表示します。MS Word は、フィールドの値をフライで計算することでドキュメントに表示しますが、ドキュメントモデルにはそのような値はありません。

以下のコード例では、使用方法を示します。 [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) プロパティ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
