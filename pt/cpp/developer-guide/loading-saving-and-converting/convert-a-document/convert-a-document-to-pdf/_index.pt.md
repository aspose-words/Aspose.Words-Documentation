---
title: Converter um documento em PDF Em C++
second_title: Aspose.Words para C++
articleTitle: Converter um documento em PDF
linktitle: Converter um documento em PDF
description: "Converta um documento em PDF Usando C++. São suportados vários formatos de entrada, incluindo os formatos Word, OpenOffice, Image e eBook."
type: docs
weight: 10
url: /pt/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

A capacidade de converter documentos de um formato para outro de forma fácil e fiável é uma característica fundamental do Aspose.Words. Um dos formatos mais populares para conversão é PDF-um formato de layout fixo, que preserva a aparência original de um documento durante sua renderização em várias plataformas. O termo "renderização" é usado em Aspose.Words para descrever o processo de conversão de um documento em um formato de arquivo que é paginado ou tem o conceito de páginas.

## Converter um documento do Word em PDF {#convert-a-word-document-to-pdf}

A conversão do Word para PDF é um processo bastante complexo que requer várias etapas de cálculo. Aspose.Words mecanismo de layout imita a maneira como o mecanismo de layout de página de Microsoft Word funciona, fazendo com que os documentos de saída de PDF pareçam o mais próximo possível do que você pode ver em Microsoft Word.

Com Aspose.Words pode converter programaticamente um documento do formato DOC ou DOCX para PDF sem utilizar o Microsoft Office. Este artigo explica como realizar esta conversão.

{{% alert color="primary" %}}

Observe que o número de páginas em um documento afeta o tempo de conversão.

{{% /alert %}}

### Convertendo DOCX ou DOC em PDF {#converting-doc-or-docx-to-pdf}

A conversão do formato de Documento DOC ou DOCX para o formato PDF em Aspose.Words é muito fácil e pode ser realizada com apenas duas linhas de código que:

1. Carregue seu documento em um objeto [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) usando um de seus construtores, especificando o nome do documento com sua extensão de formato.
1. Invoque um dos métodos [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) no objeto **Document** e especifique o formato de saída desejado como PDF inserindo um nome de arquivo com o ".PDF" Extensão.

O exemplo de código a seguir mostra como converter um documento de DOCX para PDF usando o método `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

Às vezes, é necessário especificar opções adicionais, o que pode afetar o resultado de salvar um documento como PDF. Essas opções podem ser especificadas pelo uso da classe [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), contendo propriedades que determinam como a saída PDF será exibida.

Observe que, com a mesma técnica, você pode converter qualquer documento no formato flow-layout para o formato PDF.

{{% /alert %}}

### Converter para diferentes PDF Padrões {#converting-to-various-pdf-standards}

Aspose.Words fornece a enumeração [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) para suportar a conversão de DOC ou DOCX em vários padrões de formato PDF (Como PDF 1.7, PDF 1.5, etc.).

O exemplo de código a seguir demonstra como converter um documento para PDF 1.7 Usando [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) com conformidade para PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Converter imagens em PDF {#convert-an-image-to-pdf}

A conversão para PDF não é restringida por Microsoft Word formatos de Documento. Qualquer formato suportado por Aspose.Words, incluindo criado programaticamente, também pode ser convertido para PDF. Por exemplo, podemos converter imagens de página única, como JPEG, PNG, BMP, EMF, ou WMF, bem como imagens de várias páginas, como TIFF e GIF, a PDF.

O exemplo de código a seguir mostra como converter imagens JPEG e TIFF em PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Para fazer este código funcionar, você precisa adicionar referências a Aspose.Words e `System.Drawing` ao seu projeto.

## Ver Também

- O artigo [Renderização](/words/cpp/rendering/) para mais informações sobre os formatos de página fixa e de esquema de fluxo
- O artigo [Conversão para o formato de página Fixa](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para mais informações sobre o layout da página
- O artigo [Especificar opções de renderização ao converter para PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) para mais informações sobre a utilização da classe `PdfSaveOptions`
