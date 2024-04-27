---
title: テーブルのフォーマット Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: テーブルのフォーマットを適用します
linktitle: テーブルのフォーマットを適用します
description: "細部の表のフォーマット。 使用方法 Java テーブルのあらゆる部分をフォーマットするため。"
type: docs
weight: 70
url: /ja/java/applying-formatting/
---

テーブルの各要素は異なるフォーマットで適用できます。 たとえば、テーブルの書式は、特定の行だけに整形する行、特定のセルだけに整形するセルです。

Aspose.Words 豊富な API フォーマットをテーブルに取得し、適用するために。 使うことができます。 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), そして、 [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) フォーマットを設定するノード。

この記事では、異なるテーブルノードとどのようなテーブルのフォーマット設定を適用する方法について説明します。 Aspose.Words サポート

## 別のノードにフォーマットを適用

このセクションでは、様々なテーブルノードのフォーマットを適用します。

### テーブルレベルのフォーマット

対応するテーブルに書式を適用するには、対応するプロパティを使用できる **Table** ノードを使用して [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), そして、 [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) クラス。

{{% alert color="primary" %}}

表は、テーブルのプロパティが適用される前に少なくとも1行を持っている必要があります。 つまり、テーブルをテーブルで構築するとき [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), この書式は、最初の呼び出し後に行う必要があります [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell())、または最初の行がテーブルに追加された後、またはノードが直接入力したときに DOMお問い合わせ

{{% /alert %}}

下の写真は、次の表現を示しています **Table** フォーマット機能 Microsoft Word およびその対応するプロパティ Aspose.Wordsお問い合わせ

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

以下のコードの例では、輪郭の境界をテーブルに適用する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

次のコードの例では、すべての境界が有効になっているテーブルを作成する方法を示します(グリッド):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### 列レベルのフォーマット

Row-level** の書式設定はを使用して制御することができます [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), そして、 [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) クラス。

{{% alert color="primary" %}}

注意: **Row** 子ノードのみが **Table**お問い合わせ 同時に、少なくとも1つである必要があります **Cell** お問い合わせ **Row** フォーマットが適用できるようにします。

{{% /alert %}}

下の写真は、次の表現を示しています **Row** フォーマット機能 Microsoft Word およびその対応するプロパティ Aspose.Wordsお問い合わせ

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

次のコードの例では、テーブル行の書式を変更する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### セルレベルフォーマット

セルレベルのフォーマットは、 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), そして、 [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) クラス。

{{% alert color="primary" %}}

注意: **Cell** 子ノードのみが **Row**お問い合わせ 同時に、少なくとも1つである必要があります [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) お問い合わせ **Cell** フォーマットが適用できるようにします。

その他にも **Paragraph**, インサートもできます **Table** お問い合わせ **Cell**お問い合わせ

{{% /alert %}}

下の写真は、次の表現を示しています **Cell** フォーマット機能 Microsoft Word およびその対応するプロパティ Aspose.Wordsお問い合わせ

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

次のコードの例では、テーブルセルの書式を変更する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

次のコードの例では、セルのコンテンツの左/上/右/下に追加するスペース(ポイント)の量を設定する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## 行の高さを指定する

行の高さを設定する最も簡単な方法は、 **DocumentBuilder**お問い合わせ 適切な使用 **RowFormat** プロパティは、デフォルト高さの設定を設定したり、テーブル内の各行の異なる高さを適用することができます。

インスタグラム Aspose.Words, テーブルの列の高さは制御されます:

