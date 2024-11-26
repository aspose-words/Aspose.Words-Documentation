---
title: Navegação com Cursor em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Navegação com Cursor
linktitle: Navegação com Cursor
description: "Navegue entre diferentes nós em um documento, como um parágrafo, um marcador ou um caractere específico, usando Python."
type: docs
weight: 10
url: /pt/python-net/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Ao trabalhar com um documento, mesmo que seja curto ou longo, você precisará navegar pelo documento. A navegação com um cursor virtual representa a capacidade de navegar entre diferentes nós em um documento.

Dentro de um documento curto, mover-se em um documento é simples, pois você pode mover o ponto de inserção usando as teclas de seta do teclado ou clicando com o mouse para localizar o ponto de inserção onde desejar. Mas quando você tiver um documento grande com muitas páginas, essas técnicas básicas serão insuficientes.

Este artigo explica como navegar em um documento e navegar com um cursor virtual para diferentes partes dele.

## Detectando a posição atual do cursor

Antes de iniciar o processo de navegação pelo seu documento, você precisará obter o nó que está selecionado no momento. Você pode obter a posição exata do cursor em um nó selecionado usando a propriedade [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Além disso, em vez de obter o nó atual, você pode obter o parágrafo atualmente selecionado ou a seção atualmente selecionada usando as propriedades [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) e [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Quaisquer operações de inserção executadas usando o [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) serão inseridas antes do [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Quando o parágrafo atual está vazio ou o cursor está posicionado logo antes do final do parágrafo, o [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) retorna None.

## Navegando pelos métodos em um documento

Ao editar texto, é importante saber como navegar no documento e para onde exatamente se mover nele. Aspose.Words permite que você se mova em um documento e navegue por suas diferentes seções e partes – isso é semelhante à funcionalidade do Painel de Navegação no Microsoft Word para ir para uma página ou título em um documento do Word sem rolar.

O método principal é poder mover a posição do cursor para um nó específico em seu documento. Você pode conseguir isso usando o método [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

O exemplo de código a seguir mostra como mover o [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para nós diferentes em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Mas além do método [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) básico, existem outros mais específicos.

### Navegue até o início ou fim de um documento

Você pode ir para o início ou final do seu documento usando os métodos [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) e [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

O exemplo de código a seguir mostra como mover a posição do cursor para o início ou final de um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navegue com marcadores

Você pode marcar um local que deseja encontrar e movê-lo novamente com facilidade. Você pode inserir quantos marcadores desejar em seu documento e navegar por eles identificando os marcadores com nomes exclusivos. Você pode ir para um marcador usando o método [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

Os exemplos de código a seguir mostram como mover a posição do cursor para um marcador:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Navegue até as células da tabela

Você pode mover para uma célula da tabela usando o método [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Este método permitirá que você navegue com o cursor em qualquer célula de uma tabela específica. Além disso, você pode especificar um índice para mover o cursor para qualquer posição ou caractere especificado em uma célula dentro do método [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

O exemplo de código a seguir mostra como mover a posição do cursor para uma célula especificada da tabela:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Navegue até um campo

Você pode ir para um campo específico em seu documento usando o método [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Além disso, você pode passar para um campo de mesclagem específico usando o método [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

O exemplo de código a seguir mostra como mover o cursor do construtor de documentos para um campo específico:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Navegue até um cabeçalho ou rodapé

Você pode ir para o início de um cabeçalho ou rodapé usando o método [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

O exemplo de código a seguir mostra como mover o cursor do construtor de documentos para um cabeçalho ou rodapé de documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navegue até uma seção ou parágrafo

Você pode ir para uma seção ou parágrafo específico usando os métodos [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) ou [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). Além disso, você pode especificar um índice para mover o cursor para qualquer posição ou caractere especificado em um parágrafo dentro do método [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

O exemplo de código a seguir mostra como mover para uma seção específica e um parágrafo específico em um documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}
