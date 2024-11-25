---
title: ドキュメントとは別に図形をレンダリングする
second_title: Aspose.WordsのためのJava
articleTitle: ドキュメントとは別に図形をレンダリングする
linktitle: ドキュメントとは別に図形をレンダリングする
description: "文書を処理するときに、画像、段落を含むテキストボックス、矢印図形などのさまざまなグラフィックオブジェクトを抽出し、Javaを使用して外部の場所にエクスポートします。"
type: docs
weight: 40
url: /ja/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

文書を処理する場合、一般的なタスクは、文書内にあるすべての画像を抽出し、外部の場所にエクスポートすることです。 このタスクは、画像データを抽出して保存する機能を既に提供しているAspose.WordsAPIで簡単になります。 ただし、段落、矢印図形、小さな画像を含むテキストボックスなど、異なる種類の描画オブジェクトで表される他の種類のグラフィックコンテンツを同様に抽出する必要がある場合があります。 このオブジェクトは個々のコンテンツ要素の組み合わせであるため、このオブジェクトをレンダリングする簡単な方法はありません。 また、コンテンツが単一の画像のように見えるオブジェクトにグループ化されている場合もあります。

Aspose.Wordsは、図形から単純な画像をレンダリングされたコンテンツとして抽出するのと同じ方法で、このタイプのコンテンツを抽出する機能を提供します。 この記事では、この機能を使用して、ドキュメントとは独立して図形をレンダリングする方法について説明します。

## Aspose.Wordsの図形の種類

ドキュメント描画レイヤ内のすべてのコンテンツは、Aspose.Wordsドキュメントオブジェクトモジュール(DOM)内の[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)または[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)ノードで表されます。 このようなコンテンツは、テキストボックス、画像、AutoShapes、OLEオブジェクトなどです。 一部のフィールドは、`INCLUDEPICTURE`フィールドなどの図形としてもインポートされます。

単純な画像は、[ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE)の**Shape**ノードで表されます。 このshapeノードには子ノードはありませんが、このshapeノード内に含まれる画像データには[Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData)プロパティからアクセスできます。 一方、図形は多くの子ノードで構成することもできます。 たとえば、[ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX)プロパティで表されるテキストボックスの形状は、[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)や[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)などの多くのノードで構成できます。 ほとんどの図形には、**Paragraph**および**Table**ブロックレベルのノードを含めることができます。 これらは、本体に表示されるノードと同じノードです。 図形は常にいくつかの段落の一部であり、直接インラインに含まれるか、**Paragraph,**に固定されていますが、ドキュメントページのどこにでも"浮動"します。

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

ドキュメントには、グループ化された図形を含めることもできます。 グループ化は、複数のオブジェクトを選択し、右クリックメニューの"グループ化"をクリックすることでMicrosoft Wordで有効にすることができます。

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Aspose.Wordsでは、これらの図形のグループは[GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/)ノードで表されます。 これらは、グループ全体をイメージにレンダリングするのと同じ方法で呼び出すこともできます。

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX形式には、図やグラフなどの特殊な種類の画像を含めることができます。 これらの図形は、Aspose.Wordsの**Shape**ノードを介しても表現され、これも画像としてレンダリングするための同様の方法を提供します。 設計上、図形がイメージ(**ShapeType.Image**)でない限り、図形に別の図形を子として含めることはできません。 たとえば、Microsoft Wordでは、テキストボックスを別のテキストボックス内に挿入することはできません。

上で説明した図形の型は、[ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)クラスを介して図形をレンダリングするための特別なメソッドを提供します。 **ShapeRenderer**クラスのインスタンスは、**GetShapeRenderer**メソッドを介して、または**Shape**を**ShapeRenderer**クラスのコンストラクタに渡すことによって、**Shape**または**GroupShape**のために取得されます。 このクラスはメンバーへのアクセスを提供し、次の図形をレンダリングすることができます:

- [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions)メソッドオーバーロードを使用してディスク上のファイル
- [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions)メソッドオーバーロードを使用したストリーム
- [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float)メソッドと[RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)メソッドを使用したグラフィックスオブジェクト

{{% alert color="primary" %}}

**Shape**をレンダリングするときは、ドキュメント階層の一部である必要があります。 **Shape**がドキュメントツリーの一部でない場合、**ShapeRenderer**メソッドを呼び出した後、レンダリングされた出力は空白になります。

{{% /alert %}}

## ファイルまたはストリームへのレンダリング

[Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions)メソッドは、図形をファイルまたはストリームに直接レンダリングするオーバーロードを提供します。 どちらのオーバーロードも[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)クラスのインスタンスを受け入れ、図形をレンダリングするためのオプションを定義できます。 これは[Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)メソッドと同じように機能します。 このパラメーターは必須ですが、カスタムオプションがないことを指定して、null値を渡すことができます。

図形は、[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)列挙体で指定された任意の画像形式でエクスポートできます。 たとえば、イメージは[SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG)列挙体を指定してJPEGなどのラスターイメージとして、または[SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF)を指定してEMFなどのベクターイメージとしてレンダリングできます。

次のコード例は、ドキュメントとは別にEMFイメージに図形をレンダリングし、ディスクに保存することを示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

次のコード例は、ドキュメントとは別にJPEGイメージに図形をレンダリングし、ストリームに保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

**ImageSaveOptions**クラスを使用すると、イメージのレンダリング方法を制御するさまざまなオプションを指定できます。 上記の機能は、**GroupShape**および**Shape**ノードにも同様に適用することができます。

## `Graphics`オブジェクトへのレンダリング

**Graphics**オブジェクトに直接レンダリングすると、独自の設定と**Graphics**オブジェクトの状態を定義できます。 一般的なシナリオでは、図形をWindowsフォームまたはビットマップから取得した**Graphics**オブジェクトに直接レンダリングします。 **Shape**ノードがレンダリングされると、設定はシェイプの外観に影響します。 たとえば、**Graphics**オブジェクトに対して**RotateTransform**メソッドまたは**ScaleTransform**メソッドを使用して、図形を回転または拡大縮小できます。

次の例は、ドキュメントとは別に**Graphics**オブジェクトに図形をレンダリングし、レンダリングされたイメージに回転を適用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

同様に、[RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)メソッドと同様に、[NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/)から継承された[RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)メソッドは、ドキュメントコンテンツのサムネイルを作成するのに便利です。 形状のサイズは、コンストラクタを介して指定されます。 **RenderToSize**メソッドは、**Graphics**オブジェクト、画像位置のX座標とY座標、および**Graphics**オブジェクトに描画される画像のサイズ(幅と高さ)を受け入れます。**RenderToSize**メソッドは、**Graphics**オブジェクト、画像位置のX座標とY座標、および**Graphics**オブジェクトに描画される画像のサイズ(幅と高さ)を受け入れます。

**Shape**は、[NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/)クラスから継承された[ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)メソッドを使用して、特定のスケールにレンダリングできます。 これは、同じ主要なパラメーターを受け入れる[Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)メソッドに似ています。 これらの2つのメソッドの違いは、**ShapeRenderer.RenderToScale**メソッドでは、リテラルサイズではなく、レンダリング中にシェイプを拡大縮小するfloat値を選択することです。 Float値が1.0に等しい場合、シェイプは元のサイズの100%でレンダリングされます。 浮動小数点値0.5はイメージサイズを半分に縮小します。

## シェイプイメージのレンダリング

[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)クラスは、AutoShape、テキストボックス、フリーフォーム、OLEオブジェクト、ActiveXコントロール、画像など、描画レイヤー内のオブジェクトを表します。 **Shape**クラスを使用すると、Microsoft Wordドキュメント内の図形を作成または変更できます。 図形の重要なプロパティは、その[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)です。 異なるタイプの図形は、Word文書で異なる機能を持つことができます。 たとえば、画像とOLE図形のみがその中に画像を持つことができますが、ほとんどの図形はテキストのみを持つことができます。

次の例は、シェイプイメージをドキュメントとは別にJPEGイメージにレンダリングし、ディスクに保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## 図形サイズの取得

[ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)クラスは、[GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float)メソッドを使用して図形のサイズをピクセル単位で取得する機能も提供します。 このメソッドは、図形がレンダリングされるときに図形サイズの計算に使用されるスケールとDPIの2つの浮動小数点(単一)パラメータを受け入れます。 このメソッドは、計算されたサイズの幅と高さを含む[Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float)オブジェクトを返します。 これは、レンダリングされた出力から新しいビットマップを作成する場合など、レンダリングされた図形のサイズを事前に知る必要がある場合に

以下の例は、レンダリングする図形の幅と高さを持つ新しいBitmapオブジェクトとGraphicsオブジェクトを作成する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

**RenderToSize**または**RenderToScale**メソッドを使用すると、レンダリングされた画像サイズも[SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float)オブジェクトに返されます。 これは変数に代入して、必要に応じて使用することができます。

**SizeInPoints**プロパティは、ポイント単位で測定された形状サイズを返します([ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)を参照)。 結果は、幅と高さを含む`SizeF`オブジェクトになります。
