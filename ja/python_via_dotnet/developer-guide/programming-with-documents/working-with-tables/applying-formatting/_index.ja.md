---
title: Python でのテーブルのフォーマット
second_title: Python via .NET用Aspose.Words
articleTitle: 書式設定を適用する
linktitle: 書式設定を適用する
description: "Python を使用したテーブルのフォーマットの詳細。 Python を使用して、テーブルのすべての部分をフォーマットします。"
type: docs
weight: 70
url: /ja/python-net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

テーブルの各要素には、異なる書式設定を適用できます。たとえば、表の書式設定は表全体に適用され、行の書式設定は特定の行のみに、セルの書式設定は特定のセルのみに適用されます。

Aspose.Words は、テーブルの書式設定を取得して適用するための豊富な API を提供します。 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)、[RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/)、および [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) ノードを使用して書式設定を設定できます。

この記事では、さまざまなテーブル ノードに書式設定を適用する方法と、Aspose.Words がサポートするテーブルの書式設定について説明します。

## 別のノードにフォーマットを適用する

このセクションでは、さまざまなテーブル ノードに書式設定を適用する方法を見ていきます。

### テーブルレベルの書式設定

テーブルに書式設定を適用するには、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)、[PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/)、および [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/) クラスを使用して、対応する **Table** ノードで使用可能なプロパティを使用できます。

{{% alert color="primary" %}}

テーブルのプロパティを適用するには、テーブルに少なくとも 1 行が必要であることに注意してください。つまり、[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) を使用してテーブルを構築する場合、この書式設定は、[InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default) への最初の呼び出し後、最初の行がテーブルに追加された後、またはノードが DOM に直接挿入されたときに実行する必要があります。

{{% /alert %}}

以下の図は、Microsoft Word での **Table** フォーマット機能と、Aspose.Words での対応するプロパティの表現を示しています。

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

次のコード例は、表にアウトラインの境界線を適用する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、すべての枠線を有効にしたテーブル (グリッド) を作成する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

### 行レベルの書式設定

**行レベル** フォーマットは、[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)、[RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/)、および [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/) クラスを使用して制御できます。

{{% alert color="primary" %}}

**Row** は **Table** の子ノードのみになれることに注意してください。同時に、書式設定を適用できるように、**Row** 内に少なくとも 1 つの **Cell** が存在する必要があります。

{{% /alert %}}

以下の図は、Microsoft Word での **Row** フォーマット機能と、Aspose.Words での対応するプロパティの表現を示しています。

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


次のコード例は、テーブルの行の書式設定を変更する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

### セルレベルの書式設定

セルレベルの書式設定は、[Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)、[CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/)、および [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/) クラスによって制御されます。

{{% alert color="primary" %}}

**Cell** は **Row** の子ノードのみになれることに注意してください。同時に、書式設定を適用できるように、**Cell** 内に少なくとも 1 つの [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) が存在する必要があります。

**Paragraph** に加えて、**Table** を **Cell** に挿入することもできます。

{{% /alert %}}

以下の図は、Microsoft Word での **Cell** フォーマット機能と、Aspose.Words での対応するプロパティの表現を示しています。

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


次のコード例は、表のセルの書式設定を変更する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

次のコード例は、セルの内容の左/上/右/下に追加するスペースの量 (ポイント単位) を設定する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## 行の高さを指定する

行の高さを設定する最も簡単な方法は、**DocumentBuilder** を使用することです。適切な **RowFormat** プロパティを使用すると、デフォルトの高さ設定を設定したり、テーブル内の各行に異なる高さを適用したりできます。

Aspose.Words では、テーブルの行の高さは次によって制御されます。

