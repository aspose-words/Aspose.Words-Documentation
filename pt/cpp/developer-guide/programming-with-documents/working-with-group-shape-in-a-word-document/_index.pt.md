---
title: Como adicionar Group Shape a um documento do Word
second_title: Aspose.Words para C++
articleTitle: Trabalhar com Group Shapes em documentos do Word
linktitle: Trabalhar com Group Shapes em documentos do Word
description: "Agrupando e desagrupando formas usando C++."
type: docs
weight: 290
url: /pt/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Às vezes, você precisa adicionar um group shape em um documento do Word. Tal group shape consiste em múltiplas formas.

Em Microsoft Word, você pode adicionar rapidamente um group shape usando o comando / botão grupo. Uma forma individual num grupo pode ser movida separadamente.

Em Aspose.Words é muito fácil adicionar a group shape Usando a classe [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). A forma é criada separadamente usando a classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) e, em seguida, adicionada ao objeto **GroupShape** usando o método [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

O exemplo de código a seguir mostra como adicionar um group shape em um documento do Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Abaixo estão alguns dos tipos `Shape` suportados em Aspose.Words. Para a lista completa, visite [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Rectângulo
- RoundRectangle
- RoundRectangle
- Elipse
- Diamante
- Triângulo
- RightTriangle
- Paralelogramo
- Trapézio
- Hexagon
- Octógono

{{% /alert %}}
