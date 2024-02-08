---
title: C# にフィールドを挿入する
second_title: .NET用Aspose.Words
articleTitle: フィールドの挿入
linktitle: フィールドの挿入
description: "C# を使用してドキュメントにフィールドを挿入する方法 – コード例を使用してさまざまな方法を学びます。"
type: docs
weight: 20
url: /ja/net/inserting-fields/
---

ドキュメントにフィールドを挿入するには、いくつかの方法があります。

* [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)を使用
* [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)を使用
* [Aspose.Words Document Object Model (DOM)](/words/ja/net/aspose-words-document-object-model/)を使用

この記事では、それぞれの方法を詳しく見て、これらのオプションを使用して特定のフィールドを挿入する方法を分析します。

## DocumentBuilder を使用したドキュメントへのフィールドの挿入

Aspose.Words では、[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) メソッドを使用して新しいフィールドをドキュメントに挿入します。最初のパラメータは、挿入されるフィールドの完全なフィールド コードを受け入れます。 2 番目のパラメータはオプションで、フィールドのフィールド結果を手動で設定できます。これが指定されていない場合、フィールドは自動的に更新されます。このパラメーターに null または空を渡すと、空のフィールド値を持つフィールドを挿入できます。特定のフィールド コードの構文がわからない場合は、まず Microsoft Word でフィールドを作成し、そのフィールド コードを表示するように切り替えます。

{{% alert color="primary" %}}

フィールド コードにスペースを含むパラメータがある場合は、そのパラメータを音声記号で囲む必要があります。そうしないと、パラメータが両方で切り捨てられたものとして扱われるため、Microsoft Word と Aspose.Words の両方のフィールドが期待どおりに動作しない可能性があります。

{{% /alert %}}

次のコード例は、**DocumentBuilder** を使用してドキュメントに差し込みフィールドを挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

同じ手法を使用して、他のフィールド内にネストされたフィールドを挿入します。

次のコード例は、**DocumentBuilder** を使用して別のフィールド内にネストされたフィールドを挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### フィールドレベルでロケールを指定する

言語識別子は、国または地理的地域の言語の標準的な国際的な数値略称です。 Aspose.Words では、フィールドのロケール ID を取得または設定する [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) プロパティを使用して、フィールド レベルでロケールを指定できます。

次のコード例は、このオプションの使用方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### 型なし/空のフィールドを挿入

Microsoft Word で許可されているのと同じように、型なし/空のフィールド ({}) を挿入する場合は、[FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) パラメーターを指定した [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) メソッドを使用できます。 Word 文書にフィールドを挿入するには、「Ctrl + F9」キーの組み合わせを押します。

次のコード例は、空のフィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## FieldBuilder を使用してドキュメントにフィールドを挿入する
Aspose.Words にフィールドを挿入する別の方法は、[FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) クラスです。フィールド スイッチと引数値をテキスト、ノード、またはネストされたフィールドとして指定するための流暢なインターフェイスを提供します。

次のコード例は、**FieldBuilder** を使用してドキュメントにフィールドを挿入する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## DOM を使用したフィールドの挿入

[Aspose.Words Document Object Model (DOM)](/words/ja/net/aspose-words-document-object-model/) を使用してさまざまなタイプのフィールドを挿入することもできます。このセクションでは、いくつかの例を見ていきます。

### DOM を使用して差し込みフィールドをドキュメントに挿入する

Word 文書の `MERGEFIELD` フィールドは、[FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) クラスで表すことができます。 **FieldMergeField** クラスを使用して、次の操作を実行できます。

- 差し込みフィールドの名前を指定します
- 差し込みフィールドの書式設定を指定します
- フィールド区切り文字と差し込みフィールドのフィールド末尾の間にあるテキストを指定します
- 差し込みフィールドが空白でない場合に、差し込みフィールドの後に挿入するテキストを指定します。
- 差し込みフィールドが空白でない場合に、差し込みフィールドの前に挿入するテキストを指定します。

{{% alert color="primary" %}}

詳細については、[FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) クラス API を参照してください。

{{% /alert %}}

次のコード例は、DOM を使用してドキュメント内の段落に `MERGE` フィールドを追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### DOM を使用したドキュメントへの Mail Merge `ADDRESSBLOCK` フィールドの挿入

`ADDRESSBLOCK` フィールドは、Word 文書に mail merge アドレス ブロックを挿入するために使用されます。 Word 文書の `ADDRESSBLOCK` フィールドは [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) クラスで表現できます。 **FieldAddressBlock** クラスを使用して、次の操作を実行できます。

