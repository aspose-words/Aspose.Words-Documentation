---
title: 新着情報
second_title: .NET用Aspose.Words
articleTitle: .NET の Aspose.Words の新機能
linktitle: .NET の Aspose.Words の新機能
type: docs
description: ".NET 用 Aspose.Words は日々拡張および機能強化されています。このページでは、製品の巨大で最も興味深い機能について学ぶことができます。"
weight: 10
url: /ja/net/what-s-new-in-aspose-words-for-net/
---

このページでは、最近のリリースで導入された最も興味深い Aspose.Words の新機能について説明します。

## Aspose.Words for .NET 24.5、24.6、24.7、24.8

Aspose.Words 24.5 では、アセンブリのオプションが拡張され、レンダリング機能が向上し、その他のオプションも拡張されています。

Aspose.Words 24.6 では、レンダリング オプションが向上し、検索および比較機能が強化され、その他の機能が拡張されています。

Aspose.Words 24.7 では、ActiveX の操作方法が変更され、レンダリング機能が拡張され、Markdown および XLSX 形式へのエクスポートも可能になりました。

Aspose.Words 24.8 では、軸ラベルを正確に制御してグラフのカスタマイズを強化し、フォント管理を拡張し、ドキュメント構造の処理を改善し、HTML/XAML エクスポート、PDF 機能、ドキュメント変換、デジタル署名の新機能が追加されています。

### サポートされている形式

バージョン 24.7 以降では、障害を持つユーザーのアクセシビリティを確保するために、PDF/UA-2 へのエクスポートがサポートされています。

### プラットフォーム <sup>24.5</sup>

.NET 7.0/8.0 アセンブリは、Aspose.Words NuGet パッケージに含まれています。

### レンダリングと印刷

#### Charts、Shapes、DrawingML の変更 <sup>24.5</sup>

* 画像に限定されていた以前の機能を拡張する、SVG グラフィックスの DrawingML エフェクト レンダリングが実装されました。
* コンボ チャートの作成と、シリーズ グループ内のギャップ幅、オーバーラップ、バブル スケールなどのプロパティの調整のサポートは、[ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) クラスと [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) クラス、および [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/) プロパティ。
* シェイプの SoftEdge 効果を操作する機能は、[SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/) クラスを追加することで実装されました。
* シェイプの調整値を変更する機能は、[AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) および [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) パブリック クラスと [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) 財産。

#### グラフ、図形、描画の変更 <sup>24.6</sup>

* グラフ作成機能が強化されました。*ツリーマップ*、*サンバースト*、*ヒストグラム*、*パレート* グラフ、*箱ひげ図*、*ウォーターフォール*、*ファネル* など、より多様なグラフを作成できるようになりました。これにより、データをより多様で有益な方法で視覚化できます。

* 影の書式設定の色制御が強化されました。影の色にアクセスすることで、ドキュメントの外観をより正確に制御できます。

* バックグラウンド レンダリングのパフォーマンスが向上しました。ネイティブのタイリング テクノロジにより、小さな要素を含む背景のレンダリングを大幅に高速化できます。
* 図形のリアルなグラデーションが追加されました。非線形グラデーションの DML 図形を作成できるようになりました。これにより、Microsoft Word のビジュアル スタイルを模倣して、より洗練された外観を実現できます。

#### グラフ データ ラベルのカスタマイズ <sup>24.7</sup>

**Orientation** や **Rotation** などのグラフ データ ラベルをカスタマイズする機能が追加されました。

#### リスト レベルのカスタム数値スタイル <sup>24.7</sup>

パブリック プロパティ [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/) のセッターが追加されました。リスト レベルのカスタム数値スタイルを定義できるようになりました。

#### ActiveX の操作に関する変更 <sup>24.7</sup>

* ActiveX オブジェクトのプロパティを変更できるようになり、その動作をより細かく制御できるようになりました。
* ラジオ ボタン ActiveX コントロールの値を変更して動的な操作を有効にする機能が追加されました。
* ActiveX チェックボックスを「オン」または「オフ」に切り替える機能が追加されました。

