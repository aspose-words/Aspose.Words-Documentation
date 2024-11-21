---
title: レンダリングの形 文書から分離
second_title: Aspose.Words お問い合わせ Java
articleTitle: レンダリングの形 文書から分離
linktitle: レンダリングの形 文書から分離
description: "文書を処理するとき、画像、段落を含むテキストボックス、または矢印図形などのさまざまなグラフィックオブジェクトを抽出し、外部の場所にエクスポートします。 Javaお問い合わせ"
type: docs
weight: 40
url: /ja/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

文書を処理するとき、一般的なタスクは、文書に含まれるすべての画像を抽出し、外部の場所にエクスポートすることです。 このタスクはシンプルになります。 Aspose.Words API, 既に画像データを抽出し、保存するための機能を提供します。 しかし、例えば、段落、矢印形状、小さな画像を含むテキストボックスなど、異なるタイプの描画オブジェクトによって表されるグラフィックコンテンツの他のタイプを同様に抽出したい場合があります。 個々のコンテンツ要素の組み合わせであるため、このオブジェクトをレンダリングする簡単な方法はありません。 また、コンテンツが単一のイメージのように見えるオブジェクトにまとめられたときにも遭遇することがあります。

Aspose.Words このタイプのコンテンツをレンダリングされたコンテンツと同じ方法で抽出するための機能を提供します。 この記事では、この機能を利用して文書の独立して図形をレンダリングする方法について説明します。

## 形のタイプ Aspose.Words

文書の描画レイヤー内のすべてのコンテンツは、 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) または [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) ノード Aspose.Words ドキュメントオブジェクトモジュール(DOM)。 テキストボックス、画像、AutoShapes、OLEオブジェクトなど いくつかのフィールドも形状としてインポートされます。例えば、 `INCLUDEPICTURE` フィールド。

シンプルなイメージは、 **Shape** ノード [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE)お問い合わせ このシェイプノードは子ノードを持たないが、このシェイプノードに含まれる画像データは、 [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) 宿泊施設 一方、多くの子ノードから形状を上げることもできます。 例えば、テキストボックスの形は、 [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) プロパティは、次のような多くのノードから構成できます。 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) そして、 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)お問い合わせ ほとんどの形状は、 **Paragraph** そして、 **Table** block-level ノード。 これらは、本体に出現するノードと同じです。 形状は、直接インラインまたはアンカーに含まれている、いくつかの段落の常に部分です **パラグラフ、** しかし、ドキュメントページ内のどこにでも「フローティング」します。

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

一緒にグループ化された図形も含めることができます。 Grouping は、 Microsoft Word 複数のオブジェクトを選択し、「クリック」をクリックGroup右クリックメニューの「」。

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

インスタグラム Aspose.Words, これらの形状のグループは、 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) ノード。 これらは、グループ全体をイメージにレンダリングするのと同じ方法で呼び出すこともできます。

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX形式は、図やチャートなどの特殊な種類の画像を含むことができます。 これらの形状も、 **Shape** ノード Aspose.Words, また、画像としてレンダリングするための同様の方法を提供します。 設計により、形状がイメージでない限り、形状は子供として別の形状を含んでいません(**ShapeType.Image**)。 例えば、 Microsoft Word テキストボックスを別のテキストボックスに差し込むことはできません。

上記の形状タイプは、形状をレンダリングするための特別な方法を提供します。 [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) クラス。 インスタンス **ShapeRenderer** クラスは、 **Shape** または **GroupShape** を通して **GetShapeRenderer** 方法か渡ることによって **Shape** 建設業者の方へ **ShapeRenderer** クラス。 このクラスは、以下の形状をレンダリングできるメンバーへのアクセスを提供します。

- ディスク上のファイル [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) 方法積み過ぎ
- ストリーム使用 [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) 方法積み過ぎ
- グラフィック オブジェクトを使用して [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) そして、 [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) メソッド

{{% alert color="primary" %}}

レンダリングするとき <span notrans="<span notrans=" **Shape**"=""></span>????? ドキュメント階層の一部でなければなりません。 もし、 **Shape** ドキュメントツリーの一部ではなく、レンダリングされた出力は呼び出し後の空白になります。 **ShapeRenderer** メソッド。

{{% /alert %}}

## ファイルまたはストリームへのレンダリング