- 行の高さプロパティ - [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- 与えられた行の高さルールプロパティ - [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

同時に、各行ごとに異なる高さを設定できます。これにより、テーブルの設定を広く制御できます。

{{% alert color="primary" %}}

オブジェクトの高さを指定するためのルールオプションは、 [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) フィールド。

{{% /alert %}}

次のコードの例では、単一セルを含むテーブルを作成し、行の書式を適用する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## テーブルとセルの幅を指定する

テーブル Microsoft Word 文書は、テーブルと個々のセルのサイズを変更するいくつかの異なる方法を提供します。 これらのプロパティは、テーブルの外観と動作をかなり制御できるようにします。 Aspose.Words テーブルの動作をサポート Microsoft Wordお問い合わせ

テーブル要素は、テーブル全体テーブルの幅や個々のセルの幅に影響を与えることができるいくつかの異なる特性を提示していることを知ることが重要です。

- テーブルの優先幅
- 個々の細胞の優先幅
- テーブルのオートフィットを許可する

この記事では、さまざまなテーブル幅の計算特性が機能し、テーブル幅の計算を完全に制御する方法について説明します。 お問い合わせ
特にテーブルレイアウトが期待どおりに表示されないような場合に知っておくのに便利です。

{{% alert color="primary" %}}

ほとんどの場合、テーブル幅よりも優先セルが推奨されます。 好みのセル幅はDOCXのフォーマット指定およびまたラインで多くあります Aspose.Words モデル。

セル幅は、実際にはDOCX形式の計算値です。 実際のセル幅は、多くのものに依存することができます。 たとえば、ページマージンまたは優先テーブル幅の変更は、実際のセル幅に影響を及ぼす可能性があります。

推奨セル幅は、ドキュメントに保存されているセルプロパティです。 セルの表または他のプロパティを変更すると、何も依存しません。

{{% /alert %}}

{{% alert color="primary" %}}

この記事に記載されているすべてのプロパティとメソッドは、テーブルがどのように機能するかに関連しています Microsoft Wordお問い合わせ ほとんどの場合、テーブルをプログラム的に構築しているが、目的のテーブルを作成するのが難しい場合は、代わりにそれを視覚的に作成することができます Microsoft Word まず、書式値をアプリケーションにコピーするだけです。

{{% /alert %}}

### 推奨幅を使用する方法

テーブルまたは個々のセルの所望の幅は、要素が合うように努力するサイズである、優先する幅プロパティを通じて定義されます。 つまり、テーブル全体または個々のセルに対して優先する幅を指定できます。 一部の状況では、この幅を正確に収まることはできませんが、実際の幅はほとんどの場合、この値に閉じられます。

適切な幅タイプと値は、メソッドを使用して設定されます。 [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) クラス:

- ・ [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) フィールドは、自動または「好ましい幅を指定しない」
- ・ [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) パーセンテージ幅を指定する方法
- ・ [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) ポイントの幅を指定する方法

下の写真は、* 優先幅設定機能*の表現を示しています Microsoft Word およびその対応するプロパティ Aspose.Wordsお問い合わせ

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

ドキュメント内の実際のテーブルにこれらのオプションが適用される例は、下図で見ることができます。

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

希望する幅をテーブルで使用できる前に、テーブルが少なくとも1列含まれていることを確認してください。 これは、このようなテーブルの書式を Microsoft Word 文書または文書作成 Aspose.Words テーブルの行に格納されます。

{{% /alert %}}

#### 優先テーブルまたはセル幅を指定する

インスタグラム Aspose.Words, テーブルとセルの幅は、 [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) プロパティとプロパティ [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) プロパティ、オプションあり [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 列挙:

- - - **Auto**, 好まれる幅セット無しに等しい
- - - **Percent**, ウィンドウまたはコンテナサイズの利用可能なスペースに相対的に要素に適合し、利用可能な幅が変化したときに値を再計算します。
- - - **Points**, ポイントの指定した幅の要素に対応する

{{% alert color="primary" %}}

デフォルトでは、テーブルはページ上の利用可能なスペースの100%に収まるように記述できます。 この場合、テーブルは左と右のページマージンの間にスペースを占有しようとします。

{{% /alert %}}

使い方 [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) プロパティは、ネストされたテーブルの場合、そのコンテナ:ページ、テキスト列、またはテーブルセルの相対的な優先幅を調整します。

次のコードの例では、テーブルをページの幅の50%にオートフィットするように設定する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

使い方 [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) 特定のセル上のプロパティは、その優先幅を調整します。

次のコードの例では、異なる幅設定を設定する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### 好まれる幅のタイプおよび価値を見つけて下さい

使うことができます。 [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) そして、 [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) 目的のテーブルか細胞の好まれた幅の細部を見つける特性。

以下のコード例では、テーブルセルの優先幅タイプを取得する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### オートフィットを設定する方法

ザ・オブ・ザ・ [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) プロパティは、選択した基準に従ってセルを成長し、縮小することができます。 例えば、 **窓へのオートフィット** ページの幅にテーブルを合わせるオプション **コンテンツへのオートフィット** 各セルがコンテンツに応じて成長または縮小できるようにするオプション。

{{% alert color="primary" %}}

さらに、 **AllowAutoFit** プロパティは、好みのセル幅と組み合わせて、そのコンテンツに自動的に収まるセルのフォーマットに使用できますが、初期幅もあります。 必要に応じて、セル幅はこの幅を過ぎて成長させることができます。

{{% /alert %}}

デフォルトでは、 Aspose.Words 新規テーブルをインサートする **窓へのオートフィット**お問い合わせ 表は、利用可能なページ幅に応じてサイズされます。 テーブルのサイズを変更するには、 [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) メソッド。 このメソッドは、 [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) どのようなオートフィットがテーブルに適用されるかを指定する列挙。

autofitメソッドは、実際にテーブルに異なるプロパティを同時に適用するショートカットであることを知っていることが重要です。 これらは、実際にテーブルに観察された行動を与える特性です。 各オートフィットオプションについては、これらのプロパティについて説明します。

次のコードの例では、各セルを縮小または成長させるためのテーブルをその内容に応じて設定する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

デモとして各種オートフィット設定を適用するには、次の表を使用します。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### 窓へのオートフィットテーブル

ウィンドウへのオートフィットがテーブルに適用されると、実際にシーンの後ろに次の操作が行われます。

1。 ザ・オブ・ザ・ **Table.AllowAutoFit** プロパティは、利用可能なコンテンツに合ったカラムを自動的にサイズ変更できるようにします。 **Table.PreferredWidth** 100%の価値
2。 **CellFormat.PreferredWidth** すべてのテーブルセルから削除されます
      {{% alert color="primary" %}}
   これは少し異なることに注意してください Microsoft Word 各セルの優先幅が現在のサイズとコンテンツに基づいて適切な値に設定される動作。 Aspose.Words 推奨幅を更新しないので、代わりにクリアされます。
      {{% /alert %}}
3。 列幅は、現在のテーブルコンテンツに再計算されます。最後には、利用可能な幅全体を占めるテーブルです。
4。 ユーザーがテキストを編集すると、テーブルの列の幅が自動的に変化します

次のコードの例では、テーブルをページ幅にオートフィットする方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

上記のテーブルにこれらのオプションが下図で表示される例です。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### コンテンツへのオートフィットテーブル

テーブルがコンテンツを自動入力すると、次の手順は実際に舞台裏で行われます。

1。 ザ・オブ・ザ・ **Table.AllowAutoFit** プロパティは、そのコンテンツに応じて各セルを自動的にサイズ変更できるようにします。

2。 好まれたテーブルの幅はから取除かれます **Table.PreferredWidth**, **CellFormat.PreferredWidth** 各テーブルセルが削除されます
      {{% alert color="primary" %}}

   このオートフィットオプションは、好みの幅をセルから削除することに注意してください。 Microsoft Wordお問い合わせ 列のサイズを保ち、内容に合わせて列を増減させたい場合は、 **Table.AllowAutoFit** プロパティ **True** オートフィットのショートカットを使用するのではなく、自分で。{{% /alert %}}

3。 列の幅は、現在のテーブルのコンテンツに再計算されます。最後には、列の幅とテーブル全体の幅が自動的に再サイズされ、ユーザーがテキストを編集するにつれて、コンテンツを最も適したようにします。

次のコードの例では、テーブルをコンテンツにオートフィットする方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

上記のテーブルにこれらのオプションが下図で表示される例です。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### 表のAutoFitを無効にし、固定列幅を使用する

代わりにテーブルにオートフィット禁止と固定カラムの幅が使用される場合、次の手順を実行します。

1。 **Table.AllowAutoFit** プロパティは無効になっていますので、列はコンテンツに成長または縮小しません
2。 テーブル全体に優先する幅はから削除されます **Table.PreferredWidth**, **CellFormat.PreferredWidth** すべてのテーブルセルから削除されます
3。 最終結果は、列幅が決定されるテーブルです。 [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) プロパティ、ユーザーがテキストを入力するか、ページがリサイズされると、その列が自動的にリサイズされない

{{% alert color="primary" %}}

幅が指定されていない場合 **CellFormat.Width**, 1インチ(72ポイント)のデフォルト値が使用されます。

{{% /alert %}}

次のコードの例では、オートフィットを無効にし、指定されたテーブルの固定幅を有効にする方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

上記のテーブルにこれらのオプションが下図で表示される例です。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### セル幅の計算時の優先順位

Aspose.Words ユーザーは、複数のオブジェクトを介してテーブルまたはセルの幅を定義することができます。 [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – その [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) プロパティは以前のバージョンからほとんど残っていますが、セル幅の設定を簡素化するためにはまだ便利です。

知っておくことが重要です。 **CellFormat.Width** プロパティは、テーブルに既に存在する他の幅のプロパティのどれかに応じて異なります。

Aspose.Words セルの幅を計算するために次の順序を使用します。

|  注文する |  プロパティ |  コンテンツ |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) 決定される |  お問い合わせ **AutoFit** 有効:<br/>- 表は、好みの幅を過去に成長して、コンテンツを収容することができます - それは通常、好ましい幅の下を縮小しません<br/>- あらゆる変更への **CellFormat.Width** 値が無視され、セルは代わりにそのコンテンツに収まる |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 値を持つ **Points** または **Percent** |  **CellFormat.Width** 無視される |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 値を持つ **Auto** |  値から **CellFormat.Width** コピーして、セルの優先幅(ポイント)になります。 |

{{% alert color="primary" %}}

width プロパティへの変更は、優先する幅で更新されず、代わりに優先する幅に適用される必要があります。

{{% /alert %}}

{{% alert color="primary" %}}

固定テーブルレイアウトを作成する際は、セル幅を指定します。 幅のないセルはDOC形式に保存できません。 DOCXなどのDOC以外のドキュメントフォーマットは、原則として、固定テーブルレイアウトで幅のないセルを保存します。

{{% /alert %}}

## セル間の間隔を許可する

「セル間隔」オプションに似たテーブルセル間で追加のスペースを取得または設定できます。 Microsoft Wordお問い合わせ これは、 [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) プロパティ.

ドキュメント内の実際のテーブルにこれらのオプションが適用される例は、下図で見ることができます。

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

次のコードの例では、セル間の間隔を設定する方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## ボーダーとシェーディングを適用

ボーダーとシェーディングは、テーブル全体にテーブル全体に適用できます。 [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) そして、 [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), または特定の細胞だけを使用して [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) そして、 [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)お問い合わせ また、行の境界を設定できます。 [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), しかし、この方法でシェーディングは適用できません。

下の写真は、境界と影の設定を示しています Microsoft Word およびその対応するプロパティ Aspose.Wordsお問い合わせ

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


次のコードの例では、異なる境界線とシェーディングでテーブルとセルをフォーマットする方法を示します。

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}