#### グラフ軸目盛りラベルの向きと回転の制御 <sup>24.8</sup>

グラフ軸目盛りラベルの向きと回転を正確に制御できるようになり、グラフのカスタマイズがさらに便利になりました。[AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) クラスが拡張され、新しい [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) プロパティと [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/) プロパティが追加されました。

#### バックスラッシュを円記号に置き換える <sup>24.8</sup>

バックスラッシュ文字を円記号に置き換えるための下位互換性のある HTML および XAML エクスポートが改善されました。これを実現するために、[HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) および [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/) クラスに **ReplaceBackslashWithYenSign** プロパティが追加されました。

#### PDF へのエクスポート時に SDT タグをフォーム フィールド名として使用する <sup>24.8</sup>

SDT タグをフォーム フィールド名として使用するサポートを備えた PDF エクスポートが強化され、[PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) プロパティが [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) クラスに追加されました。

### ドキュメントの変換、読み込み、保存

#### リンクを Markdown 形式にエクスポート <sup>24.7</sup>

[LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/) プロパティの実装により、Markdown 形式でのリンクのエクスポートを制御する機能が追加されました。

#### LowCode <sup>24.8</sup>

1 行のコードでさまざまなドキュメント タイプを変換するための一連のメソッドを提供するように設計された新しい [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/) クラスが導入されました。

### 検索と比較

#### 高度な比較オプション <sup>24.6</sup>
比較機能が向上し、データ分析ワークフローを効率化できるようになりました。これには、新しい [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) オプションと、高度な比較用に再設計されたインターフェイスが含まれます。

### 他の

* 文書から空ページを削除する機能は、[RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/)メソッドを追加することで実装されました。 <sup>24.5</sup>
* ドキュメントをロードせずに VBA マクロの存在をチェックする機能は、[HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/) プロパティを追加することによって提供されます。 <sup>24.5</sup>
* LINQ レポート エンジンを使用してドキュメントを挿入する際のソース番号の維持がサポートされるようになりました。 <sup>24.5</sup>
* 新しい [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) プロパティが追加されました。これにより、コメントのタイムスタンプがより正確になり、整理と追跡可能性が向上します。 <sup>24.6</sup>
* LINQ レポート エンジンが改良されました。空の段落を選択的に削除し、欠落しているオブジェクト メンバーのカスタム メッセージを定義することで、よりわかりやすく、より情報量の多いレポートを実現しました。<sup>24.6</sup>
* XLSX 形式へのシームレスなエクスポートのために、日時形式が自動的に検出されるようになりました。 <sup>24.7</sup>
* VBA プロジェクトが保護されているかどうかを確認できるパブリック プロパティ [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/) が追加されました。<sup>24.7</sup>
* フォント情報が拡張され、[FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) クラスと [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) クラスに **EmbeddingLicensingRights** プロパティが追加されました。 <sup>24.8</sup>
* ドキュメント構造をより正確に操作するために、透かしを保持しながらセクション ヘッダーとフッターを効率的にクリアする方法が追加されました。セクション ヘッダーとフッターをクリアするには、新しいパブリック メソッド [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) を使用します。<sup>24.8</sup>
* [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) を使用した XPS ドキュメントのデジタル署名が有効になりました。この目的のために、新しいプロパティ [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) が追加されました。<sup>24.8</sup>

{{% alert color="primary" %}}

詳細については、[Aspose.Words for .NET 24.5 リリース ノート](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes) をご覧ください。

詳細については、[Aspose.Words for .NET 24.6 リリース ノート](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes) をご覧ください。

詳細については、[Aspose.Words for .NET 24.7 リリース ノート](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes) をご覧ください。

詳細については、[Aspose.Words for .NET 24.8 リリース ノート](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes) をご覧ください。

{{% /alert %}}

