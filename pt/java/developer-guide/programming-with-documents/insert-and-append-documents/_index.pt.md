---
title: Inserir e anexar documentos em Java
second_title: Aspose.Words para Java
articleTitle: Inserir e anexar documentos
linktitle: Inserir e anexar documentos
description: "Combine documentos em um: insira ou acrescente um documento em um novo ou existente usando encontrar e substituir, fundir campo, bookmark, ou simplesmente na extremidade do documento em Java."
type: docs
weight: 80
url: /pt/java/insert-and-append-documents/
---

Às vezes é necessário combinar vários documentos em um. Você pode fazer isso manualmente ou você pode usar Aspose.Words inserir ou anexar recurso.

A operação de inserção permite inserir o conteúdo de documentos previamente criados em um novo ou existente.

Por sua vez, o recurso de apêndice permite adicionar um documento apenas no final de outro documento.

Este artigo explica como inserir ou anexar um documento a outro de maneiras diferentes e descreve as propriedades comuns que você pode aplicar ao inserir ou anexar documentos.

## Insira um documento

Como mencionado acima, em Aspose.Words um documento é representado como uma árvore de nós, e a operação de inserir um documento em outro é copiar nós da primeira árvore de documentos para o segundo.

Você pode inserir documentos em uma variedade de locais de maneiras diferentes. Por exemplo, você pode inserir um documento através de uma operação de substituição, um campo de mesclagem durante uma operação de mesclagem, ou através de um marcador.

Você também pode usar o [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) ou o [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) método, que é semelhante a inserir um documento em Microsoft Word, inserir um documento inteiro na posição atual do cursor sem qualquer importação anterior.

O exemplo de código a seguir mostra como inserir um documento usando o **InsertDocument** método:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

O exemplo de código a seguir mostra como inserir um documento usando o **InsertDocumentInline** método:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

As seguintes subseções descrevem as opções durante as quais você pode inserir um documento em outro.

### Insira um documento durante a operação Localizar e Substituir {#insert-a-document-during-find-and-replace-operation}

Você pode inserir documentos ao executar encontrar e substituir operações. Por exemplo, um documento pode conter parágrafos com o texto [INTRODUÇÃO] e [CONCLUSÃO]. Mas no documento final, você precisa substituir esses parágrafos com o conteúdo obtido de outro documento externo. Para conseguir isso, você precisará criar um manipulador para o evento de substituição.

O exemplo de código a seguir mostra como criar um manipulador para o evento de substituição para usá-lo mais tarde no processo de inserção:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

O exemplo de código a seguir mostra como inserir conteúdo de um documento em outro durante uma operação de busca e substituição:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Insira um documento durante Mail Merge Operação {#insert-a-document-during-mail-merge-operation}

Você pode inserir um documento em um campo de mesclagem durante um mail merge operação. Por exemplo, um mail merge template pode conter um campo de mesclagem, como [Summary]. Mas no documento final, você precisa inserir conteúdo obtido a partir de outro documento externo neste campo de mesclagem. Para conseguir isso, você precisará criar um manipulador para o evento de mesclagem.

O exemplo de código a seguir mostra como criar um manipulador para o evento de fusão para usá-lo mais tarde no processo de inserção:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

O exemplo de código a seguir mostra como inserir um documento no campo de mesclagem usando o manipulador criado:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Insira um documento no Bookmark

Você pode importar um arquivo de texto em um documento e inseri-lo logo após um marcador que você definiu no documento. Para fazer isso, crie um parágrafo marcador onde deseja que o documento seja inserido.

O seguinte exemplo de codificação mostra como inserir o conteúdo de um documento em outro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Note que o marcador não deve incluir vários parágrafos ou texto que você deseja que eles apareçam em seu documento final resultante.

{{% /alert %}}

## Anexar um documento

Você pode ter um caso de uso onde você precisa incluir páginas adicionais de um documento até o final de um documento existente. Para fazer isso, basta ligar para o [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) método para adicionar um documento ao fim de outro.

{{% alert color="primary" %}}

Note que [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) é um método de nível de nó dentro de um documento. Por exemplo, você pode criar um parágrafo, definir propriedades de formatação e, em seguida, anexá-lo como uma criança ao corpo usando o **AppendChild** método.

{{% /alert %}}

O exemplo de código a seguir mostra como anexar um documento ao final de outro documento:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importar e inserir nós manualmente {#import-and-insert-nodes-manually}

Aspose.Words permite inserir e anexar documentos automaticamente sem quaisquer requisitos de importação anteriores. No entanto, se você precisar inserir ou anexar um nó específico do seu documento, como uma seção ou um parágrafo, primeiro você precisa importar esse nó manualmente.

Quando você precisa inserir ou anexar uma seção ou parágrafo para outra, você essencialmente precisa importar os nós da primeira árvore do nó do documento no segundo usando o [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) método. Depois de importar seus nós, você precisa usar o [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) método para inserir um novo nó após/antes do nó de referência. Isso permite que você personalize o processo de inserção importando nós de um documento e inseri-lo em determinadas posições.

Você também pode usar o [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) método para adicionar um novo nó especificado ao final da lista de nós de criança, por exemplo, se você quiser anexar conteúdo no nível de parágrafo em vez de no nível de seção.

O exemplo a seguir mostra como importar nós manualmente e inseri-los após um nó específico usando o **InsertAfter** método:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

A importação cria um novo nó que é uma cópia do nó original e adequado para inserção no documento de destino.

{{% /alert %}}

O conteúdo é importado na seção de documento de destino por seção, o que significa que as configurações, como configuração de página e cabeçalhos ou rodapés, são preservadas durante a importação. Também é útil notar que você pode definir configurações de formatação quando você inserir ou anexar um documento para especificar como dois documentos são unidos.

## Propriedades comuns para documentos de inserção e anexo {#common-properties-for-insert-and-append-documents}

Ambos [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) e [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) métodos aceitar [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) e [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) como parâmetros de entrada. O **ImportFormatMode** permite que você controle como a formatação do documento é mesclada quando você importar conteúdo de um documento para outro selecionando diferentes modos de formato, como [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), e [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). O **ImportFormatOptions** permite selecionar diferentes opções de importação, como [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), e [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words permite ajustar a visualização de um documento resultante quando dois documentos são adicionados juntos em uma operação de inserção ou anexo usando o [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) propriedades. O **PageSetup** propriedade contém todos os atributos de uma seção, como [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), e outros. O caso de uso mais comum é definir o **SectionStart** propriedade para definir se o conteúdo adicionado aparecerá na mesma página ou se dividirá em uma nova.

{{% alert color="primary" %}}

Note que o **Section** e **PageSetup** propriedades não controlam como dois documentos são inseridos / anexados juntos. Eles só permitem que você altere a aparência do seu documento de resultado.

{{% /alert %}}

O exemplo de código a seguir mostra como anexar um documento para outro, mantendo o conteúdo de dividir em duas páginas:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
