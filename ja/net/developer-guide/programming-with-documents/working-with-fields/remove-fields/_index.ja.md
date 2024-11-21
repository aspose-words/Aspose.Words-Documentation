---
title: フィールドの削除 C#
second_title: .NET用Aspose.Words
articleTitle: フィールドの削除
linktitle: フィールドの削除
description: "C# でフィールドを削除する方法を学びます。 .NET API を使用してプログラムでフィールドを削除します。"
type: docs
weight: 35
url: /ja/net/remove-fields/
timestamp: 2024-01-27-14-07-04
---

場合によっては、ドキュメントからフィールドを削除することが必要になることがあります。これは、別のフィールド タイプに置き換える必要がある場合、またはフィールドがドキュメント内で不要になった場合に発生することがあります。たとえば、HTML に保存する場合の `TOC` フィールドです。

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) を使用してドキュメントに挿入されたフィールドを削除するには、返された [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) オブジェクトを使用します。これは、ドキュメントからフィールドを簡単に削除するための便利な [Remove](https://reference.aspose.com/words/net/aspose.words.fields/field/remove/) メソッドを提供します。

次のコード例は、ドキュメントからフィールドを削除する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RemoveField-RemoveField.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Various%20fields.docx) からダウンロードできます。

{{% /alert %}}
