---
title: C# のフィールドの概要
second_title: .NET用Aspose.Words
articleTitle: フィールドの概要
linktitle: フィールドの概要
description: "フィールド機能の詳細、フィールド コード、およびフィールド結果については、.NET の Aspose.Words で説明されています。"
type: docs
weight: 10
url: /ja/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words は、Microsoft Word ドキュメントのサーバー側処理用に設計されたクラス ライブラリであり、次の方法でフィールドをサポートします。

- 文書内のすべてのフィールドは、開く/保存するとき、および変換中に保持されます。
- ほとんどのフィールドの結果を更新することが可能

この記事では、フィールド構造、Aspose.Words でサポートされているフィールド、およびそのようなフィールドの操作の詳細について学びます。

## フィールド構造

フィールドは次のもので構成されます。

- フィールド開始ノードと区切りノードは、フィールド コードを構成するコンテンツ (通常はプレーン テキストとして) を包含するために使用されます。
- フィールド区切り文字とフィールド末尾はフィールド結果を囲みます。これは、一連のテキストから段落、表に至るまで、さまざまなタイプのコンテンツで構成されます。
- 一部のフィールドには区切り文字がない場合があります。つまり、コンテンツ全体がフィールド コードを構成します。
- フィールド コードはフィールドの動作を定義し、フィールド識別子と、多くの場合フィールド名やスイッチなどの他のパラメータで構成されます。
- フィールドの結果には、フィールドの最新の評価が含まれます。この値はフィールド結果に保存され、ユーザーに表示されます。一部のフィールドにはフィールド結果がない場合があるため、ドキュメントには何も表示されません。同様に、一部のフィールドはまだ更新されていない可能性があるため、フィールド結果もありません。

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

フィールド コードを構成するコンテンツは、[FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) と [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/) の間に [Run](https://reference.aspose.com/words/net/aspose.words/run/) ノードとして格納されます。フィールドの結果は **FieldSeparator** ノードと [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) ノードの間に保存され、さまざまなタイプのコンテンツで構成されます。通常、フィールド結果には **Run** ノードで構成されるテキストのみが含まれますが、**FieldEnd** ノードがまったく別の段落に配置される可能性があるため、フィールド結果が **Table** や **Paragraph** ノードなどの [ドキュメント内のノードの論理レベル](/words/ja/net/logical-levels-of-nodes-in-a-document/) で構成されることもあります。

ここでは、[ギットハブ](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) にある「*DocumentExplorer」* の例を使用して、フィールドが Aspose.Words にどのように保存されるかを示します。

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Aspose.Words Document Object Model (DOM) のフィールド

ドキュメントが Aspose.Words にロードされると、ドキュメントのフィールドが個別のコンポーネント (ノード) のセットとして [Aspose.Words Document Object Model (DOM)](/words/ja/net/aspose-words-document-object-model/) にロードされます。単一のフィールドは、**FieldStart**、**FieldSeparator**、および **FieldEnd** ノードのコレクションとして、これらのノード間のコンテンツとともにロードされます。フィールドにフィールド結果がない場合、**FieldSeparator** ノードは存在しません。これらのノードはすべて、常にインラインで ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) または [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/) の子として) 見つかります。

Aspose.Words では、各 **FieldXXX** ノードは [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/) から派生します。このクラスは、[FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) プロパティを通じて、指定されたノードによって表されるフィールドのタイプをチェックするプロパティを提供します。たとえば、**FieldType.FieldMergeField** はドキュメント内の差し込みフィールドを表します。

{{% alert color="primary" %}}

Word 文書には、**FieldXXX** ノードのコレクションとして Aspose.Words にインポートされない特定のフィールドがいくつかあります。たとえば、`LINK` フィールドと `INCLUDEPICTURE` フィールドは [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) オブジェクトとして Aspose.Words にインポートされます。このオブジェクトは、通常これらのフィールドに保存されている画像データを操作するためのプロパティを提供します。 `INCLUDEPICTURE` フィールドを **FieldXXX** ノードとしてインポートするには、[PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) オプションを **true** として指定する必要があります。

フォーム フィールドも、独自の特別なクラスとして Aspose.Words にインポートされます。 [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) クラスは Word 文書内のフォーム フィールドを表し、フォーム フィールドに固有の追加メソッドを提供します。

{{% /alert %}}

## サポートされているフィールド

次のフィールドの計算は、Aspose.Words の現在のバージョンでサポートされています。

- = (式)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## 高度なフィールド解析

Aspose.Words は Microsoft Word がフィールドを処理する方法に従い、その結果、以下を正しく処理します。

