---
title: 新着情報
second_title: Python via .NET用Aspose.Words
articleTitle: Python via .NET の Aspose.Words の新機能
linktitle: Python via .NET の Aspose.Words の新機能
type: docs
description: "Python via .NET 用 Aspose.Words は日々拡張および機能強化されています。このページでは、製品の巨大で最も興味深い機能について学ぶことができます。"
weight: 10
url: /ja/python-net/what-s-new-in-aspose-words-for-python-net/
timestamp: 2024-11-18-12-56-02
---

このページでは、最近のリリースで導入された最も興味深い新しい Aspose.Words 機能について説明します。

## .NET 24.9、24.10、24.11 経由の Aspose.Words for Python

Aspose.Words 24.9 では、DocumentBuilder 経由のグループ シェイプの挿入と StructuredDocumentTag の挿入が導入され、目盛り付きの放射状グラフのレンダリングが強化され、XAdES-EPES サポートによるデジタル署名が改善され、Markdown の下線認識が追加され、脚注/文末脚注のセパレーターへのアクセスが提供されます。

Aspose.Words 24.10 では、コマンド ボタンの作成、新しい図形の表示コントロール、図形のグループ化機能、表の Markdown エクスポートの改善、円グラフとドーナツ グラフのグラフ書式設定、Big5 エンコード処理の改善、古い台湾フォントのサポートなど、ActiveX コントロールのサポートが強化されています。

Aspose.Words24.11では、AIを使用したドキュメントの要約、強化されたレンダリングオプション、ドキュメントプロパティへのアクセスの改善、ActiveXコントロー

### AI搭載の機能 <sup>24.11</sup>

