---
title: Navegação com Cursor em C#
second_title: Aspose.Words para .NET
articleTitle: Navegação com Cursor
linktitle: Navegação com Cursor
description: "Navegue entre os diferentes nós de um documento, como um parágrafo, um marcador ou um caractere específico, usando C#."
type: docs
weight: 10
url: /pt/net/navigation-with-cursor/
---

Ao trabalhar com um documento, mesmo que seja curto ou longo, você precisará navegar pelo documento. A navegação com um cursor virtual representa a capacidade de navegar entre diferentes nós em um documento.

Dentro de um documento curto, mover-se em um documento é simples, pois você pode mover o ponto de inserção usando as teclas de seta do teclado ou clicando com o mouse para localizar o ponto de inserção onde desejar. Mas quando você tiver um documento grande com muitas páginas, essas técnicas básicas serão insuficientes.

Este artigo explica como navegar em um documento e navegar com um cursor virtual para diferentes partes dele.

## Detectando a posição atual do cursor

Antes de iniciar o processo de navegação pelo seu documento, você precisará obter o nó que está selecionado no momento. Você pode obter a posição exata do cursor em um nó selecionado usando a propriedade [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Além disso, em vez de obter o nó atual, você pode obter o parágrafo atualmente selecionado ou a seção atualmente selecionada usando as propriedades [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) e [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/).

Quaisquer operações de inserção executadas usando o [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) serão inseridas antes do [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Quando o parágrafo atual está vazio ou o cursor está posicionado logo antes do final do parágrafo, o **CurrentNode** retorna nulo.

## Navegando pelos métodos em um documento

Ao editar texto, é importante saber como navegar no documento e para onde exatamente se mover nele. Aspose.Words permite que você se mova em um documento e navegue por suas diferentes seções e partes – isso é semelhante à funcionalidade do Painel de Navegação no Microsoft Word para ir para uma página ou título em um documento do Word sem rolar.

O método principal é poder mover a posição do cursor para um nó específico em seu documento. Você pode conseguir isso usando o método [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/).

O exemplo de código a seguir mostra como mover o **DocumentBuilder** para nós diferentes em um documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Mas além do método **MoveTo** básico, existem outros mais específicos.

### Navegue até o início ou fim de um documento

Você pode ir para o início ou final do seu documento usando os métodos [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) e [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/).

O exemplo de código a seguir mostra como mover a posição do cursor para o início ou final de um documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Navegue com marcadores

Você pode marcar um local que deseja encontrar e movê-lo novamente com facilidade. Você pode inserir quantos marcadores desejar em seu documento e navegar por eles identificando os marcadores com nomes exclusivos. Você pode ir para um marcador usando o método [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

Os exemplos de código a seguir mostram como mover a posição do cursor para um marcador:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Navegue até as células da tabela

Você pode ir para uma célula da tabela usando o método [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/). Este método permitirá que você navegue com o cursor em qualquer célula de uma tabela específica. Além disso, você pode especificar um índice para mover o cursor para qualquer posição ou caractere especificado em uma célula dentro do método **MoveToCell**.

O exemplo de código a seguir mostra como mover a posição do cursor para uma célula especificada da tabela:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Navegue até um campo

Você pode ir para um campo específico em seu documento usando o método [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Além disso, você pode passar para um campo de mesclagem específico usando o método [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

O exemplo de código a seguir mostra como mover o cursor do construtor de documentos para um campo específico:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Navegue até um cabeçalho ou rodapé

Você pode ir para o início de um cabeçalho ou rodapé usando o método [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/)

O exemplo de código a seguir mostra como mover o cursor do construtor de documentos para um cabeçalho ou rodapé de documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Navegue até uma seção ou parágrafo

Você pode ir para uma seção ou parágrafo específico usando os métodos [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) ou [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/). Além disso, você pode especificar um índice para mover o cursor para qualquer posição ou caractere especificado em um parágrafo dentro do método **MoveToParagraph**.

O exemplo de código a seguir mostra como mover para uma seção específica e um parágrafo específico em um documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