- ネストされたフィールド:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- フィールド引数は、ネストされたフィールドの結果にすることができます
- フィールドは、フィールドコード内およびフィールド結果内でネストできます。
- スペース/スペースなし、引用符/引用符なし、フィールド内のエスケープ文字など:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 複数の段落にまたがるフィールド

### 数式フィールド

Aspose.Words は、数式エンジンの非常に本格的な実装を提供し、以下をサポートします。

- 算術演算子および論理演算子:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 機能：
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ブックマークへの参照:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 数値フォーマットスイッチ:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

式内の次の関数がサポートされています: `ABS`、`AND`、`AVERAGE`、`COUNT`、`DEFINED`、`FALSE`、`IF`、`INT`、`MAX`、`MIN`、`MOD`、`NOT`、`OR`、`PRODUCT`、`ROUND`、`SIGN`、`SUM`、TRUE。

### `IF` および `COMPARE` フィールド

Aspose.Words が簡単に計算できる `IF` 式の一部を見れば、この機能がいかに強力であるかがわかるはずです。

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` および `TIME` フィールド

Aspose.Words は、Microsoft Word で使用可能なすべての日付と時刻の書式設定スイッチをサポートしています。いくつかの例を次に示します。

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Mergeフィールド

Aspose.Words は、ドキュメント内の Mail Merge フィールドの複雑さに制限を設けず、ネストされた `IF` フィールドと数式フィールドをサポートし、数式を使用して差し込みフィールドの名前を計算することもできます。

Aspose.Words がサポートする Mail Merge フィールドの例をいくつか示します。

- Mail merge フィールド スイッチ:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 数式内のネストされた差し込みフィールド:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 実行時に差し込みフィールドの名前を計算します。
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- データ ソース内の次のレコードに条件付きで移動します。
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### フォーマットスイッチ

ドキュメント内のフィールドには、結果の値の書式設定方法を指定する書式設定スイッチを含めることができます。 Aspose.Words は次の形式スイッチをサポートしています。

- \\\@ – 日付と時刻の形式
- \\\# – 数値の書式設定
- \\\* キャップ
- \\\* ファーストキャップ
- \\\* より低い
- \\\* アッパー
- \\\* CHARFORMAT – フィールド コードの最初の文字に従って結果をフォーマットします
- \\\* MERGEFORMAT – 古い結果のフォーマットに従って結果をフォーマットします

### Date とフィールドの数値フォーマット

Aspose.Words がフィールド結果を計算する場合、多くの場合、文字列を数値または日付値に解析し、文字列にフォーマットし直す必要があります。デフォルトでは、Aspose.Words はフィールド更新中にフィールド値を計算するときに、現在のスレッド カルチャを使用して解析とフォーマットを実行します。そしてmail merge。 [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) クラスの形式で提供されるオプションもあり、フィールドの更新中にどのカルチャを使用するかをさらに制御できます。

- デフォルトでは、[FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) プロパティは、現在のスレッド カルチャを使用してフィールドをフォーマットする [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) に設定されます。
- このプロパティを [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) に設定すると、フィールドのフィールド コードから設定された言語が代わりに書式設定に使用されます。

### 現在のスレッドのカルチャを使用したフォーマット

フィールド計算中に使用されるカルチャを制御するには、フィールド計算を呼び出す前に、**Thread.CurrentThread.CurrentCulture** プロパティを選択したカルチャに設定するだけです。

次のコード例は、更新中にフィールドの書式設定で使用されるカルチャを変更する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

現在のカルチャを使用してフィールドを書式設定すると、システムはフィールド更新時にドキュメント内のすべてのフィールドの書式設定方法を簡単かつ一貫して制御できるようになります。

### ドキュメント内のカルチャを使用した書式設定

一方、Microsoft Word は、フィールド内で見つかったテキストの言語 (具体的には、フィールド コードからのラン) に基づいて、個々のフィールドをフォーマットします。フィールドの更新中に、これが望ましい動作になる場合があります。たとえば、さまざまな言語で構成されたコンテンツを含むグローバル化されたドキュメントがあり、テキストで使用されているロケールを各フィールドに適用したい場合などです。 Aspose.Words もこの機能をサポートしています。

[Document](https://reference.aspose.com/words/net/aspose.words/document/) クラスは、ドキュメント内でフィールドを更新する方法を制御するために使用できるメンバーを含む [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) プロパティを提供します。

次のコード例は、フィールド更新および Mail Merge 中に日付の書式設定に使用されるカルチャがどこから選択されるかを指定する方法を示しています。

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
