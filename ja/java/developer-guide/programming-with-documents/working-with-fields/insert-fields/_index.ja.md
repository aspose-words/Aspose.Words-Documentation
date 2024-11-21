---
title: インサートフィールド Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: インサートフィールド
linktitle: インサートフィールド
description: "フィールドをドキュメントに差し込むさまざまな方法 Javaお問い合わせ"
type: docs
weight: 20
url: /ja/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

フィールドをドキュメントにインサートする方法はいくつかあります。

- 使用 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- 使用 [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- 使用 [Aspose.Words Document Object Model (DOM)](/words/ja/java/aspose-words-document-object-model/)

この記事では、これらのオプションを使用して、特定のフィールドをインサートする方法を詳細に分析します。

## DocumentBuilder を使用してフィールドを文書化

インスタグラム Aspose.Words お問い合わせ [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) メソッドは新しいフィールドをドキュメントに差し込むために使用されます。 最初のパラメータは、フィールドの完全なフィールドコードを差し込みます。 2番目のパラメータはオプションで、フィールドのフィールド結果が手動で設定できます。 これが供給されていない場合、フィールドは自動的に更新されます。 このパラメータに null または empty を渡して、フィールドを空のフィールド値で入力できます。 特定のフィールドコードの構文がわからない場合は、フィールドをフィールドに作成します。 Microsoft Word フィールドコードを最初に表示し、フィールドコードを表示するように切り替えます。

{{% alert color="primary" %}}

フィールドコードにスペースを含むパラメータがある場合、スピーチマーク内で囲まなければなりません。 それ以外の場合は両方のフィールド Microsoft Word そして、 Aspose.Words パラメータがtuncatedであると同時に扱われるので期待どおりに動作しないかもしれません。

{{% /alert %}}

次のコードの例では、マージフィールドをドキュメントにインサートする方法を示します。 **DocumentBuilder**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

他のフィールドにネストされたフィールドをインサートするために同じ技術を使用します。

次のコード例では、別のフィールド内でネストされたフィールドを別のフィールドに挿す方法を示します。 **DocumentBuilder**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### フィールドレベルにロケールを指定する

言語識別子は、国や地域における言語の標準的な国際数値の略語です。 と Aspose.Words, フィールドレベルの Locale を指定できます。 [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) フィールドの locale ID を取得またはセットするプロパティ。

次のコードの例では、このオプションを使用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### インサート 未入力/空のフィールド

untyped/empty フィールドをインサートしたい場合 (){}) いいね Microsoft Word 許可して下さい、使用することができます [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) メソッドとメソッド [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) パラメータ。 フィールドをWord文書に入力するには、「Ctrl + F9」キーコンビネーションを押します。

次のコードの例では、空のフィールドをドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### インサート `COMPARE` フィールド

ザ・オブ・ザ・ `COMPARE` フィールドは2つの値を比較し、比較がない場合の数値1を返します。 true 比較がない場合、または0 falseお問い合わせ

次のコードの例では、追加する方法を示します。 `COMPARE` DocumentBuilder を使用したフィールド:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### インサート `IF` フィールド

ザ・オブ・ザ・ `IF` フィールドは、条件付きで引数を評価するために使用できます。

次のコードの例では、追加する方法を示します。 `IF` DocumentBuilder を使用したフィールド:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## フィールドビルダーを使用して文書にフィールドをインサートする

フィールドをインサートする代替方法 Aspose.Words です。 [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) クラス。 フィールド スイッチと引数の値をテキスト、ノード、またはネストされたフィールドとして指定するインフルエント インターフェイスを提供します。

次のコードの例では、フィールドをドキュメントに書き込む方法を示します。 **FieldBuilder**:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## インサートフィールドの使用 DOM

また、さまざまなフィールドの入力も可能です。 [Aspose.Words Document Object Model (DOM)](/words/ja/java/aspose-words-document-object-model/)お問い合わせ このセクションでは、いくつかの例を見てみましょう。

### インサートマージ ドキュメントへのフィールド DOM

`MERGEFIELD` Word文書のフィールドは、 [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) クラス。 使える **FieldMergeField** 次の操作を実行するクラス:

- merge フィールドの名前を指定します
- merge フィールドの書式を指定する
- フィールドセパレータとマージフィールドのフィールド終了の間のテキストを指定します
- フィールドが空白でないとマージフィールドの後に入力するテキストを指定します
- フィールドが空白でないとマージフィールドの前に入力するテキストを指定します

{{% alert color="primary" %}}

詳しくは、 [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) レッスン APIお問い合わせ

{{% /alert %}}

次のコードの例では、追加する方法を示します。 `MERGE` フィールド使用 DOM 文書の段落に:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### インサート Mail Merge `ADDRESSBLOCK` ドキュメントへのフィールド DOM

