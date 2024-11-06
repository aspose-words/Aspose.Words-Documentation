---
title: 如何在 Word 文檔中加入 Group 形狀？
second_title: Aspose.Words For .NET
articleTitle: 如何在 Word 文檔中加入 Group 形狀
linktitle: 在 Word 文檔中與 Group 形狀一起工作
description: "使用C#分組和去分組形狀。"
type: docs
weight: 290
url: /zh-hant/net/how-to-add-group-shape-into-a-word-document/
---

有時你需要在一個 Word 文檔中加上一個 group shape。 這樣的 group shape 包含多個圖形。

在Microsoft Word中，您可以用Group命令/按鈕快速加上一個group shape。 一組中的獨立形狀可以分開移動。

在 Aspose.Words 中，使用 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) 類別非常容易加入 group shape。 **Shape** 透過 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 類別獨立建立，然後透過 [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) 方法加入 [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) 物件。

以下範例展示如何在 Word 文檔中加入 group shape：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

以下是一些 `Shape` 類型在 Aspose.Words 中支援的：

-矩形
- RoundRectangle
"- RoundRectangle"
- 椭圓
- 鑽石
"- 三角形"
- 直角三角形
-平行四邊形
"- 梯形"
"- 六角"
- 八角形

完整清單請見 [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) 班級。

{{% /alert %}}