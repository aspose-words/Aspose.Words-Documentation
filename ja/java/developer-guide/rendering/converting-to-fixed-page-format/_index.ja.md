---
title: Javaで固定ページ形式に変換する
second_title: Aspose.WordsのためのJava
articleTitle: 固定ページ形式への変換
linktitle: 固定ページ形式への変換
description: "Aspose.WordsforJavaは独自のページレイアウトエンジンを実装しており、PDF、XPS、およびさまざまな画像形式などの固定ページ形式のすべてを生成できます。"
type: docs
weight: 10
url: /ja/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Wordsは独自のページレイアウトエンジンを実装します。 その仕様を掘り下げる前に、まず文書を高いレベルで議論することは価値があります。 文書について考えるとき、ユーザーは通常、単語、画像、表、およびチャートを含む多数の紙のシートを想像します。 ドキュメントには、テキスト、スプレッドシート、スライド、CAD図面、フローチャートなど、さまざまな種類があり、したがって、本質的に異なるレイアウトを持つ これは、ユーザーが実際に文書の最終的な意図された外観を見ることができるときです。

## さまざまなアプリケーションでの文書の表示

さまざまなドキュメントの表示または公開アプリケーションを使用すると、ユーザーは特定の形式のドキュメントを開き(Adobe Acrobat、XPSビューア)、時には編集(AdobeInDesign)できます。 これらのアプリケーションは、通常、いわゆる"固定ページ"形式の文書を生成します。 このような文書形式は、文書のコンテンツがすべてのページ上のどこに配置されるかを正確に記述します。 内部的には、PDFまたはXPS形式には、ページ上のコンテンツのレイアウトを指定する描画命令と同様に、すべてのページの説明が含まれています。 これは、コンテンツがラスター形式またはベクトル形式で表示される場所を記述する画像形式に似ています。

対照的に、一部のテキスト編集アプリケーションでは、ドキュメントのページの表示をサポートしていません。 たとえば、Microsoftメモ帳では、テキストの表示、編集、印刷以外の機能はほとんどサポートされていません。 ここで重要な観察は、このようなアプリケーションは、ドキュメントのページを表示することも、それらのうちのいくつが印刷されるかをユーザーに伝えることもできず、ドキュメントのコンテンツを表示することしかできないということです。 文書は、プレーンテキスト形式で保存することができ、他の多くのアプリケーションで開くことができます。 任意のファイルのバイナリコンテンツを表示できるアプリケーションを使用すると、ドキュメントファイルに何が保存されているかを確認できます。

Microsoft WordPad などの少し高度なテキスト編集アプリケーションでは、ドキュメントをリッチ テキスト形式 (RTF) で保存します。この形式では、画像の挿入、文字の書式設定、段落の余白や間隔など、より多くの書式設定機能がサポートされます。ただし、RTF 形式にもドキュメントの内容のみが含まれ、ページに関する情報は含まれません。

Microsoft Wordは、今日のWindowsで最も高度なテキスト編集アプリケーションです。 これは文書の内容を柔軟かつ広範囲に記述するDOCX形式でファイルをフォーマットし、ユーザーはページサイズや文書セクションの向きを指定でき、WYSIWYGアプリケーシ それにもかかわらず、文書ファイルで利用可能なページに文書の内容がどのように表示されるかに関する情報はまだありません。 ドキュメントファイルには、コンテンツ自体と、ドキュメントオブジェクト同士の関係、およびいくつかの幾何学的制約のみが記述されています。 その結果、文書を表示する前に、Microsoft Wordはその情報自体を計算します。 ここで、ページレイアウトが機能します。

## ページレイアウトとは何ですか

ドキュメントページレイアウトは、すべてのドキュメントオブジェクトのページ上の特定のオブジェクトがどこにあるかを記述するデータ構造です。 さらに、オブジェクトには、フォントサイズ、シェーディング、描画効果など、外観に影響するプロパティがあるため、オブジェクトがどこにあるかだけでなく、そのオブジェクトが占有するページのどの領域に適用されるか、他のオブジェクトが同じ領域に重ならないように複数のページに適用されるかどうかを知る必要があります。

