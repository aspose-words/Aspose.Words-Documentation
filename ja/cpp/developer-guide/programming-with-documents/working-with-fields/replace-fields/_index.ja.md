---
title: フィールドの置換C++
second_title: C++の場合Aspose.Words
articleTitle: フィールドを静的テキストに置き換える
linktitle: フィールドを静的テキストに置き換える
description: "C++でフィールドをテキストに置き換える方法について説明します。 C++APIを使用して、フィールドを静的データに置き換えます。"
type: docs
weight: 37
url: /ja/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

ドキュメントを静的コピーとして保存する場合は、フィールドの置換が必要になることがよくあります。 たとえば、電子メールで添付ファイルとして送信する場合などです。 `DATE`や`TIME`などのフィールドを静的テキストに変換すると、文書は送信されたときと同じ日付を表示できます。 また、状況によっては、文書から条件付き`IF`フィールドを削除し、代わりに最新のテキスト結果に置き換える必要がある場合があります。 たとえば、`IF`フィールドの結果を静的テキストに変換して、ドキュメント内のフィールドが更新されたときに動的に値が変更されないようにします。

次の図は、`IF`フィールドがドキュメントにどのように格納されているかを示しています:

* テキストは特別なフィールドノード[FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/)と[FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)で囲まれています
* [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/)ノードは、フィールド内のテキストをフィールドコードとフィールド結果に分離します
* フィールドコードはフィールドの一般的な動作を定義しますが、このフィールドがMicrosoft WordまたはAspose.Wordsを使用して更新された場合、フィールドの結果は最新の結果を保
* フィールドの結果は、フィールドに格納され、表示されたときにドキュメントに表示されるものです

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

この構造は、デモプロジェクト*"DocumentExplorer"*を使用して階層的な形式で以下に見ることもできます。

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## テキストで置き換えることができないフィールド

フィールドを静的テキストに置き換えることは、ヘッダーまたはフッターの一部のフィールドでは正常に機能しません。

たとえば、ヘッダーまたはフッターの`PAGE`フィールドを静的テキストに変換しようとすると、すべてのページに同じ値が表示されます。 これは、ヘッダーとフッターが複数のページで繰り返され、フィールドとして残っている場合は、特に処理されて各ページに正しい結果が表示されるためです。

ただし、ヘッダーでは、`PAGE`フィールドは静的なテキストの実行にうまく変換されます。 このテキストの実行は、セクションの最後のページであるかのように評価され、ヘッダー内の`PAGE`フィールドにすべてのページの最後のページが表示されます。

次のコード例は、フィールドを最新の結果に置き換える方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## 特定のドキュメントパーツ内の特定のフィールドタイプの変換

**ConvertFieldsToStaticText**メソッドは、[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)プロパティと[FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)列挙型の2つのパラメータを受け入れるため、このメソッドに任意の複合ノードを渡すことができます。 これにより、フィールドをドキュメントの特定の部分でのみ静的テキストに変換できます。

たとえば、[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)オブジェクトを渡して指定された型のフィールドを文書全体から静的テキストに変換したり、セクションの[Body](https://reference.aspose.com/words/cpp/aspose.words/body/)オブジェクトを渡して、その本文にあるフィールドのみを変換したりすることができます。

{{% alert color="primary" %}}

[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)のようなブロックレベルのノードを渡すときは、フィールドが複数の段落にまたがる場合があることに注意してください。 これが発生した場合は、これを回避するために、代わりにコンポジットの親を渡すことをお勧めします。

{{% /alert %}}

**ConvertFieldsToStaticText**メソッドに渡される[FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)列挙体は、どのタイプのフィールドを静的テキストに変換するかを指定します。 ドキュメント内で見つかった他のフィールドタイプは変更されません。

次のコード例は、特定のノード*compositeNode*の特定の型*targetFieldType*のフィールドを選択し、それらを静的テキストに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

次のコード例は、ドキュメント内のすべての`IF`フィールドを静的テキストに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

次のコード例は、ドキュメントの本文内のすべての`PAGE`フィールドを静的テキストに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

次のコード例は、最後の段落のすべての`IF`フィールドを静的テキストに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
