---
title: Python でフィールド プロパティを検索する
second_title: Python via .NET用Aspose.Words
articleTitle: フィールドのプロパティを検索する
linktitle: フィールドのプロパティを検索する
description: "Python でフィールド コードやフィールド結果などのフィールド プロパティを検索する方法。"
type: docs
weight: 25
url: /ja/python-net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) を使用して挿入されたフィールドは [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) オブジェクトを返します。これは、フィールドのいくつかのプロパティをすばやく検索するための便利なメソッドを提供するファサード クラスです。

次のコード例は、フィールド コードとフィールド結果を検索する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

文書内の差し込みフィールドの名前のみを検索する場合は、代わりに組み込みの [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) メソッドを使用できることに注意してください。

次のコード例は、ドキュメント内のすべての差し込みフィールドの名前を取得する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}