- 行の高さのプロパティ – [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- 指定された行の高さルールのプロパティ – [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

同時に、各行に異なる高さを設定できるため、テーブル設定を幅広く制御できます。

{{% alert color="primary" %}}

オブジェクトの高さを指定するルール オプションは、[HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/) 列挙を使用して設定できます。

{{% /alert %}}

次のコード例は、単一のセルを含むテーブルを作成し、行の書式設定を適用する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## テーブルとセルの幅の指定

Microsoft Word ドキュメントのテーブルには、テーブルと個々のセルのサイズを変更するためのいくつかの異なる方法が用意されています。これらのプロパティを使用すると、テーブルの外観と動作を大幅に制御できるため、Aspose.Words は Microsoft Word と同様にテーブルの動作をサポートします。

テーブル要素には、個々のセルだけでなくテーブル全体の幅の計算方法に影響を与える可能性があるいくつかの異なるプロパティがあることを理解しておくことが重要です。

- テーブル上の好みの幅
- 個々のセルの推奨幅
- テーブル上での自動調整を許可する

この記事では、さまざまなテーブル幅計算プロパティの仕組みと、テーブル幅計算を完全に制御する方法について詳しく説明します。これは
テーブル レイアウトが期待どおりに表示されない場合に知っておくと特に役立ちます。

{{% alert color="primary" %}}

ほとんどの場合、テーブル幅よりも優先セルの方が推奨されます。推奨されるセル幅は、Aspose.Words モデルだけでなく DOCX フォーマット仕様にもより準拠しています。

セル幅は実際には DOCX 形式の計算値です。実際のセル幅はさまざまな要因によって決まります。たとえば、ページの余白や優先される表の幅を変更すると、実際のセルの幅に影響を与える可能性があります。

推奨されるセル幅は、ドキュメントに保存されているセルのプロパティです。これは何にも依存せず、テーブルやセルの他のプロパティを変更しても変わりません。

{{% /alert %}}

{{% alert color="primary" %}}

この記事で説明するすべてのプロパティとメソッドは、Microsoft Word でのテーブルの動作に関連しています。したがって、ほとんどの場合、プログラムでテーブルを構築しているものの、目的のテーブルを作成するのが難しい場合は、まず Microsoft Word で視覚的にテーブルを作成してから、書式設定の値をアプリケーションにコピーするだけです。

{{% /alert %}}

### 優先幅の使用方法

テーブルまたは個々のセルの希望の幅は、要素が適合しようとするサイズである優先幅プロパティを通じて定義されます。つまり、テーブル全体または個々のセルに対して優先幅を指定できます。状況によっては、この幅を正確に合わせることができない場合がありますが、ほとんどの場合、実際の幅はこの値に近くなります。

適切な優先幅のタイプと値は、[PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) クラスのメソッドを使用して設定されます。

- 自動または「優先幅なし」を指定する [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) メソッド
- パーセント幅を指定する [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) メソッド
- 幅をポイント単位で指定する [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) メソッド

以下の図は、Microsoft Word の *優先幅設定機能* と、Aspose.Words の対応するプロパティを示しています。

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

これらのオプションがドキュメント内の実際のテーブルにどのように適用されるかの例を以下の図に示します。

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

テーブルで優先幅を使用する前に、テーブルに少なくとも 1 行が含まれていることを確認する必要があります。これは、Microsoft Word ドキュメントまたは Aspose.Words で作成されたドキュメント内のこのようなテーブルの書式設定がテーブルの行に保存されるためです。

{{% /alert %}}

#### 優先するテーブルまたはセルの幅を指定する

Aspose.Words では、テーブルとセルの幅は [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) プロパティと [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) プロパティを使用して設定されます。[PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) 列挙で使用できるオプションは次のとおりです。

- **Auto**、優先幅が設定されていないことと同等
- **Percent**。ウィンドウ内の利用可能なスペースまたはコンテナのサイズに相対して要素を適合させ、利用可能な幅が変化したときに値を再計算します。
- **Points**、ポイント単位で指定された幅の要素に対応します

{{% alert color="primary" %}}

デフォルトでは、テーブルはページ上の利用可能なスペースの 100% に収まるように説明できます。この場合、これは表が左右のページ余白の間のスペースを占有しようとすることを意味します。

{{% /alert %}}

[Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) プロパティを使用すると、そのコンテナー (ネストされたテーブルの場合はページ、テキスト列、または外部テーブルのセル) に応じて優先幅が調整されます。

次のコード例は、表をページ幅の 50% に自動調整するように設定する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

特定のセルで [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) プロパティを使用すると、そのセルの優先幅が調整されます。

次のコード例は、さまざまな優先幅設定を設定する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### 推奨される幅のタイプと値を見つける

[Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) プロパティと [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) プロパティを使用して、目的のテーブルまたはセルの適切な幅の詳細を見つけることができます。

次のコード例は、表のセルの推奨幅タイプを取得する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

### 自動調整の設定方法

[AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) プロパティを使用すると、選択した基準に従ってテーブル内のセルを拡大および縮小できます。たとえば、**ウィンドウに自動フィット** オプションを使用して表をページの幅に合わせたり、**コンテンツに自動フィット** オプションを使用して各セルを内容に応じて拡大または縮小したりできます。

{{% alert color="primary" %}}

さらに、**AllowAutoFit** プロパティを優先セル幅と組み合わせて使用すると、内容に自動的に適合するセルの書式設定を行うことができますが、初期幅も設定されています。必要に応じて、セル幅をこの幅を超えて拡大することができます。

{{% /alert %}}

デフォルトでは、Aspose.Words は **ウィンドウに自動フィット** を使用して新しいテーブルを挿入します。テーブルのサイズは、使用可能なページ幅に応じて調整されます。テーブルのサイズを変更するには、[AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior) メソッドを呼び出すことができます。このメソッドは、テーブルに適用される自動調整のタイプを指定する [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) 列挙を受け入れます。

autofit メソッドは実際には、テーブルにさまざまなプロパティを同時に適用するショートカットであることを知っておくことが重要です。これらは、観察された動作をテーブルに実際に与えるプロパティです。各自動調整オプションのこれらのプロパティについて説明します。

次のコード例は、内容に応じて各セルを縮小または拡大するようにテーブルを設定する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### テーブルをウィンドウに自動調整

ウィンドウへの自動調整がテーブルに適用されると、実際には次の操作がバックグラウンドで実行されます。

1. **Table.AllowAutoFit** プロパティが有効になり、**Table.PreferredWidth** 値 100% を使用して、利用可能なコンテンツに合わせて列のサイズを自動的に変更します。
2. 表のすべてのセルから **CellFormat.PreferredWidth** が削除されます
      {{% alert color="primary" %}}
   これは、各セルの優先幅が現在のサイズと内容に基づいて適切な値に設定される Microsoft Word の動作とは若干異なることに注意してください。 Aspose.Words は優先幅を更新しないため、代わりにクリアされるだけです。
      {{% /alert %}}
3. 現在のテーブルの内容に合わせて列幅が再計算されます。最終結果は、使用可能な幅全体を占めるテーブルになります。
4. ユーザーがテキストを編集すると、テーブルの列の幅が自動的に変わります。

次のコード例は、表をページ幅に自動調整する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

#### テーブルをコンテンツに自動調整

テーブルの内容が自動調整されると、実際には次の手順がバックグラウンドで実行されます。

1. **Table.AllowAutoFit** プロパティが有効になり、内容に応じて各セルのサイズが自動的に変更されます。

2. 優先テーブル幅が **Table.PreferredWidth** から削除され、**CellFormat.PreferredWidth** が各テーブル セルから削除されます。
      {{% alert color="primary" %}}

   この自動調整オプションは、Microsoft Word と同様に、セルから推奨幅を削除することに注意してください。列のサイズを維持し、コンテンツに合わせて列を増減したい場合は、自動調整ショートカットを使用するのではなく、独自に **Table.AllowAutoFit** プロパティを **True** に設定する必要があります。{{% /alert %}}

3. 現在のテーブルの内容に合わせて列の幅が再計算されます。最終的には、ユーザーがテキストを編集すると、列の幅とテーブル全体の幅がコンテンツに最適になるように自動的にサイズ変更されるテーブルが作成されます。

次のコード例は、テーブルをそのコンテンツに自動調整する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

#### 表の自動調整を無効にし、固定列幅を使用する

テーブルの自動調整が無効になっており、代わりに固定列幅が使用されている場合は、次の手順が実行されます。

1. **Table.AllowAutoFit** プロパティが無効になっているため、列は内容に合わせて拡大または縮小されません。
2. テーブル全体の推奨幅が **Table.PreferredWidth** から削除され、**CellFormat.PreferredWidth** がすべてのテーブル セルから削除されます。
3. 最終結果は、列幅が [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) プロパティによって決定され、ユーザーがテキストを入力したときやページのサイズが変更されたときに列のサイズが自動的に変更されない表になります。

{{% alert color="primary" %}}

**CellFormat.Width** に幅が指定されていない場合は、デフォルト値の 1 インチ (72 ポイント) が使用されることに注意してください。

{{% /alert %}}

次のコード例は、指定したテーブルの自動調整を無効にし、固定幅を有効にする方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx) からダウンロードできます。

{{% /alert %}}

### セル幅を計算する際の優先順位

Aspose.Words を使用すると、ユーザーは [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) を含む複数のオブジェクトを通じてテーブルまたはセルの幅を定義できます。その [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) プロパティはほとんどが以前のバージョンから残されていますが、セル幅の設定を簡素化するのに依然として役立ちます。

**CellFormat.Width** プロパティの動作は、テーブル内に既に存在する他の幅プロパティに応じて異なることを理解しておくことが重要です。

Aspose.Words は、セル幅の計算に次の順序を使用します。

|  注文 |  財産 |  説明 |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/)が決定 |  **AutoFit** が有効な場合:<br>- テーブルは、コンテンツを収容するために優先幅を超えて拡大する場合があります。通常、優先幅よりも縮小することはありません<br>- **CellFormat.Width** 値への変更は無視され、セルはその内容に合わせて表示されます。 |
|  2      |  **Points** または **Percent** の値を持つ [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) |  **CellFormat.Width**は無視されます |
|  3      |  値が**Auto**の[PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) |  **CellFormat.Width** からの値がコピーされ、セルの優先幅 (ポイント単位) になります。 |

