---
title: ドキュメントとは別に図形をレンダリングする
second_title: C++の場合Aspose.Words
articleTitle: ドキュメントとは別に図形をレンダリングする
linktitle: ドキュメントとは別に図形をレンダリングする
description: "文書を処理するときに、画像、段落を含むテキストボックス、矢印図形などのさまざまなグラフィックオブジェクトを抽出し、外部の場所にエクスポートします。"
type: docs
weight: 40
url: /ja/cpp/rendering-shapes-separately-from-a-document/
---

文書を処理する場合、一般的なタスクは、文書内にあるすべての画像を抽出し、外部の場所にエクスポートすることです。 このタスクは、画像データを抽出して保存する機能を既に提供しているAspose.WordsAPIを使用すると簡単になります。 ただし、段落、矢印図形、小さな画像を含むテキストボックスなど、異なる種類の描画オブジェクトで表される他の種類のグラフィックコンテンツを同様に抽出する必要がある場合があります。 このオブジェクトは個々のコンテンツ要素の組み合わせであるため、このオブジェクトをレンダリングする簡単な方法はありません。 また、コンテンツが単一の画像のように見えるオブジェクトにグループ化されている場合もあります。

Aspose.Wordsは、図形から単純な画像をレンダリングされたコンテンツとして抽出するのと同じ方法で、このタイプのコンテンツを抽出する機能を提供します。 この記事では、この機能を使用して、ドキュメントとは独立して図形をレンダリングする方法について説明します。

## Aspose.Wordsの図形の種類

ドキュメント描画レイヤ内のすべてのコンテンツは、Aspose.Wordsドキュメントオブジェクトモジュール(DOM)内の[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)または[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)ノードで表されます。 このようなコンテンツには、テキストボックス、画像、AutoShapes、OLEオブジェクトなどがあります。 一部のフィールドは、`INCLUDEPICTURE`フィールドなどの図形としてもインポートされます。

単純な画像は、[ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/)の**Shape**ノードで表されます。 このshapeノードには子ノードはありませんが、このshapeノード内に含まれる画像データには[Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/)プロパティからアクセスできます。 一方、図形は多くの子ノードで構成することもできます。 たとえば、[ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/)プロパティで表されるテキストボックスの形状は、[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)や[Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)などの多くのノードで構成できます。 ほとんどの図形には、**Paragraph**および**Table**ブロックレベルのノードを含めることができます。 これらは、本体に表示されるノードと同じノードです。 図形は常に段落の一部であり、直接インラインに含まれるか、**Paragraph,**に固定されていますが、ドキュメントページのどこにでも"フローティング"されます。

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

ドキュメントには、グループ化された図形を含めることもできます。 グループ化は、複数のオブジェクトを選択し、右クリックメニューの"グループ化"をクリックすることでMicrosoft Wordで有効にすることができます。

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

Aspose.Wordsでは、これらの図形のグループは`GroupShape`ノードで表されます。 これらは、グループ全体をイメージにレンダリングするのと同じ方法で呼び出すこともできます。

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

DOCX形式には、図やグラフなどの特殊な種類の画像を含めることができます。 これらの図形は、Aspose.Wordsの**Shape**ノードを介しても表現され、これも画像としてレンダリングするための同様の方法を提供します。 設計上、図形がイメージ(**ShapeType.Image**)でない限り、図形に別の図形を子として含めることはできません。 たとえば、Microsoft Wordでは、テキストボックスを別のテキストボックス内に挿入することはできません。

上で説明した図形の型は、[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)クラスを介して図形をレンダリングするための特別なメソッドを提供します。 **ShapeRenderer**クラスのインスタンスは、**GetShapeRenderer**メソッドを介して、または**Shape**を**ShapeRenderer**クラスのコンストラクタに渡すことによって、**Shape**または**GroupShape**のために取得されます。 このクラスはメンバーへのアクセスを提供し、次の図形をレンダリングすることができます:

- [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)メソッドオーバーロードを使用してディスク上のファイル
- [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)メソッドオーバーロードを使用したストリーム
- [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)メソッドと[RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)メソッドを使用した`Graphics`オブジェクト

{{% alert color="primary" %}}

**Shape**をレンダリングするときは、ドキュメント階層の一部である必要があります。 **Shape**がドキュメントツリーの一部でない場合、**ShapeRenderer**メソッドを呼び出した後、レンダリングされた出力は空白になります。

{{% /alert %}}

## ファイルまたはストリームへのレンダリング

