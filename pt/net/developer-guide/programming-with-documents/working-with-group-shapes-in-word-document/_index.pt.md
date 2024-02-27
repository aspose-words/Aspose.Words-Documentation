---
title: Como adicionar formato Group a um documento do Word
second_title: Aspose.Words para .NET
articleTitle: Como adicionar formato Group a um documento do Word
linktitle: Trabalhando com formas Group em documentos do Word
description: "Group e desagrupar formas usando C#."
type: docs
weight: 290
url: /pt/net/how-to-add-group-shape-into-a-word-document/
---

Às vezes você precisa adicionar um group shape a um documento do Word. Tal group shape consiste em múltiplas formas.

No Microsoft Word, você pode adicionar rapidamente um group shape usando o comando/botão Group. Uma forma individual de um grupo pode ser movida separadamente.

No Aspose.Words é muito fácil adicionar um group shape usando a classe [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). **Shape** é criado separadamente usando a classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) e depois adicionado ao objeto [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) usando o método [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/).

O exemplo de código a seguir mostra como adicionar um group shape a um documento do Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Abaixo estão alguns dos tipos `Shape` suportados em Aspose.Words:

- Retângulo
- Retângulo Redondo
- Retângulo Redondo
- Elipse
- Diamante
- Triângulo
- Triângulo Direito
- Paralelogramo
- Trapézio
- Hexágono
- Octógono

Para a lista completa, verifique a classe [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype).

{{% /alert %}}