## .NET 24.1、24.2、24.3、24.4 用の Aspose.Words

Aspose.Words 24.1 では、ストローク カラーの管理に関するエクスペリエンスが向上し、OLE オブジェクトと LINQ レポートが強化され、さらに新しい参考文献ソースのパブリック API が導入されています。

Aspose.Words 24.2 では、Charts API、スタイル管理、LINQ オプションが拡張されました。 Aspose.Words のこのバージョンでは、レンダリング中に SvgSaveOptions を指定する機能、Markdown ファイルの読み込みをより柔軟に制御する機能、および脚注と文末脚注の参照テキストを操作する機能も導入されました。

Aspose.Words 24.3は、新しいTIFFリーダー/ライターとWMFメタファイルのバイナリラスター操作のエミュレーションを導入します。 Aspose.Words 24.3は、さらにCharts APIの拡張も続けています。

Aspose.Words 24.4は、保存形式、一部のレンダリングオプション、デジタル署名の処理を改善します。

### サポートされる形式 <sup>24.4</sup>

モダンな**WebP**画像形式は、Aspose.Words for .NET Framework 4.6.2以降でサポートされています。WebP画像を文書に読み込み、挿入し、WebP形式で保存することができます。

 なお、WebPは現在、.NET Standardおよび.NET Framework v4.6.2以上でのみ利用可能です。

### レンダリングと印刷

#### ストロークカラーコントロール <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) クラスは、ストローク カラーの管理に関連する一連の新しいパブリック プロパティ ([ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/)、[BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/)、[ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/)、[BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/)) で拡張されました。

#### DrawingML チャート API 拡張機能 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** は引き続き拡張されています。

#### @font-faceルールで宣言されたフォントの埋め込み <sup>24.4</sup>

新しい[SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/)プロパティを追加することで、生成されるドキュメントのフォント定義に@font-faceルールで宣言されたフォントを埋め込む機能が追加されました。

#### グローおよび反射の書式設定の操作 <sup>24.4</sup>

描画オブジェクトのグローおよび反射の書式設定を操作する機能が実装されました。

### ドキュメントのロードと保存

#### レンダリング中に SvgSaveOptions を指定する <sup>24.2</sup>

[ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) メソッドと [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) メソッドを使用して、レンダリング中に [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) を指定する機能が追加されました。

#### Markdown ファイルのロード時に空行を保持する <sup>24.2</sup>

Markdown ファイルをロードするときに空行を保持する機能が追加されました。

#### 新しいTIFFリーダー/ライター <sup>24.3</sup>

Aspose.Words for .NET Standard、.NET 6以降には、新しいTIFFリーダー/ライターが開発されました。 Aspose.Words for .NET 24.3は、JPEGおよび古いJPEG圧縮タイプを持つTIFFイメージの読み取りをサポートし、読み取りおよび書き込み操作の品質を大幅に向上させました。

### 他の

