---
title: ドキュメントとは別に図形をレンダリングする
second_title: .NET用Aspose.Words
articleTitle: ドキュメントとは別に図形をレンダリングする
linktitle: ドキュメントとは別に図形をレンダリングする
description: "ドキュメントの処理時に画像、段落を含むテキスト ボックス、矢印の形状などのさまざまなグラフィック オブジェクトを抽出し、C# を使用して外部の場所にエクスポートします。"
type: docs
weight: 40
url: /ja/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

ドキュメントを処理するときの一般的なタスクは、ドキュメント内にあるすべての画像を抽出し、外部の場所にエクスポートすることです。画像データを抽出して保存する機能がすでに提供されている Aspose.Words API を使用すると、この作業が簡単になります。ただし、段落、矢印の形状、小さな画像を含むテキスト ボックスなど、異なる種類の描画オブジェクトで表される他の種類のグラフィック コンテンツを同様に抽出したい場合があります。このオブジェクトは個々のコンテンツ要素の組み合わせであるため、このオブジェクトをレンダリングする簡単な方法はありません。また、コンテンツが 1 つの画像のように見えるオブジェクトにグループ化されている場合もあります。

Aspose.Words は、図形から単純なイメージをレンダリングされたコンテンツとして抽出するのと同じ方法で、このタイプのコンテンツを抽出する機能を提供します。この記事では、この機能を利用してドキュメントとは独立して図形をレンダリングする方法について説明します。

## Aspose.Words の形状タイプ

ドキュメント描画レイヤー内のすべてのコンテンツは、Aspose.Words ドキュメント オブジェクト モジュール (DOM) の [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) または [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) ノードによって表されます。このようなコンテンツには、テキスト ボックス、画像、オートシェイプ、OLE オブジェクトなどが含まれます。`INCLUDEPICTURE` フィールドなど、一部のフィールドは図形としてインポートすることもできます。

単純なイメージは[ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/)の**Shape**ノードで表されます。このシェイプ ノードには子ノードはありませんが、このシェイプ ノード内に含まれる画像データには [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) プロパティによってアクセスできます。一方、シェイプは多数の子ノードで構成することもできます。たとえば、[ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) プロパティで表されるテキスト ボックスの形状は、[Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) や [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) などの多くのノードで構成されます。ほとんどのシェイプには、**Paragraph** および **Table** ブロックレベルのノードを含めることができます。これらは本体に表示されるノードと同じです。図形は常に何らかの段落の一部であり、直接インラインに含まれるか、**段落、** にアンカーされますが、ドキュメント ページのどこにでも「フローティング」します。

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

ドキュメントには、グループ化された図形を含めることもできます。 Microsoft Word で Group を有効にするには、複数のオブジェクトを選択し、右クリック メニューで [Group] をクリックします。

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Aspose.Words では、これらのシェイプのグループは [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) ノードによって表されます。これらを同じ方法で呼び出して、グループ全体をイメージにレンダリングすることもできます。

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX 形式には、図やチャートなどの特殊なタイプの画像を含めることができます。これらの形状は、Aspose.Words の **Shape** ノードを通じても表現され、画像としてレンダリングするための同様の方法も提供されます。設計上、その形状が画像 (**ShapeType.Image**) でない限り、形状に別の形状を子として含めることはできません。たとえば、Microsoft Word では、テキスト ボックスを別のテキスト ボックスの中に挿入することはできません。

上で説明した形状タイプは、[ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) クラスを通じて形状をレンダリングするための特別なメソッドを提供します。 **ShapeRenderer** クラスのインスタンスは、**GetShapeRenderer** メソッドを通じて、または **Shape** を **ShapeRenderer** クラスのコンストラクターに渡すことによって、**Shape** または **GroupShape** に対して取得されます。このクラスは、次の形状をレンダリングできるメンバーへのアクセスを提供します。

- [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) メソッドのオーバーロードを使用したディスク上のファイル
- [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) メソッドのオーバーロードを使用したストリーム
- [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) および [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) メソッドを使用した .NET グラフィック オブジェクト

{{% alert color="primary" %}}

**Shape** をレンダリングする場合、**Shape** はドキュメント階層の一部である必要があります。 **Shape** がドキュメント ツリーの一部ではない場合、**ShapeRenderer** メソッドを呼び出した後、レンダリングされた出力は空白になります。

{{% /alert %}}

## ファイルまたはストリームへのレンダリング

