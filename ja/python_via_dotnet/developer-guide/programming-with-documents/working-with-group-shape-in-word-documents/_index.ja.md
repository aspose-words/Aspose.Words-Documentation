---
title: Group シェイプを Word ファイルに追加する方法
second_title: Python via .NET用Aspose.Words
articleTitle: Word 文書での Group 図形の操作
linktitle: Word 文書での Group 図形の操作
description: "Python を使用して group shape をドキュメントに追加します。"
type: docs
weight: 290
url: /ja/python-net/how-to-add-group-shape-into-a-word-document/
---

場合によっては、Word 文書に group shape を追加する必要があります。このような group shape は複数の形状で構成されます。

Microsoft Word では、Group コマンド/ボタンを使用して group shape をすばやく追加できます。グループ内の個々のシェイプを個別に移動できます。

Aspose.Words では、[GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) クラスを使用して group shape を追加するのが非常に簡単です。 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)クラスを使用してシェイプを別途作成し、[append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/)メソッドを使用して[GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)オブジェクトに追加します。

次のコード例は、Word 文書に group shape を追加する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

以下は、Aspose.Words でサポートされている `Shape` タイプの一部です。完全なリストについては、[aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) 列挙を参照してください。

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
