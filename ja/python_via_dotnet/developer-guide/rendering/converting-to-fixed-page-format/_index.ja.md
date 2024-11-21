---
title: 固定ページ形式への変換
second_title: Python via .NET用Aspose.Words
articleTitle: 固定ページ形式への変換
linktitle: 固定ページ形式への変換
description: "Python を使用してドキュメントを PDF、XPS、HTML、XAML、PostScript、および PCL 形式で保存します。"
type: docs
weight: 10
url: /ja/python-net/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words は独自のページ レイアウト エンジンを実装しています。仕様を詳しく調べる前に、まずドキュメントについて概要を説明することは価値があります。ドキュメントについて考えるとき、ユーザーは通常、単語、画像、表、グラフを含む多数の紙のシートを想像します。ドキュメントには、テキスト、スプレッドシート、スライド、CAD 図面、フローチャートなど、さまざまなタイプがあるため、本質的に異なるレイアウトを持つことができます。ほとんどのアプリケーションでは、ドキュメントをプリンタに送信できます。これは、ユーザーがドキュメントの最終的な意図された外観を実際に表示できるときです。

## さまざまなアプリケーションでドキュメントを表示する

さまざまなドキュメント表示または公開アプリケーションを使用すると、ユーザーは特定の形式のドキュメントを開いたり (Adobe Acrobat、XPS Viewer)、場合によっては編集したり (Adobe InDesign) することができます。これらのアプリケーションは通常、いわゆる「固定ページ」形式のドキュメントを作成します。このようなドキュメント形式は、ドキュメントのコンテンツが各ページのどこに配置されるかを正確に記述します。内部的には、PDF または XPS 形式には、各ページの説明と、ページ上のコンテンツのレイアウトを指定する描画命令が含まれています。これは画像形式に似ており、コンテンツがラスター形式またはベクター形式で表示される場所を記述します。

対照的に、一部のテキスト編集アプリケーションは、ドキュメントのページの表示をサポートしていません。たとえば、Microsoft Notepad は、単にテキストを表示、編集、印刷する以外の機能はほとんどサポートしていません。ここで重要な点は、このようなアプリケーションでは文書のページを表示することも、印刷されるページの数をユーザーに通知することもできず、文書のコンテンツの表示のみが可能であるということです。ドキュメントはプレーン テキスト形式で保存でき、他の多くのアプリケーションで開くことができます。任意のファイルのバイナリ コンテンツを表示できるアプリケーションを使用すると、ドキュメント ファイルに保存されている内容を確認できます。これは単なるプレーン テキストであり、他には何も含まれていません。

Microsoft WordPad など、もう少し高度なテキスト編集アプリケーションでは、文書をリッチ テキスト形式 (RTF) で保存します。RTF では、画像の挿入、文字の書式設定、段落の余白や間隔など、より多くの書式設定機能がサポートされています。ただし、RTF 形式にもドキュメントのコンテンツのみが含まれ、ページに関する情報は含まれません。

Microsoft Word は、現在 Windows で最も高度なテキスト編集アプリケーションです。ファイルは DOCX 形式でフォーマットされ、ドキュメントのコンテンツを柔軟かつ広範に記述するため、ユーザーはページ サイズやドキュメント セクションの方向を指定でき、WYSIWYG アプリケーションであるためドキュメント ページを画面上に表示することもできます。それにもかかわらず、ドキュメント ファイル内で利用可能なページにドキュメントのコンテンツがどのように表示されるかについてはまだ情報がありません。ドキュメント ファイルには、コンテンツ自体とドキュメント オブジェクト間の関係、およびいくつかの幾何学的制約が記述されているだけです。その結果、ドキュメントを表示する前に、Microsoft Word はその情報自体を計算します。ここでページ レイアウトが重要になります。

## ページレイアウトとは

