---
title: Inserir e acrescentar documentos em Java
second_title: Aspose.Words para Java
articleTitle: Inserir e anexar documentos
linktitle: Inserir e anexar documentos
description: "Combine documentos em um: insira ou anexe um documento em um novo ou existente usando localizar e substituir, mesclar campo, marcador ou simplesmente no final do documento em Java."
type: docs
weight: 80
url: /pt/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Às vezes, é necessário combinar vários documentos em um. Você pode fazer isso manualmente ou pode usar o recurso Aspose.Words insert ou append.

A operação inserir permite inserir o conteúdo de documentos criados anteriormente em um novo ou existente.

Por sua vez, o recurso anexar permite adicionar um documento apenas no final de outro documento.

Este artigo explica como inserir ou anexar um documento a outro de maneiras diferentes e descreve as propriedades comuns que podem ser aplicadas ao inserir ou anexar documentos.

## Inserir um documento

Como mencionado acima, em Aspose.Words um documento é representado como uma árvore de nós, e a operação de inserir um documento em outro é copiar nós da primeira árvore de documentos para a segunda.

Você pode inserir documentos em vários locais de diferentes maneiras. Por exemplo, você pode inserir um documento por meio de uma operação de substituição, um campo de mesclagem durante uma operação de mesclagem ou por meio de um marcador.

Você também pode usar o método [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) ou [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions), que é semelhante a inserir um documento em Microsoft Word, para inserir um documento inteiro na posição atual do cursor sem qualquer importação anterior.

O exemplo de código a seguir mostra como inserir um documento usando o método **InsertDocument**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

O exemplo de código a seguir mostra como inserir um documento usando o método **InsertDocumentInline**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

As subsecções seguintes descrevem as opções durante as quais pode inserir um documento noutro.

### Inserir um documento durante a operação localizar e substituir {#insert-a-document-during-find-and-replace-operation}

Pode inserir documentos enquanto executa operações de localização e substituição. Por exemplo, um documento pode conter parágrafos com o texto [INTRODUCTION] e [CONCLUSION]. Mas no documento final, é necessário substituir esses parágrafos pelo conteúdo obtido de outro documento externo. Para conseguir isso, você precisará criar um manipulador para o evento replace.

O exemplo de código a seguir mostra como criar um manipulador para o evento de substituição para usá-lo posteriormente no processo de inserção:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

O exemplo de código a seguir mostra como inserir conteúdo de um documento em outro durante uma operação localizar e substituir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Inserir um documento durante a operação Mail Merge {#insert-a-document-during-mail-merge-operation}

É possível inserir um documento em um campo de mesclagem durante uma operação Mail Merge. Por exemplo, um modelo Mail Merge pode conter um campo de mesclagem, como [resumo]. Mas no documento final, é necessário inserir o conteúdo obtido de outro documento externo neste campo de mesclagem. Para conseguir isso, você precisará criar um manipulador para o evento de mesclagem.

O exemplo de código a seguir mostra como criar um manipulador para o evento de mesclagem para usá-lo posteriormente no processo de inserção:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

O exemplo de código a seguir mostra como inserir um documento no campo de mesclagem usando o manipulador criado:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Inserir um documento no marcador

Pode importar um ficheiro de texto para um documento e inseri-lo logo após um marcador definido no documento. Para fazer isso, crie um parágrafo marcado onde deseja que o documento seja inserido.

O exemplo de codificação A seguir mostra como inserir o conteúdo de um documento em um marcador em outro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Observe que o marcador não deve incluir vários parágrafos ou textos que você deseja que apareçam no documento final resultante.

{{% /alert %}}

## Anexar um documento

Você pode ter um caso de uso em que precise incluir páginas adicionais de um documento até o final de um documento existente. Para fazer isso, basta chamar o método [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) para adicionar um documento ao final de outro.

{{% alert color="primary" %}}

Observe que [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) é um método de nível de nó dentro de um documento. Por exemplo, você pode criar um parágrafo, definir propriedades de formatação e anexá-lo como filho ao corpo usando o método **AppendChild**.

{{% /alert %}}

O exemplo de código a seguir mostra como anexar um documento ao final de outro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importar e inserir nós manualmente {#import-and-insert-nodes-manually}

Aspose.Words permite inserir e anexar documentos automaticamente sem quaisquer requisitos de importação anteriores. No entanto, se você precisar inserir ou anexar um nó específico do seu documento, como uma seção ou um parágrafo, primeiro precisará importar esse nó manualmente.

Quando você precisa inserir ou anexar uma seção ou parágrafo a outra, você essencialmente precisa importar os nós da primeira árvore de nós do documento para a segunda usando o método [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean). Depois de importar seus nós, você precisa usar o método [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) para inserir um novo nó após/antes do nó de referência. Isso permite que você personalize o processo de inserção importando nós de um documento e inserindo-o em determinadas posições.

Você também pode usar o método [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) para adicionar um novo nó especificado ao final da lista de nós filhos, por exemplo, se quiser acrescentar conteúdo no nível do parágrafo em vez de no nível da seção.

O exemplo de código a seguir mostra como importar nós manualmente e inseri-los após um nó específico usando o método **InsertAfter**:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

A importação cria um novo nó que é uma cópia do nó original e adequado para inserção no documento de destino.

{{% /alert %}}

O conteúdo é importado para o documento de destino seção por seção, o que significa que as configurações, como configuração de página e cabeçalhos ou rodapés, são preservadas durante a importação. Também é útil observar que você pode definir configurações de formatação ao inserir ou anexar um documento para especificar como dois documentos são unidos.

## Propriedades comuns para inserir e anexar documentos {#common-properties-for-insert-and-append-documents}

Ambos os métodos [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) e [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) aceitam [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) e [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) como parâmetros de entrada. O **ImportFormatMode** permite controlar como a formatação do documento é mesclada ao importar conteúdo de um documento para outro, selecionando diferentes modos de formato, como [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) e [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). O **ImportFormatOptions** permite selecionar diferentes opções de importação, tais como [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), e [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words permite ajustar a visualização de um documento resultante quando dois documentos são adicionados em uma operação inserir ou acrescentar usando as propriedades [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/). A propriedade **PageSetup** contém todos os atributos de uma seção, Como [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), e outros. O caso de uso mais comum é definir a propriedade **SectionStart** para definir se o conteúdo adicionado aparecerá na mesma página ou será dividido em uma nova.

{{% alert color="primary" %}}

Observe que as propriedades **Section** e **PageSetup** não controlam como dois documentos são inseridos/anexados. Eles só permitem que você altere a aparência do seu documento de resultados.

{{% /alert %}}

O exemplo de código a seguir mostra como anexar um documento a outro, evitando que o conteúdo se divida em duas páginas:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
