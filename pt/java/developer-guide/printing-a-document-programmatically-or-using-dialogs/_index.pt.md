---
title: Imprimir um documento
second_title: Aspose.Words para Java
articleTitle: Imprimir um documento programaticamente ou utilizar caixas de diálogo
linktitle: Imprimir um documento programaticamente ou utilizar caixas de diálogo
description: "Imprima um documento utilizando Java através das Caixas de diálogo Definições, pré-visualização de impressão e progresso de Impressão."
type: docs
weight: 55
url: /pt/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

Este artigo descreve como imprimir um documento de processamento de texto utilizando Aspose.Words API. Ele também demonstra os métodos de impressão de um documento com configurações, visualização de impressão e diálogos de progresso de Impressão.

## Imprimir um documento com definições e caixas de diálogo de Pré-Visualização de Impressão

Ao trabalhar com documentos, muitas vezes é necessário imprimi-los em uma impressora selecionada. É útil utilizar uma caixa de diálogo de pré-visualização de impressão para inspecionar visualmente como o documento impresso aparecerá e escolher as opções de impressão relevantes.

O Aspose.Words não tem diálogos ou formulários integrados, mas implementa a classe [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) que substitui ambos os java.awt.imprimir.Impressão e java.awt.imprimir.Paginável.

O exemplo a seguir mostra como usar essas classes para imprimir um documento de Aspose.Words por meio das Caixas de diálogo Visualização de impressão e configurações:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Imprimir várias páginas numa folha

Aspose.Words implementa a classe **MultipagePrintDocument**, para ajustar a operação de impressão para implementar sua lógica personalizada, definindo a maneira como o documento aparecerá na página impressa. A classe **MultipagePrintDocument** permite imprimir várias páginas numa folha de papel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Você pode baixar um exemplo de uso da classe **MultipagePrintDocument** de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

O resultado deste exemplo de código é mostrado abaixo:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
