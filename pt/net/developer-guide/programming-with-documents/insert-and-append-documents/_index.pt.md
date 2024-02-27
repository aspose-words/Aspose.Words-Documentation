---
title: Inserir e anexar documentos em C#
second_title: Aspose.Words para .NET
articleTitle: Inserir e anexar documentos
linktitle: Inserir e anexar documentos
description: "Combine documentos em um: insira ou anexe um documento a um documento novo ou existente usando localizar e substituir, mesclar campo, marcador ou simplesmente no final do documento em C#."
type: docs
weight: 80
url: /pt/net/insert-and-append-documents/
---

Às vezes é necessário combinar vários documentos em um. Você pode fazer isso manualmente ou usar o recurso de inserção ou acréscimo de Aspose.Words.

A operação de inserção permite inserir o conteúdo de documentos criados anteriormente em um documento novo ou existente.

Por sua vez, o recurso anexar permite adicionar um documento apenas no final de outro documento.

Este artigo explica como inserir ou anexar um documento a outro de diferentes maneiras e descreve as propriedades comuns que você pode aplicar ao inserir ou anexar documentos.

## Insira um documento {#insert-a-document}

Conforme mencionado acima, no Aspose.Words um documento é representado como uma árvore de nós, e a operação de inserir um documento em outro é copiar os nós da primeira árvore de documentos para a segunda.

Você pode inserir documentos em vários locais de diferentes maneiras. Por exemplo, você pode inserir um documento por meio de uma operação de substituição, de um campo de mesclagem durante uma operação de mesclagem ou de um marcador.

Você também pode usar o método [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) ou [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/), que é semelhante à inserção de um documento em Microsoft Word, para inserir um documento inteiro na posição atual do cursor sem qualquer importação prévia.

O exemplo de código a seguir mostra como inserir um documento usando o método **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

O exemplo de código a seguir mostra como inserir um documento usando o método **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

As subseções a seguir descrevem as opções durante as quais você pode inserir um documento em outro.

### Insira um documento durante a operação Localizar e Substituir {#insert-a-document-during-find-and-replace-operation}

Você pode inserir documentos enquanto executa operações de localização e substituição. Por exemplo, um documento pode conter parágrafos com o texto [INTRODUÇÃO] e [CONCLUSÃO]. Mas no documento final, você precisa substituir esses parágrafos pelo conteúdo obtido de outro documento externo. Para conseguir isso, você precisará criar um manipulador para o evento de substituição.

O exemplo de código a seguir mostra como criar um manipulador para o evento de substituição para usá-lo posteriormente no processo de inserção:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

O exemplo de código a seguir mostra como inserir o conteúdo de um documento em outro durante uma operação localizar e substituir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Insira um documento durante a operação Mail Merge {#insert-a-document-during-mail-merge-operation}

Você pode inserir um documento em um campo de mesclagem durante uma operação mail merge. Por exemplo, um modelo mail merge pode conter um campo de mesclagem como [Resumo]. Mas no documento final, você precisa inserir o conteúdo obtido de outro documento externo neste campo de mesclagem. Para conseguir isso, você precisará criar um manipulador para o evento de mesclagem.

O exemplo de código a seguir mostra como criar um manipulador para o evento de mesclagem para usá-lo posteriormente no processo de inserção:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

O exemplo de código a seguir mostra como inserir um documento no campo de mesclagem usando o manipulador criado:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Insira um documento no Bookmark {#insert-a-document-at-bookmark}

Você pode importar um arquivo de texto para um documento e inseri-lo logo após um marcador definido no documento. Para fazer isso, crie um parágrafo marcado onde deseja que o documento seja inserido.

O exemplo de codificação a seguir mostra como inserir o conteúdo de um documento em um marcador de outro documento:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Observe que o marcador não deve incluir vários parágrafos ou texto que você deseja que apareçam no documento final resultante.

{{% /alert %}}

## Anexar um documento {#append-a-document}

Você pode ter um caso de uso em que precise incluir páginas adicionais de um documento no final de um documento existente. Para fazer isso, basta chamar o método [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) para adicionar um documento ao final de outro.

{{% alert color="primary" %}}

Observe que [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) é um método em nível de nó dentro de um documento. Por exemplo, você pode criar um parágrafo, definir propriedades de formatação e anexá-lo como filho ao corpo usando o método **AppendChild**.

{{% /alert %}}

O exemplo de código a seguir mostra como anexar um documento ao final de outro documento:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Importar e inserir nós manualmente {#import-and-insert-nodes-manually}

Aspose.Words permite inserir e anexar documentos automaticamente sem quaisquer requisitos de importação prévios. No entanto, se você precisar inserir ou anexar um nó específico do seu documento, como uma seção ou um parágrafo, primeiro será necessário importar esse nó manualmente.

Quando você precisa inserir ou anexar uma seção ou parágrafo a outro, você basicamente precisa importar os nós da primeira árvore de nós do documento para a segunda usando o método [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/). Após importar seus nós, você precisa usar o método [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) para inserir um novo nó antes/depois do nó de referência. Isso permite personalizar o processo de inserção importando nós de um documento e inserindo-os em determinadas posições.

Você também pode usar o método [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) para adicionar um novo nó especificado ao final da lista de nós filhos, por exemplo, se desejar acrescentar conteúdo no nível do parágrafo em vez de no nível da seção.

O exemplo de código a seguir mostra como importar nós manualmente e inseri-los após um nó específico usando o método **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

A importação cria um novo nó que é uma cópia do nó original e adequado para inserção no documento de destino.

{{% /alert %}}

O conteúdo é importado para o documento de destino seção por seção, o que significa que as configurações, como configuração de página e cabeçalhos ou rodapés, são preservadas durante a importação. Também é útil observar que você pode definir configurações de formatação ao inserir ou anexar um documento para especificar como dois documentos serão unidos.

## Propriedades comuns para inserir e anexar documentos {#common-properties-for-insert-and-append-documents}

Os métodos [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) e [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) aceitam [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) e [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) como parâmetros de entrada. O **ImportFormatMode** permite controlar como a formatação do documento é mesclada ao importar conteúdo de um documento para outro, selecionando diferentes modos de formato, como [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) e [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/). O **ImportFormatOptions** permite selecionar diferentes opções de importação, como [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) e [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words permite ajustar a visualização de um documento resultante quando dois documentos são adicionados em uma operação de inserção ou acréscimo usando as propriedades [Section](https://reference.aspose.com/words/net/aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/). A propriedade **PageSetup** contém todos os atributos de uma seção como [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) e outros. O caso de uso mais comum é definir a propriedade **SectionStart** para definir se o conteúdo adicionado aparecerá na mesma página ou será dividido em uma nova.

{{% alert color="primary" %}}

Observe que as propriedades **Section** e **PageSetup** não controlam como dois documentos são inseridos/anexados juntos. Eles apenas permitem que você altere a aparência do documento resultante.

{{% /alert %}}

O exemplo de código a seguir mostra como anexar um documento a outro evitando que o conteúdo se divida em duas páginas:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