* `TextBox` OLE コントロールのテキストを変更する機能は、新しい [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) プロパティを新しい [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) クラスに追加することによって導入されました。 <sup>24.1</sup>
* 参考文献ソースのパブリック API は、新しいクラスと列挙を備えた新しい名前空間 [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) を追加し、[Document](https://reference.aspose.com/words/net/aspose.words/document/) クラスに新しい [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) プロパティを追加することによって実装されました。 <sup>24.1</sup>
* LINQ Reporting Engine のテンプレート構文を使用して型メンバーへのアクセスを制限する API が提供されています。 <sup>24.1</sup>
* スタイル管理を強化するための新しいパブリック プロパティ [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/)、[UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/)、および [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) が [Style](https://reference.aspose.com/words/net/aspose.words/style/) クラスに追加されました。 <sup>24.2</sup>
* 脚注と文末脚注の実際の参照マーク テキストを取得する機能が、[ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) プロパティと [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) メソッドによって強化されました。 <sup>24.2</sup>
* `LINQ Reporting Engine` の `Word 2016` グラフとの互換性が有効になりました。 <sup>24.2</sup>
* WMFメタファイルのバイナリラスター操作のエミュレーションが実装されました。 <sup>24.3</sup>
* [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/)クラスを追加し、[OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/)、[DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/)、[OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/)クラスに新しいパブリックメンバーを追加することで、**SaveOptions**内でドキュメントの署名オプションを定義する機能が有効になりました。 <sup>24.4</sup>

{{% alert color="primary" %}}

[Aspose.Words for .NET 24.1 リリースノート](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 24.2 リリースノート](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 24.3 リリースノート](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 24.4 リリースノート](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## .NET 23.9、23.10、23.11、23.12 の Aspose.Words

Aspose.Words 23.9 では、レンダリング オプション、メタファイル レンダリング エミュレーション、markdown 保存オプションが拡張されています。

Aspose.Words 23.10 では、レンダリングが改善され、ドキュメントのロードと保存のオプションが拡張され、ユーザーが新しい方法でドキュメントを結合できるようになります。

Aspose.Words 23.11 では、追加のオプションにより、リビジョン、XLSX 形式、グラフ凡例のフォントに関する作業が強化されています。

Aspose.Words 23.12 では、PDF および OOXML ドキュメントを操作するための新しいプロパティと列挙、および WebP 画像のサポートが導入されています。

### レンダリングと印刷

#### DrawingML チャート<sup>23.9</sup>での軸タイトルのカスタマイズ

DrawingML チャートの軸タイトルをカスタマイズする機能は、新しいパブリック クラスの [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) および [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) プロパティの実装によって導入されました。

#### 段落内のフォントの垂直位置の決定<sup>23.9</sup>

新しいパブリック [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) プロパティと新しい [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) 列挙を使用して、段落内のフォントの垂直位置を定義できるようになりました。

#### 前景色のカラーコントロール<sup>23.10</sup>

**BaseForeColor** プロパティを介して、修飾子なしで前景色を取得する機能が [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) クラスと [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) クラスに追加されました。

#### チャートの機能の拡張<sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/)、[ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/)、および [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) クラスの機能が、新しいメソッドとプロパティによって拡張されました。

#### 画像を自動的に調整して形状に合わせる<sup>23.10</sup>

新しい [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) メソッドにより、画像を自動的に調整して特定の形状に合わせる簡単な方法が提供されています。

#### DrawingML チャートの凡例エントリのデフォルトのフォント書式設定<sup>23.11</sup>

DrawingML チャートの凡例エントリのデフォルトのフォント書式設定を指定する機能が、[Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) プロパティを介して追加されました。この機能により、グラフ要素の外観がより合理化され、一貫したものになり、ドキュメント全体の美しさが向上します。

#### Reader <sup>23.12</sup>で PDF を開くときにページ レイアウトを指定する

PDF リーダーでドキュメントを開くときに使用するページ レイアウトを指定する機能は、[PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) クラスへの新しい [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) プロパティの導入と新しい [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) 列挙の導入によって追加されました。

### ドキュメントのロードと保存

#### Markdown <sup>23.9</sup>でイメージ URI を構築するためのフォルダー名を指定する

[MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) クラスは [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) プロパティを含めることによって拡張され、Markdown ドキュメントに書き込まれる画像 URI の構築に使用されるフォルダーの名前を指定できるようになりました。

#### PDF 出力サイズの縮小<sup>23.10</sup>

[OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) 設定を使用するときに出力サイズを削減するためのさまざまな PDF レンダリングの最適化が実装されました。

#### TXT ドキュメントのロード時にハイパーリンクを認識する<sup>23.10</sup>

TXT ドキュメントのロード時にハイパーリンクを認識する機能は、新しい [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) プロパティを追加することで実装されました。

### 他の

* 特に WMF ペン幅と EMF コスメティック ペン幅に対して、ラスタライズ サイズを決定するメタファイル レンダリング エミュレーションが実装されました。これを実現するために、**ScaleWmfFontsToMetafileSize** プロパティが [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) プロパティに置き換えられ、[EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) プロパティが追加されました。 <sup>23.9</sup>
* [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) メソッドを使用して、現在のカーソル位置にあるドキュメントを別のドキュメントに挿入する簡略化された方法が導入されました。 <sup>10月23日</sup>
* 新しい [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) プロパティの導入により、スタイル プロパティにアクセスして変更する機能が追加されました。 <sup>10月23日</sup>
* [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) クラスのメソッドにジェネリック型パラメータが追加されました。 <sup>10月23日</sup>
* 特定のリビジョンを承認/拒否するかどうかを制御する方法は、[Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) および [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) メソッドを使用して実装されました。この機能強化により、ユーザーは改訂プロセスをより細かく制御できるようになります。 <sup>11月23日</sup>
* ドキュメントのすべてのセクションを同じ XLSX ワークシートに書き込む機能は、新しい [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) 列挙型と新しい [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) プロパティによって提供されています。 <sup>11月23日</sup>
* OOXML ドキュメントに ZIP64 形式拡張子を使用する方法を制御する方法が、`OoxmlSaveOptions` クラスの新しい Zip64Mode プロパティと新しい Zip64Mode 列挙を通じて実装されました。 <sup>12月23日</sup>
* WebP 画像のサポートが導入されました。この機能は .NetStandart および .NET6+ バージョンでのみ利用可能であることに注意してください。 <sup>12月23日</sup>

{{% alert color="primary" %}}

[Aspose.Words for .NET 23.9 リリースノート](/words/net/aspose-words-for-net-23-9-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.10 リリースノート](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.11 リリースノート](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.12 リリースノート](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## .NET 23.5、23.6、23.7、23.8 の Aspose.Words

Aspose.Words 23.5 では、チャート シリーズ データを操作する機能と ODT ドキュメントを操作する機能が強化され、ヘッダー/フッターとそのテキストの折り返しも改善されています。

Aspose.Words 23.6 では、レンダリング オプションが拡張され、新しいエクスポート形式が追加され、LINQ レポートと LowCode ツールが改善されています。

Aspose.Words 23.7 では、レポート機能が強化され、新しいエクスポート形式が追加され、テーブルとデジタル署名の操作に変更が加えられています。

Aspose.Words 23.8 は、さまざまな形式の機能を拡張し、レンダリングを改善し、フィールドを操作するための新しいオプションを追加します。

### サポートされている形式

※バージョン23.6よりXLSX形式で保存できるようになりました。これで、ドキュメントを Excel 形式に変換できるようになりました。 <sup>23.6</sup>
※バージョン23.7より、ドキュメントのページや図形をEPS形式で保存できるようになりました。 <sup>23.7</sup>

### 新しいフォーマット機能

※MOBI文書の目次（TOC）を自動生成する機能が導入されました。 <sup>23.8</sup>
* [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) コンストラクターは [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/) で拡張されました。 <sup>23.8</sup>
* EMF メタファイルの縦書きテキストの整形が実装されました。 <sup>23.8</sup>

### レンダリングと印刷

#### チャート系列データの取得と変更<sup>23.5</sup>

グラフ シリーズ データを取得および変更する機能は、以下を追加することで提供されました。

* 新しいクラス: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/)、[ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/)、[ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/)、[ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/)、[BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/)、[ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* 新しい列挙型: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/)、[ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### 高度なタイポグラフィ<sup>23.6</sup>のサポート

WMF、EMF、EMF+ レンダリングでの高度なタイポグラフィーのサポートが追加されました。

#### ページ上の色付きコンテンツ<sup>23.6</sup>

ページに色が付いているかどうかを示すパブリック プロパティ [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/) が追加されました。

#### チャートデータラベルの書式設定<sup>23.6</sup>

グラフ データ ラベルの塗りつぶし、ストローク、吹き出しの書式設定を設定する機能が実装されました。

### Mail Merge とレポート

#### LINQ レポート エンジン<sup>23.6</sup>の動的 HTML 挿入

LINQ レポート エンジンに動的 HTML を挿入する新しい方法が追加されました。

#### Mustache タグのサポート<sup>23.7</sup>

Mustache タグが [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) メソッドと [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) メソッドでサポートされるようになりました。

#### LINQ レポート エンジン テンプレート構文の更新<sup>23.7</sup>

LINQ Reporting Engine テンプレート構文は、`ElementAt` および ElementAtOrDefault 拡張メソッドをサポートするようになりました。

#### レンダリング画像のサイズを指定する<sup>23.8</sup>

レンダリングされたイメージのサイズをピクセル単位で指定するための新しいパブリック プロパティ [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) が導入されました。

#### JSON 文字列値の空白を保持する – LINQ <sup>23.8</sup>

JSON 文字列値の空白を保持するオプションが LINQ レポート エンジンに追加されました。

### <sup>LowCode23.6</sup>

さまざまな種類のドキュメントを 1 つの出力ドキュメントにマージすることを目的とした新しい LowCode メソッドが追加されました。

### 他の

* ヘッダー/フッターでのテキストの折り返しのサポートが実装されました。 <sup>23.5</sup>
* [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) メソッドを通じて ODT ドキュメントからデジタル署名を削除する機能が追加されました。 <sup>23.5</sup>
※ふりがな[Run](https://reference.aspose.com/words/net/aspose.words/run/)の親文字とルビ文字を取得するための公開プロパティ[PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/)を追加しました。 <sup>23.5</sup>
* 新しい [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) プロパティの導入により、デジタル署名されたドキュメントからデジタル署名値をバイト配列として取得する機能が追加されました。 <sup>23.7</sup>
* [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) クラスと [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) クラスは、新しいパブリック メンバー ([Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/)、[Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/)、[Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/)、[Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/)) で拡張されました。 <sup>23.7</sup>
* CITATION フィールドと BIBLIOGRAPHY フィールドのサポートが追加されました。 <sup>23.8</sup>

{{% alert color="primary" %}}

[Aspose.Words for .NET 23.5 リリースノート](/words/net/aspose-words-for-net-23-5-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.6 リリースノート](/words/net/aspose-words-for-net-23-6-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.7 リリースノート](/words/net/aspose-words-for-net-23-7-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.8 リリースノート](/words/net/aspose-words-for-net-23-8-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## .NET 23.1、23.2、23.3、23.4 の Aspose.Words

Aspose.Words 23.1 は、ラスター操作エミュレーションのパフォーマンスを向上させるだけでなく、ドキュメントのエクスポートとレンダリングの品質も向上します。

Aspose.Words 23.2 では、MOBI 形式でのドキュメントの保存が導入され、グラフのレンダリングが改善され、ドキュメントの外観の詳細に顕著な変更が加えられています。

Aspose.Words 23.3 では、新しいプロパティを使用してドキュメントのインポートと保存が強化され、背景色、前景色、放射状グラデーションによる作業の品質も向上します。

Aspose.Words 23.4 では、いくつかのパラメータの計算と、表と周囲のテキストの位置が改善されています。

### パフォーマンスの向上

#### ラスター操作のエミュレーション<sup>23.1</sup>

メタファイルを使用したラスター操作のエミュレーションのパフォーマンスと品質が大幅に向上しました。

### サポートされている形式

#### MOBI <sup>23.2</sup>へのエクスポート

バージョン 23.2 以降、MOBI 形式 (PRC、AZW とも呼ばれる – Amazon Kindle 独自の電子書籍ファイル形式) でドキュメントを保存できるようになりました。 MOBI ドキュメントをロードするだけでなく、ファイルを MOBI 形式にエクスポートできるようになりました。

### レンダリング

#### シェーディングテーマカラーの操作<sup>23.1</sup>

シェーディングテーマカラーを操作する機能が実装されました。

#### DML チャート<sup>23.1</sup>での R 二乗係数のサポート

レンダリング時の DML チャートの傾向線ラベルの R 二乗係数のサポートが追加されました。

#### チャートのレンダリングの改善<sup>23.2</sup>

23.2 以降、チャートのレンダリングが大幅に改善されました。

#### 背景と前景色のカラー コントロール<sup>23.3</sup>

[Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) クラスは、背景色と前景色に関連する一連の新しいパブリック プロパティ ([ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/)、[BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/)、[ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/)、[BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/)) で拡張されました。

#### `SkiaSharp` Native Shader <sup>23.3</sup>による放射状グラデーション

.NET Standard の `SkiaSharp` ネイティブ シェーダーを使用した放射状グラデーションのレンダリングが実装されました。

#### 表と周囲の文字との距離<sup>23.4</sup>

[Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) クラスに新しいプロパティ ([DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/)、[DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/)、[DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/)、[DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/)) を導入することにより、テーブルと周囲のテキストの間の距離を設定する機能が追加されました。

### ドキュメントのロードと保存

#### AZW3 ドキュメント<sup>23.1</sup>の `TOC` を生成

[NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) プロパティを使用して、AZW3 ドキュメントの `TOC` (目次) を生成する機能が追加されました。

#### リスト項目を Markdown <sup>23.1</sup>にエクスポートする

[ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) プロパティを [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) クラスに追加することで、リスト項目の Markdown 形式へのエクスポートを制御する方法が提供されています。

#### ドキュメント保存の進行状況の通知<sup>23.3</sup>

MOBI および AZW3 形式の保存進捗通知が実装されました。

#### 文と単語の間隔の調整<sup>23.3</sup>

[AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) プロパティの導入により、ドキュメントのインポート時に文と単語の間隔を自動的に調整するかどうかを指定する機能が追加されました。

### 他の

* ドキュメントの文字間隔調整を指定する機能は、[JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) プロパティ実装<sup>23.2</sup>によって追加されました。
* 単語数統計にテキストボックス、脚注、文末脚注を含めるかどうかを Aspose.Words に指示する方法は、[IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) プロパティ<sup>23.2</sup>を追加することで提供されています。
* ドキュメント スタイルの新しいオプションが、[AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) プロパティ<sup>23.2</sup>を通じて導入されました。これにより、適切な値に基づいてスタイルが自動的に再定義されるかどうかを指定できます。
* [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) プロパティ<sup>23.4</sup>を使用して、[Run](https://reference.aspose.com/words/net/aspose.words/run/) が発音ガイドの実行であるかどうかを判断する機能が追加されました。
* [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) クラスを導入し、[Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) プロパティを追加することで、コンボ チャートのシリーズと軸を操作する簡単な方法が実装されました<sup>23.4</sup>
* シェイプの相対位置とサイズ設定に関連する新しいパブリック プロパティが [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) クラス<sup>23.4</sup>に追加されました。
* 自動文字色解像度の色の明るさ計算の精度とパフォーマンスが、Microsoft Word <sup>23.4</sup>の最新バージョンに従って改善されました。

{{% alert color="primary" %}}

[Aspose.Words for .NET 23.1 リリースノート](/words/net/aspose-words-for-net-23-1-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.2 リリースノート](/words/net/aspose-words-for-net-23-2-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.3 リリースノート](/words/net/aspose-words-for-net-23-3-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.4 リリースノート](/words/net/aspose-words-for-net-23-4-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## .NET 22.9、22.10、22.11、22.12 の Aspose.Words

Aspose.Words 22.9 では、ドキュメントのロードと保存のオプションが拡張され、他のいくつかのオプションとの相互作用が改善されました。

Aspose.Words 22.10 では、検索と置換のオプションが改善され、OLE オブジェクトが強化され、リスト機能が拡張されています。

Aspose.Words 22.11 では、フィールド、印刷、OLE、構造化文書タグなど、すでに使い慣れたオブジェクトをより便利に操作できるように、新しいオプションで機能が拡張されています。

Aspose.Words 22.12 では、レンダリング機能が強化され、ドキュメントのロード/保存時にマージンを操作するためのオプションが導入されています。

### パフォーマンスの改善<sup>22.12</sup>

仕様への準拠を維持するために、PDF へのレンダリング時にグラフィックス状態のネストの深さを大幅に減らす最適化が導入されました。

### レンダリングと印刷

#### カラープリンタでの非カラーページの印刷<sup>22.11</sup>

新しい **GrayscaleAuto** 値を [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/) 列挙に追加することにより、カスタム カラー/グレースケール印刷モードが実装されました。

新しい印刷プロパティにより、デバイスがカラー印刷をサポートしている場合に、ユーザーはカラー以外のページの印刷方法を制御できます。この機能は、ユーザーがグレースケール印刷モードのみを使用して非カラーページを自動的に印刷したい場合に役立ちます。

#### 新しい境界線レンダリング プロパティ<sup>22.12</sup>

新しいパブリック プロパティ [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) および [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) が導入されました。

#### DrawingML レンダリング用の線形近似曲線の式<sup>22.12</sup>

DrawingML チャートの線形近似曲線数式レンダリングが実装されました。

#### Google Noto フォント<sup>22.12</sup>のフォント フォールバック設定

Google Noto フォントの事前定義フォント フォールバック設定が更新されました。

### ドキュメントのロードと保存

#### ヘッダーまたはフッターの形状をキャッシュして PDF サイズを削減<sup>22.9</sup>

新しい **CacheHeaderFooterShapes** プロパティを追加することで、ヘッダー/フッターの形状をキャッシュして出力 PDF ファイルのサイズを削減する機能が実装されました。

#### 文書ロード時の自動番号検出<sup>22.9</sup>

テキストのロード時に [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) プロパティを指定する機能は、[TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) クラスの拡張によって実装されました。

#### 特定の余白タイプの指定<sup>22.12</sup>

特定のセクションに特定の [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) タイプを指定する機能が実装されました。

### 検索と比較<sup>22.10</sup>

検索および置換オプションで [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) を無視する機能は、新しい [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) プロパティを [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) クラスに追加することによって実装されました。

### 他の

* FieldEQ を OfficeMath として取得する新機能が追加されました。 <sup>22.9</sup>
* Groupタイプの構造化文書タグをRowレベルで作成できるようにしました。 <sup>22.9</sup>
* ドキュメントを HTML に変換するときに、OLE オブジェクトとコントロールがメタファイル イメージとして扱われるようになりました。 <sup>10月22日</sup>
* 新しい [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) メソッドを [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) クラスに導入することにより、特定のリストが比較リストと同じテンプレートから作成されたことを確認する新しい機能が追加されました。 <sup>10月22日</sup>
* [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) タイプの新しい構造化文書タグを作成する機能が追加されました。 <sup>11月22日</sup>
* フィールド更新の進行状況を追跡する機能が提供されています。 <sup>11月22日</sup>
* ユーザーがソース ドキュメントから出力 PDF ドキュメントに OLE 添付ファイルを埋め込むことができる新しい **EmbedAttachments** プロパティが導入されました。 <sup>11月22日</sup>

{{% alert color="primary" %}}

[Aspose.Words for .NET 22.9 リリースノート](/words/net/aspose-words-for-net-22-9-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 22.10 リリースノート](/words/net/aspose-words-for-net-22-10-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 22.11 リリースノート](/words/net/aspose-words-for-net-22-11-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 22.12 リリースノート](/words/net/aspose-words-for-net-22-12-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## 関連項目

{{% alert color="primary" %}}

このページには過去 2 年間の最新リリース ニュースが含まれています。以前のリリースの詳細については、[リリースノート'](/words/net/release-notes/) ページの関連セクションを参照してください。

{{% /alert %}}