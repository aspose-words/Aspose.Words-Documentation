---
title: Trabalhar com cabeçalhos e rodapés em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com cabeçalhos e rodapés
linktitle: Trabalhar com cabeçalhos e rodapés
description: "Como manipular cabeçalhos e rodapés usando Java."
type: docs
weight: 150
url: /pt/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words permite aos utilizadores trabalhar com cabeçalhos e rodapés num documento. Um cabeçalho é o texto que é colocado no topo de uma página, e um rodapé é o texto na parte inferior de uma página. Normalmente, essas áreas são usadas para inserir informações que devem ser repetidas em todas ou algumas páginas do documento, como números de página, Data de criação, informações da empresa e assim por diante.

## Criar cabeçalhos ou rodapés utilizando DocumentBuilder

Se você deseja adicionar um cabeçalho ou rodapé de Documento programaticamente, a maneira mais fácil é usar a classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) para fazer isso.

O exemplo de código a seguir mostra como adicionar um cabeçalho e rodapé para páginas de documentos:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Especificar opções de cabeçalho ou rodapé

Quando adiciona um cabeçalho ou rodapé a um documento, pode definir algumas propriedades avançadas. Aspose.Words fornece aos usuários as classes [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) e [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/), bem como a enumeração [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) que lhe dão mais controle sobre o processo de personalização de cabeçalho e rodapé.

### Especificar o tipo de cabeçalho ou rodapé

É possível especificar três tipos de cabeçalho e três tipos de rodapé diferentes para um documento:

1. Cabeçalho e / ou rodapé da primeira página
2. Cabeçalho e / ou rodapé para páginas pares
3. Cabeçalho e / ou rodapé para páginas ímpares

O exemplo de código a seguir mostra como adicionar um cabeçalho para páginas de documentos ímpares:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Especifique se pretende apresentar cabeçalhos ou rodapés diferentes para a primeira página

Como dito acima, você também pode definir um cabeçalho ou rodapé diferente para a primeira página. Para fazer isso, você precisa definir o sinalizador [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) para `true` e, em seguida, especificar o valor **HeaderFirst** ou **FooterFirst**.

O exemplo de código a seguir mostra como definir o cabeçalho apenas para a primeira página:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Especifique se pretende apresentar cabeçalhos ou rodapés diferentes para páginas pares ou ímpares

 Em seguida, você desejará definir diferentes cabeçalhos ou rodapés para páginas ímpares e pares em um documento. Para fazer isso, você precisa definir o sinalizador [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) para `true` e, em seguida, especificar os valores **HeaderPrimary** e **HeaderEven** ou **FooterPrimary** e **FooterEven**.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Inserir uma imagem absolutamente posicionada no cabeçalho

Para colocar uma imagem em um cabeçalho ou rodapé, use o tipo de cabeçalho **HeaderPrimary** ou o tipo de rodapé **FooterPrimary** e o método [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte).

O exemplo de código a seguir mostra como adicionar uma imagem a um cabeçalho:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Definir as propriedades da fonte e do parágrafo para o texto do cabeçalho ou rodapé

Com Aspose.Words você pode definir as propriedades de fonte e parágrafo, usar o tipo de cabeçalho **HeaderPrimary** ou o tipo de rodapé **FooterPrimary**, bem como métodos e propriedades para trabalhar com as fontes e parágrafos que você usa para o corpo do documento.

O exemplo de código a seguir mostra como definir o texto no cabeçalho para Arial, negrito, tamanho 14 e alinhamento central:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Inserir números de Página no cabeçalho ou rodapé

Se necessário, pode adicionar números de página ao cabeçalho ou rodapé. Para fazer isso, use o tipo de cabeçalho **HeaderPrimary** ou o tipo de rodapé **FooterPrimary** e o método [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) para adicionar o campo obrigatório.

O exemplo de código a seguir mostra como adicionar números de página ao rodapé à direita:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Utilizar cabeçalhos ou rodapés definidos na secção anterior

Se você precisar copiar o cabeçalho ou rodapé da seção anterior, também poderá fazer isso.

O exemplo de código a seguir mostra como copiar o cabeçalho ou rodapé da seção anterior:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Garantir a aparência do cabeçalho ou rodapé ao usar diferentes orientações e tamanhos de página

Aspose.Words permite fornecer a aparência de um cabeçalho ou rodapé ao usar diferentes orientações e tamanhos de página.

O exemplo a seguir mostra como fazer isso:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Como remover apenas cabeçalhos ou apenas rodapés

Cada seção de um documento pode ter até três cabeçalhos e até três rodapés (para páginas iniciais, pares e ímpares). Se você deseja remover todos os cabeçalhos ou rodapés de um documento, é necessário percorrer todas as seções e remover cada nó de cabeçalho ou rodapé correspondente.

O exemplo de código a seguir mostra como remover todos os rodapés de todas as seções, mas deixar os cabeçalhos intactos. Você pode remover apenas cabeçalhos de maneira semelhante:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