**OpenAI**および**Google**生成言語モデルを使用した文書要約のサポートは、[Aspose.Words.AI](https://reference.aspose.com/words/python-net/aspose.words.ai/)名前空間とそのパブリックメンバーを追加することによって統合されています。

### レンダリングと印刷

#### 放射状グラフの目盛り <sup>24.9</sup>

放射状グラフの目盛りのレンダリングが実装されました。

#### コマンド ボタン ActiveX コントロール <sup>24.10</sup>

新しいパブリック メソッド [insert_forms_2_ole_control](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_forms_2_ole_control/) と新しいパブリック クラス [Forms2OleControl](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/) を追加することで、コマンド ボタン ActiveX コントロールを作成する機能が導入されました。

#### 図形の表示のコントロール <sup>24.10</sup>

図形の表示を制御するための新しいパブリック プロパティ [hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/hidden/) が追加されました。

#### 円グラフとドーナツ グラフの変更 <sup>24.10</sup>

円グラフとドーナツ グラフの書式設定のために、いくつかの新しいパブリック プロパティが追加されました。

#### PDF選択フォームフィールドの境界線のレンダリングを制御します <sup>24.11</sup>

新しいパブリックオプション[render_choice_form_field_border](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/render_choice_form_field_border/)を追加することにより、PDF選択フォームフィールド境界のレンダリングを制御する新しいオプションが実装されました。

#### グラフデータの書式コードの取得と設定 <sup>24.11</sup>

チャートデータの書式コードを取得および設定する機能は、[ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/)、[ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/)、および[BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/)クラスに[format_code](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/format_code/)プロパティを実装することによって追加されました。

#### ビンとラベルを使用したヒストグラムチャートのレンダリング <sup>24.11</sup>

ヒストグラムチャートレンダリングは、指定された数のビンとラベルを使用できるようにすることで改善されました。

### ドキュメントの変換、読み込み、および保存

#### Markdown ファイルの読み込み時の下線書式設定 <sup>24.9</sup>

Markdown ドキュメントの読み込み時に下線書式設定を認識するオプションが、新しいパブリック プロパティ [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/) の追加によって組み込まれました。

#### Markdown に保存するときにテーブルを HTML としてエクスポートする <sup>24.10</sup>

ドキュメントを Markdown 形式で保存するときにテーブルを HTML としてエクスポートするオプションが、新しいパブリック プロパティ [export_as_html](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/export_as_html/) と列挙 [MarkdownExportAsHtml](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownexportashtml/) を追加することで実装されました。

#### 更新された論理構造を使用してPDFをエクスポートする <sup>24.11</sup>

PDFエクスポートは、テーブルタイトルプロパティをPDF論理構造要素のタイトルとして含めることで拡張されました。

### デジタル署名

#### XAdES-EPES でドキュメントに署名 <sup>24.9</sup>

新しいパブリック プロパティ [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) と新しいパブリック列挙 [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/) を追加することで、XAdES-EPES レベルの XML-DSig 署名でドキュメントに署名する機能が導入されました。

### その他

* 図形をグループ化するための新しいパブリック メソッド [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/) が追加されました。 <sup>24.9</sup>
* **StructuredDocumentTags** をドキュメントに挿入するための新しいパブリック メソッド [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/) が追加されました。 <sup>24.9</sup>
* いくつかのパブリック クラスとプロパティを追加することで、脚注/文末脚注セパレーターへのパブリック アクセスが提供されています。 <sup>24.9</sup>
* [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/#float_float_float_float_shapebaselist) メソッドを追加することで、個々の図形をグループ化する機能、図形をまとめてグループ化する機能、図形の両方を直接グループ化する機能、図形をグループ化する機能が導入されました。 <sup>24.10</sup>
* TrueType cmap テーブルの Big5 エンコーディング処理が改善されました。 <sup>24.10</sup>
* 古い台湾語フォントのサポートが強化されました。 <sup>24.10</sup>
* 拡張ドキュメントプロパティにアクセスするために、読み取り専用プロパティが[BuiltInDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/)クラスに追加されました。 <sup>24.11</sup>
* ActiveXコントロールのキャプションの設定は、[Forms2OleControl.caption](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/caption/)プロパティに新しいパブリックセッターを追加することで有効になりました。 <sup>24.11</sup>

{{% alert color="primary" %}}

[Aspose.Words for Python via .NET 24.9 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 24.10 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-10-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 24.11 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-11-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## Aspose.Words for Python via .NET 24.5、24.6、24.7、24.8

Aspose.Words 24.5 では、アセンブリのオプションが拡張され、レンダリング機能が向上し、その他のオプションも拡張されています。

Aspose.Words 24.6 では、レンダリング オプションが向上し、検索および比較機能が強化され、その他の機能が拡張されています。

Aspose.Words 24.7 では、ActiveX の操作方法が変更され、レンダリング機能が拡張され、Markdown および XLSX 形式へのエクスポートも可能になりました。

Aspose.Words 24.8 では、軸ラベルを正確に制御してグラフのカスタマイズを強化し、フォント管理を拡張し、ドキュメント構造の処理を改善し、HTML/XAML エクスポート、PDF 機能、ドキュメント変換、デジタル署名の新しい機能を追加しました。

### サポートされている形式

バージョン 24.7 以降では、障害を持つユーザーのアクセシビリティを確保するために、PDF/UA-2 へのエクスポートがサポートされています。

### レンダリングと印刷

#### Charts、Shapes、DrawingML の変更 <sup>24.5</sup>

* 画像に限定されていた以前の機能を拡張する、SVG グラフィックスの DrawingML エフェクト レンダリングが実装されました。
* コンボ チャートの作成と、シリーズ グループ内のギャップ幅、オーバーラップ、バブル スケールなどのプロパティの調整のサポートは、[ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) クラスと [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) クラス、および [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) プロパティ。
* シェイプの SoftEdge 効果を操作する機能は、[SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/) クラスを追加することで実装されました。
* シェイプの調整値を変更する機能は、**AdjustmentCollection** および **Adjustment** パブリック クラスと [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/） 財産。

#### グラフ、図形、描画の変更 <sup>24.6</sup>

* グラフ作成機能が強化されました。*ツリーマップ*、*サンバースト*、*ヒストグラム*、*パレート* グラフ、*箱ひげ図*、*ウォーターフォール*、*ファネル* など、より多様なグラフを作成できるようになりました。これにより、データをより多様で有益な方法で視覚化できます。
* 影の書式設定の色制御が強化されました。影の色にアクセスすることで、ドキュメントの外観をより正確に制御できます。
* バックグラウンド レンダリングのパフォーマンスが向上しました。ネイティブのタイリング テクノロジにより、小さな要素を含む背景のレンダリングを大幅に高速化できます。
* 図形のリアルなグラデーションが追加されました。非線形グラデーションの DML 図形を作成できるようになりました。これにより、Microsoft Word のビジュアル スタイルを模倣して、より洗練された外観を実現できます。

#### グラフ データ ラベルのカスタマイズ <sup>24.7</sup>

**Orientation** や **Rotation** などのグラフ データ ラベルをカスタマイズする機能が追加されました。

#### リスト レベルのカスタム数値スタイル <sup>24.7</sup>

パブリック プロパティ [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/) のセッターが追加されました。リスト レベルのカスタム数値スタイルを定義できるようになりました。

#### ActiveX の操作に関する変更 <sup>24.7</sup>

* ActiveX オブジェクトのプロパティを変更できるようになり、その動作をより細かく制御できるようになりました。

* ラジオ ボタン ActiveX コントロールの値を変更して動的な操作を有効にする機能が追加されました。

* ActiveX チェックボックスを「オン」または「オフ」に切り替える機能が追加されました。

#### グラフ軸目盛りラベルの方向と回転の制御 <sup>24.8</sup>

グラフ軸目盛りラベルの方向と回転を正確に制御できるようになり、グラフのカスタマイズがさらに便利になりました。[AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) クラスが新しい [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) プロパティと [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/) プロパティで拡張されました。

#### 円記号へのバックスラッシュの置き換え <sup>24.8</sup>

バックスラッシュ文字を円記号に置き換えるための下位互換性のある HTML および XAML **replace_backslash_with_yen_sign** プロパティが [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) クラスと [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/) クラスに追加されました。

#### PDF へのエクスポート時に SDT タグをフォーム フィールド名として使用する <sup>24.8</sup>

SDT タグをフォーム フィールド名として使用するサポートを備えた PDF [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) クラスに新しい [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) プロパティを追加することで強化されました。

### ドキュメントの変換、読み込み、保存

#### リンクを Markdown 形式にエクスポート <sup>24.7</sup>

[link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/) プロパティの実装により、Markdown 形式でのリンクのエクスポートを制御する機能が追加されました。

#### LowCode <sup>24.8</sup>

1 行のコードでさまざまなドキュメント タイプを変換するための一連のメソッドを提供するように設計された新しい [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/) クラスが導入されました。

### 検索と比較

#### 高度な比較オプション <sup>24.6</sup>
比較機能が向上し、データ分析ワークフローを効率化できるようになりました。これには、新しい [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) オプションと、高度な比較用に再設計されたインターフェイスが含まれます。

### 他の

* 文書から空ページを削除する機能は、[remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/)メソッドを追加することで実装されました。 <sup>24.5</sup>
* ドキュメントをロードせずに VBA マクロの存在をチェックする機能は、[has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/) プロパティを追加することによって提供されます。 <sup>24.5</sup>
* LINQ レポート エンジンを使用してドキュメントを挿入する際のソース番号の維持がサポートされるようになりました。 <sup>24.5</sup>
* 新しい [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) プロパティが追加されました。これにより、コメントのタイムスタンプがより正確になり、整理と追跡可能性が向上します。 <sup>24.6</sup>
* LINQ レポート エンジンが改良されました。空の段落を選択的に削除し、欠落しているオブジェクト メンバーのカスタム メッセージを定義することで、よりわかりやすく、より情報量の多いレポートを実現しました。<sup>24.6</sup>
* XLSX 形式へのシームレスなエクスポートのために、日時形式が自動的に検出されるようになりました。 <sup>24.7</sup>
* VBA プロジェクトが保護されているかどうかを確認できるパブリック プロパティ [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/) が追加されました。<sup>24.7</sup>
* [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) クラスと [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) クラスに **embedding_licensing_rights** プロパティが追加されました。 <sup>24.8</sup>
* ドキュメント構造をより正確に処理するために、透かしを保持しながらセクション ヘッダーとフッターを効率的にクリアする方法が追加されました。セクション ヘッダーとフッターをクリアするには、新しいパブリック メソッド [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) を使用します。 <sup>24.8</sup>
* [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) を使用した XPS ドキュメントのデジタル署名が有効になりました。この目的のために、新しいプロパティ [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/) が追加されました。<sup>24.8</sup>

{{% alert color="primary" %}}

[Aspose.Words for Python via .NET 24.5 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 24.6 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 24.7 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 24.8 リリースノート](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/) について詳しくは、こちらをご覧ください。

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

[Aspose.Words for Python via .NET 23.9 リリースノート](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-9-release-notes/) について詳しくは、こちらをご覧ください。

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

[Aspose.Words for Python via .NET 23.7 リリースノート](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-7-release-notes/) について詳しくは、こちらをご覧ください。

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

**epub_navigation_map_level** プロパティを使用して、AZW3 ドキュメントの `TOC` (目次) を生成する機能が追加されました。

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

[Aspose.Words for Python via .NET 23.3 リリースノート](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-3-release-notes/) について詳しくは、こちらをご覧ください。

[Aspose.Words for Python via .NET 23.4 リリースノート](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/) について詳しくは、こちらをご覧ください。

{{% /alert %}}

## 関連項目

{{% alert color="primary" %}}

このページには過去 2 年間の最新リリース ニュースが含まれています。以前のリリースの詳細については、[リリースノート'](https://releases.aspose.com/words/python/release-notes/) ページの関連セクションを参照してください。

{{% /alert %}}
