---
title: Trabalhar com secções em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com secções
linktitle: Trabalhar com secções
description: "Entendendo conceitos de seção de documento e práticas de manipulação usando C++. Inserir seção em um documento C++. Remover seção C++. Copiar seções entre documentos."
type: docs
weight: 120
url: /pt/cpp/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Às vezes, você deseja um documento que não tenha a mesma formatação em todas as páginas. Por exemplo, pode ser necessário modificar os formatos de número de Página, ter um tamanho e orientação de página diferentes ou ter a primeira página do documento como Página de rosto sem qualquer numeração. Pode conseguir isso com secções.

As seções são nós de nível que controlam cabeçalhos e rodapés, orientação, colunas, margens, formatação de número de página e outros.

Aspose.Words permite gerir secções, dividir um documento em secções e efectuar alterações de formatação que se aplicam apenas a uma secção específica. Aspose.Words armazena informações sobre a formatação de secções, tais como cabeçalhos e rodapés, configuração de páginas e definições de colunas na quebra de secções.

Este artigo explica como trabalhar com secções e quebras de secções.

## Qual seção e quebra de seção é

As secções do documento são representadas pelas classes [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) e [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Os objectos Section são filhos imediatos do nó [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e podem ser acedidos através da propriedade [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/). Você pode gerenciar esses nós usando alguns métodos, como [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), e outros.

Section break é uma opção que divide as páginas do documento em seções com layouts personalizáveis.

## Tipos de quebra de secção

Aspose.Words permite dividir e formatar documentos utilizando diferentes quebras de secção da enumeração [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Você também pode usar a enumeração [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) para escolher um tipo de quebra que se aplica apenas à primeira seção, como NewColumn, NewPage, EvenPage, e OddPage.

## Gerir uma secção

Como uma seção é um nó composto normal, toda a manipulação do nó API pode ser usada para manipular seções: para adicionar, remover e outras operações em seções. Você pode ler mais sobre nós no artigo [Aspose.Words Modelo De Objecto Do Documento (DOM)](/words/cpp/aspose-words-document-object-model/).

Por outro lado, você também pode usar o `DocumentBuilder` API para trabalhar com seções. Neste artigo, vamos nos concentrar nesta maneira particular de trabalhar com seções.

## Inserir ou remover uma quebra de secção

Aspose.Words permite inserir uma quebra de secção no texto utilizando o método [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/).

O exemplo de código a seguir mostra como inserir uma quebra de seção em um documento:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Use o método [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) para excluir uma quebra de seção. Se você não precisar remover uma quebra de seção específica e, em vez disso, excluir o conteúdo dessa seção, poderá usar o método [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/).

O exemplo de código a seguir mostra como remover quebras de seções:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Observe que uma quebra de seção contém informações sobre a seção que vai antes dela, não a seção que vai depois dela. Portanto, se você remover uma quebra de seção, o texto antes da quebra removida obterá as propriedades da quebra de seção seguinte. Isso pode fazer com que todo o documento se torne paisagem, ou os cabeçalhos e rodapés mudem ou desapareçam totalmente.

{{% /alert %}}

## Mover uma secção

Se você deseja mover uma seção de uma posição para outra em seu documento, você precisa obter o índice dessa seção. Aspose.Words permite obter uma posição de secção a partir de um [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/). Você pode usar a propriedade [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) para obter todas as seções em seu documento. Mas se você deseja obter apenas a primeira seção, pode usar a propriedade [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/).

O exemplo de código a seguir mostra como acessar a primeira seção e iterar por meio dos filhos de um nó composto:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Especificar uma disposição de secção

Às vezes, você deseja que seu documento tenha uma aparência melhor, criando layouts criativos para diferentes seções do documento. Se você quiser especificar o tipo da grade de seção atual, poderá escolher um modo de layout de seção Usando a enumeração [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/):

- Defeito
- Grelha
- LineGrid
- SnapToChars

O exemplo de código a seguir mostra como limitar o número de linhas que cada página pode ter:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Editar uma secção

Quando você adiciona uma nova seção ao seu documento, não haverá corpo ou parágrafo que você possa editar. Aspose.Words permite que você garanta que uma seção contém um corpo com pelo menos um parágrafo usando o método [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) – ele adicionará automaticamente um nó Body (ou HeaderFooter) ao documento e, em seguida, adicionará um parágrafo a ele.

O exemplo de código a seguir mostra como preparar um novo nó de seção Usando **EnsureMinimum**:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### Acrescentar ou preceder o conteúdo

Se quiser desenhar alguma forma ou adicionar texto ou imagem no início/fim de uma secção, pode utilizar os métodos [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) e [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) da classe [Section](https://reference.aspose.com/words/cpp/aspose.words/section/).

O exemplo de código a seguir mostra como anexar o conteúdo de uma seção existente:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Clonar uma secção

Aspose.Words permite duplicar uma secção criando uma cópia completa da mesma utilizando o método [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/).

O exemplo de código a seguir mostra como clonar a primeira seção do documento:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Copiar secções entre documentos

Em alguns casos, você pode ter documentos grandes com muitas seções e deseja copiar o conteúdo de uma seção de um documento para outro.

Aspose.Words permite copiar secções entre documentos utilizando o método [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/).

O exemplo de código a seguir mostra como copiar seções entre documentos:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Trabalhar com cabeçalho e Rodapé da secção

As regras básicas para exibir um cabeçalho ou rodapé para cada seção são bastante simples:

1. Se a seção não tiver seus próprios cabeçalhos/rodapés de um determinado tipo, ela será retirada da seção anterior.
2. O tipo de cabeçalho/rodapé exibido na página é controlado pelas configurações da seção" primeira página diferente "e" páginas ímpares e pares diferentes " – se estiverem desativadas, os próprios títulos da seção serão ignorados.

O exemplo de código a seguir mostra como criar 2 seções com cabeçalhos diferentes:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Se pretender remover o texto dos cabeçalhos e rodapés sem remover objectos [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) no documento, pode utilizar o método [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/). Além disso, você pode usar o método [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) para remover todas as formas dos cabeçalhos e rodapés do documento.

O exemplo de código a seguir mostra como limpar o conteúdo de todos os cabeçalhos e rodapés em uma seção:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

O exemplo de código a seguir como remover todas as formas de todos os cabeçalhos rodapés em uma seção:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Personalizar as propriedades da Página numa secção

Antes de imprimir uma página ou um documento, pode querer personalizar e modificar o tamanho e a disposição de uma única página ou de todo o documento. Com a configuração da página, pode alterar as definições das páginas do documento, tais como margens, orientação e tamanho, para imprimir diferentes primeiras páginas ou páginas ímpares.

Aspose.Words permite personalizar as propriedades da página e da secção utilizando a classe [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/).

O exemplo de código a seguir mostra como definir propriedades como tamanho da página e orientação para a seção atual:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

O exemplo de código a seguir mostra como modificar as propriedades da página em todas as seções:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Ver Também

- [Níveis lógicos de nós em um documento](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Inserir e anexar documentos](/words/cpp/insert-and-append-documents/)
