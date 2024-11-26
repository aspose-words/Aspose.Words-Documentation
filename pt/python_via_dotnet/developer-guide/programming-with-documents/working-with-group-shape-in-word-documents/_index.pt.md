---
title: Como adicionar forma Group em arquivo Word
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com formato Group em documentos do Word
linktitle: Trabalhando com formato Group em documentos do Word
description: "Adicione group shape a um documento usando Python."
type: docs
weight: 290
url: /pt/python-net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Às vezes você precisa adicionar um group shape a um documento do Word. Tal group shape consiste em múltiplas formas.

No Microsoft Word, você pode adicionar rapidamente um group shape usando o comando/botão Group. Uma forma individual de um grupo pode ser movida separadamente.

No Aspose.Words é muito fácil adicionar um group shape usando a classe [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). A forma é criada separadamente usando a classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) e depois adicionada ao objeto [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) usando o método [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

O exemplo de código a seguir mostra como adicionar um group shape a um documento do Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Abaixo estão alguns dos tipos `Shape` suportados em Aspose.Words. Para obter a lista completa, consulte a enumeração [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

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