ザ・オブ・ザ・ [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) メソッドは、形状をファイルやストリームに直接レンダリングするオーバーロードを提供します。 両方のオーバーロードは、両方のインスタンスを受け入れます [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) クラスは、形状をレンダリングするためのオプションを定義できます。 同じように作品 [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) メソッド。 このパラメータは必須ですが、null値を渡すことができます。カスタムオプションがないことを指定します。

形状は、任意のイメージ形式でエクスポートできます。 [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) パンフレット たとえば、JPEGなどのラスターイメージとしてイメージをレンダリングできます。 [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) enumeration、またはEMFなどのベクトルイメージとして、 [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF)お問い合わせ

下のコード例では、ドキュメントから別々にEMFイメージに形状をレンダリングし、ディスクに保存します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

下のコード例では、ドキュメントから別々にJPEGイメージをレンダリングし、ストリームに保存します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

ザ・オブ・ザ・ **ImageSaveOptions** class では、イメージのレンダリングをコントロールするさまざまなオプションを指定できます。 上記の機能は同じ方法で適用することができます **GroupShape** そして、 **Shape** ノード。

## レンダリングする `Graphics` オブジェクト

直接レンダリングする **Graphics** オブジェクトを使用すると、独自の設定と状態を定義できます。 **Graphics** オブジェクト。 一般的なシナリオは、直接形状をレンダリングすることを含みます **Graphics** オブジェクトは、 Windows フォームまたはビットマップ。 いつか **Shape** ノードがレンダリングされ、設定は形状の外観に影響します。 たとえば、形状を回転したり、スケールしたりできます。 **RotateTransform** または **ScaleTransform** メソッド **Graphics** オブジェクト。

下の例では、形状をレンダリングする方法を示します。 **Graphics** ドキュメントから別々にオブジェクトし、レンダリングされたイメージに回転を適用します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

同様に、 [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) メソッド、 [レンダートサイズ](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)継承されたメソッド [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) ドキュメントコンテンツのサムネイルを作成するのに便利です。 構造体で形状サイズを指定します。 ザ・オブ・ザ・ **RenderToSize** 方法は受け入れます **Graphics** オブジェクト、画像位置のXとY座標、および上に描画される画像(幅と高さ)のサイズ **Graphics** オブジェクト。

ザ・オブ・ザ・ **Shape** 特定のスケールにレンダリングできます。 [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) 継承されたメソッド [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) クラス。 これは似ています [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) 同じ主要なパラメータを受け入れる方法。 これらの2つの方法の違いは、 **ShapeRenderer.RenderToScale** メソッドは、リテラルサイズではなく、レンダリング中に形状をスケールするフロート値を選択します。 フロート値が 1.0 に等しい場合、その元のサイズの 100% でレンダリングされる形状が原因となります。 0.5のフロート値が半減します。

## 形状イメージのレンダリング

ザ・オブ・ザ・ [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) クラスは、AutoShape、テキストボックス、フリーフォーム、OLEオブジェクト、ActiveXコントロール、画像などの描画レイヤーのオブジェクトを表します。 使い方 **Shape** クラスは、形状を作成または変更できます。 Microsoft Word ドキュメント。 形状の重要な特性は、その [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)お問い合わせ 異なるタイプの形状は、Word文書に異なる機能を持つことができます。 たとえば、ほとんどの図形はテキストのみを持つことができますが、画像やOLE形状のみが内部に画像を持つことができます。

次の例では、Shapeイメージをドキュメントから別々にJPEGイメージにレンダリングし、ディスクに保存する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## 形状サイズの取得

ザ・オブ・ザ・ [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) クラスは、ピクセルの形状のサイズをピクセル単位で取得する機能も提供します。 [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) メソッド。 このメソッドは、2つのフロート(シングル)パラメータ–形状がレンダリングされるときに形状サイズの計算で使用されているスケールとDPIを受け付けます。 メソッドは、 [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) 計算されたサイズの幅と高さを含むオブジェクト。 レンダリングされた出力から新しいBitmapを作成する場合など、レンダリングされた形状のサイズを事前に知る必要がある場合に便利です。

次の例では、描画される形状の幅と高さで新しいBitmapとグラフィックスオブジェクトを作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

使用時 **RenderToSize** または **RenderToScale** メソッドは、レンダリングされたイメージサイズも返されます。 [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) オブジェクト。 必要に応じて変数に割り当てられ、使うことができます。

ザ・オブ・ザ・ **SizeInPoints** プロパティは点で測定された形状サイズを返します(参照) [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/))。 結果は、 `SizeF` 幅と高さを含むオブジェクト。
