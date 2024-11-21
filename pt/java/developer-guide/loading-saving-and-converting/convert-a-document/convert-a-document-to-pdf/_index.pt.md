---
title: Converter um documento para PDF em Java
second_title: Aspose.Words para Java
articleTitle: Converter um documento para PDF
linktitle: Converter um documento para PDF
description: "Converta um documento no Word ou qualquer outro formato suportado em PDF, que preserva a aparência original de um documento durante sua renderização em várias plataformas usando Java."
type: docs
weight: 10
url: /pt/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

A capacidade de converter facilmente e confiável documentos de um formato para outro é uma característica chave de Aspose.Words. Um dos formatos mais populares para converter é o PDF – um formato fixo-layout, que preserva a aparência original de um documento durante sua renderização em várias plataformas. O termo "renderização" é usado em Aspose.Words para descrever o processo de conversão de um documento em um formato de arquivo que é paginado ou tem o conceito de páginas.

## Converter um documento do Word para PDF {#convert-a-word-document-to-pdf}

A conversão do Word para PDF é um processo bastante complexo que requer várias etapas de cálculo. Aspose.Words mecanismo de layout imita a maneira como o Microsoft WordO mecanismo de layout da página funciona, fazendo com que os documentos de saída em PDF sejam tão próximos quanto possível ao que você pode ver Microsoft Word.

Com Aspose.Words você pode converter programaticamente um documento do formato DOC ou DOCX para PDF sem usar Microsoft Escritório. Este artigo explica como executar esta conversão.

{{% alert color="primary" %}}

Note que o número de páginas em um documento afeta o tempo de conversão.

{{% /alert %}}

### Converter DOCX ou DOC para PDF {#converting-doc-or-docx-to-pdf}

Convertendo do formato de documento DOC ou DOCX no formato PDF Aspose.Words é muito fácil e pode ser realizado com apenas duas linhas de código que:

1. Carregar seu documento em um [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objeto usando um de seus construtores especificando o nome do documento com sua extensão de formato.
1. Invoque um dos [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) métodos sobre **Document** objeto e especifique o formato de saída desejado como PDF introduzindo um nome de arquivo com a extensão ".PDF".

O exemplo a seguir mostra como converter um documento de DOCX em PDF usando o `Save` método:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Às vezes é necessário especificar opções adicionais, que podem afetar o resultado de salvar um documento como um PDF. Estas opções podem ser especificadas pelo uso do [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe, contendo propriedades que determinam como a saída PDF será exibida.

Note que com a mesma técnica, você pode converter qualquer documento de formato de fluxo-layout para o formato PDF.

{{% /alert %}}

### Converter para PDF diferente Normas {#converting-to-various-pdf-standards}

Aspose.Words fornece o [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)enumeração para apoiar a conversão de DOC ou DOCX em vários padrões de formato PDF (como PDF 1.7, PDF 1.5, etc.).

O seguinte exemplo de código demonstra como converter um documento para PDF 1.7 usando [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) com conformidade com o PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Converter Imagens para PDF

Converter para PDF não é restrito por Microsoft Word formatos de documentos. Qualquer formato suportado por Aspose.Words, incluindo programaticamente criado, também pode ser convertido em PDF. Por exemplo, podemos converter imagens de página única, como JPEG, PNG, BMP, EMF ou WMF, bem como imagens de várias páginas, como TIFF e GIF, para PDF.

O exemplo a seguir mostra como converter imagens JPEG e TIFF para PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Para fazer este código funcionar, você precisa adicionar referências a Aspose.Words, Java.awt.image, e javax. pacotes de classe imageio para o seu projeto.

## Reduzir o PDF Tamanho de saída

Ao salvar em PDF, você pode especificar se deseja otimizar a saída. Para fazer isso, você precisa definir o [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) bandeira para true, e então telas aninhadas redundantes e telas vazias serão removidas, vizinha glyphs com a mesma formatação será concatenada.

O exemplo de código a seguir mostra como otimizar a saída:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Usando o **OptimizeOutput** a propriedade pode afetar a precisão da exibição de conteúdo.

{{% /alert %}}

## Ver também

- O artigo [Renderização](/words/pt/java/rendering/) para obter mais informações sobre os formatos de página fixa e de escoamento
- O artigo [Conversor para Formato de página de montagem](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para mais informações sobre o layout da página
- O artigo [Linha de produção de plástico](/words/pt/java/specify-rendering-options-when-converting-to-pdf/) para mais informações sobre como usar `PdfSaveOptions` classe