[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)メソッドは、図形をファイルまたはストリームに直接レンダリングするオーバーロードを提供します。 どちらのオーバーロードも[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)クラスのインスタンスを受け入れ、図形をレンダリングするためのオプションを定義できます。 これは[Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)メソッドと同じように動作します。 このパラメーターは必須ですが、カスタムオプションがないことを指定して、null値を渡すことができます。

図形は、[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)列挙体で指定された任意の画像形式でエクスポートできます。 たとえば、イメージは、`SaveFormat.Jpeg`列挙体を指定することによりJPEGなどのラスターイメージとして、または`SaveFormat.Emf`を指定することによりEMFなどのベクトルイメージとしてレ

以下のコード例は、ドキュメントとは別にEMFイメージに図形をレンダリングし、ディスクに保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

以下のコード例は、ドキュメントとは別にJPEG画像に図形をレンダリングし、ストリームに保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

**ImageSaveOptions**クラスを使用すると、イメージのレンダリング方法を制御するさまざまなオプションを指定できます。 上記の機能は、**GroupShape**および**Shape**ノードにも同様に適用することができます。

## .NETGraphicsオブジェクトへのレンダリング

**Graphics**オブジェクトに直接レンダリングすると、独自の設定と**Graphics**オブジェクトの状態を定義できます。 一般的なシナリオでは、図形をWindowsフォームまたはビットマップから取得した**Graphics**オブジェクトに直接レンダリングします。 **Shape**ノードがレンダリングされると、設定はシェイプの外観に影響します。 たとえば、**Graphics**オブジェクトに対して**RotateTransform**メソッドまたは**ScaleTransform**メソッドを使用して、図形を回転または拡大縮小できます。

以下の例は、図形をaにレンダリングする方法を示しています。**NET Graphics**ドキュメントとは別にオブジェクトを作成し、レンダリングされたイメージに回転を適用します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

同様に、[RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/)メソッドと同様に、[NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/)から継承された[RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)メソッドは、ドキュメントコンテンツのサムネイルを作成するのに便利です。 形状のサイズは、コンストラクタを介して指定されます。 **RenderToSize**メソッドは、**Graphics**オブジェクト、画像位置のX座標とY座標、および**Graphics**オブジェクトに描画される画像のサイズ(幅と高さ)を受け入れます。

**Shape**は、[NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/)クラスから継承された[ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)メソッドを使用して、特定のスケールにレンダリングできます。 これは、同じ主要なパラメータを受け入れる[Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/)メソッドに似ています。 これらの2つのメソッドの違いは、**ShapeRenderer.RenderToScale**メソッドでは、リテラルサイズではなく、レンダリング中にシェイプを拡大縮小するfloat値を選択することです。 Float値が1.0に等しい場合、シェイプは次の場所にレンダリングされます100% 元のサイズの。 Float値0.5を指定すると、イメージサイズが半分に縮小されます。

## シェイプイメージのレンダリング

[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)クラスは、AutoShape、テキストボックス、フリーフォーム、OLEオブジェクト、ActiveXコントロール、または画像など、描画レイヤー内のオブジェクトを表します。 **Shape**クラスを使用すると、Microsoft Wordドキュメント内の図形を作成または変更できます。 図形の重要なプロパティは、その[ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/)です。 異なるタイプの図形は、Word文書で異なる機能を持つことができます。 たとえば、イメージとOLE図形だけがその中にイメージを持つことができますが、ほとんどの図形はテキストのみを持つことができます。

次の例は、シェイプイメージをドキュメントとは別にJPEGイメージにレンダリングし、ディスクに保存する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## 図形サイズの取得

[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)クラスは、[GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/)メソッドを使用して図形のサイズをピクセル単位で取得する機能も提供します。 このメソッドは、図形がレンダリングされるときに図形サイズの計算に使用されるscaleとDPIの2つのfloat型(単一)パラメーターを受け入れます。 このメソッドは、計算されたサイズの幅と高さを含む`Size`オブジェクトを返します。 これは、レンダリングされた出力から新しいビットマップを作成する場合など、レンダリングされた図形のサイズを事前に知る必要がある場合に

以下の例は、レンダリングする図形の幅と高さを持つ新しいBitmapオブジェクトとGraphicsオブジェクトを作成する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

**RenderToSize**または**RenderToScale**メソッドを使用すると、レンダリングされた画像サイズも[SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)オブジェクトに返されます。 これは変数に代入して、必要に応じて使用することができます。

**SizeInPoints**プロパティは、ポイント単位で測定された形状サイズを返します([ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)を参照してください。 結果は、幅と高さを含む`SizeF`オブジェクトになります。
