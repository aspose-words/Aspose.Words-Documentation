---
title: フィールドのプロパティを見つける方法
second_title: Aspose.WordsのためのJava
articleTitle: フィールドプロパティの検索
linktitle: フィールドプロパティの検索
description: "フィールドコードやフィールド結果のようないくつかのフィールドプロパティをJavaで見つけるにはどうすればよいですか"
type: docs
weight: 25
url: /ja/java/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)を使用して挿入されるフィールド。[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)は[Field](https://reference.aspose.com/words/java/com.aspose.words/field/)オブジェクトを返します。 これは、フィールドのそのようなプロパティをすばやく見つけるための便利なメソッドを提供するファサードクラスです。

次のコード例は、フィールドコードとフィールド結果を検索する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

メモ文書内の差し込み項目の名前のみを探している場合は、代わりに組み込みメソッド[GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames)を使用できます。

次のコード例は、ドキュメント内のすべての差し込み項目の名前を取得する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
