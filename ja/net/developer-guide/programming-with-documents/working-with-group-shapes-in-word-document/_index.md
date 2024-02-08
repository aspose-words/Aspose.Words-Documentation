---
title: Group 図形を Word 文書に追加する方法
second_title: .NET用Aspose.Words
articleTitle: Group 図形を Word 文書に追加する方法
linktitle: Word 文書での Group 図形の操作
description: "C# を使用したシェイプの Group 化とグループ化解除。"
type: docs
weight: 290
url: /ja/net/how-to-add-group-shape-into-a-word-document/
---

場合によっては、Word 文書に group shape を追加する必要があります。このような group shape は複数の形状で構成されます。

Microsoft Word では、Group コマンド/ボタンを使用して group shape をすばやく追加できます。グループ内の個々のシェイプを個別に移動できます。

Aspose.Words では、[GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) クラスを使用して group shape を追加するのは非常に簡単です。 **Shape** は、[Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) クラスを使用して個別に作成され、[AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) メソッドを使用して [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) オブジェクトに追加されます。

次のコード例は、Word 文書に group shape を追加する方法を示しています。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

以下は、Aspose.Words でサポートされている `Shape` タイプの一部です。

- 長方形
- 円形長方形
- 円形長方形
- 楕円
- ダイヤモンド
- 三角形
- 直角三角形
- 平行四辺形
- 台形
- 六角形
- オクタゴン

完全なリストについては、[ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) クラスを確認してください。

{{% /alert %}}