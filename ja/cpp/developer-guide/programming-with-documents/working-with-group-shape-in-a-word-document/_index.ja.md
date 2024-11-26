---
title: Word文書にGroup Shapeを追加する方法
second_title: C++の場合Aspose.Words
articleTitle: Word文書でのGroup Shapesの操作
linktitle: Word文書でのGroup Shapesの操作
description: "C++を使用した図形のグループ化とグループ化解除。"
type: docs
weight: 290
url: /ja/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

場合によっては、Word文書にgroup shapeを追加する必要があります。 このようなgroup shapeは複数の図形で構成されます。

Microsoft Wordでは、グループコマンド/ボタンを使用してgroup shapeをすばやく追加できます。 グループ内の個々の図形は、個別に移動できます。

Aspose.Wordsでは、[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)クラスを使用してgroup shapeを追加するのは非常に簡単です。 図形は[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)クラスを使用して個別に作成され、[AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/)メソッドを使用して**GroupShape**オブジェクトに追加されます。

次のコード例は、Word文書にgroup shapeを追加する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

以下は、Aspose.Wordsでサポートされている`Shape`型の一部です。 完全なリストについては、[ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/)をご覧ください:

- 長方形
- RoundRectangle
- RoundRectangle
- 楕円
- ダイヤモンド
- トライアングル
- RightTriangle
- 平行四辺形
- 台形
- ヘキサゴン
- オクタゴン

{{% /alert %}}
