---
title: Javaにフィールドを挿入する
second_title: Aspose.WordsのためのJava
articleTitle: フィールドの挿入
linktitle: フィールドの挿入
description: "Javaを使用して文書にフィールドを挿入するさまざまな方法。"
type: docs
weight: 20
url: /ja/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

文書にフィールドを挿入するには、いくつかの方法があります:

- [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)を使用する
- [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)を使用する
- を使用して [Aspose.Wordsドキュメントオブジェクトモデル(DOM)](/words/java/aspose-words-document-object-model/)

この記事では、それぞれの方法をより詳細に見て、これらのオプションを使用して特定のフィールドを挿入する方法を分析します。

## DocumentBuilderを使用した文書へのフィールドの挿入

Aspose.Wordsでは、[InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean))メソッドは文書に新しいフィールドを挿入するために使用されます。 最初のパラメータは、挿入するフィールドの完全なフィールドコードを受け入れます。 2番目のパラメータはオプションで、フィールドのフィールド結果を手動で設定できます。 これが指定されていない場合、フィールドは自動的に更新されます。 空のフィールド値を持つフィールドを挿入するには、このパラメータにnullまたはemptyを渡すことができます。 特定のフィールドコードの構文がわからない場合は、まずMicrosoft Wordにフィールドを作成し、そのフィールドコードを表示するように切り替えます。

{{% alert color="primary" %}}

フィールドコードにスペースを含むパラメータがある場合は、音声マークで囲む必要があります。 そうしないと、Microsoft WordとAspose.Wordsの両方のフィールドが期待どおりに機能しない可能性があり、パラメータは両方によって切り捨てられたものとして扱われます。

{{% /alert %}}

次のコード例は、**DocumentBuilder**を使用して差し込み項目を文書に挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

同じ手法を使用して、他のフィールド内にネストされたフィールドを挿入します。

次のコード例は、**DocumentBuilder**を使用して別のフィールド内にネストされたフィールドを挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### フィールドレベルでのロケールの指定

言語識別子は、国または地理的地域の言語の標準的な国際的な数値省略形です。 Aspose.Wordsを使用すると、フィールドのロケールIDを取得または設定する[LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId)プロパティを使用して、フィールドレベルでロケールを指定できます。

次のコード例は、このオプションを使用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### 型指定されていない/空のフィールドを挿入する

Microsoft Wordが許可するように型なし/空のフィールド（{}）を挿入する場合は、[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)メソッドを[FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)パラメータで使用できます。 Word文書にフィールドを挿入するには、"Ctrl+F9"キーの組み合わせを押すことができます。

次のコード例は、空のフィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### `COMPARE`フィールドを挿入

`COMPARE`フィールドは2つの値を比較し、比較がtrueの場合は数値1を返し、比較がfalseの場合は0を返します。

次のコード例は、DocumentBuilderを使用して`COMPARE`フィールドを追加する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### `IF`フィールドを挿入

`IF`フィールドは、引数を条件付きで評価するために使用できます。

次のコード例は、DocumentBuilderを使用して`IF`フィールドを追加する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## FieldBuilderを使用した文書へのフィールドの挿入

Aspose.Wordsにフィールドを挿入する別の方法は[FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)クラスです。 フィールドスイッチと引数値をテキスト、ノード、またはネストされたフィールドとして指定するための流暢なインターフェイスを提供します。

次のコード例は、**FieldBuilder**を使用してドキュメントにフィールドを挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## DOMを使用したフィールドの挿入

次を使用して、さまざまなタイプのフィールドを挿入することもできます [Aspose.Wordsドキュメントオブジェクトモデル(DOM)](/words/java/aspose-words-document-object-model/). このセクションでは、いくつかの例を見ていきます。

### DOMを使用した文書への差し込み項目の挿入

`MERGEFIELD` field in Word document can be represented by the [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) class. You can use **FieldMergeField** class to perform the following operations:

- 差し込み項目の名前を指定します
- 差し込み項目の書式設定を指定します
- 差し込み項目のフィールド区切り文字とフィールドの末尾の間にあるテキストを指定します
- フィールドが空白でない場合は、差し込み項目の後に挿入するテキストを指定します
- フィールドが空白でない場合は、差し込み項目の前に挿入するテキストを指定します

{{% alert color="primary" %}}