- フィールドに国/地域の名前を含めるかどうかを指定します
- POST*CODE (万国郵便連合 2006) で定義されている受信者の国/地域に従って住所をフォーマットするかどうかを指定します。
- 除外する国/地域名を指定します
- 名前とアドレスの形式を指定します
- 住所のフォーマットに使用する言語 ID を指定します

{{% alert color="primary" %}}

詳細については、[FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) クラス API を参照してください。

{{% /alert %}}

次のコード例は、DOM を使用してドキュメント内の段落に Mail Merge `ADDRESSBLOCK` フィールドを追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### DocumentBuilder を使用せずに `ADVANCE` フィールドをドキュメントに挿入する

`ADVANCE` フィールドは、行内の後続のテキストを左、右、上、または下にオフセットするために使用されます。 Word 文書の `ADVANCE` フィールドは、[FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) クラスで表すことができます。 **FieldAdvance** クラスを使用して、次の操作を実行できます。

- フィールドに続くテキストをページの上端から垂直に移動するポイント数を指定します。
- フィールドに続くテキストを列、フレーム、またはテキスト ボックスの左端から水平方向に移動するポイント数を指定します。
- フィールドに続くテキストを左右上下に移動するポイント数を指定します

{{% alert color="primary" %}}

詳細については、[FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) クラス API を参照してください。

{{% /alert %}}

次のコード例は、DOM を使用してドキュメント内の段落に `ADVANCE` フィールドを追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### DocumentBuilder を使用せずに `ASK` フィールドをドキュメントに挿入する

`ASK` フィールドは、Word 文書のブックマークに割り当てるテキストをユーザーに要求するために使用されます。 Word 文書の `ASK` フィールドは、[FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) クラスで表現できます。 **FieldAsk** クラスを使用して、次の操作を実行できます。

- ブックマークの名前を指定します
- デフォルトのユーザー応答を指定します (プロンプト ウィンドウに含まれる初期値)
- ユーザー応答を mail merge 操作ごとに 1 回受信するかどうかを指定します
- プロンプトテキスト (プロンプトウィンドウのタイトル) を指定します。

{{% alert color="primary" %}}

詳細については、[FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) クラス API を参照してください。

{{% /alert %}}

次のコード例は、DOM を使用してドキュメント内の段落に `ASK` フィールドを追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### DocumentBuilder を使用せずに `AUTHOR` フィールドをドキュメントに挿入する

`AUTHOR` フィールドは、`Document` プロパティからドキュメントの作成者の名前を指定するために使用されます。 Word 文書の `AUTHOR` フィールドは、[FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) クラスで表現できます。 **FieldAuthor** クラスを使用して、次の操作を実行できます。

- 文書の作成者の名前を指定します

{{% alert color="primary" %}}

詳細については、[FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) クラス API を参照してください。

{{% /alert %}}

次のコード例は、DOM を使用してドキュメント内の段落に `AUTHOR` フィールドを追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### DocumentBuilder を使用せずに `INCLUDETEXT` フィールドをドキュメントに挿入する

`INCLUDETEXT` フィールドは、フィールド コードで指定されたドキュメントに含まれるテキストとグラフィックを挿入します。文書全体、またはブックマークで参照されている文書の一部を挿入できます。 Word 文書のこのフィールドは INCLUDETEXT で表されます。 [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) クラスを使用して、次の操作を実行できます。

- 含まれるドキュメントのブックマーク名を指定します
- ドキュメントの場所を指定します

{{% alert color="primary" %}}

詳細については、[FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) クラス API を参照してください。

{{% /alert %}}

次のコード例は、DOM を使用してドキュメント内の段落に `INCLUDETEXT` フィールドを追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### DocumentBuilder を使用せずに `TOA` フィールドをドキュメントに挿入する

`TOA` (*典拠表*) フィールドは典拠表を作成して挿入します。 `TOA` フィールドは、`TA` (*Table of Authorities Entry*) フィールドでマークされたエントリを収集します。 Microsoft Office Word は、[**References**] タブの **権威一覧表** グループで [*典拠表の挿入*] をクリックすると、`TOA` フィールドを挿入します。ドキュメント内の `TOA` フィールドを表示すると、構文は次のようになります。

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

詳細については、[FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) クラス API を参照してください。

{{% /alert %}}

次のコード例は、DOM を使用してドキュメント内の段落に `TOA` フィールドを追加する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