ドキュメントのページ レイアウトは、すべてのドキュメント オブジェクトのページ上で特定のオブジェクトがどこに配置されるかを記述するデータ構造です。さらに、オブジェクトには、フォント サイズ、シェーディング、描画効果など、外観に影響を与えるプロパティがあるため、オブジェクトがどこにあるかだけでなく、ページのどの領域を占めるか、またオブジェクトが存在するかどうかも把握する必要があります。他のオブジェクトが同じ領域に重ならないように、複数のページに適用されます。

Aspose.Words はページ レイアウト機能を内部的に実装し、PDF、XPS、さまざまな画像形式などのすべての固定ページ形式を生成できるようにします。ページ レイアウトがなければ、固定ページ ドキュメント ファイルに保存されている情報は利用できず、これらの形式はすべてサポートされません。

ドキュメントとページ レイアウトの関係は非常に単純です。ドキュメントがコンテンツを記述するのに対し、対応するページ レイアウトはそのコンテンツのジオメトリを記述します。ジオメトリを計算するためのコンテンツがないため、ページ レイアウトはドキュメントなしでは存在できませんが、ドキュメントはページ レイアウトなしでも存在できることに注意してください。たとえば、DOCX ドキュメントが RTF ドキュメントに変換される場合、どちらの形式にもジオメトリが保存されないため、通常はジオメトリを知る必要はありません。

## ページレイアウトの作成

ページ レイアウトの作成は、速度とメモリの両方の点でコストがかかる手順になる可能性があります。これにはいくつかの理由があります。

- ドキュメントには大量のコンテンツが含まれており、数千ページにわたって表示する必要がある場合があります。すべてのページ上のすべてのオブジェクトのジオメトリを記述する必要があり、メモリ リソースが消費されます。
- ドキュメントには、ジオメトリに制約を課す多くのルールが含まれる場合があります。すべての制約が確実に満たされるようにするために、かなりの計算時間が費やされる場合があります。
- 一部のドキュメント機能 (`NUMPAGES` フィールドなど) は、将来のプロパティ値に対して再帰的な依存関係を作成しますが、計算時には利用できません。これにより計算が繰り返し行われることになり、計算時間が増加します。

前述の理由により、Aspose.Words は必要な場合にのみページ レイアウトを作成します。この一般的な理由は、ドキュメント ページをレンダリングする要求、またはページ レイアウトで利用可能な情報に依存するフィールド値を取得する要求です。あまり明らかではない理由として、ドキュメントを HTML にエクスポートすることが考えられます。 HTML は固定ページ形式ではなく、コンテンツ オブジェクトのジオメトリを記述しませんが、それでも画像をサポートします。このような画像は、Microsoft Word で作成され、その中にテキストが含まれる図形の形式である場合があります。たとえば、軸ラベルを含むグラフは画像として HTML にエクスポートできますが、これを実行する前に、Aspose.Words はその画像をレンダリングする必要があるため、ラベルを表示する場所を認識する必要があります。以下のチャートの例を参照してください。

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="固定ページ形式への変換_1" style="width:800px"/>

### 非幾何学的プロパティ

ページ レイアウトは、幾何情報の処理に加えて、色と境界線のスタイルの計算も行います。 Microsoft Word では、テキストの色を自動として指定できます。これは、セルまたは段落の陰影の色、またはテキストが表示されるページの色に基づいて色の選択を行う必要があることを意味します。

ページ レイアウトは、テキストがどこに表示されるか、その背後にどのコンテンツがレンダリングされるかを計算し、色の計算を可能にします。ページ レイアウトによって実行される他の特定の計算があります。たとえば、表の水平境界線は、表の行がテキスト列の最後であるかどうか、および列をまたいで分割されているかどうかによって異なります。行が列の最後にレンダリングされる場合、水平方向の代わりに下側の境界線が使用されます。

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Aspose.Words では、ユーザーは新しいページ レイアウトを構築するか、既存のページ レイアウトを更新するかをリクエストできます。これらは両方とも、[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) クラスによって提供される [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) メソッドによって実行できます。ページ レイアウトが存在しないが、ページ レイアウトが必要な場合 (たとえば、ドキュメントが固定ページ形式にエクスポートされる場合)、Aspose.Words は自動的にこのメソッドを呼び出します。ただし、ページ レイアウトがすでに存在する場合、Aspose.Words は更新に必要なリソースの消費を避けるために、既存のレイアウトを使用します。この場合、ユーザーはページ レイアウトがドキュメント モデルに合わせて最新であることを確認するために、[update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) メソッドを呼び出す必要があります。