Aspose.Wordsはページレイアウト機能を内部的に実装しており、PDF、XPS、およびさまざまな画像形式などの固定ページ形式のすべてを生成できます。Aspose.Wordsは、PDF、XPS、PDF、PDF、PDF、PDF、{ ページレイアウトがないと、固定ページドキュメントファイルに格納されている情報は利用できず、これらの形式はすべてサポートされません。

ドキュメントとページレイアウトの関係は非常に簡単です。 ドキュメントではコンテンツが記述されますが、対応するページレイアウトではそのコンテンツのジオメトリが記述されます。 ジオメトリを計算するためのコンテンツは存在しないため、ページレイアウトはドキュメントなしでは存在できませんが、ドキュメントはページレイアウトなしで存在することができることに注意してください。 たとえば、DOCX文書がRTF文書に変換される場合、どちらの形式もジオメトリを格納しないため、通常はジオメトリを知る必要はありません。

## ページレイアウトの作成

ページレイアウトの作成は、速度とメモリの両方の点でコストのかかる手順になる可能性があります。 これはいくつかの理由によるものです:

- ドキュメントには大量のコンテンツが含まれている場合があり、数千ページに表示する必要がある場合があります。 すべてのページ上のすべてのオブジェクトのジオメトリを記述する必要があり、メモリリソースを消費します。
- ドキュメントには多くのルールがあり、ジオメトリに制約があります。 かなりの計算時間が費やされる可能性があり、すべての制約が満たされることを保証します。
- `NUMPAGES`フィールドなどの一部のドキュメント機能では、将来のプロパティ値に対する再帰的な依存関係が作成されますが、計算時には使用できません。 これは反復計算につながり、計算時間に加算されます。

前述の理由により、Aspose.Wordsは必要な場合にのみページレイアウトを作成します。 この典型的な理由は、ドキュメントページをレンダリングするか、ページレイアウトで利用可能な情報に依存するフィールド値を取得する要求です。 あまり明白でない理由は、文書をHTMLにエクスポートすることです。 HTMLは固定ページ形式ではなく、コンテンツオブジェクトのジオメトリを記述していませんが、画像をサポートしています。 このような画像は、Microsoft Wordで作成された図形の形で、その中にテキストが含まれている場合があります。 たとえば、軸ラベルを持つグラフは画像としてHTMLにエクスポートできますが、これを行う前にAspose.Wordsはその画像をレンダリングする必要があるため、ラベルを表示する場所を知る必要があります。 以下のグラフの例を参照してください:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### 非幾何学的性質

ページレイアウトは、幾何学的情報の処理に加えて、色と境界線のスタイルの計算も担当します。 Microsoft Wordでは、テキストの色を自動として指定することができ、色の選択はセルまたは段落の陰影の色に基づいているか、テキストが表示されるページの色に基

ページレイアウトでは、テキストが表示される場所とその背後に表示されるコンテンツが計算され、色の計算が可能になります。 ページレイアウトによって実行される他の特定の計算があります。 たとえば、表の水平境界線は、表の行がテキストの列の最後にあるかどうか、および列間で分割されているかどうかによって異なります。 行が列の最後にレンダリングされる場合、水平ではなく下の境界線が使用されます。

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Aspose.Wordsでは、ユーザーは新しいページレイアウトを作成するか、既存のページレイアウトを更新するかを要求できます。 これらの両方は、[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)クラスによって提供される[UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\))メソッドによって実行できます。 ページレイアウトが存在しないが、必要がある場合(たとえば、文書が固定ページ形式にエクスポートされる場合)、Aspose.Wordsは自動的にこのメソッドを呼び出します。 ただし、ページレイアウトが既に存在する場合、Aspose.Wordsは更新に必要なリソースを消費するのを避けるために、既存のレイアウトを使用します。 この場合、ユーザーは、ページレイアウトがドキュメントモデルで最新であることを確認するために、`UpdatePageLayout`メソッドを呼び出す必要があります。

### 動的構造

ページレイアウトの作成プロセスは、次の手順で構成されます:

- *Conversion*–ドキュメントモデルの内容を列挙し、対応するレイアウトオブジェクトを準備します。
- *Build*–ページ上の文書の内容を表すレイアウトオブジェクトを配置します。
- *Reflow*-ジオメトリの制約を満たすようにオブジェクトの配置を更新します。
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content*-文書にネストされたテキストコンテンツを含む図形が含まれている場合に必要な手順です。

ページレイアウトは動的な構造であり、部分的に再構築できることに注意してください。 これは、ドキュメントレイアウト構造を再構築せずにフィールド値を計算することが不可能な場合に特に必要です。 フィールドは、ページ上のオブジェクトの位置を参照することができ、同時に、フィールド値自体もページ上にレンダリングされ、参照されるオブジェクトの位置に影響を与えます。 ページの配置時にフィールド値がまだ使用できない可能性があるため、ページレイアウトを一度に構築することはできません。

ドキュメントの最初のページのフッターに`NUMPAGES`フィールドが表示される場合の典型的なシナリオを考えてみましょう。 このフィールドの値は、ページの合計数です。 ページ上にフィールドを配置するには、その値を知る必要があります。 最初のページのみが現在構築されている場合、ページの総数はまだわかっていません。 この場合、ページレイアウトはデフォルト値を使用し、後でそのフィールドに戻り、実際の計算に従ってその値を変更する必要があります。 ただし、フィールド値を変更すると、ページ上の他のドキュメントコンテンツに影響を与え、最終的に新しいページが追加されたり、既存のページが削除され この問題は、既存のページレイアウトを更新できるようにすることで解決できます。

レイアウトを作成するときに、ページ上のドキュメントの出力に影響する[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)プロパティを設定することもできます。

## 固定ページ形式への保存

ページレイアウトが作成され、オブジェクトのジオメトリとページ上の位置が計算された後、文書はAspose.Wordsでサポートされている固定ページ形式で保存できます。 文書を固定ページ形式で保存する場合は、これらすべての形式に共通のレンダリングオプションを使用できます。 彼らは制御することができます:

- 出力文書に含まれるページの数と範囲([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/),[PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- ページごとの文書保存の進行状況([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。
- 数字のレンダリングに使用される文字のセット([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。
- メタファイルプレーヤー([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). 詳細については、以下を参照してください。 [Windowsメタファイルの処理](/words/java/handling-windows-metafiles/) 記事。
- 選択した保存形式([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/))に応じて、その値がわずかに異なる場合があります。JPEG画像を再圧縮するための品質レート。
- Aspose.Words出力におけるベクターグラフィックスの最適化([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Tiff、Png、Bmp、Jpeg、Emf形式([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing)、[UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))に保存するときのグラフィックオプション。
- ドキュメントをグレースケール([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))で保存します。
- DrawingML図形のレンダリングとフォールバック図形([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))の切り替え。
- DMLエフェクトレンダリングモードの切り替え([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

以下の例は、`Save`メソッドとレンダリングオプションを使用してドキュメントをJPEG形式で保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
