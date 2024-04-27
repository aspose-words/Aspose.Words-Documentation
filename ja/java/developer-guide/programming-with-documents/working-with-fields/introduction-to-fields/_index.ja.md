---
title: フィールドの紹介 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: フィールド紹介
linktitle: フィールド紹介
description: "フィールドは、詳細、フィールドコード、フィールド結果で説明しています。 Aspose.Words お問い合わせ Javaお問い合わせ"
type: docs
weight: 10
url: /ja/java/introduction-to-fields/
---

Aspose.Words サーバ側処理用に設計されたクラスライブラリです。 Microsoft Word 次の方法でフィールドをサポート:

- 文書内のすべてのフィールドは、オープン/セーブと変換中に保存されます
- ほとんどのフィールドの結果を更新することが可能

この記事では、フィールド構造、フィールドのサポートについて詳しく説明します。 Aspose.Words, そのような分野との仕事の細部。

## フィールド構造

フィールドは:

- - - フィールド・スタートとセパレータ・ノードは、フィールド・コードを構成するコンテンツ (通常はプレーン・テキストとして) を囲むために使用されます。
- フィールドセパレータとフィールドエンドはフィールド結果を渡します。 テキストの実行から段落まで、さまざまな種類のコンテンツで構成されます。
- 一部のフィールドにはセパレータがないため、コンテンツ全体がフィールドコードを構成することを意味します。
- - - フィールドコードはフィールドの挙動を定義し、フィールド識別子とフィールド名やスイッチなどの他のパラメーターで構成されます。
- - - フィールド結果は、フィールドの最新の評価が含まれています。 フィールド結果にこの値が保存され、ユーザーに表示される値です。 フィールドにフィールドの結果がないため、ドキュメントに何も表示されません。 同様に、一部のフィールドはまだ更新されていないため、フィールド結果はありません。

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

フィールドコードを構成するコンテンツはそのまま保存されます。 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) ノード間のノード [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) そして、 [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/)お問い合わせ フィールド結果が保存されます **FieldSeparator** そして、 [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) ノードは様々な種類のコンテンツから構成できます。 通常フィールドの結果は、ランノードから構成されるテキストのみを含んでいますが、フィールドエンドノードが完全に異なる段落にあることは可能です。そのため、フィールド結果が構成されるようにします。 [ドキュメント内のノードの論理レベル](/words/ja/java/logical-levels-of-nodes-in-a-document/) など **Table** そして、 **Paragraph** ノードも同様に。

フィールドが保存されているかのビューはこちら Aspose.Words 「*DocumentExplorer」* で見つけることができます。 [ギトハブ](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer)お問い合わせ

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## フィールド Aspose.Words Document Object Model ( )DOM)

ドキュメントが読み込まれるとき <span notrans="<span notrans=" Aspose.Words"=""></span>????? ドキュメントのフィールドが読み込まれる Aspose.Words Document Object Model 別のコンポーネント(ノード)のセットとして。 単一のフィールドはコレクションとして読み込まれます **FieldStart**, **FieldSeparator** そして、 **FieldEnd** ノードは、これらのノード間でのコンテンツとともに表示されます。 フィールドがフィールド結果を持っていない場合、フィールドがフィールド結果を持っていない場合、 **FieldSeparator** ノード。 これらのすべてのノードは、常にインライン(子供として) [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) または [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)お問い合わせ

インスタグラム Aspose.Words それぞれの **FieldXXX** ノードの由来 [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/)お問い合わせ このクラスは、指定されたノードで表すフィールドの型をチェックするプロパティを提供します。 [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) プロパティ. 例えば `FieldType.FieldMergeField` ドキュメントのマージフィールドを表します。

{{% alert color="primary" %}}

にインポートされていないWord文書に存在する特定のフィールドがあります Aspose.Words コレクションとして **FieldXXX** ノード。 例えば、 `LINK` フィールドとフィールド `INCLUDEPICTURE` 分野はに輸入されます Aspose.Words として [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) オブジェクト。 このオブジェクトは、これらのフィールドに通常保存されている画像データを扱うプロパティを提供します。 インポートする `INCLUDEPICTURE` フィールドとして **FieldXXX** ノード [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) オプションは、 **true**お問い合わせ

フォームフィールドもインポート Aspose.Words 特別なクラスとして。 ザ・オブ・ザ・ [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) クラスは、Word 文書のフォームフィールドを表し、フォームフィールドに特定の追加のメソッドを提供します。

{{% /alert %}}

## サポートされているフィールド

次のフィールドの計算は、現在のバージョンでサポートされています Aspose.Words:::

- = (形式)
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
- - - `TOC` (TOT・TOFを含む)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## 洗練されたフィールドパーシング

