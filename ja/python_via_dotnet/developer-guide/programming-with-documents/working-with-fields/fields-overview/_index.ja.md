---
title: Python のフィールドの概要
second_title: Python via .NET用Aspose.Words
articleTitle: フィールドの概要
linktitle: フィールドの概要
description: "Python を使用してフィールド変更にアクセスできます。ドキュメントのフィールドは Aspose.Words Document Object Model (DOM) にロードされます。"
type: docs
weight: 10
url: /ja/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


通常、フィールドは、Microsoft Word に挿入されると、すでに最新の値が含まれています。たとえば、フィールドが数式またはページ番号である場合、そのフィールドには、ドキュメントの特定のバージョンに対して正しく計算された値が含まれます。ただし、フィールドを含むドキュメントを生成または変更する (たとえば、2 つのドキュメントを結合したり、データを入力したりする) アプリケーションがある場合、ドキュメントを有効にするには、理想的にはすべてのフィールドを更新する必要があります。

フィールドは次のもので構成されます。

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- フィールド開始ノードと区切りノードは、フィールド コードを構成するコンテンツ (通常はプレーン テキストとして) を包含するために使用されます。
- フィールド区切り文字とフィールド末尾はフィールド結果を囲みます。これは、一連のテキストから段落、表に至るまで、さまざまなタイプのコンテンツで構成されます。
- 一部のフィールドには区切り文字がない場合があります。つまり、コンテンツ全体がフィールド コードを構成します。
- フィールド コードはフィールドの動作を定義し、フィールド識別子と、多くの場合フィールド名やスイッチなどの他のパラメータで構成されます。
- フィールドの結果には、フィールドの最新の評価が含まれます。この値はフィールド結果に保存され、ユーザーに表示されます。一部のフィールドにはフィールド結果がない場合があるため、ドキュメントには何も表示されません。同様に、一部のフィールドはまだ更新されていない可能性があるため、フィールド結果もありません。

ここでは、[ギットハブ](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) にある「*DocumentExplorer」* の例を使用して、フィールドが Aspose.Words にどのように保存されるかを示します。

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words は、Microsoft Word ドキュメントのサーバー側処理用に設計されたクラス ライブラリであり、次の方法でフィールドをサポートします。

- ドキュメント内のすべてのフィールドは、開く/保存するとき、および変換中に保持されます。
- 最も人気のある分野のいくつかの結果を更新することが可能です。

## Microsoft Word のフィールド

Microsoft Word ドキュメントのフィールドは複雑です。 50 を超えるフィールド タイプ (それぞれに独自の結果計算手順が必要)、数式と式、ブックマークと参照、関数、およびさまざまなスイッチがあります。フィールドはネストすることもできます。通常、ドキュメントを開くと、ドキュメント内のすべてのフィールドのフィールド結果 (フィールドの値) が表示されます。 **ALT+F9** を押すと、Microsoft Word ですべてのフィールドのフィールド結果またはフィールド コードの表示を切り替えることができます。

| フィールドコード | フィールドの結果 |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Microsoft Word へのフィールドの挿入

Microsoft Word にフィールドを挿入するには:

1. [**Insert**] メニューをクリックします。
1. [**Quick Parts**] ドロップダウン メニューをクリックします。
1.**Field**を選択します
1. フィールドの詳細を入力する画面が表示されます。左側には使用可能なフィールドのリストが表示され、右側にはフィールドのプロパティを視覚的に編集するための画面が表示されます。<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. さらに、**Field Codes** ボタンを押すと、フィールド コードを直接書き出すことができます。<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. **Options**ボタンを使用してスイッチを挿入することもできます<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. いずれかの方法を使用して、必要なフィールドに適切な情報を入力し、**Ok** を押します。
1. フィールドが文書内の現在のカーソル位置に挿入されます。<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Microsoft Word のフィールドの更新

Microsoft Word の単一フィールドを更新するには:

1. 更新するフィールドにキャレットを移動します。
1. **F9** を押してフィールドを更新します。

Microsoft Word のすべてのフィールドを更新するには:

1. **Ctrl+A** を押して、ドキュメント内のすべてのコンテンツを選択します。
1. **F9** を押して、選択範囲内にあるすべてのフィールドを更新します。

