---
title: Trabalhando com cabeçalhos e rodapés em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com cabeçalhos e rodapés
linktitle: Trabalhando com cabeçalhos e rodapés
description: "Como manipular cabeçalhos e rodapés usando Java."
type: docs
weight: 150
url: /pt/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite que os usuários trabalhem com cabeçalhos e rodapés em um documento. Um cabeçalho é texto que é colocado na parte superior de uma página, e um rodapé é texto na parte inferior de uma página. Normalmente, essas áreas são usadas para inserir informações que devem ser repetidas em todas ou algumas páginas do documento, como números de página, data de criação, informações da empresa e assim por diante.

## Criar cabeçalhos ou rodapés usando DocumentBuilder

Se você quiser adicionar um cabeçalho de documento ou rodapé programaticamente, a maneira mais fácil é usar o [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe para fazê-lo.

O exemplo de código a seguir mostra como adicionar um cabeçalho e rodapé para páginas de documentos:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Especificar opções de cabeçalho ou rodapé

Quando você adiciona um cabeçalho ou rodapé a um documento, você pode definir algumas propriedades avançadas. Aspose.Words fornece aos usuários [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) e [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) aulas, bem como [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) enumeração que lhe dão mais controle sobre o processo de personalização de cabeçalho e rodapé.

### Especifique o tipo de cabeçalho ou rodapé

Você pode especificar três tipos diferentes de cabeçalho e três tipos diferentes de rodapé para um documento:

1. Cabeçalho e/ou rodapé para a primeira página
2. Cabeçalho e/ou rodapé para páginas pares
3. Cabeçalho e/ou rodapé para páginas ímpares

O exemplo de código a seguir mostra como adicionar um cabeçalho para páginas de documentos ímpares:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Especifique se exibir diferentes cabeçalhos ou rodapés para a primeira página

Como dito acima, você também pode definir um cabeçalho diferente ou rodapé para a primeira página. Para fazer isso, você precisa definir o [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) bandeira para `true` e então especifique o **HeaderFirst** ou **FooterFirst** valor.

O exemplo a seguir mostra como definir o cabeçalho apenas para a primeira página:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Especifique se deseja exibir diferentes cabeçalhos ou rodapés para páginas ímpares ou mesmo

 Em seguida, você vai querer definir diferentes cabeçalhos ou rodapés para páginas ímpares e até mesmo em um documento. Para fazer isso, você precisa definir o [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) bandeira para `true` e então especifique os valores **HeaderPrimary** e **HeaderEven**, ou **FooterPrimary** e **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Insira um Absolutamente Posicionado Imagem no cabeçalho

Para colocar uma imagem em um cabeçalho ou rodapé, use o **HeaderPrimary** tipo de cabeçalho ou o **FooterPrimary** tipo rodapé e o [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) método.

O exemplo de código a seguir mostra como adicionar uma imagem a um cabeçalho:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Definir Propriedades de Fonte e Parágrafo para Header ou Texto de Rodapé

Com Aspose.Words você pode definir as propriedades de fonte e parágrafo, usar o **HeaderPrimary** tipo de cabeçalho ou o **FooterPrimary** tipo rodapé, bem como métodos e propriedades para trabalhar com as fontes e parágrafos que você usa para o corpo do documento.

O exemplo de código a seguir mostra como definir o texto no cabeçalho para Arial, negrito, tamanho 14 e alinhamento central:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Insira números de página no cabeçalho ou rodapé

Se necessário, você pode adicionar números de página ao cabeçalho ou rodapé. Para fazer isso, use o **HeaderPrimary** tipo de cabeçalho ou o **FooterPrimary** tipo rodapé e o [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) método para adicionar o campo necessário.

O exemplo de código a seguir mostra como adicionar números de página ao rodapé à direita:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Use cabeçalhos ou rodapés definidos na seção anterior

Se você precisar copiar o cabeçalho ou rodapé da seção anterior, você também pode fazer isso.

O exemplo a seguir mostra como copiar o cabeçalho ou rodapé da seção anterior:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Garanta a aparência de cabeçalho ou rodapé ao usar diferentes Orientações de página e tamanho da página

Aspose.Words permite que você forneça a aparência de um cabeçalho ou rodapé ao usar diferentes orientações e tamanhos de página.

O exemplo a seguir mostra como fazer isso:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Como remover apenas cabeçalhos ou apenas rodapés

Cada seção em um documento pode ter até três cabeçalhos e até três rodapés (para primeiro, mesmo e páginas ímpares). Se você quiser remover todos os cabeçalhos ou todos os rodapés em um documento, você precisa preencher todas as seções e remover cada nó de cabeçalho correspondente ou nó de rodapé.

O exemplo de código a seguir mostra como remover todos os rodapés de todas as seções, mas deixar cabeçalhos intactos. Você pode remover apenas cabeçalhos de uma forma semelhante:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
