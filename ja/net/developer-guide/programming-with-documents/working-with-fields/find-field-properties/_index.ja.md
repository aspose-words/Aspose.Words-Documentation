---
title: C# でフィールド プロパティを検索する方法
second_title: .NET用Aspose.Words
articleTitle: フィールドのプロパティを検索する
linktitle: フィールドのプロパティを検索する
description: "C# でフィールド コードやフィールド結果などのフィールド プロパティを検索する方法。"
type: docs
weight: 25
url: /ja/net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) を使用して挿入されたフィールドは [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) オブジェクトを返します。これは、フィールドのいくつかのプロパティをすばやく検索するための便利なメソッドを提供するファサード クラスです。

次のコード例は、フィールド コードとフィールド結果を検索する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

文書内の差し込みフィールドの名前のみを検索する場合は、代わりに組み込みの [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) メソッドを使用できることに注意してください。

次のコード例は、ドキュメント内のすべての差し込みフィールドの名前を取得する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}