### フィールドコードとフィールド結果の表示を切り替える

Microsoft Word の単一フィールドのフィールド コードを切り替えるには:

1. キャレットを目的のフィールドに移動します。
1. **SHIFT+F9** を押して、このフィールドだけのフィールド コードを切り替えます。

Microsoft Word のすべてのフィールドのフィールド コードを切り替えるには:

1.**ALT+F9**を押します

### Microsoft Word でのフィールドの静的テキストへの変換

Microsoft Word で動的フィールドを静的テキストに変換するには:

1. 変換するフィールドにキャレットを移動します。
1. **Ctrl+Shift+F9** を押してフィールドを静的テキストに変換します。

### Microsoft Word でのフィールドの削除

Microsoft Word でフィールドを削除するには:

1. フィールドを構成するコンテンツ全体を選択します。フィールド コードが表示されている場合は、開始中括弧と終了中括弧も選択する必要があります。
1. **Delete** を押してフィールド全体を削除します。

## Aspose.Words のフィールド

ドキュメントが Aspose.Words にロードされると、ドキュメントのフィールドが個別のコンポーネント (ノード) のセットとして Aspose.Words Document Object Model にロードされます。単一のフィールドは、[FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)、[FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/)、および [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) ノードのコレクションとして、これらのノード間のコンテンツとともにロードされます。フィールドにフィールド結果がない場合、[FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ノードは存在しません。これらのノードはすべて、常にインラインで ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) または [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) の子として) 見つかります。

