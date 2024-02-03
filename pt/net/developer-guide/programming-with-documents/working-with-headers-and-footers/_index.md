---
title: Trabalhando com cabeçalhos e rodapés em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com cabeçalhos e rodapés
linktitle: Trabalhando com cabeçalhos e rodapés
description: "Como manipular cabeçalhos e rodapés usando C#. Crie cabeçalhos e rodapés C#. Remova cabeçalhos ou rodapés C#."
type: docs
weight: 150
url: /pt/net/working-with-headers-and-footers/
---

Aspose.Words permite aos usuários trabalhar com cabeçalhos e rodapés em um documento. Um cabeçalho é o texto colocado na parte superior de uma página e um rodapé é o texto na parte inferior de uma página. Normalmente, essas áreas são utilizadas para inserir informações que devem ser repetidas em todas ou algumas páginas do documento, como números de páginas, data de criação, informações da empresa e assim por diante.

## Crie cabeçalhos ou rodapés usando DocumentBuilder

Se você deseja adicionar um cabeçalho ou rodapé de documento programaticamente, a maneira mais fácil é usar a classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) para fazer isso.

O exemplo de código a seguir mostra como adicionar um cabeçalho e um rodapé às páginas do documento:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Especifique opções de cabeçalho ou rodapé

Ao adicionar um cabeçalho ou rodapé a um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece aos usuários classes [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) e [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/), bem como enumeração [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) que oferecem mais controle sobre o processo de personalização de cabeçalho e rodapé.

### Especifique o tipo de cabeçalho ou rodapé

Você pode especificar três tipos diferentes de cabeçalho e três tipos diferentes de rodapé para um documento:
1. Cabeçalho e/ou rodapé da primeira página
2. Cabeçalho e/ou rodapé para páginas pares
3. Cabeçalho e/ou rodapé para páginas ímpares

O exemplo de código a seguir mostra como adicionar um cabeçalho para páginas ímpares do documento:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Especifique se deseja exibir cabeçalhos ou rodapés diferentes para a primeira página

Como dito acima, você também pode definir um cabeçalho ou rodapé diferente para a primeira página. Para fazer isso, você precisa definir o sinalizador [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) como `true` e então especificar o valor **HeaderFirst** ou **FooterFirst**.

O exemplo de código a seguir mostra como definir o cabeçalho apenas para a primeira página:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Especifique se deseja exibir cabeçalhos ou rodapés diferentes para páginas pares ou ímpares

 Em seguida, você desejará definir cabeçalhos ou rodapés diferentes para páginas pares e ímpares de um documento. Para fazer isso, você precisa definir o sinalizador [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) como `true` e então especificar os valores **HeaderPrimary** e **HeaderEven**, ou **FooterPrimary** e **FooterEven**.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Insira uma imagem absolutamente posicionada no cabeçalho

Para colocar uma imagem em um cabeçalho ou rodapé, use o tipo de cabeçalho **HeaderPrimary** ou o tipo de rodapé **FooterPrimary** e o método [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/).

O exemplo de código a seguir mostra como adicionar uma imagem a um cabeçalho:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Definir propriedades de fonte e parágrafo para texto de cabeçalho ou rodapé

Com Aspose.Words você pode definir as propriedades de fonte e parágrafo, usar o tipo de cabeçalho **HeaderPrimary** ou o tipo de rodapé **FooterPrimary**, bem como métodos e propriedades para trabalhar com as fontes e parágrafos usados no corpo do documento.

O exemplo de código a seguir mostra como definir o texto no cabeçalho como Arial, negrito, tamanho 14 e alinhamento central:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Insira números de página no cabeçalho ou rodapé

Se necessário, você pode adicionar números de página ao cabeçalho ou rodapé. Para fazer isso, use o tipo de cabeçalho **HeaderPrimary** ou o tipo de rodapé **FooterPrimary** e o método [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) para adicionar o campo obrigatório.

O exemplo de código a seguir mostra como adicionar números de página ao rodapé à direita:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Use cabeçalhos ou rodapés definidos na seção anterior

Se precisar copiar o cabeçalho ou rodapé da seção anterior, você também pode fazer isso.

O exemplo de código a seguir mostra como copiar o cabeçalho ou rodapé da seção anterior:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Garanta a aparência do cabeçalho ou rodapé ao usar diferentes orientações e tamanhos de página

Aspose.Words permite fornecer a aparência de um cabeçalho ou rodapé ao usar diferentes orientações e tamanhos de página.

O exemplo a seguir mostra como fazer isso:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Como remover apenas cabeçalhos ou rodapés

Cada seção de um documento pode ter até três cabeçalhos e até três rodapés (para primeiras páginas, pares e ímpares). Se quiser remover todos os cabeçalhos ou rodapés de um documento, você precisará percorrer todas as seções e remover cada nó de cabeçalho ou rodapé correspondente.

O exemplo de código a seguir mostra como remover todos os rodapés de todas as seções, mas deixar os cabeçalhos intactos. Você pode remover apenas cabeçalhos de maneira semelhante:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}