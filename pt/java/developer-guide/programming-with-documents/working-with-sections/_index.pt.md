---
title: Trabalhando com Seções em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com Seções
linktitle: Trabalhando com Seções
description: "Compreender conceitos de seção de documentos e práticas de manipulação usando Java. Inserir seção em um documento Java. Remover seção Java. Copiar seções entre Documentos."
type: docs
weight: 120
url: /pt/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Às vezes você quer um documento que não tenha a mesma formatação em todas as páginas. Por exemplo, você pode precisar modificar formatos de número de página, ter diferentes tamanhos e orientação de página, ou ter a primeira página de documento como uma página de capa sem qualquer numeração. Você pode conseguir isso com seções.

As seções são nós de nível que controlam cabeçalhos e rodapés, orientação, colunas, margens, formatação de números de página e outros.

Aspose.Words permite gerenciar seções, dividir um documento em seções e fazer alterações de formatação que se aplicam apenas a uma seção específica. Aspose.Words armazena informações sobre formatação de seção, como cabeçalhos e rodapés, configuração de página e configurações de coluna no intervalo de seção.

Este artigo explica como trabalhar com seções e quebras de seção.

## Que seção e quebra de seção é

Seções de documentos são representadas por [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) e [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) aulas. Objetos de seção são crianças imediatas do [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) nó e pode ser acessado através do [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) propriedade. Você pode gerenciar esses nós usando alguns métodos como [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), e outros.

A quebra de seção é uma opção que divide páginas de documentos em seções com layouts personalizáveis.

## Tipos de uma quebra de seção

Aspose.Words permite dividir e formatar documentos usando diferentes intervalos de seção do [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) enumeração:

- SeçãoBreakContinuado
- SecçãoBreak NewColumn
- SeçãoBreakNewPage
- SeçãoBreakEvenPage
- SeçãoBreakOddPage

Você também pode usar o [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) enumeração para escolher um tipo de ruptura que se aplica apenas para a primeira seção, como NewColumn, NewPage, EvenPage e OddPage.

## Gerenciar uma Seção

Uma vez que uma seção é um nó composto normal, toda a manipulação do nó API pode ser usado para manipular seções: adicionar, remover e outras operações em seções. Você pode ler mais sobre nós no artigo [Aspose.Words Document Object Model (DOM)](/words/pt/java/aspose-words-document-object-model/).

Por outro lado, você também pode usar o `DocumentBuilder` API para trabalhar com seções. Neste artigo, vamos focar nesta maneira particular de trabalhar com seções.

## Inserir ou remover uma quebra de seção

Aspose.Words permite inserir uma quebra de seção em texto usando o [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) método.

O exemplo de código a seguir mostra como inserir uma seção quebrar em um documento:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Use o [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) método para excluir uma quebra de seção. Se você não precisa remover uma quebra de seção específica e, em vez disso, excluir o conteúdo dessa seção, você pode usar o [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) método.

O exemplo de código a seguir mostra como remover seções quebra:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Note que um intervalo de seção tem informações sobre a seção que vai antes dele, não a seção que vai atrás dele. Então, se você remover uma quebra de seção, o texto antes do intervalo removido obterá as propriedades da quebra de seção seguindo-o. Isso pode fazer com que todo o documento se torne paisagem, ou cabeçalhos e rodapés para mudar ou desaparecer completamente.

{{% /alert %}}

## Mover uma seção

Se você quiser mover uma seção de uma posição para outra em seu documento, você precisa obter o índice dessa seção. Aspose.Words permite que você obtenha uma posição de seção de uma [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Você pode usar o [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) propriedade para obter todas as seções em seu documento. Mas se você quiser obter apenas a primeira seção, você pode usar o [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) propriedade.

O exemplo de código a seguir mostra como acessar a primeira seção e iterar através das crianças de um nó composto:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Especificar um Layout de Seção

Às vezes você quer que seu documento fique melhor, fazendo layouts criativos para diferentes seções de documentos. Se você quiser especificar o tipo da grade de seção atual, você pode escolher um modo de layout de seção usando o [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) enumeração:

- Defeito
- Grid
- LineGrid
- SnapToChars

O exemplo de código a seguir mostra como limitar o número de linhas que cada página pode ter:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Editar uma secção

Quando você adiciona uma nova seção ao seu documento, não haverá nenhum corpo ou parágrafo que você possa editar. Aspose.Words permite que você garanta que uma seção contém um corpo com pelo menos um parágrafo usando o [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) método – ele adicionará automaticamente um nó Body (ou HeaderFooter) ao documento e, em seguida, adicionará um Parágrafo a ele.

O exemplo de código a seguir mostra como preparar um novo nó de seção usando **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Anexar ou Prependir conteúdo

Se você quiser desenhar alguma forma ou adicionar texto ou imagem no início / fim de uma seção, você pode usar o [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) e [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) métodos de [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) classe.

O exemplo de código a seguir mostra como anexar conteúdo de uma seção existente:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Clone a Section

Aspose.Words permite duplicar uma seção criando uma cópia completa dele usando o [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) método.

O exemplo de código a seguir mostra como clonar a primeira seção em seu documento:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Copiar Seções entre Documentos

Em alguns casos, você pode ter grandes documentos com muitas seções e deseja copiar o conteúdo de uma seção de um documento para outro.

Aspose.Words permite copiar seções entre documentos usando o [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) método.

O exemplo a seguir mostra como copiar seções entre documentos:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Trabalho com cabeçalho de seção e rodapé

As regras básicas para exibir um cabeçalho ou rodapé para cada seção são bastante simples:

1. Se a seção não tem seus próprios cabeçalhos/pés de um determinado tipo, então é tomado da seção anterior.
2. O tipo de cabeçalho / rodapé exibido na página é controlado pelas configurações de seção "Different First Page" e "Different Odd & Even pages" – se eles estão desativados, então os próprios títulos da seção são ignorados.

O exemplo a seguir mostra como criar 2 seções com cabeçalhos diferentes:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Se você quiser remover o texto de cabeçalhos e rodapés sem remover [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) objetos em seu documento, você pode usar o [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) método. Além disso, você pode usar o [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) método para remover todas as formas de cabeçalhos e rodapés em seu documento.

O exemplo a seguir mostra como limpar o conteúdo de todos os cabeçalhos e rodapés em uma seção:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

O seguinte exemplo de código como remover todas as formas de todos os cabeçalhos rodapé em uma seção:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Personalize as propriedades da página em uma seção

Antes de imprimir uma página ou um documento, você pode querer personalizar e modificar o tamanho e o layout de uma única página ou todo o documento. Com a configuração da página, você pode alterar as configurações de páginas de documentos, como margens, orientação e tamanho para imprimir páginas diferentes ou páginas ímpares.

Aspose.Words permite personalizar as propriedades de página e seção usando o [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) classe.

O exemplo de código a seguir mostra como definir propriedades como tamanho da página e orientação para a seção atual:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

O exemplo de código a seguir mostra como modificar as propriedades da página em todas as seções:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Ver também

- [Níveis Lógicos de Nós em um Documento](/words/pt/java/logical-levels-of-nodes-in-a-document/)
- [Inserir documentos](/words/pt/java/insert-and-append-documents/)
