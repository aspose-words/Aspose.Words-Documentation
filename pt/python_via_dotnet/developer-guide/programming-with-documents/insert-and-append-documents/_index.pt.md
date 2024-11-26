---
title: Inserir e anexar documentos
second_title: Aspose.Words para Python via .NET
articleTitle: Inserir e anexar documentos
linktitle: Inserir e anexar documentos
description: "Combine documentos em um: insira ou anexe um documento a um documento novo ou existente usando localizar e substituir, mesclar campo, marcador ou simplesmente no final do documento em Python."
type: docs
weight: 80
url: /pt/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Às vezes é necessário combinar vários documentos em um. Você pode fazer isso manualmente ou usar o recurso de inserção ou acréscimo de Aspose.Words.

A operação de inserção permite inserir o conteúdo de documentos criados anteriormente em um documento novo ou existente.

Por sua vez, o recurso anexar permite adicionar um documento apenas no final de outro documento.

Este artigo explica como inserir ou anexar um documento a outro de diferentes maneiras e descreve as propriedades comuns que você pode aplicar ao inserir ou anexar documentos.

## Insira um documento

Conforme mencionado acima, no Aspose.Words um documento é representado como uma árvore de nós, e a operação de inserir um documento em outro é copiar os nós da primeira árvore de documentos para a segunda.

Você pode inserir documentos em vários locais de diferentes maneiras. Por exemplo, você pode inserir um documento por meio de uma operação de substituição, de um campo de mesclagem durante uma operação de mesclagem ou de um marcador.

Você também pode usar o método [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) ou [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), que é semelhante à inserção de um documento em Microsoft Word, para inserir um documento inteiro na posição atual do cursor sem qualquer importação prévia.

O exemplo de código a seguir mostra como inserir um documento usando o método **inserir_documento**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

O exemplo de código a seguir mostra como inserir um documento usando o método **insert_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

As subseções a seguir descrevem as opções durante as quais você pode inserir um documento em outro.

### Insira um documento no marcador

Você pode importar um arquivo de texto para um documento e inseri-lo logo após um marcador definido no documento. Para fazer isso, crie um parágrafo marcado onde deseja que o documento seja inserido.

O exemplo de codificação a seguir mostra como inserir o conteúdo de um documento em um marcador de outro documento:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Observe que o marcador não deve incluir vários parágrafos ou texto que você deseja que apareçam no documento final resultante.

{{% /alert %}}

## Anexar um documento

Você pode ter um caso de uso em que precise incluir páginas adicionais de um documento no final de um documento existente. Para fazer isso, basta chamar o método [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) para adicionar um documento ao final de outro.

{{% alert color="primary" %}}

Observe que [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) é um método em nível de nó dentro de um documento. Por exemplo, você pode criar um parágrafo, definir propriedades de formatação e anexá-lo como filho ao corpo usando o método [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

O exemplo de código a seguir mostra como anexar um documento ao final de outro documento:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Importar e inserir nós manualmente

Aspose.Words permite inserir e anexar documentos automaticamente sem quaisquer requisitos de importação prévios. No entanto, se você precisar inserir ou anexar um nó específico do seu documento, como uma seção ou um parágrafo, primeiro será necessário importar esse nó manualmente.

Quando você precisa inserir ou anexar uma seção ou parágrafo a outro, você basicamente precisa importar os nós da primeira árvore de nós do documento para a segunda usando o método [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). Após importar seus nós, você precisa usar o método [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) para inserir um novo nó antes/depois do nó de referência. Isso permite personalizar o processo de inserção importando nós de um documento e inserindo-os em determinadas posições.

Você também pode usar o método [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) para adicionar um novo nó especificado ao final da lista de nós filhos, por exemplo, se desejar acrescentar conteúdo no nível do parágrafo em vez de no nível da seção.

O exemplo de código a seguir mostra como importar nós manualmente e inseri-los após um nó específico usando o método [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

A importação cria um novo nó que é uma cópia do nó original e adequado para inserção no documento de destino.

{{% /alert %}}

O conteúdo é importado para o documento de destino seção por seção, o que significa que as configurações, como configuração de página e cabeçalhos ou rodapés, são preservadas durante a importação. Também é útil observar que você pode definir configurações de formatação ao inserir ou anexar um documento para especificar como dois documentos serão unidos.

## Propriedades comuns para inserir e anexar documentos

Os métodos [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) e [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) aceitam [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) e [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) como parâmetros de entrada. O [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) permite controlar como a formatação do documento é mesclada ao importar conteúdo de um documento para outro, selecionando diferentes modos de formato, como [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) e [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). O [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) permite selecionar diferentes opções de importação, como [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) e [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words permite ajustar a visualização de um documento resultante quando dois documentos são adicionados em uma operação de inserção ou acréscimo usando [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). A propriedade [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) contém todos os atributos de uma seção como [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) e outros. O caso de uso mais comum é definir a propriedade [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) para definir se o conteúdo adicionado aparecerá na mesma página ou será dividido em uma nova.

{{% alert color="primary" %}}

Observe que [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) e [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) não controlam como dois documentos são inseridos/anexados juntos. Eles apenas permitem que você altere a aparência do documento resultante.

{{% /alert %}}

O exemplo de código a seguir mostra como anexar um documento a outro evitando que o conteúdo se divida em duas páginas:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