ザ・オブ・ザ・ `ADDRESSBLOCK` フィールドをインサートするために使用されます mail merge ワード文書のアドレスブロック。 `ADDRESSBLOCK` Word文書のフィールドは、 [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) クラス。 使える **FieldAddressBlock** 次の操作を実行するクラス:

- フィールドに国/地域の名前を含めるかどうかを指定する
- POST*CODE(Universal Postal Union 2006)で定義された受取人の国/地域に応じてアドレスをフォーマットするかどうかを指定します。
- 除外国/地域名を指定する
- 名前とアドレスの形式を指定します
- アドレスをフォーマットするために使用される言語 ID を指定します

{{% alert color="primary" %}}

詳しくは、 [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) レッスン APIお問い合わせ

{{% /alert %}}

次のコードの例では、追加する方法を示します。 Mail Merge `ADDRESSBLOCK` フィールド使用 DOM 文書の段落に:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### インサート `ADVANCE` DocumentBuilder を使用せずにドキュメントにフィールド

ザ・オブ・ザ・ `ADVANCE` フィールドは、行の後に続くテキストを左、右、上、下へオフセットするために使用されます。 `ADVANCE` Word文書のフィールドは、 [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) クラス。 使うことができます。 **FieldAdvance** 次の操作を実行するクラス:

- フィールドに続くテキストがページ上部の端から縦に動かされるべきポイントの数を指定します
- フィールドに続くテキストが列、フレーム、またはテキストボックスの左端から水平に移動されるべきポイントの数を指定します
- フィールドに続くテキストが左、右、上、下に移動すべき点数を指定します。

{{% alert color="primary" %}}

詳しくは、 [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) レッスン APIお問い合わせ

{{% /alert %}}

次のコードの例では、追加する方法を示します。 `ADVANCE` フィールド使用 DOM 文書の段落に:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### インサート `ASK` DocumentBuilder を使用せずにドキュメントにフィールド

ザ・オブ・ザ・ `ASK` フィールドは、Word文書のブックマークに割り当てるテキストのユーザを促すために使用されます。 `ASK` Word文書のフィールドは、 [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) クラス。 使える **FieldAsk** 次の操作を実行するクラス:

- ブックマークの名前を指定します
- デフォルトユーザ応答(プロンプトウィンドウに含まれている初期値)を指定する
- ユーザ応答が1回受信されるかどうかを指定します mail merge オペレーション
- プロンプトテキスト(プロンプトウィンドウのタイトル)を指定する

{{% alert color="primary" %}}

詳しくは、 [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) レッスン APIお問い合わせ

{{% /alert %}}

次のコードの例では、追加する方法を示します。 `ASK` フィールド使用 DOM 文書の段落に:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### インサート `AUTHOR` DocumentBuilder を使用せずにドキュメントにフィールド

ザ・オブ・ザ・ `AUTHOR` フィールドは、ドキュメントの作者の名前を から指定するために使用されます。 `Document` プロパティ。 `AUTHOR` Word文書のフィールドは、 [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) クラス。 使える **FieldAuthor** 次の操作を実行するクラス:

- 文書の作者の名前を指定する

{{% alert color="primary" %}}

詳しくは、 [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) レッスン APIお問い合わせ

{{% /alert %}}

次のコードの例では、追加する方法を示します。 `AUTHOR` フィールド使用 DOM 文書の段落に:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### インサート `INCLUDETEXT` DocumentBuilder を使用せずにドキュメントにフィールド

ザ・オブ・ザ・ `INCLUDETEXT` フィールドはフィールドコードに含まれる文書に含まれるテキストとグラフィックをインサートします。 ドキュメント全体またはブックマークで参照するドキュメントの一部を入力できます。 ワード文書のこのフィールドはINCLUDETEXTで表されます。 使える [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) 次の操作を実行するクラス:

- 含まれている文書のブックマークの名前を指定します
- ドキュメントの場所を指定する

{{% alert color="primary" %}}

詳しくは、 [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) レッスン APIお問い合わせ

{{% /alert %}}

次のコードの例では、追加する方法を示します。 `INCLUDETEXT` フィールド使用 DOM 文書の段落に:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### インサート `TOA` DocumentBuilder を使用せずにドキュメントにフィールド

ザ・オブ・ザ・ `TOA` (*Authorities* の可) フィールドビルドと権限の表をインサートします。 ザ・オブ・ザ・ `TOA` フィールドは、マークされたエントリを収集します `TA` (*権限エントリー*の可) Microsoft オフィスワードは、 `TOA` フィールドをクリックすると、*Authorities*のInsert Tableをクリックします。 **著者の表** グループ **References** タブ。 閲覧するとき `TOA` ドキュメントのフィールド、構文はこのようになります。

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

詳しくは、 [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) レッスン APIお問い合わせ

{{% /alert %}}

次のコードの例では、追加する方法を示します。 `TOA` フィールド使用 DOM 文書の段落に。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
