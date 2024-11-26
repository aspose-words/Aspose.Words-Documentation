---
title: Javaでのテーブルの書式設定
second_title: Aspose.WordsのためのJava
articleTitle: テーブルの書式設定の適用
linktitle: テーブルの書式設定の適用
description: "詳細な表の書式設定。 Javaを使用してテーブルのすべての部分を書式設定します。"
type: docs
weight: 70
url: /ja/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

テーブルの各要素は、異なる書式設定で適用できます。 たとえば、テーブルの書式設定はテーブル全体に適用され、行の書式設定は特定の行のみに適用され、セルの書式設定は特定のセルのみに適用されます。

Aspose.Wordsは、テーブルに書式設定を取得して適用するための豊富なAPIを提供します。 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)、[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)、および[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)ノードを使用して書式設定を設定できます。

この記事では、さまざまなテーブルノードに書式設定を適用する方法と、どのテーブル書式設定設定Aspose.Wordsがサポートするかについて説明します。

## 異なるノードに書式設定を適用する

このセクションでは、さまざまなテーブルノードに書式設定を適用する方法を見ていきます。

### テーブルレベルの書式設定

テーブルに書式設定を適用するには、[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)、[PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/)、および[TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/)クラスを使用して、対応する**Table**ノードで使用可能なプロパティを使用できます。

{{% alert color="primary" %}}

