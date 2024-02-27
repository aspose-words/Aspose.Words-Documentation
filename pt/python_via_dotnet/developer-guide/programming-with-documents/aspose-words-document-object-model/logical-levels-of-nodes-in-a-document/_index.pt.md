---
title: Níveis lógicos de nós em um documento
second_title: Aspose.Words para Python via .NET
articleTitle: Níveis lógicos de nós em um documento
linktitle: Níveis lógicos de nós em um documento
type: docs
description: "Na documentação Aspose.Words para Python via .NET são mencionados níveis lógicos de nós – nível de bloco, nível inline ou nível de linha. O nível do nó é usado para descrever o local na árvore do documento onde o nó normalmente ocorre."
weight: 10
url: /pt/python-net/logical-levels-of-nodes-in-a-document/
---

Esta documentação às vezes se refere a um grupo de classes de nós como pertencentes a um "nível" em um documento, como nós de "nível de bloco", "nível inline" (também conhecido como "inline") ou "nível de linha". Esses níveis em um documento são diferenciados de forma puramente lógica e não são expressos explicitamente por herança ou outros meios Aspose.Words DOM. O nível do nó é usado para descrever o local na árvore do documento onde o nó normalmente ocorreria.

No artigo anterior, já falamos sobre o relacionamento entre os nós e o fato de que nem todos os nós podem ser filhos de quaisquer nós. Por exemplo, [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) só pode ser filho [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), e [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) só pode ser filho [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) e assim por diante. Esses relacionamentos também são aplicáveis à divisão lógica de nós em níveis no documento.

As seções a seguir descrevem os níveis lógicos dos nós no Aspose.Words e as classes que pertencem a cada nível.

## Nível lógico de documento e seção

Um documento Word consiste em uma ou mais seções, representadas pela classe [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) e separadas por quebras de seção. Uma seção pode definir seu próprio tamanho de página, margens, orientação, número de colunas de texto e cabeçalhos e rodapés.

Os nós de nível [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) e [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) têm a estrutura mostrada no diagrama a seguir.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="palavras-aspose-nível-de-documento-e-seção" style="width:700px"/>

Uma seção contém o texto principal, bem como cabeçalhos e rodapés das primeiras páginas, pares e ímpares. Esses diferentes "fluxos" de texto são chamados de *stories*.

No Aspose.Words, o nó [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) contém os nós da história [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) e [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). O objeto [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) armazena o texto principal. Os objetos [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) armazenam o texto de cada cabeçalho e rodapé. O texto de qualquer história consiste em parágrafos e tabelas, representados respectivamente pelos objetos [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) do nível do bloco.

Além disso, cada documento do Word pode conter um glossário, representado pelo nó [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) em Aspose.Words. Um documento de glossário contém entradas [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/), [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) e [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) inclui nós [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) que representam diferentes tipos de entradas de documentos do glossário. Cada [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) contém seções que podem ser inseridas, removidas e copiadas em documentos.

## Nível Lógico de Bloco

Os nós em nível de bloco representam contêineres para conteúdo e controles de conteúdo e podem ocorrer nos nós filhos da árvore de documentos nos seguintes nós:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Os nós em nível de bloco são representados pelas seguintes classes:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) e [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), que são os nós de nível de bloco mais importantes
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), que ocorre tanto no nível do bloco quanto no nível inline
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), que representa marcação personalizada e pode conter conteúdo e controles de conteúdo

O diagrama a seguir mostra elementos em nível de bloco.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="palavras aspose em nível de bloco" style="width:550px"/>

## Nível lógico embutido

Os nós de nível embutido representam o conteúdo real do documento e podem estar contidos nos seguintes contêineres:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – o contêiner mais comum
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Os elementos de nível embutido são representados pelas seguintes classes:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – trechos de texto formatados de forma diferente
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) representam marcadores
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) e [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) representam anotações
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) que representam caracteres de campo e [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) representam campos do Word
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) representa caracteres especiais no documento
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) e [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) representam formas, desenhos, imagens, etc.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) e [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) representam marcação personalizada

O diagrama a seguir mostra a estrutura dos nós de nível sequencial.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="palavras-aspose-de-nível-in-line" style="width:785px"/>

{{% alert color="primary" %}}

As formas em Microsoft Word incluem Office Art AutoShapes, caixas de texto, imagens, objetos OLE e controles ActiveX, todos representados usando a classe `Shape`. Algumas formas também podem conter texto, portanto, os nós de forma em Aspose.Words podem conter nós em nível de bloco.

As formas podem ser agrupadas umas dentro das outras usando nós [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

Notas de rodapé e comentários podem conter texto, portanto, os nós [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) e [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) em Aspose.Words podem conter nós em nível de bloco.

{{% /alert %}}

## Nível de tabela, linha e nó de célula

A tabela consiste em nós de linhas e células. Os elementos [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) são representados pelas seguintes classes:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) representa uma linha da tabela
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) representa uma célula da tabela
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) representa marcação personalizada

O diagrama a seguir mostra as estruturas de nós dos níveis [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="tabela-linha-célula-aspose-palavras" style="width:910px"/>