---
title: Imprimir um documento
second_title: Aspose.Words para Java
articleTitle: Imprimir um documento Programaticamente ou usando diálogos
linktitle: Imprimir um documento Programaticamente ou usando diálogos
description: "Imprimir um documento usando Java através de Configurações, Visualização de Impressão e Imprimir diálogos de progresso."
type: docs
weight: 55
url: /pt/java/print-a-document-programmatically-or-using-dialogs/
---

Este artigo descreve como imprimir um documento de processamento de texto usando Aspose.Words API. Ele também demonstra os métodos de imprimir um documento com configurações, visualização de impressão e diálogos de progresso de impressão.

## Imprimir um documento com configurações e imprimir diálogos de visualização

Ao trabalhar com documentos, muitas vezes é necessário imprimi-los a uma impressora selecionada. É útil utilizar uma caixa de diálogo de visualização de impressão para inspecionar visualmente como o documento impresso aparecerá e escolherá opções de impressão relevantes.

O Aspose.Words não tem diálogos ou formulários incorporados, mas implementa os [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) classe substitui ambos java.awt.print. Impressável e java.awt.print. Pageable.

O exemplo a seguir mostra como usar essas classes para imprimir um documento a partir de Aspose.Words através da visualização de impressão e configurações diálogos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Imprimir várias páginas em uma folha

Aspose.Words implementa os **MultipagePrintDocument** classe, para ajustar a operação de impressão para implementar sua lógica personalizada, definindo a forma como o documento aparecerá na página impressa. O **MultipagePrintDocument** classe fornece a capacidade de imprimir várias páginas em uma folha de papel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Você pode baixar um exemplo de usar o **MultipagePrintDocument** classe de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

O resultado deste exemplo de código é mostrado abaixo:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
