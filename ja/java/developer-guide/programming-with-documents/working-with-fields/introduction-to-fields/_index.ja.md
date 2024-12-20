﻿---
title: Javaのフィールドの紹介
second_title: Aspose.WordsのためのJava
articleTitle: フィールドの紹介
linktitle: フィールドの紹介
description: "フィールドは、JavaのAspose.Wordsで説明されている詳細、フィールドコード、フィールド結果の機能です。"
type: docs
weight: 10
url: /ja/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Wordsは、Microsoft Wordドキュメントのサーバー側処理用に設計されたクラスライブラリで、次の方法でフィールドをサポートします:

- ドキュメント内のすべてのフィールドは、開く/保存および変換中に保持されます
- ほとんどのフィールドの結果を更新することが可能です

この記事では、フィールド構造、Aspose.Wordsでサポートされているフィールド、およびそのようなフィールドの操作の詳細について説明します。

## フィールド構造

フィールドは次のもので構成されます:

- Field startノードとseparatorノードは、フィールドコードを構成するコンテンツを包含するために使用されます(通常はプレーンテキストとして)。
- フィールドの区切り文字とフィールドの終わりには、フィールドの結果が含まれます。 これは、テキストの実行から段落、表に至るまで、さまざまな種類のコンテンツで構成できます。
- 一部のフィールドには、コンテンツ全体がフィールドコードを構成することを意味する区切り文字がない場合があります。
- フィールドコードは、フィールドの動作を定義し、フィールド識別子と、多くの場合、フィールド名やスイッチなどの他のパラメータで構成されます。
- フィールドの結果には、フィールドの最新の評価が含まれます。 この値はフィールドresultに格納され、ユーザーに表示されます。 一部のフィールドにはフィールド結果がない可能性があるため、ドキュメントには何も表示されません。 同様に、一部のフィールドはまだ更新されていない可能性があるため、フィールドの結果もありません。

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

フィールドコードを構成するコンテンツは、[FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/)と[FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)の間の[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)ノードとして格納されます。 フィールドの結果は**FieldSeparator**ノードと[FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)ノードの間に格納され、さまざまな種類のコンテンツで構成できます。 通常、フィールド結果には実行ノードで構成されるテキストのみが含まれますが、FieldEndノードを完全に別の段落に配置することができ、フィールド結果を次のもので構成することができます [ブロックレベルノード](/words/java/logical-levels-of-nodes-in-a-document/) **Table**や**Paragraph**ノードなども同様です。

