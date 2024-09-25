---
title: Trabalhando com seções em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com seções
linktitle: Trabalhando com seções
description: "Compreender conceitos de seções de documentos e práticas de manipulação usando C#. Inserir seção em um documento C#. Remova a seção C#. Copie seções entre documentos."
type: docs
weight: 120
url: /pt/net/working-with-sections/
---

Às vezes você deseja um documento que não tenha a mesma formatação em todas as páginas. Por exemplo, pode ser necessário modificar formatos de número de página, ter tamanho e orientação de página diferentes ou ter a primeira página do documento como capa sem qualquer numeração. Você pode conseguir isso com seções.

Seções são nós de nível que controlam cabeçalhos e rodapés, orientação, colunas, margens, formatação de número de página e outros.

Aspose.Words permite gerenciar seções, dividir um documento em seções e fazer alterações de formatação que se aplicam apenas a uma seção específica. Aspose.Words armazena informações sobre formatação de seção, como cabeçalhos e rodapés, configuração de página e configurações de coluna na quebra de seção.

Este artigo explica como trabalhar com seções e quebras de seção.

## O que é seção e quebra de seção

As seções do documento são representadas pelas classes [Section](https://reference.aspose.com/words/net/aspose.words/section/) e [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection). Os objetos de seção são filhos imediatos do nó [Document](https://reference.aspose.com/words/net/aspose.words/document/) e podem ser acessados por meio da propriedade [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections). Você pode gerenciar esses nós usando alguns métodos como [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) e outros.

A quebra de seção é uma opção que divide as páginas do documento em seções com layouts personalizáveis.

## Tipos de quebra de seção

Aspose.Words permite dividir e formatar documentos usando diferentes quebras de seção da enumeração [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/):

* SectionBreakContinuo
* SeçãoBreakNewColumn
* SeçãoBreakNewPage
* SeçãoBreakEvenPage
* SectionBreakOddPage

Você também pode usar a enumeração [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) para escolher um tipo de quebra que se aplica somente à primeira seção, como NewColumn, NewPage, EvenPage e OddPage.

## Gerenciar uma seção

Como uma seção é um nó composto normal, toda a manipulação do nó API pode ser usada para manipular seções: para adicionar, remover e outras operações em seções. Você pode ler mais sobre nós no artigo [Aspose.Words Document Object Model (DOM)](/words/pt/net/aspose-words-document-object-model/).

Por outro lado, você também pode usar o `DocumentBuilder` API para trabalhar com seções. Neste artigo, focaremos nesta forma específica de trabalhar com seções.

## Inserir ou remover uma quebra de seção

Aspose.Words permite inserir uma quebra de seção no texto usando o método [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/).

O exemplo de código a seguir mostra como inserir uma quebra de seção em um documento:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Use o método [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) para excluir uma quebra de seção. Se você não precisar remover uma quebra de seção específica e, em vez disso, excluir o conteúdo dessa seção, poderá usar o método [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/).

O exemplo de código a seguir mostra como remover quebras de seção:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Observe que uma quebra de seção contém informações sobre a seção anterior, não a seção posterior. Portanto, se você remover uma quebra de seção, o texto antes da quebra removida obterá as propriedades da quebra de seção seguinte. Isso pode fazer com que todo o documento fique no modo paisagem ou que os cabeçalhos e rodapés sejam alterados ou desapareçam completamente.

{{% /alert %}}

## Mover uma seção

Se quiser mover uma seção de uma posição para outra no documento, você precisará obter o índice dessa seção. Aspose.Words permite obter uma posição de seção de um [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) usando a propriedade [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item). Você pode usar a propriedade [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) para obter todas as seções do seu documento. Mas se quiser obter apenas a primeira seção, você pode usar a propriedade [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/).

O exemplo de código a seguir mostra como acessar a primeira seção e iterar pelos filhos de um nó composto:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Especifique um layout de seção

Às vezes, você deseja que seu documento tenha uma aparência melhor criando layouts criativos para diferentes seções do documento. Se quiser especificar o tipo da grade de seção atual, você pode escolher um modo de layout de seção usando a enumeração [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/):

* Padrão
* Grade
* Grade de Linha
* SnapToChars

O exemplo de código a seguir mostra como limitar o número de linhas que cada página pode ter:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Editar uma seção

Quando você adiciona uma nova seção ao seu documento, não haverá corpo ou parágrafo que você possa editar. Aspose.Words permite garantir que uma seção contém um corpo com pelo menos um parágrafo usando o método [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) – ele adicionará automaticamente um nó Corpo (ou HeaderFooter) ao documento e, em seguida, adicionará um Parágrafo a ele.

O exemplo de código a seguir mostra como preparar um novo nó de seção usando **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Anexar ou preceder conteúdo

Se quiser desenhar alguma forma ou adicionar texto ou imagem no início/fim de uma seção, você pode usar os métodos [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) e [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) da classe [Section](https://reference.aspose.com/words/net/aspose.words/section/).

O exemplo de código a seguir mostra como anexar conteúdo de uma seção existente:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Clonar uma seção

Aspose.Words permite duplicar uma seção criando uma cópia completa dela usando o método [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/).

O exemplo de código a seguir mostra como clonar a primeira seção do seu documento:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Copiar seções entre documentos

Em alguns casos, você pode ter documentos grandes com muitas seções e desejar copiar o conteúdo de uma seção de um documento para outro.

Aspose.Words permite copiar seções entre documentos usando o método [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/).

O exemplo de código a seguir mostra como copiar seções entre documentos:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Trabalhar com cabeçalho e rodapé de seção

As regras básicas para exibir um cabeçalho ou rodapé para cada seção são bastante simples:

1. Se a seção não tiver cabeçalhos/rodapés próprios de um determinado tipo, ela será retirada da seção anterior.
2. O tipo de cabeçalho/rodapé exibido na página é controlado pelas configurações da seção "Primeira página diferente" e "Páginas pares e ímpares diferentes" – se estiverem desabilitadas, os próprios títulos da seção serão ignorados.

O exemplo de código a seguir mostra como criar 2 seções com cabeçalhos diferentes:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Se quiser remover o texto dos cabeçalhos e rodapés sem remover os objetos [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) do seu documento, você pode usar o método [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). Além disso, você pode usar o método [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) para remover todas as formas dos cabeçalhos e rodapés do seu documento.

O exemplo de código a seguir mostra como limpar o conteúdo de todos os cabeçalhos e rodapés de uma seção:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

O exemplo de código a seguir mostra como remover todas as formas de todos os cabeçalhos e rodapés em uma seção:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Personalize as propriedades da página em uma seção

Antes de imprimir uma página ou documento, você pode personalizar e modificar o tamanho e o layout de uma única página ou de todo o documento. Com a configuração de página, você pode alterar as configurações das páginas do documento, como margens, orientação e tamanho, para imprimir primeiras páginas diferentes ou páginas ímpares.

Aspose.Words permite personalizar propriedades de páginas e seções usando a classe [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/).

O exemplo de código a seguir mostra como definir propriedades como tamanho de página e orientação para a seção atual:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

O exemplo de código a seguir mostra como modificar as propriedades da página em todas as seções:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Veja também

* [Níveis lógicos de nós em um documento](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Inserir e anexar documentos](/words/pt/net/insert-and-append-documents/)