テーブルのプロパティを適用するには、テーブルに少なくとも1つの行が必要です。 これは、[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)を使用してテーブルを構築する場合、この書式設定は[InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()の最初の呼び出しの後、または最初の行がテーブルに追加された後、またはノードがDOMに直接挿入された後に行う必要があることを意味します。

{{% /alert %}}

以下の図は、Microsoft Wordの**Table**書式設定機能と、Aspose.Wordsの対応するプロパティの表現を示しています。

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

次のコード例は、テーブルにアウトラインの境界線を適用する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

次のコード例は、すべての境界線を有効にしてテーブルを構築する方法を示しています(grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### 行レベルの書式設定

行レベルの書式設定は、[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)、[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)、および[RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/)クラスを使用して制御できます。

{{% alert color="primary" %}}

A**Row**はa**Table**の子ノードのみであることに注意してください。 同時に、書式設定を適用できるように、**Row**に少なくとも一つの**Cell**がなければなりません。

{{% /alert %}}

以下の図は、Microsoft Wordの**Row**書式設定機能と、Aspose.Wordsの対応するプロパティの表現を示しています。

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

次のコード例は、テーブルの行の書式を変更する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### セルレベルの書式設定

セルレベルの書式設定は、[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)、[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)、および[CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/)クラスによって制御されます。

{{% alert color="primary" %}}

A**Cell**はA**Row**の子ノードのみであることに注意してください。 同時に、書式設定を適用できるように、**Cell**に少なくとも一つの[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)がなければなりません。

**Paragraph**に加えて、**Table**を**Cell**に挿入することもできます。

{{% /alert %}}

以下の図は、Microsoft Wordの**Cell**書式設定機能と、Aspose.Wordsの対応するプロパティの表現を示しています。

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

次のコード例は、テーブルセルの書式を変更する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

次のコード例は、セルの内容の左/上/右/下に追加するスペースの量（ポイント単位）を設定する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## 行の高さの指定

行の高さを設定する最も簡単な方法は、**DocumentBuilder**を使用することです。 適切な**RowFormat**プロパティを使用して、デフォルトの高さ設定を設定するか、テーブル内の各行に異なる高さを適用できます。

Aspose.Wordsでは、テーブルの行の高さは次のように制御されます:

- 行の高さプロパティ-[Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- 指定された行の高さルールプロパティ–[HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

同時に、行ごとに異なる高さを設定することができます–これにより、テーブル設定を広く制御できます。

{{% alert color="primary" %}}

オブジェクトの高さを指定するためのルールオプションは、[HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/)フィールドを使用して設定できます。

{{% /alert %}}

次のコード例は、単一のセルを含むテーブルを作成し、行の書式設定を適用する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## テーブル幅とセル幅の指定

Microsoft Word文書内のテーブルには、テーブルと個々のセルのサイズを変更するいくつかの異なる方法があります。 これらのプロパティを使用すると、テーブルの外観と動作を大幅に制御できるため、Aspose.WordsはMicrosoft Wordのようにテーブルの動作をサポートします。

テーブル要素には、テーブル全体の幅と個々のセルの計算方法に影響を与える可能性のあるいくつかの異なるプロパティが存在することを知っておく:

- テーブルの好ましい幅
- 個々のセルの優先幅
- テーブル上でのオートフィットを許可する

この記事では、さまざまなテーブル幅計算プロパティがどのように機能するか、およびテーブル幅計算を完全に制御する方法について詳しく説明します。 これは
テーブルレイアウトが期待どおりに表示されないような場合に知っておくと特に便利です。

{{% alert color="primary" %}}

ほとんどの場合、テーブルの幅よりも優先セルが推奨されます。 推奨されるセルの幅は、Aspose.Wordsモデルと同様にDOCX形式の仕様に沿っています。

セルの幅は、実際にはDOCX形式の計算値です。 実際のセルの幅は、多くのものに依存する可能性があります。 たとえば、ページの余白や優先テーブルの幅を変更すると、実際のセルの幅に影響を与える可能性があります。

推奨されるセル幅は、ドキュメントに格納されているセルプロパティです。 これは何にも依存せず、セルのテーブルやその他のプロパティを変更しても変更されません。

{{% /alert %}}

{{% alert color="primary" %}}

この記事で説明されているすべてのプロパティとメソッドは、Microsoft Wordでのテーブルの動作に関連しています。 したがって、ほとんどの場合、プログラムでテーブルを構築しているが、目的のテーブルを作成するのが難しい場合は、まずMicrosoft Wordで視覚的に作成してから、

{{% /alert %}}

### 好みの幅を使用する方法

テーブルまたは個々のセルの希望の幅は、要素が収まるように努力するサイズであるpreferred widthプロパティを介して定義されます。 すなわち、好ましい幅は、テーブル全体または個々のセルに対して指定することができる。 状況によっては、この幅を正確に合わせることができない場合がありますが、実際の幅はほとんどの場合、この値に近くなります。

適切な優先幅の型と値は、[PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/)クラスのメソッドを使用して設定されます:

- autoまたは"優先幅なし"を指定するための[Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO)フィールド
- パーセンテージ幅を指定する[FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double)メソッド
- ポイント単位で幅を指定する[FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double)メソッド

下の写真は、Microsoft Wordの*preferred width setting features*とAspose.Wordsの対応するプロパティの表現を示しています。

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

これらのオプションがドキュメント内の実際のテーブルにどのように適用されるかの例は、下の図で見ることができます。

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

表で優先幅を使用する前に、表に少なくとも1つの行が含まれていることを確認する必要があります。 これは、Microsoft WordドキュメントまたはAspose.Wordsで作成されたドキュメント内のこのようなテーブル書式がテーブルの行に格納されるためです。

{{% /alert %}}

#### 優先するテーブルまたはセルの幅を指定します

Aspose.Wordsでは、テーブルとセルの幅は[Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth)プロパティと[CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth)プロパティを使用して設定され、[PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/)列挙で使用できるオプションがあります:

- **Auto**は、優先幅セットがないことに相当します
- **Percent**は、ウィンドウまたはコンテナのサイズ内の使用可能なスペースに相対的に要素を適合させ、使用可能な幅が変更されたときに値を再計算します
- **Points**は、ポイント単位で指定された幅の要素に対応します

{{% alert color="primary" %}}

デフォルトでは、テーブルはページ上の使用可能なスペースの100%に適合していると記述できます。 この場合、これはテーブルが左右のページ余白の間のスペースを占有しようとすることを意味します。

{{% /alert %}}

[Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth)プロパティを使用すると、コンテナに対して優先される幅が調整されます。page、text column、またはネストされたテーブルの場合は外部テーブルcellです。

次のコード例は、テーブルをページ幅の50%に自動適合させるように設定する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

指定されたセルで[CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth)プロパティを使用すると、その優先幅が調整されます。

次のコード例は、さまざまな優先幅設定を設定する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### 優先する幅のタイプと値を検索する

[Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType)プロパティと[Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue)プロパティを使用して、目的のテーブルまたはセルの優先幅の詳細を見つけることができます。

次のコード例は、テーブルセルの優先幅の種類を取得する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### オートフィットを設定する方法

[AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit)プロパティを使用すると、選択した基準に従ってテーブル内のセルを拡大および縮小できます。 たとえば、**AutoFit to Window**オプションを使用してテーブルをページの幅に合わせ、**AutoFit to Content**オプションを使用して各セルをその内容に応じて拡大または縮小できます。

{{% alert color="primary" %}}

さらに、**AllowAutoFit**プロパティを優先セル幅と組み合わせて使用すると、コンテンツに自動的に適合するセルを書式設定できますが、初期幅もあります。 必要に応じて、セル幅はこの幅を超えて拡大することができます。

{{% /alert %}}

デフォルトでは、Aspose.Wordsは**AutoFit to Window**を使用して新しいテーブルを挿入します。 テーブルのサイズは、使用可能なページ幅に応じて変更されます。 テーブルのサイズを変更するには、[AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int)メソッドを呼び出します。 このメソッドは、テーブルに適用される自動調整の種類を指定する[AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/)列挙体を受け入れます。

Autofitメソッドは、実際にはテーブルに異なるプロパティを同時に適用するショートカットであることを知っておくことが重要です。 これらは、実際にテーブルに観察された動作を与えるプロパティです。 各オートフィットオプションについて、これらのプロパティについて説明します。

次のコード例は、内容に応じて各セルを縮小または拡大するようにテーブルを設定する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

次の表を使用して、さまざまな自動フィット設定をデモとして適用します。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFitテーブルからウィンドウへ

ウィンドウへの自動フィットがテーブルに適用されると、実際には次の操作が舞台裏で実行されます:

1. **Table.AllowAutoFit**プロパティは、**Table.PreferredWidth**の値100を使用して、利用可能なコンテンツに合わせて列のサイズを自動的に変更することができます%
2. **CellFormat.PreferredWidth**はすべてのテーブルセルから削除されます
   {{% alert color="primary" %}}
   これは、各セルの優先幅が現在のサイズと内容に基づいて適切な値に設定されるMicrosoft Wordの動作とはわずかに異なることに注意してください。 Aspose.Wordsは優先幅を更新しないので、代わりにクリアされます。
   {{% /alert %}}
3. 列の幅は現在のテーブルの内容に対して再計算されます-最終的な結果は、使用可能な幅全体を占めるテーブルになります
4. ユーザーがテキストを編集すると、テーブル内の列の幅が自動的に変更されます

次のコード例は、テーブルをページ幅に自動フィットさせる方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

これらのオプションが上の表にどのように適用されるかの例は、下の図で見ることができます。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFitテーブルからコンテンツへ

テーブルがコンテンツを自動入力されると、次の手順が実際に舞台裏で実行されます:

1. **Table.AllowAutoFit**プロパティは、内容に応じて各セルのサイズを自動的に変更できるようになっています

2. 優先テーブル幅は**Table.PreferredWidth**から削除され、**CellFormat.PreferredWidth**はテーブルセルごとに削除されます
   {{% alert color="primary" %}}

   この自動調整オプションは、Microsoft Wordのように、セルから優先幅を削除することに注意してください。 列のサイズを維持し、内容に合わせて列を増減する場合は、autofitショートカットを使用するのではなく、**Table.AllowAutoFit**プロパティを独自に**True**に設定する必要があります。{{% /alert %}}

3. 最終的な結果は、ユーザーがテキストを編集するときにコンテンツに最適なサイズになるように、列幅とテーブル全体の幅が自動的にサイズ変更されるテー

次のコード例は、テーブルをそのコンテンツに自動フィットさせる方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

これらのオプションが上の表にどのように適用されるかの例は、下の図で見ることができます。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### テーブルでAutoFitを無効にし、固定列幅を使用する

テーブルの自動調整が無効になっていて、代わりに固定列幅が使用されている場合は、次の手順が実行されます:

1. **Table.AllowAutoFit**プロパティが無効になっているため、列はコンテンツに拡大または縮小されません
2. テーブル全体の優先幅は**Table.PreferredWidth**から削除され、**CellFormat.PreferredWidth**はすべてのテーブルセルから削除されます
3. 最終的な結果は、列幅が[CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth)プロパティによって決定され、ユーザーがテキストを入力したとき、またはページのサイズが変更されたときに列が自動的にリ

{{% alert color="primary" %}}

**CellFormat.Width**に幅が指定されていない場合は、デフォルト値の1インチ(72ポイント)が使用されます。

{{% /alert %}}

次のコード例は、autofitを無効にし、指定したテーブルの固定幅を有効にする方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

これらのオプションが上の表にどのように適用されるかの例は、下の図で見ることができます。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### セル幅を計算する際の優先順位

Aspose.Wordsは、ユーザーが[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)を含む複数のオブジェクトを介してテーブルまたはセルの幅を定義することができます–その[Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth)プロパティは、主に以前のバージョンから残

**CellFormat.Width**プロパティは、テーブル内に既に存在する他のwidthプロパティに応じて異なる動作をすることを知っておくことが重要です。

Aspose.Wordsは、セル幅の計算に次の順序を使用します:

| ご注文 | プロパティ | 説明 |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
|  | [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit)が決定されます | **AutoFit**が有効な場合:<br>-テーブルは、コンテンツに対応するために、優先幅を超えて成長することがあります–それは通常、優先幅以下に縮小しません<br>-**CellFormat.Width**値への変更は無視され、代わりにセルはその内容に適合します |
|  | 値が**Points**または**Percent**の[PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) | **CellFormat.Width**は無視されます |
|  | 値が**Auto**の[PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) | **CellFormat.Width**の値がコピーされ、セルの優先幅（ポイント単位）になります。 |

{{% alert color="primary" %}}

Widthプロパティへの変更は優先幅では更新されず、代わりに優先幅に適用する必要があります。

{{% /alert %}}

{{% alert color="primary" %}}

固定テーブルレイアウトを作成するときに、セルの幅を指定します。 幅のないセルをDOC形式で保存することはできません。 DOCXのようなDOC以外の文書形式では、原則として、固定テーブルレイアウトで幅のないセルを保存できます。

{{% /alert %}}

## セル間の間隔を許可する

Microsoft Wordの"セル間隔"オプションと同様に、テーブルセル間に追加のスペースを取得または設定できます。 これは[AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing)プロパティを使用して行うことができます。

これらのオプションがドキュメント内の実際のテーブルにどのように適用されるかの例は、下の図で見ることができます。

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

次のコード例は、セル間の間隔を設定する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## 枠線と陰影を適用する

境界線と陰影は、[Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean)、[Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color)、[Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color)を使用してテーブル全体に適用するか、[CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders)と[CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)を使用して特定のセルにのみ適用できます。 さらに、行の境界線は[RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders)を使用して設定できますが、この方法ではシェーディングを適用できません。

下の図は、Microsoft Wordの境界線と影の設定、およびAspose.Wordsの対応するプロパティを示しています。

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


次のコード例は、異なる境界線と陰影を使用してテーブルとセルを書式設定する方法を示しています:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