### 動的構造

ページ レイアウトの作成プロセスは次の手順で構成されます。

- *Conversion* – ドキュメント モデルのコンテンツを列挙し、対応するレイアウト オブジェクトを準備します。
- *Build* – ページ上のドキュメントのコンテンツを表すレイアウト オブジェクトを配置します。
- *Reflow* – ジオメトリ制約を満たすようにオブジェクトの配置を更新します。
- *レイアウト オブジェクトを固定ページ プレゼンテーションに投影し、色情報を完成させます*。
- *図形コンテンツの構築とリフロー* – ドキュメントにネストされたテキスト コンテンツを含む図形が含まれている場合に必要な手順。

ページ レイアウトは動的構造であり、部分的に再構築できることに注意してください。これは、ドキュメントのレイアウト構造を再構築しないとフィールド値を計算できない場合に特に必要です。フィールドはページ上のオブジェクトの位置を参照でき、同時にフィールド値自体もページ上に表示され、参照されるオブジェクトの位置に影響を与えます。ページ上に配置する時点ではフィールド値がまだ利用できない可能性があるため、ページ レイアウトは一度に構築することはできません。

`NUMPAGES` フィールドがドキュメントの最初のページのフッターに表示される場合の一般的なシナリオを考えてみましょう。このフィールドの値は総ページ数です。ページ上にフィールドを配置するには、その値がわかっている必要があります。現在最初のページのみが構築されている場合、総ページ数はまだわかりません。この場合、ページ レイアウトはデフォルト値を使用し、後でそのフィールドに戻って実際の計算に従って値を変更する必要があります。ただし、フィールド値を変更すると、ページ上の他のドキュメント コンテンツに影響を及ぼし、最終的には新しいページが追加されたり、既存のページが削除されたりする可能性があるため、計算された値が古くなります。この問題は、既存のページレイアウトを更新できるようにすることで解決できます。

レイアウトを作成するときに、ページ上のドキュメントの出力に影響を与える [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) プロパティを設定することもできます。

## 固定ページ形式で保存する

ページ レイアウトが構築され、オブジェクトのジオメトリとページ上の位置が計算された後、Aspose.Words がサポートする固定ページ形式でドキュメントを保存できます。ドキュメントを固定ページ形式で保存する場合、これらの形式すべてに共通のレンダリング オプションを使用できます。これらにより以下を制御できるようになります。

- 出力ドキュメント ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)) に含まれるページの数と範囲。
- 数値表示に使用される文字のセット ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/))。
- メタファイル プレーヤー ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/))。詳細については、[Windows メタファイルの処理](/words/ja/python-net/handling-windows-metafiles/) の記事を参照してください。
- JPEG画像を再圧縮する際の画質レート。選択した保存形式([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/))によって値が若干異なります。
- Aspose.Words 出力 ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)) のベクター グラフィックスの最適化。
- Tiff、Png、Bmp、Jpeg、Emf 形式 ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/)、[use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)) に保存するときのグラフィック オプション。
- ドキュメントをグレースケール ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)) で保存します。
- DrawingML シェイプとフォールバック シェイプ ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)) のレンダリング間の切り替え。
- DML エフェクト レンダリング モード ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)) 間の切り替え。

以下の例は、[save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドとレンダリング オプションを使用してドキュメントを JPEG 形式で保存する方法を示しています。

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
