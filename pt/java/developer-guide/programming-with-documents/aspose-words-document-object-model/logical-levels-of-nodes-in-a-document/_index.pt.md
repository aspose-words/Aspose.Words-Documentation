---
title: Níveis Lógicos de Nós em um Documento em Java
second_title: Aspose.Words para Java
articleTitle: Níveis Lógicos de Nós em um Documento
linktitle: Níveis Lógicos de Nós em um Documento
type: docs
description: "Em Aspose.Words para Java documentação mencionou níveis lógicos de nós – nível de bloco, nível inline, ou nível de linha. O nível de nó é usado para descrever a localização na árvore de documentos onde o nó é tipicamente ocorrer."
weight: 10
url: /pt/java/logical-levels-of-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Esta documentação, por vezes, refere-se a um grupo de classes de nó como pertencentes a um "nível" em um documento, como "nível de bloqueio", "nível de linha" (também conhecido como "inline"), ou "nível de linha" nós. Estes níveis em um documento são diferenciados puramente logicamente e não são explicitamente expressos por herança ou outros Aspose.Words DOM significa. O nível de nó é usado para descrever o lugar na árvore do documento onde o nó normalmente ocorreria.

No artigo anterior, já falamos sobre a relação entre nós e o fato de que nem todos os nós são autorizados a ser uma criança de quaisquer nós. Por exemplo, Cell só pode ser uma criança Row, e uma linha só pode ser uma criança Table, e assim por diante. Estas relações também são aplicáveis para a divisão lógica de nós em níveis no documento.

As seguintes seções descrevem os níveis lógicos de nós em Aspose.Words e as classes que pertencem a cada nível.

## Nível Lógico de Documentos e Seções

A O documento do Word consiste em uma ou mais seções, representadas pelo [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) classe e separados por quebras de seção. Uma seção pode definir seu próprio tamanho de página, margens, orientação, número de colunas de texto, cabeçalhos e rodapés.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e [Secção](https://www.aspose.com/api/words/java/com.aspose.words/section) nós de nível têm a estrutura como mostrado no seguinte diagrama.

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Uma seção contém o texto principal, bem como cabeçalhos e rodapés para as primeiras páginas, mesmo e ímpares. Estes diferentes "fluxos" de texto são chamados *stories*.

Em Aspose.Words, o **Section** o nó contém [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) e [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) nós da história. O **Body** objeto armazena o texto principal. O **HeaderFooter** objetos armazenam o texto para cada cabeçalho e rodapé. O texto de qualquer história consiste em parágrafos e tabelas, respectivamente representados pelo **Paragraph** e **Table** objetos do nível do bloco.

Além disso, cada O documento do Word pode conter um glossário, que é representado pelo [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) Node em Aspose.Words. Um documento brilhante contém [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), e [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) entradas.

**GlossaryDocument** inclui [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) nós representando diferentes tipos de entradas de documentos glossários. Cada um **BuildingBlock** contém seções que podem ser inseridas, removidas e copiadas em documentos.

## Nível Lógico do bloco

Os nós de nível do bloco representam recipientes para controles de conteúdo e conteúdo, e podem ocorrer nos nós da criança da árvore do documento nos seguintes nós:

- Corpo
- Cabeçalho
- Rodapé
- Nota de rodapé
- Comentário
- Forma
- Não. GroupForma
- Célula
- EstruturadoDocumentTag

Os nós de nível de bloco são representados pelas seguintes classes:

- Não. [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) e [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), que são os nós de nível de bloco mais importantes
- Marcas, que ocorrem tanto no nível do bloco como no nível inline
- Não. [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), que representam marcação personalizada e pode conter tanto conteúdo quanto controles de conteúdo

O seguinte diagrama mostra os elementos de nível de bloco.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## Nível Lógico Inline

Os nós de nível inline representam o conteúdo real do documento e podem ser contidos nos seguintes recipientes:

- Parágrafo – o recipiente mais comum
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- EstruturadoDocumentTag

Os elementos de nível inline são representados pelas seguintes classes:

- Não. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – corridas de texto formatados de forma diferente
- Não. [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) representar marcadores
- Não. [ComentárioRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) e [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) representando anotações
- Não. [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) e [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) que representam caracteres de campo, e [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) representação Campos do Word
- Não. [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) representa caracteres especiais no documento
- Não. [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) e [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) representam formas, desenhos, imagens, etc.
- SmartTag e documentação estruturada Tag representam marcação personalizada

O diagrama seguinte mostra a estrutura de nós de nível inline.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Formas em Microsoft Word incluem Office Art AutoShapes, caixas de texto, imagens, objetos OLE e controles ActiveX, todos os quais são representados usando o `Shape` classe. Algumas formas também podem conter texto, de modo que os nós de forma em Aspose.Words pode conter nós de nível de bloco.

Formas podem ser agrupadas dentro um do outro usando GroupNodos de forma.

{{% /alert %}}

{{% alert color="primary" %}}

Notas de rodapé e comentários podem conter texto, portanto, notas de rodapé e nós de comentário em Aspose.Words pode conter nós de nível de bloco.

{{% /alert %}}

## Tabela, linha e nível de nó celular

A tabela consiste em nós de linhas e células. Os elementos de tabela são representados pelas seguintes classes:

- Não. [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) representa uma linha de tabela
- Não. [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) representa uma célula de tabela
- Documento estruturado Tag representam marcação personalizada

O diagrama a seguir mostra as estruturas do nó dos níveis de tabela, linha e célula.

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
