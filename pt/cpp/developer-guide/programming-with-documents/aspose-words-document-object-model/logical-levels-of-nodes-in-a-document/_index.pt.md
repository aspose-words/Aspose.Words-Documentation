---
title: Níveis lógicos de nós em um documento em C++
second_title: Aspose.Words para C++
articleTitle: Níveis lógicos de nós em um documento
linktitle: Níveis lógicos de nós em um documento
type: docs
description: "Em Aspose.Words para C++ a documentação mencionou níveis lógicos de nós – nível de bloco, nível embutido ou nível de linha. O nível do nó é usado para descrever o local na árvore de documentos onde o nó é normalmente ocorrer."
weight: 10
url: /pt/cpp/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Essa documentação às vezes se refere a um grupo de classes de nós como pertencentes a um "nível" em um documento, como nós "nível de bloco", "nível embutido" (também conhecido como "inline") ou "nível de linha". Estes níveis num documento são diferenciados puramente logicamente e não são explicitamente expressos por herança ou outros meios Aspose.Words DOM. O nível do nó é usado para descrever o local na árvore de documentos onde o nó normalmente ocorreria.

No artigo anterior, já falamos sobre a relação entre nós e o fato de que nem todos os nós podem ser filhos de quaisquer Nós. Por exemplo, Cell só pode ser um filho de linha, e uma linha só pode ser um filho de tabela, e assim por diante. Essas relações também são aplicáveis para a divisão lógica de nós em níveis no documento.

As secções seguintes descrevem os níveis lógicos dos nós em Aspose.Words e as classes que pertencem a cada nível.

## Nível lógico do documento e da secção

Um documento do Word consiste em uma ou mais seções, representadas pela classe [Section](https://reference.aspose.com/words/cpp/aspose.words/section) e separadas por quebras de seção. Uma seção pode definir seu próprio tamanho de página, margens, orientação, número de colunas de texto e cabeçalhos e rodapés.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e [Secção](https://www.aspose.com/api/words/cpp/aspose.words/section/) os nós de nível têm a estrutura como mostrado no diagrama a seguir.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Uma secção contém o texto principal, bem como os cabeçalhos e rodapés das primeiras páginas, pares e ímpares. Esses diferentes" fluxos " de texto são chamados *stories*.

Em Aspose.Words, o nó **Section** contém os nós da história [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) e [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). O objeto **Body** armazena o texto principal. Os objetos **HeaderFooter** armazenam o texto para cada cabeçalho e rodapé. O texto de qualquer história consiste em parágrafos e tabelas, respectivamente representados pelos objetos **Paragraph** e **Table** do nível de bloco.

Além disso, cada documento do Word pode conter um glossário, que é representado pelo nó [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) em Aspose.Words. Um documento do glossário contém entradas [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) e [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## Nível Lógico Do Bloco

Os nós em nível de bloco representam contêineres para conteúdo e controles de Conteúdo e podem ocorrer nos nós filhos da árvore de documentos nos seguintes nós:

- Corpo
- Cabeçalho
- Rodapé
- Nota de rodapé
- Comentário
- Forma
- GroupShape
- Célula
- StructuredDocumentTag

Os nós de nível de bloco são representados pelas seguintes classes:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) e [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), que são os nós de nível de bloco mais importantes
- Marcadores, que ocorrem tanto no nível do bloco como no nível embutido
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), que representam marcação personalizada e podem conter conteúdo e controles de conteúdo

O diagrama a seguir mostra os elementos de nível de bloco.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Nível Lógico Em Linha

Os nós de nível embutido representam o conteúdo real do documento e podem estar contidos nos seguintes contêineres:

- Parágrafo-o contentor mais comum
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Os elementos de nível embutido são representados pelas seguintes classes:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) - execuções de texto formatadas de forma diferente
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) representam marcadores
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) e [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) representam anotações
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) que representam caracteres de campo e [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) representam campos de palavras
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) representa caracteres especiais no documento
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) e [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) representam formas, desenhos, imagens, etc.
- SmartTag e StructuredDocumentTag representam marcação personalizada

O diagrama a seguir mostra a estrutura de nós de nível embutido.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

As formas em Microsoft Word incluem Office Art AutoShapes, caixas de texto, imagens, OLE objectos e controlos ActiveX, todos representados utilizando a classe `Shape`. Algumas formas também podem conter texto, portanto, os nós de forma em Aspose.Words podem conter nós de nível de bloco.

As formas podem ser agrupadas entre si usando GroupShape nós.

{{% /alert %}}

{{% alert color="primary" %}}

As notas de rodapé e os comentários podem conter texto, pelo que os nós de nota de rodapé e de comentário em Aspose.Words podem conter nós de nível de bloco.

{{% /alert %}}

## Nível de nó de tabela, linha e célula

A tabela consiste em nós de linhas e células. Os elementos da tabela são representados pelas seguintes classes:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) representa uma linha de tabela
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) representa uma célula da tabela
- StructuredDocumentTag representam marcação personalizada

O diagrama a seguir mostra as estruturas de nós dos níveis de tabela, linha e célula.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
