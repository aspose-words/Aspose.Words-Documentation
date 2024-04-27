---
title: Navegação com Cursor em Java
second_title: Aspose.Words para Java
articleTitle: Navegação com Cursor
linktitle: Navegação com Cursor
description: "Navegue entre nós diferentes dentro de um documento, como um parágrafo, bookmark ou um caracter específico usando Java."
type: docs
weight: 5
url: /pt/java/navigation-with-cursor/
---

Ao trabalhar com um documento, mesmo que seja curto ou longo, você precisará navegar pelo seu documento. Navegação com um cursor virtual representa a capacidade de navegar entre diferentes nós em um documento.

Dentro de um documento curto, mover-se em torno de um documento é simples como você pode mover o ponto de inserção mesmo usando as setas do teclado ou clicando no mouse para localizar o ponto de inserção onde quiser. Mas uma vez que você tem um grande documento que tem muitas páginas, essas técnicas básicas serão insuficientes.

Este artigo explica como se mover em um documento e navegar com um cursor virtual para diferentes partes dele.

## Detectando a posição atual do cursor

Antes de iniciar o processo de navegação através do seu documento, você precisará obter o nó que está selecionado atualmente. Você pode obter a posição exata do cursor em um nó selecionado usando o [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) propriedade. Além disso, em vez de obter o nó atual, você pode obter o parágrafo selecionado atualmente ou a seção selecionada usando o [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) e [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) propriedades.

Quaisquer operações de inserção que você executar usando o [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) será inserido antes do [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Quando o parágrafo atual está vazio ou o cursor é posicionado pouco antes do final do parágrafo, o **CurrentNode** retorna null.

## Navegar Métodos em um Documento

Quando você está editando texto, é importante saber como navegar seu documento e onde exatamente para mover nele. Aspose.Words permite que você se mova em um documento e navegue para suas diferentes seções e partes – isso é semelhante à funcionalidade do painel de navegação em Microsoft Word ir para uma página ou encaminhar em um documento do Word sem rolar.

O método principal é ser capaz de mover a posição do cursor para um nó específico em seu documento, você pode conseguir isso usando o [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) método.

O seguinte exemplo de código mostra como mover o **DocumentBuilder** para nós diferentes em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Mas além do básico **MoveTo** método, há mais específicos.

### Navegue para Iniciar ou Fim de um Documento

Você pode ir ao início ou ao fim do seu documento usando o [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) e [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) métodos.

O exemplo de código a seguir mostra como mover a posição do cursor para o início ou o fim de um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navegue com marcadores

Você pode marcar um lugar que você quer encontrar e mover para ele novamente facilmente. Você pode inserir tantos marcadores em seu documento como quiser e, em seguida, navegue por eles identificando os favoritos com nomes únicos. Você pode se mover para um marcador usando o [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) método.

Os seguintes exemplos de código mostram como mover uma posição do cursor para um marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navegue para células de tabela

Você pode se mover para uma célula de tabela usando o [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) método. Este método irá permitir que você navegue seu cursor em qualquer célula em uma tabela específica. Além disso, você pode especificar um índice para mover o cursor para qualquer posição ou caractere especificado em uma célula dentro da **MoveToCell** método.

O exemplo de código a seguir mostra como mover uma posição do cursor para uma célula de tabela especificada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navegue para um campo

Você pode se mover para um campo específico em seu documento usando o [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) método. Além disso, você pode se mover para um campo de mesclagem específico usando o [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) método.

O exemplo a seguir mostra como mover o cursor do construtor de documentos para um campo específico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navegue para um cabeçalho ou rodapé

Você pode se mover para o início de um cabeçalho ou rodapé usando o [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) método

O exemplo a seguir mostra como mover o cursor do construtor de documentos para um cabeçalho ou rodapé do documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navegue em uma seção ou parágrafo

Você pode se mover para uma seção ou parágrafo específico usando o [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) ou [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) métodos. Além disso, você pode especificar um índice para mover o cursor para qualquer posição ou um caractere especificado em um parágrafo dentro do **MoveToParagraph** método.

O exemplo a seguir mostra como mover-se para uma seção específica e um parágrafo específico em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
