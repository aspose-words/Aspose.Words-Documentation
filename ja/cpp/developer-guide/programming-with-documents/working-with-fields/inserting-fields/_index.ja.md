---
title: C++でのフィールドの挿入
second_title: C++の場合Aspose.Words
articleTitle: フィールドの挿入
linktitle: フィールドの挿入
description: "C++を使用してドキュメントにフィールドを挿入するさまざまな方法。"
type: docs
weight: 20
url: /ja/cpp/inserting-fields/
---

文書にフィールドを挿入するには、いくつかの方法があります:

- [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)を使用する
- [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)を使用する
- を使用して [Aspose.Wordsドキュメントオブジェクトモデル(DOM)](/words/cpp/aspose-words-document-object-model/)

この記事では、それぞれの方法をより詳細に見て、これらのオプションを使用して特定のフィールドを挿入する方法を分析します。

## DocumentBuilderを使用した文書へのフィールドの挿入

Aspose.Wordsでは、[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)メソッドは文書に新しいフィールドを挿入するために使用されます。 最初のパラメータは、挿入するフィールドの完全なフィールドコードを受け入れます。 2番目のパラメータはオプションで、フィールドのフィールド結果を手動で設定できます。 これが指定されていない場合、フィールドは自動的に更新されます。 空のフィールド値を持つフィールドを挿入するには、このパラメータにnullまたはemptyを渡すことができます。 特定のフィールドコードの構文がわからない場合は、まずMicrosoft Wordにフィールドを作成し、そのフィールドコードを表示するように切り替えます。

{{% alert color="primary" %}}

フィールドコードにスペースを含むパラメータがある場合は、音声マークで囲む必要があります。 そうしないと、Microsoft WordとAspose.Wordsの両方のフィールドが期待どおりに機能しない可能性があります。

{{% /alert %}}

次のコード例は、**DocumentBuilder**を使用して差し込み項目を文書に挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

同じ手法を使用して、他のフィールド内にネストされたフィールドを挿入します。

次のコード例は、**DocumentBuilder**を使用して別のフィールド内にネストされたフィールドを挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### フィールドレベルでのロケールの指定

言語識別子は、国または地理的地域の言語の標準的な国際的な数値省略形です。 Aspose.Wordsを使用すると、フィールドのロケールIDを取得または設定する[LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/)プロパティを使用して、フィールドレベルでロケールを指定できます。

次のコード例は、このオプションを使用する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### 型指定されていない/空のフィールドを挿入する

Microsoft Wordが許可するように型なし/空のフィールド（{}）を挿入する場合は、[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield)メソッドを[FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)パラメータで使用できます。 Word文書にフィールドを挿入するには、「Ctrl+F9」キーの組み合わせを押すことができます。

次のコード例は、空のフィールドをドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## FieldBuilderを使用した文書へのフィールドの挿入

Aspose.Wordsにフィールドを挿入する別の方法は[FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)クラスです。 フィールドスイッチと引数値をテキスト、ノード、またはネストされたフィールドとして指定するための流暢なインターフェイスを提供します。

次のコード例は、**FieldBuilder**を使用してドキュメントにフィールドを挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## DOMを使用したフィールドの挿入

次を使用して、さまざまなタイプのフィールドを挿入することもできます [Aspose.Wordsドキュメントオブジェクトモデル(DOM)](/words/cpp/aspose-words-document-object-model/). このセクションでは、いくつかの例を見ていきます。

### DOMを使用した文書への差し込み項目の挿入

Word文書の`MERGEFIELD`フィールドは、[FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/)クラスで表すことができます。 **FieldMergeField**クラスを使用して、次の操作を実行できます:

- 差し込み項目の名前を指定します
- 差し込み項目の書式設定を指定します
- 差し込み項目のフィールド区切り文字とフィールドの末尾の間にあるテキストを指定します
- フィールドが空白でない場合は、差し込み項目の後に挿入するテキストを指定します
- フィールドが空白でない場合は、差し込み項目の前に挿入するテキストを指定します

{{% alert color="primary" %}}