ここでは、フィールドがAspose.Wordsにどのように格納されているかを示す"*DocumentExplorer"*の例を使用しています。 [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Aspose.Wordsドキュメントオブジェクトモデル(DOM)のフィールド

ドキュメントがAspose.Wordsにロードされると、ドキュメントのフィールドはAspose.Wordsドキュメントオブジェクトモデルに個別のコンポーネント(ノード)のセットとしてロード 単一のフィールドは、これらのノード間のコンテンツとともに、**FieldStart**、**FieldSeparator**、および**FieldEnd**ノードのコレクションとしてロードされます。 フィールドにフィールド結果がない場合、**FieldSeparator**ノードは存在しません。 これらのノードはすべて、常にインラインで（[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)または[SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)の子として）検出されます。

Aspose.Wordsでは、**FieldXXX**ノードのそれぞれが[FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)から派生します。 このクラスは、[FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/)プロパティを使用して、指定されたノードによって表されるフィールドの型をチェックするプロパティを提供します。 たとえば、`FieldType.FieldMergeField`は文書内の差し込み項目を表します。

{{% alert color="primary" %}}

Word文書には、Aspose.Wordsに**FieldXXX**ノードのコレクションとしてインポートされない特定のフィールドがいくつかあります。 たとえば、`LINK`フィールドと`INCLUDEPICTURE`フィールドは[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)オブジェクトとしてAspose.Wordsにインポートされます。 このオブジェクトは、通常これらのフィールドに格納されているイメージデータを操作するためのプロパティを提供します。 `INCLUDEPICTURE`フィールドを**FieldXXX**ノードとしてインポートするには、[PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField)オプションを**true**として指定する必要があります。

フォームフィールドも、独自の特別なクラスとしてAspose.Wordsにインポートされます。 [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/)クラスは、Word文書内のフォームフィールドを表し、フォームフィールドに固有の追加メソッドを提供します。

{{% /alert %}}

## サポートされているフィールド

現在のバージョンのAspose.Wordsでは、次のフィールドの計算がサポートされています:

- ＝（式）
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
- `TOC` (including TOT and TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## 洗練されたフィールド解析

Aspose.WordsはMicrosoft Wordがフィールドを処理する方法に従い、結果として正しく処理されます:

- ネストされたフィールド:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- field引数は、ネストされたフィールドの結果にすることができます
- フィールドは、フィールドコード内だけでなく、フィールド結果内にネストすることができます
- スペース/スペースなし、引用符/引用符なし、フィールド内のエスケープ文字など:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 複数の段落にまたがるフィールド

### 数式項目

Aspose.Wordsは数式エンジンの非常に深刻な実装を提供し、次のことをサポートします:

- 算術演算子と論理演算子:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 関数:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ブックマークへの参照:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 番号の書式設定スイッチ:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

式では、次の関数がサポートされています: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Aspose.Wordsが簡単に計算できる`IF`式のいくつかだけで、この機能がどれほど強力であるかを知ることができます:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.WordsはMicrosoft Wordで使用可能なすべての日付と時刻の書式設定スイッチをサポートします。:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Mergeフィールド

Aspose.Wordsは、ドキュメント内のMail Mergeフィールドの複雑さに制限を課すことはなく、ネストされた`IF`フィールドと数式フィールドをサポートし、数式を使用して差し込み

Aspose.WordsがサポートするMail Mergeフィールドのいくつかの例:

- Mail mergeフィールドスイッチ:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- 数式内の入れ子になった差し込み項目:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- 実行時に差し込み項目の名前を計算します:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- データソース内の次のレコードへの条件付き移動:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### フォーマットスイッチ

ドキュメント内のフィールドには、結果の値の書式設定方法を指定する書式設定スイッチを含めることができます。 Aspose.Wordsは、次の書式スイッチをサポートします:

- @-日付と時刻の書式設定
- \\\#-数値の書式設定
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT–フィールドコードの最初の文字に従って結果を書式設定します
- \\\\\\\\* MERGEFORMAT–古い結果の書式に従って結果を書式設定します

### フィールドでの日付と数値の書式設定

Aspose.Wordsがフィールドの結果を計算するとき、多くの場合、文字列を数値または日付値に解析し、それを書式設定する必要があります。string.By デフォルトAspose.Wordsは現在のスレッドカルチャを使用して、フィールド更新中およびmail merge中にフィールド値を計算するときに解析と書式設定を実行します。 また、フィールドの更新中に使用されるカルチャをさらに制御できる[FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/)クラスの形式で提供されるオプションもあります%

* 既定では、[FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource)プロパティは現在のスレッドカルチャを使用してフィールドを書式設定する[CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD)に設定されています
* このプロパティは[FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE)に設定できるため、フィールドのフィールドコードから設定された言語が代わりに書式設定に使用されます

### 現在のスレッドのカルチャを使用した書式設定

フィールド計算中に使用されるカルチャを制御するには、フィールド計算を呼び出す前に**CurrentCulture**プロパティを任意のカルチャに設定するだけです。

次のコード例は、更新中にフィールドの書式設定で使用されるカルチャを変更する方法を示しています:

EXAMPLE(パブリックラッパーCurrentThreadSettingsを使用します。プライベート`Thread.CurrentThread`の代わりにgetLocale()とsetLocale()。CurrentCulture)

現在のカルチャを使用してフィールドの書式設定を行うと、フィールドの更新時にドキュメント内のすべてのフィールドの書式設定方法を簡単かつ一貫して制御することができます。

### ドキュメント内のカルチャを使用した書式設定

一方、Microsoft Wordは、フィールドで見つかったテキストの言語（具体的には、フィールドコードからの実行）に基づいて、個々のフィールドを書式設定します。 たとえば、さまざまな言語で構成されたコンテンツを含むグローバル化されたドキュメントがあり、各フィールドがテキストから使用されるロケールを尊重するようにしたい場合など、フィールドの更新中にこれが望ましい動作になることがあります。 Aspose.Wordsもこの機能をサポートしています。

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)クラスは、ドキュメント内でフィールドがどのように更新されるかを制御するために使用できるメンバーを含む[FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions)プロパティを提供します。

次のコード例は、フィールドの更新時に日付の書式設定に使用されるカルチャとMail Mergeを選択する場所を指定する方法を示しています:

EXAMPLE