詳細については、[FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、文書内の段落にDOMを使用して`MERGE`フィールドを追加する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### DOMを使用して文書にMail Merge`ADDRESSBLOCK`フィールドを挿入する

`ADDRESSBLOCK`フィールドは、Word文書にMail Mergeアドレスブロックを挿入するために使用されます。 Word文書の`ADDRESSBLOCK`フィールドは、[FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/)クラスで表すことができます。 **FieldAddressBlock**クラスを使用して、次の操作を実行できます:

- フィールドに国/地域の名前を含めるかどうかを指定します
- POST*CODE(Universal Postal Union2006)で定義されているように、受取人の国/地域に応じて住所を書式設定するかどうかを指定します
- 除外された国/地域名を指定します
- 名前とアドレスの形式を指定します
- アドレスの書式設定に使用する言語IDを指定します

{{% alert color="primary" %}}

詳細については、[FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、文書内の段落にDOMを使用してMail Merge`ADDRESSBLOCK`フィールドを追加する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### DocumentBuilderを使用せずに文書に`ADVANCE`フィールドを挿入する

`ADVANCE`フィールドは、行内の後続のテキストを左、右、上、または下にオフセットするために使用されます。 Word文書の`ADVANCE`フィールドは、[FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/)クラスで表すことができます。 **FieldAdvance**クラスを使用して、次の操作を実行できます:

- フィールドの後に続くテキストをページの上端から垂直方向に移動するポイントの数を指定します
- フィールドに続くテキストを、列、フレーム、またはテキストボックスの左端から水平方向に移動するポイントの数を指定します
- フィールドの後に続くテキストを左、右、上、または下に移動するポイントの数を指定します

{{% alert color="primary" %}}

詳細については、[FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、文書内の段落にDOMを使用して`ADVANCE`フィールドを追加する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### DocumentBuilderを使用せずに文書に`ASK`フィールドを挿入する

`ASK`フィールドは、Word文書のブックマークに割り当てるテキストの入力をユーザーに求めるために使用されます。 Word文書の`ASK`フィールドは、[FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/)クラスで表すことができます。 **FieldAsk**クラスを使用して、次の操作を実行できます:

- ブックマークの名前を指定します
- デフォルトのユーザー応答（プロンプトウィンドウに含まれる初期値）を指定します。
- Mail Merge操作ごとにユーザー応答を1回受信するかどうかを指定します
- プロンプトテキスト（プロンプトウィンドウのタイトル）を指定します。

{{% alert color="primary" %}}

詳細については、[FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、文書内の段落にDOMを使用して`ASK`フィールドを追加する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### DocumentBuilderを使用せずに文書に`AUTHOR`フィールドを挿入する

`AUTHOR`フィールドは、`Document`プロパティからドキュメントの作成者の名前を指定するために使用されます。 Word文書の`AUTHOR`フィールドは、[FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/)クラスで表すことができます。 **FieldAuthor**クラスを使用して、次の操作を実行できます:

- 文書作成者の名前を指定します

{{% alert color="primary" %}}

詳細については、[FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、文書内の段落にDOMを使用して`AUTHOR`フィールドを追加する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### DocumentBuilderを使用せずに文書に`INCLUDETEXT`フィールドを挿入する

`INCLUDETEXT`フィールドは、フィールドコードで指定された文書に含まれるテキストとグラフィックスを挿入します。 ドキュメント全体またはブックマークで参照されるドキュメントの一部を挿入できます。 Word文書のこのフィールドはINCLUDETEXTで表されます。 [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/)クラスを使用して、次の操作を実行できます:

- 含まれる文書のブックマーク名を指定します
- 文書の場所を指定します

{{% alert color="primary" %}}

詳細については、[FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、文書内の段落にDOMを使用して`INCLUDETEXT`フィールドを追加する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### DocumentBuilderを使用せずに文書に`TOA`フィールドを挿入する

`TOA`(*Table of Authorities*)フィールドは、権限のテーブルを構築して挿入します。 `TOA`フィールドは、`TA`(*Table of Authorities Entry*)フィールドでマークされたエントリを収集します。 MicrosoftOffice Wordでは、**References**タブの**Table of Authorities**グループで*Insert Table of Authorities*をクリックすると`TOA`フィールドが挿入されます。 ドキュメントの`TOA`フィールドを表示すると、構文は次のようになります:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

詳細については、[FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、文書内の段落にDOMを使用して`TOA`フィールドを追加する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
