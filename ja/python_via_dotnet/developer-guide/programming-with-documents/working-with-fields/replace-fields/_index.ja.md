---
title: フィールドを置換Python
second_title: Python via .NET用Aspose.Words
articleTitle: フィールドを静的テキストに置き換える
linktitle: フィールドを静的テキストに置き換える
description: "Python でフィールドをテキストに置き換える方法を学びます。 Python via .NET API を使用してフィールドを静的データに置き換えます。"
type: docs
weight: 37
url: /ja/python-net/replace-fields/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを静的コピーとして保存する場合、フィールドの置換が必要になることがよくあります。たとえば、電子メールに添付して送信する場合です。 `DATE` や `TIME` などのフィールドを静的テキストに変換すると、ドキュメントに送信時と同じ日付を表示できるようになります。また、状況によっては、ドキュメントから条件付き `IF` フィールドを削除し、代わりに最新のテキスト結果に置き換える必要がある場合があります。たとえば、`IF` フィールドの結果を静的テキストに変換すると、ドキュメント内のフィールドが更新されたときにその値が動的に変更されなくなります。

以下の図は、`IF` フィールドがドキュメントにどのように保存されるかを示しています。

* テキストは特別なフィールド ノード ([FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) および [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)) で囲まれています。
* [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ノードは、フィールド内のテキストをフィールド コードとフィールド結果に分離します。
* フィールド コードはフィールドの一般的な動作を定義しますが、フィールドの結果は、このフィールドが Microsoft Word または Aspose.Words を使用して更新されたときに最新の結果を保持します。
* フィールドの結果は、フィールドに保存され、表示されたときにドキュメントに表示されるものです。

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

この構造は、[デモプロジェクト*「DocumentExplorer」*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.* を使用して階層形式で以下に表示することもできます。

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## テキストで置換できないフィールド

フィールドを静的テキストに置き換えると、ヘッダーまたはフッターの一部のフィールドでは正しく機能しません。

たとえば、ヘッダーまたはフッターの `PAGE` フィールドを静的テキストに変換しようとすると、すべてのページに同じ値が表示されます。これは、ヘッダーとフッターが複数のページにわたって繰り返されるため、フィールドとして残される場合、各ページで正しい結果が表示されるように特別に処理されるためです。

ただし、ヘッダーでは、`PAGE` フィールドは静的な一連のテキストに適切に変換されます。この一連のテキストはセクションの最後のページであるかのように評価され、ヘッダーの `PAGE` フィールドにはすべてのページの最後のページが表示されます。

次のコード例は、フィールドを最新の結果に置き換える方法を示しています。

例

## 特定のドキュメント部分の特定のフィールド タイプを変換する

**ConvertFieldsToStaticText** メソッドは [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) プロパティと [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) 列挙の 2 つのパラメータを受け入れるため、任意の複合ノードをこのメソッドに渡すことができます。これにより、ドキュメントの特定の部分のみでフィールドを静的テキストに変換できます。

たとえば、[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) オブジェクトを渡してドキュメント全体の指定されたタイプのフィールドを静的テキストに変換したり、セクションの [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) オブジェクトを渡してその本文にあるフィールドのみを変換したりできます。

{{% alert color="primary" %}}

[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) などのブロックレベルのノードを渡すときは、場合によってはフィールドが複数の段落にまたがることがあることに注意してください。これが発生した場合は、これを回避するために、代わりにコンポジットの親を渡すことをお勧めします。

{{% /alert %}}

**ConvertFieldsToStaticText** メソッドに渡される [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) 列挙は、どのタイプのフィールドを静的テキストに変換するかを指定します。ドキュメント内で見つかった他のフィールド タイプは変更されません。

次のコード例は、特定のタイプ (特定のノード (*compositeNode*) 内の *targetFieldType*) のフィールドを選択し、それらを静的テキストに変換する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

次のコード例は、ドキュメント内のすべての `IF` フィールドを静的テキストに変換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、ドキュメントの本文内のすべての `PAGE` フィールドを静的テキストに変換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

次のコード例は、最後の段落のすべての `IF` フィールドを静的テキストに変換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}