{{% alert color="primary" %}}

width プロパティへの変更は優先幅では更新されないため、代わりに優先幅に適用する必要があります。

{{% /alert %}}

{{% alert color="primary" %}}

固定テーブル レイアウトを作成するときに、セルの幅を指定します。幅のないセルは DOC 形式で保存できません。 DOCX などの DOC 以外のドキュメント形式では、原則として、固定テーブル レイアウトで幅のないセルを保存できます。

{{% /alert %}}

## セル間の間隔を許可する

Microsoft Word の「セル間隔」オプションと同様に、表のセル間の追加のスペースを取得または設定できます。これは、[AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/) プロパティを使用して実行できます。

これらのオプションがドキュメント内の実際のテーブルにどのように適用されるかの例を以下の図に示します。

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="書式設定-セル間の間隔-aspose-words-Python" style="width:500px"/>

次のコード例は、セル間の間隔を設定する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## 境界線とシェーディングの適用

枠線とシェーディングは、[Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/)、[Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/)、[Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/) を使用してテーブル全体に適用することも、[CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) と [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/) を使用して特定のセルにのみ適用することもできます。さらに、[RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/) を使用して行の境界線を設定できますが、この方法ではシェーディングを適用できません。

以下の図は、Microsoft Word の境界線と影の設定と、Aspose.Words の対応するプロパティを示しています。

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

次のコード例は、異なる枠線と網掛けを使用してテーブルとセルを書式設定する方法を示しています。

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}