詳細については、[FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、DOMを使用して`MERGE`フィールドを文書内の段落に追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DOMを使用して文書にMail Mergeアドレスブロックフィールドを挿入する

`ADDRESSBLOCK`フィールドは、Word文書にmail mergeアドレスブロックを挿入するために使用されます。 Word文書の`ADDRESSBLOCK`フィールドは、[FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/)クラスで表すことができます。 **FieldAddressBlock**クラスを使用して、次の操作を実行できます:

- フィールドに国/地域の名前を含めるかどうかを指定します
- POST*CODE(Universal Postal Union2006)で定義されているように、受取人の国/地域に応じて住所を書式設定するかどうかを指定します
- 除外された国/地域名を指定します
- 名前とアドレスの形式を指定します
- アドレスの書式設定に使用する言語IDを指定します

{{% alert color="primary" %}}

詳細については、[FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、DOMを使用してMail Merge`ADDRESSBLOCK`フィールドを文書内の段落に追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DocumentBuilderを使用せずに文書にAdvanceフィールドを挿入する

`ADVANCE`フィールドは、行内の後続のテキストを左、右、上、または下にオフセットするために使用されます。 Word文書の`ADVANCE`フィールドは、[FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/)クラスで表すことができます。 FieldAdvanceクラスを使用して、次の操作を実行できます:

- フィールドの後に続くテキストをページの上端から垂直方向に移動するポイントの数を指定します
- フィールドに続くテキストを、列、フレーム、またはテキストボックスの左端から水平方向に移動するポイントの数を指定します
- フィールドの後に続くテキストを左、右、上、または下に移動するポイントの数を指定します

{{% alert color="primary" %}}

詳細については、[FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、DOMを使用して`ADVANCE`フィールドを文書内の段落に追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DocumentBuilderを使用せずに文書に`ASK`フィールドを挿入する

`ASK`フィールドは、Word文書のブックマークに割り当てるテキストの入力をユーザーに求めるために使用されます。 Word文書の`ASK`フィールドは、[FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/)クラスで表すことができます。 **FieldAsk**クラスを使用して、次の操作を実行できます:

- ブックマークの名前を指定します
- デフォルトのユーザー応答（プロンプトウィンドウに含まれる初期値）を指定します。
- mail merge操作ごとにユーザー応答を1回受信するかどうかを指定します
- プロンプトテキスト（プロンプトウィンドウのタイトル）を指定します。

{{% alert color="primary" %}}

詳細については、[FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、DOMを使用して`ASK`フィールドを文書内の段落に追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DocumentBuilderを使用せずに文書に`AUTHOR`フィールドを挿入する

`AUTHOR`フィールドは、`Document`プロパティからドキュメントの作成者の名前を指定するために使用されます。 Word文書の`AUTHOR`フィールドは、[FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/)クラスで表すことができます。 **FieldAuthor**クラスを使用して、次の操作を実行できます:

- 文書作成者の名前を指定します

{{% alert color="primary" %}}

詳細については、[FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、DOMを使用して`AUTHOR`フィールドを文書内の段落に追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

この例のサンプルファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### DocumentBuilderを使用せずに文書に`INCLUDETEXT`フィールドを挿入する

`INCLUDETEXT`フィールドは、フィールドコードで指定された文書に含まれるテキストとグラフィックスを挿入します。 ドキュメント全体またはブックマークで参照されるドキュメントの一部を挿入できます。 Word文書のこのフィールドは、INCLUDETEXTで表されます。 [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/)クラスを使用して、次の操作を実行できます:

- 含まれるドキュメントのブックマーク名を指定します
- 文書の場所を指定します

{{% alert color="primary" %}}

詳細については、[FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、DOMを使用して`INCLUDETEXT`フィールドを文書内の段落に追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### DocumentBuilderを使用せずに文書に`TOA`フィールドを挿入する

`TOA`(*Table of Authorities*)フィールドは、権限のテーブルを構築して挿入します。 `TOA`フィールドは、`TA`(*Table of Authorities Entry*)フィールドでマークされたエントリを収集します。 Microsoft Office Wordでは、**References**タブの**Table of Authorities**グループで*Insert Table of Authorities*をクリックすると`TOA`フィールドが挿入されます。 ドキュメントの`TOA`フィールドを表示すると、構文は次のようになります:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

詳細については、[FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/)クラスAPIを参照してください。

{{% /alert %}}

次のコード例は、DOMを使用して`TOA`フィールドを文書内の段落に追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
