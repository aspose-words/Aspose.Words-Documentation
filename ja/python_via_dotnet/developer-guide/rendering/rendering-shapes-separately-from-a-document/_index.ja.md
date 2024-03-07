---
title: ドキュメントとは別の図形
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントとは別に図形をレンダリングする
linktitle: ドキュメントとは別に図形をレンダリングする
description: "ドキュメントの処理時に画像、段落を含むテキスト ボックス、矢印の形状などのさまざまなグラフィック オブジェクトを抽出し、Python を使用して外部の場所にエクスポートします。"
type: docs
weight: 40
url: /ja/python-net/rendering-shapes-separately-from-a-document/
---

ドキュメントを処理するときの一般的なタスクは、ドキュメント内にあるすべての画像を抽出し、外部の場所にエクスポートすることです。画像データを抽出して保存する機能がすでに提供されている Aspose.Words API を使用すると、この作業が簡単になります。ただし、段落、矢印の形状、小さな画像を含むテキスト ボックスなど、異なる種類の描画オブジェクトで表される他の種類のグラフィック コンテンツを同様に抽出したい場合があります。このオブジェクトは個々のコンテンツ要素の組み合わせであるため、このオブジェクトをレンダリングする簡単な方法はありません。また、コンテンツが 1 つの画像のように見えるオブジェクトにグループ化されている場合もあります。

Aspose.Words は、図形から単純なイメージをレンダリングされたコンテンツとして抽出するのと同じ方法で、このタイプのコンテンツを抽出する機能を提供します。この記事では、この機能を利用してドキュメントとは独立して図形をレンダリングする方法について説明します。

## Aspose.Words の形状タイプ

ドキュメント描画レイヤー内のすべてのコンテンツは、Aspose.Words ドキュメント オブジェクト モジュール (DOM) の [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) または [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ノードによって表されます。このようなコンテンツには、テキスト ボックス、画像、オートシェイプ、OLE オブジェクトなどが含まれます。`INCLUDEPICTURE` フィールドなど、一部のフィールドは図形としてインポートすることもできます。

単純なイメージは[ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image)の[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)ノードで表されます。このシェイプ ノードには子ノードはありませんが、このシェイプ ノード内に含まれる画像データには [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) プロパティによってアクセスできます。一方、シェイプは多数の子ノードで構成することもできます。たとえば、[ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) プロパティで表されるテキスト ボックスの形状は、[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) や [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) などの多くのノードで構成されます。ほとんどのシェイプには、[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) および [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ブロックレベルのノードを含めることができます。これらは本体に表示されるノードと同じです。図形は常に何らかの段落の一部であり、直接インラインに含まれるか、[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) にアンカーされますが、ドキュメント ページのどこにでも「フローティング」します。

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

ドキュメントには、グループ化された図形を含めることもできます。 Microsoft Word で Group を有効にするには、複数のオブジェクトを選択し、右クリック メニューで [Group] をクリックします。

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Aspose.Words では、これらのシェイプのグループは [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ノードによって表されます。これらを同じ方法で呼び出して、グループ全体をイメージにレンダリングすることもできます。

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX 形式には、図やチャートなどの特殊なタイプの画像を含めることができます。これらの形状は、Aspose.Words の [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ノードを通じても表現され、画像としてレンダリングするための同様の方法も提供されます。設計上、その形状が画像 ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)) でない限り、形状に別の形状を子として含めることはできません。たとえば、Microsoft Word では、テキスト ボックスを別のテキスト ボックスの中に挿入することはできません。

上で説明した形状タイプは、[ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) クラスを通じて形状をレンダリングするための特別なメソッドを提供します。 [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) クラスのインスタンスは、[get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) メソッドを通じて、または [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) を [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) クラスのコンストラクターに渡すことによって、[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) または [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) として取得されます。このクラスは、次の形状をレンダリングできるメンバーへのアクセスを提供します。

- ディスク上のファイル
- ストリーム

{{% alert color="primary" %}}

[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) をレンダリングする場合、[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) はドキュメント階層の一部である必要があります。 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) がドキュメント ツリーの一部ではない場合、[ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) メソッドを呼び出した後、レンダリングされた出力は空白になります。

{{% /alert %}}

## ファイルまたはストリームへのレンダリング

[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) メソッドは、シェイプをファイルまたはストリームに直接レンダリングするオーバーロードを提供します。どちらのオーバーロードも [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) クラスのインスタンスを受け入れ、これにより形状をレンダリングするためのオプションを定義できます。これは [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドと同じように機能します。このパラメーターは必須ですが、カスタム オプションがないことを指定して null 値を渡すことができます。

形状は、[SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 列挙で指定された任意の画像形式でエクスポートできます。たとえば、イメージは、[SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) 列挙を指定することによって JPEG などのラスター イメージとしてレンダリングでき、[SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf) を指定することによって EMF などのベクトル イメージとしてレンダリングできます。

以下のコード例は、ドキュメントとは別にシェイプを EMF イメージにレンダリングし、ディスクに保存する方法を示しています。

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

以下のコード例は、ドキュメントとは別にシェイプを JPEG 画像にレンダリングし、ストリームに保存する方法を示しています。

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

[ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) クラスを使用すると、イメージのレンダリング方法を制御するさまざまなオプションを指定できます。上で説明した機能は、[GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) ノードと [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ノードに同じ方法で適用できます。

## シェイプ イメージのレンダリング

[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) クラスは、オートシェイプ、テキスト ボックス、フリーフォーム、OLE オブジェクト、ActiveX コントロール、画像などの描画レイヤー内のオブジェクトを表します。 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) クラスを使用すると、Microsoft Word ドキュメント内の図形を作成または変更できます。形状の重要なプロパティは [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/) です。 Word 文書では、さまざまな種類の図形にさまざまな機能を持たせることができます。たとえば、内部に画像を含めることができるのは画像と OLE 図形だけですが、ほとんどの図形はテキストのみを含めることができます。

次の例は、Shape イメージをドキュメントとは別に JPEG イメージにレンダリングし、ディスクに保存する方法を示しています。

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## 形状サイズの取得

[ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) クラスは、[get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) メソッドを通じて形状のサイズをピクセル単位で取得する機能も提供します。このメソッドは、スケールと DPI という 2 つの浮動小数点 (単一) パラメータを受け入れます。これらは、シェイプがレンダリングされるときにシェイプ サイズの計算に使用されます。このメソッドは、計算されたサイズの幅と高さを含む **Size** オブジェクトを返します。これは、レンダリングされた形状のサイズを事前に知る必要がある場合に便利です。 [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) プロパティは、シェイプ サイズをポイント単位で返します。結果は、幅と高さを含む **SizeF** オブジェクトです。また、[bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) プロパティを使用して、形状の実際の境界を取得することもできます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