Aspose.Words 方法に従う Microsoft Word フィールドを処理し、その結果、正しく処理します。

- ネストされたフィールド:
  `IF { =OR({ `COMパーカー` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- フィールド引数は、ネストされたフィールドの result になります。
- フィールドはフィールドコード内で、フィールド結果にネストできます
- スペース/スペース、引用符/引用符なし、フィールド内のエスケープ文字など:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- 複数の段落に及ぶフィールド

### フォーミュラフィールド

Aspose.Words 式エンジンの非常に深刻な実装を提供し、以下をサポートします。

- 算術および論理オペレータ:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- 関数:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- ブックマークへの参照:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- 数値整形スイッチ:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

式における次の関数がサポートされています。 `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUEお問い合わせ

### `IF` そして、 `COMPARE` フィールド

ほんの一部 `IF` 表現する Aspose.Words 簡単に計算できるのは、この機能がいかに強力なかという考えを与えるべきです。

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` そして、 `TIME` フィールド

Aspose.Words すべての日付および時間のフォーマット スイッチをで利用できる支えて下さい Microsoft Word, いくつかの例:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge フィールド

Aspose.Words 複雑性に限界を及ぼさない mail merge ドキュメント内のフィールドとネストをサポート `IF` フォームフィールドと、マージフィールドの名前を式で計算することもできます。

いくつかの例 mail merge フィールド Aspose.Words サポート:

- - - Mail merge フィールド スイッチ:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- ネストされたマージフィールドの式:
  `IF { `マージフィールド` Value1 } >= { `マージフィールド` Value2 } True False`
- 実行時にマージフィールドの名前を計算します。
  `MERGEFIELD { `IFについて` { `マージフィールド` Value1 } >= { `マージフィールド` Value2 } FirstName"LastName" }`
- データソースの次のレコードへの条件移動:
  `NEXTIF { `マージフィールド` Value1 } <= { =IF(-2.45 >= 6*{ `マージフィールド` Value2 }, 2, -.45) }`

### フォーマットスイッチ

ドキュメント内のフィールドは、結果の値をフォーマットする方法を指定する整形スイッチを持つことができます。 Aspose.Words 以下のフォーマットスイッチをサポートしています。

- @ - 日付と時刻のフォーマット
- \\\# - 数値フォーマット
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ キャップ
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ ログイン
- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ アッパー
- \\\\\\\\\\* CHARFORMAT - フィールドコードの最初の文字に応じてフォーマット結果
- \\\\\\\\* MERGEFORMAT - 古い結果がフォーマットされた方法に応じてフォーマット結果

### Date フィールドの数値フォーマット

いつか Aspose.Words フィールド結果を計算すると、文字列を数値または日付値にパースし、文字列に戻す必要があります。 デフォルトで Aspose.Words フィールドの更新時にフィールド値を計算するときに、現在のスレッド文化を使用して解析とフォーマットを実行します。 mail mergeお問い合わせ フォームに用意されたオプションもあります。 [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) フィールド更新% でどの文化が使用されるかをさらに制御できるクラス

* デフォルトでは [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) プロパティは、 [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) 現在のスレッド文化を使用してフィールドをフォーマットする
* ※このプロパティは、 [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) そのため、フィールドのフィールドコードから設定された言語は、代わりにフォーマットに使用されます

### 現在のスレッドの文化を使用したフォーマット

フィールドの計算時に使われる文化を制御するには、 **CurrentCulture** フィールドの計算を呼び出す前に、選択した文化にプロパティ。

次のコードの例では、更新中にフィールドをフォーマットするのに使われる文化を変更する方法を示します。

EXAMPLE(パブリックラッパー currentThreadSettings.getLocale() と setLocale() をプライベートの代わりに使用 `Thread.CurrentThread`.カレントカルチャー

フィールドをフォーマットするために、現在の文化を使用して、フィールドの更新中に文書のすべてのフィールドがフォーマットされているかを簡単にそして一貫して制御できます。

### 文書の文化を用いた書式

一方、 Microsoft Word フィールドで見つかったテキストの言語(具体的にはフィールドコードから実行)に基づいて各フィールドをフォーマットします。 フィールドの更新中に、これは、多くの異なる言語で構成されたコンテンツをグローバル化した文書を持っている場合など、目的の行動かもしれません。各フィールドがテキストから使用されているロケールを表彰するのが好きです。 Aspose.Words また、この機能をサポートしています。

ザ・オブ・ザ・ [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) クラスは [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) 文書内のフィールドの更新を制御するために使用できるメンバーを含むプロパティ。

次のコードの例では、フィールドの更新時に日付の書式に使用する文化の指定方法を示します。 mail merge から選ぶ:

アクセサリー