フィールド コードを構成するコンテンツは、[FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) と [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) の間に [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ノードとして格納されます。フィールドの結果は [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) ノードと [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) ノードの間に保存され、さまざまなタイプのコンテンツで構成されます。通常、フィールド結果には [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ノードで構成されるテキストのみが含まれますが、[FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) ノードがまったく別の段落に配置される可能性があるため、フィールド結果が [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ノードや [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ノードなどのブロック レベル ノードで構成されることもあります。

Aspose.Words では、各 **FieldXXX** ノードは [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/) から派生します。このクラスは、[FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) プロパティを通じて、指定されたノードによって表されるフィールドのタイプをチェックするプロパティを提供します。たとえば、[FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) はドキュメント内の差し込みフィールドを表します。

{{% alert color="primary" %}}

Word 文書には、**FieldXXX** ノードのコレクションとして Aspose.Words にインポートされない特定のフィールドがいくつかあります。たとえば、`LINK` フィールドと `INCLUDEPICTURE` フィールドは [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) オブジェクトとして Aspose.Words にインポートされます。このオブジェクトは、通常これらのフィールドに保存されている画像データを操作するためのプロパティを提供します。

フォーム フィールドも、独自の特別なクラスとして Aspose.Words にインポートされます。 [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) クラスは Word 文書内のフォーム フィールドを表し、フォーム フィールドに固有の追加メソッドを提供します。

{{% /alert %}}

### 更新中にサポートされるフィールド

次のフィールドの計算は、Aspose.Words の現在のバージョンでサポートされています。

- = (数式フィールド)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (TOT および TOF を含む)
- TC

### 高度な解析

Aspose.Words は Microsoft Word がフィールドを処理する方法に従い、その結果、以下を正しく処理します。

- 入れ子になったフィールド
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- フィールド引数は、ネストされたフィールドの結果である場合があります。
- フィールドは、フィールド結果だけでなくフィールド コード内にもネストできます。
- スペース/スペースなし、引用符/引用符なし、フィールド内のエスケープ文字など:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 複数の段落にまたがるフィールド。

#### 数式フィールド

Aspose.Words は、数式エンジンの非常に本格的な実装を提供し、以下をサポートします。

- 算術演算子および論理演算子:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 機能：
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ブックマークへの参照:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 数値書式設定スイッチ:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

式内の次の関数がサポートされています: `ABS`、`AND`、`AVERAGE`、`COUNT`、`DEFINED`、`FALSE`、`IF`、`INT`、`MAX`、`MIN`、`MOD`、`NOT`、`OR`、`PRODUCT`、`ROUND`、`SIGN`、`SUM`、TRUE。

#### `IF` および `COMPARE` フィールド

Aspose.Words が簡単に計算できる `IF` 式の一部を見れば、この機能がいかに強力であるかがわかるはずです。

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` および `TIME` フィールド

Aspose.Words は、Microsoft Word で使用可能なすべての日付と時刻の書式設定スイッチをサポートしています。いくつかの例を次に示します。

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Mergeフィールド

Aspose.Words は、ドキュメント内の mail merge フィールドの複雑さに制限を設けず、ネストされた `IF` フィールドと数式フィールドをサポートし、数式を使用して差し込みフィールドの名前を計算することもできます。

Aspose.Words がサポートする mail merge フィールドの例をいくつか示します。

- Mail merge フィールド スイッチ:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 数式内のネストされた差し込みフィールド:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 実行時に差し込みフィールドの名前を計算します。
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- データ ソース内の次のレコードへの条件付き移動:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### フォーマットスイッチ

ドキュメント内のフィールドには、結果の値の書式設定方法を指定する書式設定スイッチを含めることができます。 Aspose.Words は次の形式スイッチをサポートしています。

- @ - 日付と時刻の形式
- \\\# - 数値の書式設定
- \\\\\\\\* キャップ
- \\\\\\\\* FirstCap
- \\\\\\\\* より低い
- \\\\\\\\* 上部
- \\\\\\\\* CHARFORMAT – フィールド コードの最初の文字に従って結果をフォーマットします。
- \\\\\\\\* MERGEFORMAT – 古い結果のフォーマットに従って結果をフォーマットします。

#### Date とフィールドの数値フォーマット

Aspose.Words がフィールド結果を計算する場合、多くの場合、文字列を数値または日付値に解析し、文字列にフォーマットし直す必要があります。デフォルトでは、Aspose.Words はフィールド更新中にフィールド値を計算するときに、現在のスレッド カルチャを使用して解析とフォーマットを実行します。そしてmail merge。 [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) クラスの形式で提供されるオプションもあり、フィールドの更新中にどのカルチャを使用するかをさらに制御できます。

- デフォルトでは、[FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) プロパティは、現在のスレッド カルチャを使用してフィールドをフォーマットする [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) に設定されます。
- このプロパティを [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) に設定すると、フィールドのフィールド コードから設定された言語が代わりに書式設定に使用されます。

#### 現在のスレッドのカルチャを使用したフォーマット

フィールド計算中に使用されるカルチャを制御するには、フィールド計算を呼び出す前に、**ロケール.setlocale** メソッドを使用して選択したカルチャを設定します。
以下の例は、更新中にフィールドの書式設定で使用されるカルチャを変更する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

現在のカルチャを使用してフィールドを書式設定すると、システムはフィールド更新時にドキュメント内のすべてのフィールドの書式設定方法を簡単かつ一貫して制御できるようになります。

#### ドキュメント内のカルチャを使用した書式設定

一方、Microsoft Word は、フィールド内で見つかったテキストの言語 (具体的には、フィールド コードからのラン) に基づいて、個々のフィールドをフォーマットします。フィールドの更新中に、これが望ましい動作となる場合があります。たとえば、さまざまな言語で構成されたコンテンツを含むグローバル化されたドキュメントがあり、テキストで使用されているロケールを各フィールドに適用したい場合などです。 Aspose.Words もこの機能をサポートしています。

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスは、ドキュメント内でフィールドを更新する方法を制御するために使用できるメンバーを含む [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) プロパティを提供します。以下の例は、フィールド更新および mail merge の際の日付書式設定に使用されるカルチャがどこから選択されるかを指定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## フィールドコードとフィールド結果の検索

[DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) を使用して挿入されたフィールドは [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) オブジェクトを返します。これは、フィールドのそのようなプロパティをすばやく検索するための便利なメソッドを提供するファサード クラスです。ドキュメント内の差し込みフィールドの名前のみを検索する場合は、代わりに組み込みメソッド [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) を使用できることに注意してください。以下の例は、文書内のすべての差し込みフィールドの名前を取得する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## 差し込みフィールドの名前を変更する方法

以下の例は、Word 文書内の差し込みフィールドの名前を変更する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
