---
title: Python を使用してフィールドを削除する
second_title: Python via .NET用Aspose.Words
articleTitle: フィールドの削除
linktitle: フィールドの削除
description: "Python でフィールドを削除する方法を学びます。 Python via .NET API を使用してプログラムでフィールドを削除します。"
type: docs
weight: 35
url: /ja/python-net/remove-fields/
timestamp: 2024-01-27-14-07-04
---

場合によっては、ドキュメントからフィールドを削除することが必要になることがあります。これは、フィールドを別のフィールド タイプに置き換える場合、またはフィールドがドキュメント内で不要になった場合に発生することがあります。たとえば、HTML に保存する場合の `TOC` フィールドなどです。

[DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) を使用してドキュメントに挿入されたフィールドを削除するには、返された [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) オブジェクトを使用します。これは、ドキュメントからフィールドを簡単に削除するための便利な [remove](https://reference.aspose.com/words/python-net/aspose.words.fields/field/remove/#default) メソッドを提供します。

次のコード例は、ドキュメントからフィールドを削除する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RemoveField.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Various%20fields.docx) からダウンロードできます。

{{% /alert %}}
