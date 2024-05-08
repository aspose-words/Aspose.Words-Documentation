---
title: 新着情報
second_title: Python via .NET用Aspose.Words
articleTitle: Python via .NET の Aspose.Words の新機能
linktitle: Python via .NET の Aspose.Words の新機能
type: docs
description: "Python via .NET 用 Aspose.Words は日々拡張および機能強化されています。このページでは、製品の巨大で最も興味深い機能について学ぶことができます。"
weight: 10
url: /ja/python-net/what-s-new-in-aspose-words-for-python-net/
---

このページでは、最近のリリースで導入された最も興味深い新しい Aspose.Words 機能について説明します。

## Python via .NET 24.5 の Aspose.Words

### レンダリングと印刷

#### Charts、Shapes、DrawingML の変更 <sup>24.5</sup>

* 画像に限定されていた以前の機能を拡張する、SVG グラフィックスの DrawingML エフェクト レンダリングが実装されました。
* コンボ チャートの作成と、シリーズ グループ内のギャップ幅、オーバーラップ、バブル スケールなどのプロパティの調整のサポートは、[ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) クラスと [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) クラス、および [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) プロパティ。
* シェイプの SoftEdge 効果を操作する機能は、[SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/) クラスを追加することで実装されました。
* シェイプの調整値を変更する機能は、**AdjustmentCollection** および **Adjustment** パブリック クラスと [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/） 財産。

#### 他の

* 文書から空ページを削除する機能は、[remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/)メソッドを追加することで実装されました。 <sup>24.5</sup>
* ドキュメントをロードせずに VBA マクロの存在をチェックする機能は、[has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/) プロパティを追加することによって提供されます。 <sup>24.5</sup>
* LINQ レポート エンジンを使用してドキュメントを挿入する際のソース番号の維持がサポートされるようになりました。 <sup>24.5</sup>

{{% alert color="primary" %}}

[Aspose.Words for Python via .NET 24.5 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## Python via .NET 24.1、24.2、24.3、24.4 用の Aspose.Words

Aspose.Words 24.1 では、ストローク カラーの管理に関するエクスペリエンスが向上し、OLE オブジェクトが強化され、さらに新しい参考文献ソースのパブリック API が導入されています。

Aspose.Words 24.2 では、Charts API とスタイル管理が拡張されました。 Aspose.Words のこのバージョンでは、レンダリング中に SvgSaveOptions を指定する機能、Markdown ファイルの読み込みをより柔軟に制御する機能、および脚注と文末脚注の参照テキストを操作する機能も導入されました。

Aspose.Words 24.3は、新しいTIFFリーダー/ライターとWMFメタファイルのバイナリラスター操作のエミュレーションを導入します。 Aspose.Words 24.3は、さらにCharts APIの拡張も続けています。

Aspose.Words 24.4は、保存形式、一部のレンダリングオプション、デジタル署名の処理を改善します。

### サポートされる形式 <sup>24.4</sup>

モダンな**WebP**画像形式は、Aspose.Words for .NET Framework 4.6.2以降でサポートされています。WebP画像を文書に読み込み、挿入し、WebP形式で保存することができます。 

なお、WebPは現在、.NET Standardおよび.NET Framework v4.6.2以上でのみ利用可能です。

### レンダリングと印刷

#### ストロークカラーコントロール<sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) クラスは、ストローク カラーの管理に関連する一連の新しいパブリック プロパティ ([fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/)、[back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/)、[fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/)、[back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/)) で拡張されました。

#### DrawingML チャート API 拡張機能 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** は引き続き拡張されています。

#### @font-faceルールで宣言されたフォントの埋め込み <sup>24.4</sup>

新しい[support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/)プロパティを追加することで、生成されるドキュメントのフォント定義に@font-faceルールで宣言されたフォントを埋め込む機能が追加されました。

#### グローおよび反射の書式設定の操作 <sup>24.4</sup>

描画オブジェクトのグローおよび反射の書式設定を操作する機能が実装されました。

### ドキュメントのロードと保存

#### レンダリング中に SvgSaveOptions を指定する <sup>24.2</sup>

[ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) メソッドと [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions)メソッドを使用して、レンダリング中に [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) を指定する機能が追加されました。

#### Markdown ファイルのロード時に空行を保持する <sup>24.2</sup>

Markdown ファイルをロードするときに空行を保持する機能が追加されました。

#### 新しいTIFFリーダー/ライター <sup>24.3</sup>

新しい TIFF リーダー/ライターが Aspose.Words 用に開発されました。Aspose.Words for .NET 24.3は、JPEGおよび古いJPEG圧縮タイプを持つTIFFイメージの読み取りをサポートし、読み取りおよび書き込み操作の品質を大幅に向上させました。

### 他の

* `TextBox` OLE コントロールのテキストを変更する機能は、新しい **Text** プロパティを新しい **TextBoxControl** クラスに追加することによって導入されました。 <sup>24.1</sup>
* 参考文献ソースのパブリック API は、新しいクラスと列挙を備えた新しい名前空間 [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) を追加し、[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスに新しい [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) プロパティを追加することによって実装されました。 <sup>24.1</sup>
* スタイル管理を強化するための新しいパブリック プロパティ [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/)、[unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/)および [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) が [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) クラスに追加されました。 <sup>24.2</sup>

- 脚注と文末脚注の実際の参照マーク テキストを取得する機能が、[actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) プロパティと [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) メソッドによって強化されました。 <sup>24.2</sup>
- WMFメタファイルのバイナリラスター操作のエミュレーションが実装されました。 <sup>24.3</sup>
- [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/)クラスを追加し、[OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/)、[DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/)、[OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/)クラスに新しいパブリックメンバーを追加することで、**SaveOptions**内でドキュメントの署名オプションを定義する機能が有効になりました。 <sup>24.4</sup>

{{% alert color="primary" %}}

[Aspose.Words for Python via .NET 24.1 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 24.2 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 24.3 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 24.4 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## Python via .NET 23.9、23.10、23.11、23.12 の Aspose.Words

Aspose.Words 23.9 では、レンダリング オプション、メタファイル レンダリング エミュレーション、markdown 保存オプションが拡張されています。

Aspose.Words 23.10 では、レンダリングが改善され、ドキュメントのロードと保存のオプションが拡張され、ユーザーが新しい方法でドキュメントを結合できるようになります。

Aspose.Words 23.11 では、追加のオプションにより、リビジョン、XLSX 形式、グラフ凡例のフォントに関する作業が強化されています。

Aspose.Words 23.12 では、PDF および OOXML ドキュメントを操作するための新しいプロパティと列挙、および WebP 画像のサポートが導入されています。

### レンダリングと印刷

#### DrawingML チャート<sup>23.9</sup>での軸タイトルのカスタマイズ

DrawingML チャートの軸タイトルをカスタマイズする機能は、新しいパブリック クラスの [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) および [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) プロパティの実装によって導入されました。

####  段落内のフォントの垂直位置の決定<sup>23.9</sup>

新しいパブリック [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) プロパティと新しい [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) 列挙を使用して、段落内のフォントの垂直位置を定義できるようになりました。

#### 前景色のカラーコントロール<sup>23.10</sup>

**BaseForeColor** プロパティを介して、修飾子なしで前景色を取得する機能が [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) クラスと [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) クラスに追加されました。

#### チャートの機能の拡張<sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/)、[ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/)、および [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) クラスの機能が、新しいメソッドとプロパティによって拡張されました。

#### 画像を自動的に調整して形状に合わせる<sup>23.10</sup>

新しい [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) メソッドにより、画像を自動的に調整して特定の形状に合わせる簡単な方法が提供されています。

#### DrawingML チャートの凡例エントリのデフォルトのフォント書式設定<sup>23.11</sup>

DrawingML チャートの凡例エントリのデフォルトのフォント書式設定を指定する機能が、[font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) プロパティを介して追加されました。この機能により、グラフ要素の外観がより合理化され、一貫したものになり、ドキュメント全体の美しさが向上します。

#### Reader <sup>23.12</sup>で PDF を開くときにページ レイアウトを指定する

PDF リーダーでドキュメントを開くときに使用するページ レイアウトを指定する機能は、[PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) クラスへの新しい [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) プロパティの導入と新しい [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) 列挙の導入によって追加されました。

### ドキュメントのロードと保存

#### Markdown <sup>23.9</sup>でイメージ URI を構築するためのフォルダー名を指定する

[MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) クラスは [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) プロパティを含めることによって拡張され、Markdown ドキュメントに書き込まれる画像 URI の構築に使用されるフォルダーの名前を指定できるようになりました。

#### PDF 出力サイズの縮小<sup>23.10</sup>

[optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) 設定を使用するときに出力サイズを削減するためのさまざまな PDF レンダリングの最適化が実装されました。

#### TXT ドキュメントのロード時にハイパーリンクを認識する<sup>23.10</sup>

TXT ドキュメントのロード時にハイパーリンクを認識する機能は、新しい [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) プロパティを追加することで実装されました。

### 他の

- 特に WMF ペン幅と EMF コスメティック ペン幅に対して、ラスタライズ サイズを決定するメタファイル レンダリング エミュレーションが実装されました。これを実現するために、**ScaleWmfFontsToMetafileSize** プロパティが [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) プロパティに置き換えられ、[emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) プロパティが追加されました。 <sup>23.9</sup>
- [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) メソッドを使用して、現在のカーソル位置で 1 つのドキュメントを別のドキュメントに挿入する簡略化された方法が導入されました。 <sup>10月23日</sup>
- 新しい [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) プロパティの導入により、スタイル プロパティにアクセスして変更する機能が追加されました。 <sup>10月23日</sup>
- [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) クラスのメソッドにジェネリック型パラメータが追加されました。 <sup>10月23日</sup>
- 新しい [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) 列挙型と新しい [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) プロパティを通じて、ドキュメントのすべてのセクションを同じ XLSX ワークシートに書き込む機能が提供されました。 <sup>11月23日</sup>
* OOXML ドキュメントに ZIP64 形式拡張子を使用する方法を制御する方法が、`OoxmlSaveOptions` クラスの新しい Zip64Mode プロパティと新しい Zip64Mode 列挙を通じて実装されました。 <sup>12月23日</sup>
* WebP 画像のサポートが導入されました。この機能は .NetStandart および .NET6+ バージョンでのみ利用可能であることに注意してください。 <sup>12月23日</sup>

{{% alert color="primary" %}}

[Aspose.Words for Python via .NET 23.9 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.10 リリースノート](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.11 リリースノート](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for .NET 23.12 リリースノート](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## Python via .NET 23.5、23.6、23.7、23.8 の Aspose.Words

Aspose.Words 23.5 では、チャート シリーズ データを操作する機能と ODT ドキュメントを操作する機能が強化され、ヘッダー/フッターとそのテキストの折り返しも改善されています。

Aspose.Words 23.6 では、レンダリング オプションが拡張され、新しいエクスポート形式が追加され、LINQ レポートと LowCode ツールが改善されています。

Aspose.Words 23.7 では、レポート機能が強化され、新しいエクスポート形式が追加され、テーブルとデジタル署名の操作に変更が導入されています。

Aspose.Words 23.8 は、さまざまな形式の機能を拡張し、レンダリングを改善し、フィールドを操作するための新しいオプションを追加します。

### サポートされている形式

※バージョン23.6よりXLSX形式で保存できるようになりました。これで、ドキュメントを Excel 形式に変換できるようになりました。 <sup>23.6</sup>

※バージョン23.7より、ドキュメントのページや図形をEPS形式で保存できるようになりました。 <sup>23.7</sup>

### 新しいフォーマット機能

- MOBIドキュメントの目次(TOC)を自動生成する機能が導入されました。 <sup>23.8</sup>
- [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) コンストラクターが [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) で拡張されました。 <sup>23.8</sup>
- EMF メタファイルの縦書きテキストの整形が実装されました。 <sup>23.8</sup>

### レンダリング

#### チャート系列データの取得と変更<sup>23.5</sup>

グラフ シリーズ データを取得および変更する機能は、以下を追加することで提供されました。

- 新しいクラス: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/)、[ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/)、[ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/)、[ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/)、[BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/)、[ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- 新しい列挙型: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/)、[ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### 高度なタイポグラフィ<sup>23.6</sup>のサポート

WMF、EMF、EMF+ レンダリングでの高度なタイポグラフィーのサポートが追加されました。

#### ページ上の色付きコンテンツ<sup>23.6</sup>

ページに色が付いているかどうかを示すパブリック プロパティ [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/) が追加されました。

#### チャートデータラベルの書式設定<sup>23.6</sup>

グラフ データ ラベルの塗りつぶし、ストローク、吹き出しの書式設定を設定する機能が実装されました。

### Mail Merge とレポート

#### LINQ レポート エンジン<sup>23.6</sup>の動的 HTML 挿入

LINQ レポート エンジンに動的 HTML を挿入する新しい方法が追加されました。

#### Mustache タグのサポート<sup>23.7</sup>

Mustache タグが [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) メソッドと [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) メソッドでサポートされるようになりました。

#### レンダリング画像のサイズを指定する<sup>23.8</sup>

レンダリングされたイメージのサイズをピクセル単位で指定するための新しいパブリック プロパティ [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) が導入されました。

#### JSON 文字列値の空白を保持する – LINQ <sup>23.8</sup>

JSON 文字列値の空白を保持するオプションが LINQ レポート エンジンに追加されました。

### <sup>LowCode23.6</sup>

さまざまな種類のドキュメントを 1 つの出力ドキュメントにマージすることを目的とした新しい LowCode メソッドが追加されました。

### 他の

- ヘッダー/フッターでのテキストの折り返しのサポートが実装されました。 <sup>23.5</sup>
- [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) メソッドを使用して、ODT ドキュメントからデジタル署名を削除する機能が追加されました。 <sup>23.5</sup>
- ふりがな[Run](https://reference.aspose.com/words/python-net/aspose.words/run/)のベースとルビを取得するための公開プロパティ[phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/)を追加しました。 <sup>23.5</sup>
- 新しい [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) プロパティの導入により、デジタル署名されたドキュメントからデジタル署名値をバイト配列として取得する機能が追加されました。 <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) クラスと [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) クラスは、新しいパブリック メンバー ([Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/)、[Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/)、[Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/)、[Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/)) で拡張されました。 <sup>23.7</sup>

{{% alert color="primary" %}}

[Aspose.Words for Python via .NET 23.5 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.6 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.7 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.8 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## Python via .NET 23.1、23.2、23.3、23.4 の Aspose.Words

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

[Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) クラスは、背景色と前景色に関連する一連の新しいパブリック プロパティ ([fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/)、[back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/)、[fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/)、[back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/)) で拡張されました。

#### `SkiaSharp` Native Shader <sup>23.3</sup>による放射状グラデーション

.NET Standard の `SkiaSharp` ネイティブ シェーダーを使用した放射状グラデーションのレンダリングが実装されました。

#### 表と周囲の文字との距離<sup>23.4</sup>

[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) クラスに新しいプロパティ ([distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/)、[distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/)、[distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/)、[distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/)) を導入することにより、テーブルと周囲のテキストの間の距離を設定する機能が追加されました。

### ドキュメントのロードと保存

#### AZW3 ドキュメント<sup>23.1</sup>の `TOC` を生成

[epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/) プロパティを使用して、AZW3 ドキュメントの `TOC` (目次) を生成する機能が追加されました。

#### リスト項目を Markdown <sup>23.1</sup>にエクスポートする

[list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) プロパティを [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) クラスに追加することで、リスト項目の Markdown 形式へのエクスポートを制御する方法が提供されています。

#### ドキュメント保存の進行状況の通知<sup>23.3</sup>

MOBI および AZW3 形式の保存進捗通知が実装されました。

#### 文と単語の間隔の調整<sup>23.3</sup>

[adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) プロパティの導入により、ドキュメントのインポート時に文と単語の間隔を自動的に調整するかどうかを指定する機能が追加されました。

### 他の

- [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) プロパティ実装<sup>23.2</sup>によって、ドキュメントの文字間隔調整を指定する機能が追加されました。
- 単語数統計にテキストボックス、脚注、文末脚注を含めるかどうかを Aspose.Words に指示する方法が、[include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) プロパティ<sup>23.2</sup>を追加することで提供されました。
- [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) プロパティ<sup>23.2</sup>を通じて、適切な値に基づいてスタイルを自動的に再定義するかどうかを指定できるドキュメント スタイルの新しいオプションが導入されました。
- [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) プロパティ<sup>23.4</sup>を使用して、[Run](https://reference.aspose.com/words/python-net/aspose.words/run/) が発音ガイドの実行であるかどうかを判断する機能が追加されました。
- [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) クラスを導入し、[Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) プロパティ<sup>23.4</sup>を追加することで、コンボ チャートのシリーズと軸を操作する簡単な方法が実装されました。
- シェイプの相対位置とサイズ設定に関連する新しいパブリック プロパティが [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) クラス<sup>23.4</sup>に追加されました。
- 自動テキスト色解像度の色の明るさ計算の精度とパフォーマンスが、Microsoft Word <sup>23.4</sup>の最新バージョンに従って向上しました。

{{% alert color="primary" %}}

[Aspose.Words for Python via .NET 23.1 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.2 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.3 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.4 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## Python via .NET 22.9、22.10、22.11、22.12 の Aspose.Words

Aspose.Words 22.9 では、ドキュメントのロードと保存のオプションが拡張され、他のいくつかのオプションとの相互作用が改善されました。

Aspose.Words 22.10 では、検索と置換のオプションが改善され、OLE オブジェクトが強化され、リスト機能が拡張されています。

Aspose.Words 22.11 は、すでに使い慣れたオブジェクト (OLE および構造化ドキュメント タグ) をより便利に操作できる新しいオプションで機能を拡張します。

Aspose.Words 22.12 では、レンダリング機能が強化され、ドキュメントのロード/保存時にマージンを操作するためのオプションが導入されています。

### パフォーマンスの改善<sup>22.12</sup>

仕様への準拠を維持するために、PDF へのレンダリング時にグラフィックス状態のネストの深さを大幅に減らす最適化が導入されました。

### レンダリングと印刷

#### 新しい境界線レンダリング プロパティ<sup>22.12</sup>

新しいパブリック プロパティ [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) および [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/) が導入されました。

#### DrawingML レンダリング用の線形近似曲線の式<sup>22.12</sup>

DrawingML チャートの線形近似曲線数式レンダリングが実装されました。

#### Google Noto フォント<sup>22.12</sup>のフォント フォールバック設定

Google Noto フォントの事前定義フォント フォールバック設定が更新されました。

### ドキュメントのロードと保存

#### ヘッダーまたはフッターの形状をキャッシュして PDF サイズを削減<sup>22.9</sup>

新しい **CacheHeaderFooterShapes** プロパティを追加することで、ヘッダー/フッターの形状をキャッシュして出力 PDF ファイルのサイズを削減する機能が実装されました。

#### 文書ロード時の自動番号検出<sup>22.9</sup>

テキストのロード時に [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) プロパティを指定する機能は、[TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) クラスの拡張によって実装されました。

#### 特定の余白タイプの指定<sup>22.12</sup>

特定のセクションに特定の **Margin** タイプを指定する機能が実装されました。

### 検索と比較<sup>22.10</sup>

検索および置換オプションで [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) を無視する機能は、新しい [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) プロパティを [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) クラスに追加することによって実装されました。

### 他の

- FieldEQ を OfficeMath として取得する新機能が追加されました。 <sup>22.9</sup>
- Groupタイプの構造化文書タグをRowレベルで作成できるようにしました。 <sup>22.9</sup>
- ドキュメントを HTML に変換するときに、OLE オブジェクトとコントロールがメタファイル イメージとして扱われるようになりました。 <sup>10月22日</sup>
- 新しい **HasSameTemplate** メソッドを [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) クラスに導入することにより、特定のリストが比較リストと同じテンプレートから作成されたことを確認する新しい機能が追加されました。 <sup>10月22日</sup>
- [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) タイプの新しい構造化文書タグを作成する機能が追加されました。 <sup>11月22日</sup>
- ユーザーがソース文書から出力 PDF 文書に OLE 添付ファイルを埋め込むことができる新しい **EmbedAttachments** プロパティが導入されました。 <sup>11月22日</sup>

{{% alert color="primary" %}}

[Aspose.Words for Python via .NET 22.9 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 22.10 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 22.11 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 22.12 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## 関連項目

{{% alert color="primary" %}}

このページには過去 2 年間の最新リリース ニュースが含まれています。以前のリリースの詳細については、[リリースノート'](/words/python-net/release-notes/) ページの関連セクションを参照してください。

{{% /alert %}}