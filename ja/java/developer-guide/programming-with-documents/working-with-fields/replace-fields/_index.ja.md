---
title: フィールドをテキストに置き換える Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 静的テキストでフィールドを置換する
linktitle: 静的テキストでフィールドを置換する
description: "フィールドをテキストに置き換える方法を学ぶ Javaお問い合わせ 静的データをフィールドに置換する Java APIお問い合わせ"
type: docs
weight: 37
url: /ja/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

文書を静的コピーとして保存したい場合、フィールドの交換はしばしば必要です。 たとえば、メールに添付ファイルとして送信する場合。 などのフィールドの変換 `DATE` または `TIME` 静的なテキストに、文書が送信されたときと同じ日付を表示できるようにします。 また、いくつかの状況では、条件を除去する必要があります `IF` ドキュメントからフィールドを置換し、代わりに最新のテキスト結果に置き換えます。 例えば、結果の変換 `IF` フィールドを静的なテキストにするため、ドキュメントのフィールドが更新されると、その値が動的に変更されることはありません。

下の図は、どのように表示するかを示しています `IF` フィールドはドキュメントに保存されます。

* テキストは特別なフィールドノードに囲まれています。 [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) そして、 [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* お問い合わせ [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) ノードはフィールド内のテキストをフィールドコードとフィールド結果に分離します
*フィールドコードはフィールドの一般的な動作を定義しますが、フィールド結果はこのフィールドが更新されると最新の結果を保持します Microsoft Word または Aspose.Words
*フィールド結果はフィールドに格納され、表示されたときに文書に表示されているものです

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

デモプロジェクトを使用して階層形状のフォームでも構造を見ることができます。 **“DocumentExplorer”**, どの船を運ぶか **Aspose.Words** インストーラ。

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## テキストで置換できないフィールド

静的テキストでフィールドを置き換えることは、ヘッダまたはフッター内のフィールドに正しく機能しません。

例えば、変換しようとする `PAGE` ヘッダーまたはフッターで静的テキストにフィールドすると、すべてのページで同じ値が表示されます。 これは、複数のページでヘッダーとフッターが繰り返されるため、フィールドとして残っているとき、それらは特に処理されるため、各ページの正しい結果が表示されます。

しかし、ヘッダでは、 `PAGE` フィールドはテキストの静的実行によく翻訳します。 このテキストの実行は、セクションの最後のページだったかのように評価されます。 `PAGE` すべてのページ上の最後のページを表示するヘッダーのフィールド。

次のコードの例では、フィールドを最新の結果に置き換える方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## 特定のフィールドタイプを特定のドキュメント部品に変換

以来、 **ConvertFieldsToStaticText** メソッドは2つのパラメータを受け入れます。 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) プロパティとプロパティ [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 列挙、このメソッドにコンポジットノードを渡すことができます。 これにより、フィールドは、ドキュメントの特定の部分でのみ静的テキストに変換できます。

例えば、 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) オブジェクトは、指定されたタイプのフィールドをドキュメント全体から静的なテキストに変換したり、 [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) セクションのオブジェクトと、その本文にあるフィールドのみを変換します。

{{% alert color="primary" %}}

ブロックレベルのノードを渡すとき [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 場合によっては、フィールドは複数の段落に及ぶことがあります。 これが起こると、これを回避する代わりに、コンポジットの親を渡すことをお勧めします。

{{% /alert %}}

ザ・オブ・ザ・ [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) 通達する列挙 **ConvertFieldsToStaticText** メソッドは、フィールドの種類を静的テキストに変換すべきかを指定します。 文書に含まれる他のフィールドタイプは変更されません。

次のコードの例では、特定のタイプのフィールドを選択する方法を示します。 *targetFieldType* 特定のノードで *compositeNode* そして、それらを静的なテキストに変換します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

次のコードの例では、すべてのコードを変換する方法を示します。 `IF` 文書内のフィールドを静的テキストへ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

次のコードの例では、すべてのコードを変換する方法を示します。 `PAGE` 静的テキストへの文書の本文のフィールド:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

次のコードの例では、すべてのコードを変換する方法を示します。 `IF` 最後の段落のフィールドを静的テキストに:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