[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) メソッドは、シェイプをファイルまたはストリームに直接レンダリングするオーバーロードを提供します。どちらのオーバーロードも [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) クラスのインスタンスを受け入れ、これにより形状をレンダリングするためのオプションを定義できます。これは [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) メソッドと同じように機能します。このパラメーターは必須ですが、カスタム オプションがないことを指定して null 値を渡すことができます。

形状は、[SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列挙で指定された任意の画像形式でエクスポートできます。たとえば、イメージは、[SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列挙を指定することによって JPEG などのラスター イメージとしてレンダリングでき、[SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/) を指定することによって EMF などのベクトル イメージとしてレンダリングできます。

以下のコード例は、ドキュメントとは別にシェイプを EMF イメージにレンダリングし、ディスクに保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

以下のコード例は、ドキュメントとは別にシェイプを JPEG 画像にレンダリングし、ストリームに保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

**ImageSaveOptions** クラスを使用すると、イメージのレンダリング方法を制御するさまざまなオプションを指定できます。上で説明した機能は、**GroupShape** ノードと **Shape** ノードに同じ方法で適用できます。

## .NET グラフィックス オブジェクトへのレンダリング

**Graphics** オブジェクトに直接レンダリングすると、**Graphics** オブジェクトの独自の設定と状態を定義できます。一般的なシナリオには、Windows フォームまたはビットマップから取得した **Graphics** オブジェクトにシェイプを直接レンダリングすることが含まれます。 **Shape** ノードがレンダリングされるとき、設定は形状の外観に影響します。たとえば、**Graphics** オブジェクトの **RotateTransform** メソッドまたは **ScaleTransform** メソッドを使用して、形状を回転または拡大縮小できます。

以下の例は、ドキュメントとは別にシェイプを .**NET Graphics** オブジェクトにレンダリングし、レンダリングされたイメージに回転を適用する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

[RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) メソッドと同様に、[NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) から継承された [レンダーサイズ](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) メソッドは、ドキュメント コンテンツのサムネイルを作成するのに役立ちます。シェイプのサイズはコンストラクターを通じて指定されます。 **RenderToSize** メソッドは、**Graphics** オブジェクト、画像位置の X 座標と Y 座標、および **Graphics** オブジェクト上に描画される画像のサイズ (幅と高さ) を受け入れます。

**Shape** は、[NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) クラスから継承された [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) メソッドを使用して、特定のスケールでレンダリングできます。これは、同じ主要パラメータを受け入れる [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) メソッドに似ています。これら 2 つのメソッドの違いは、**ShapeRenderer.RenderToScale** メソッドでは、リテラル サイズではなく、レンダリング中に形状をスケールする浮動小数点値を選択することです。 float 値が 1.0 に等しい場合、シェイプは元のサイズの 100% でレンダリングされます。 float 値を 0.5 にすると、画像サイズが半分になります。

## シェイプ イメージのレンダリング

[Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) クラスは、オートシェイプ、テキスト ボックス、フリーフォーム、OLE オブジェクト、ActiveX コントロール、画像などの描画レイヤー内のオブジェクトを表します。 **Shape** クラスを使用すると、Microsoft Word ドキュメント内の図形を作成または変更できます。シェイプの重要なプロパティは [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype) です。 Word 文書では、さまざまな種類の図形にさまざまな機能を持たせることができます。たとえば、内部に画像を含めることができるのは画像と OLE 図形だけですが、ほとんどの図形はテキストのみを含めることができます。

次の例は、Shape イメージをドキュメントとは別に JPEG イメージにレンダリングし、ディスクに保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## 形状サイズの取得

[ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) クラスは、[GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) メソッドを通じて形状のサイズをピクセル単位で取得する機能も提供します。このメソッドは、スケールと DPI という 2 つの浮動小数点 (単一) パラメータを受け入れます。これらは、シェイプがレンダリングされるときにシェイプ サイズの計算に使用されます。このメソッドは、計算されたサイズの幅と高さを含む [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) オブジェクトを返します。これは、レンダリングされた出力から新しいビットマップを作成する場合など、レンダリングされた形状のサイズを事前に知る必要がある場合に便利です。

次の例は、レンダリングされる形状の幅と高さを指定して新しいビットマップ オブジェクトとグラフィックス オブジェクトを作成する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

**RenderToSize** または **RenderToScale** メソッドを使用する場合、レンダリングされたイメージのサイズも [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) オブジェクトで返されます。これを変数に割り当てて、必要に応じて使用できます。

**SizeInPoints** プロパティは、ポイント単位で測定された Shape サイズを返します ([ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) を参照)。結果は、幅と高さを含む `SizeF` オブジェクトです。
