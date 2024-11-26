---
title: Navegação com Cursor em Java
second_title: Aspose.Words para Java
articleTitle: Navegação com Cursor
linktitle: Navegação com Cursor
description: "Navegue entre diferentes nós dentro de um documento, como um parágrafo, marcador ou um caractere específico usando Java."
type: docs
weight: 5
url: /pt/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Ao trabalhar com um documento, mesmo que seja curto ou longo, você precisará navegar pelo documento. A navegação com um cursor virtual representa a capacidade de navegar entre diferentes nós num documento.

Em um documento curto, mover-se em um documento é simples, pois você pode mover o ponto de inserção mesmo usando as teclas de seta do teclado ou clicando no mouse para localizar o ponto de inserção onde quiser. Mas uma vez que você tenha um documento grande que tenha muitas páginas, essas técnicas básicas serão insuficientes.

Este artigo explica como se deslocar num documento e navegar com um cursor virtual para diferentes partes do mesmo.

## Detectando A Posição Atual Do Cursor

Antes de iniciar o processo de navegação pelo seu documento, você precisará obter o nó atualmente selecionado. Pode obter a posição exacta do cursor num nó seleccionado utilizando a propriedade [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode). Além disso, em vez de obter o nó atual, você pode obter o parágrafo atualmente selecionado ou a seção atualmente selecionada usando as propriedades [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) e [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection).

Todas as operações de inserção que executar utilizando o [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) serão inseridas antes do [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Quando o parágrafo atual está vazio ou o cursor é posicionado imediatamente antes do final do parágrafo, o **CurrentNode** retorna null.

## Métodos de navegação num documento

Quando você está editando texto, é importante saber como navegar em seu documento e para onde exatamente se mover nele. Aspose.Words permite – lhe deslocar-se num documento e navegar para as suas diferentes secções e partes-isto é semelhante à funcionalidade do Painel de navegação em Microsoft Word para ir para uma página ou título num documento do Word sem deslocar-se.

O método principal é poder mover a posição do cursor para um nó específico no seu documento, você pode conseguir isso usando o método [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).

O exemplo de código a seguir mostra como mover o **DocumentBuilder** para diferentes nós em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Mas, além do método básico **MoveTo**, existem outros mais específicos.

### Navegar para o início ou fim de um documento

Pode ir para o início ou para o fim do documento utilizando os métodos [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) e [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

O exemplo de código a seguir mostra como mover a posição do cursor para o início ou o fim de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navegar Com Marcadores

Você pode marcar um lugar que deseja encontrar e mover-se para ele novamente facilmente. Você pode inserir quantos marcadores desejar em seu documento e, em seguida, navegar por eles identificando os marcadores com nomes exclusivos. Pode mover-se para um marcador utilizando o método [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean).

Os exemplos de código a seguir mostram como mover uma posição do cursor para um marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navegue até as células da tabela

Você pode mover para uma célula da tabela usando o método [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int). Este método permite-lhe navegar o cursor para qualquer célula de uma tabela específica. Além disso, você pode especificar um índice para mover o cursor para qualquer posição ou caractere especificado em uma célula dentro do método **MoveToCell**.

O exemplo de código a seguir mostra como mover uma posição do cursor para uma célula de tabela especificada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navegar para um campo

Pode mover - se para um campo específico no documento utilizando o método [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Além disso, você pode mover para um campo de mesclagem específico usando o método [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String).

O exemplo de código a seguir mostra como mover o cursor do construtor de documentos para um campo específico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navegar para um cabeçalho ou rodapé

Pode mover-se para o início de um cabeçalho ou rodapé utilizando o método [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).

O exemplo de código a seguir mostra como mover o cursor do construtor de documentos para um cabeçalho ou rodapé de Documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navegar para uma secção ou parágrafo

Pode mover-se para uma secção ou parágrafo específico utilizando os métodos [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) ou [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Além disso, você pode especificar um índice para mover o cursor para qualquer posição ou um caractere especificado em um parágrafo dentro do método **MoveToParagraph**.

O exemplo de código a seguir mostra como mover para uma seção específica e um parágrafo específico em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
