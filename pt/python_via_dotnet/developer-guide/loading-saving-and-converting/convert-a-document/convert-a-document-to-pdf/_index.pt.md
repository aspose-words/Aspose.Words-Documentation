---
title: Converta um documento em PDF em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Converter um documento em PDF
linktitle: Converter um documento em PDF
description: "Converta um documento em PDF usando Python. Vários formatos de entrada são suportados, incluindo formatos Word, OpenOffice, Imagem e e-book."
type: docs
weight: 10
url: /pt/python-net/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

A capacidade de converter documentos de um formato para outro de maneira fácil e confiável é um recurso importante do Aspose.Words. Um dos formatos mais populares para conversão é o PDF – um formato de layout fixo, que preserva a aparência original de um documento durante sua renderização em diversas plataformas. O termo "renderização" é usado em Aspose.Words para descrever o processo de conversão de um documento em um formato de arquivo paginado ou que tenha o conceito de páginas.

## Converter um documento do Word em PDF {#convert-a-word-document-to-pdf}

A conversão de Word para PDF é um processo bastante complexo que requer várias etapas de cálculo. O mecanismo de layout Aspose.Words imita a forma como o mecanismo de layout de página do Microsoft Word funciona, fazendo com que os documentos de saída em PDF pareçam o mais próximo possível do que você pode ver no Microsoft Word.

Com o Aspose.Words você pode converter programaticamente um documento de formatos Word, como DOC ou DOCX, para PDF sem usar o Microsoft Office. Este artigo explica como realizar essa conversão.

{{% alert color="primary" %}}

Observe que o número de páginas de um documento afeta o tempo de conversão.

{{% /alert %}}

### Converta DOC ou DOCX para PDF {#convert-doc-or-docx-to-pdf}

A conversão do formato de documento DOC ou DOCX para o formato PDF em Aspose.Words é muito fácil e pode ser realizada com apenas duas linhas de código que:

1. Carregue seu documento em um objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) usando um de seus construtores, especificando o nome do documento com sua extensão de formato.
1. Invoque um dos métodos [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) no objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) e especifique o formato de saída desejado como PDF inserindo um nome de arquivo com a extensão ".PDF".

O exemplo de código a seguir mostra como converter um documento DOCX em PDF usando o método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Às vezes é necessário especificar opções adicionais, o que pode afetar o resultado de salvar um documento como PDF. Essas opções podem ser especificadas pelo uso da classe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), contendo propriedades que determinam como a saída do PDF será exibida.

Observe que com a mesma técnica, você pode converter qualquer documento em formato de layout de fluxo para o formato PDF.

{{% /alert %}}

### Converter para vários padrões PDF {#convert-to-various-pdf-standards}

Aspose.Words fornece a enumeração [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) para suportar a conversão de DOC ou DOCX em vários padrões de formato PDF (como PDF 1.7, PDF 1.5, etc.).

O exemplo de código a seguir demonstra como converter um documento em PDF 1.7 usando [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) compatível com [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Converter imagens em PDF

A conversão para PDF não é restrita aos formatos de documento Microsoft Word. Qualquer formato suportado por Aspose.Words, inclusive criado programaticamente, também pode ser convertido para PDF. Por exemplo, podemos converter imagens de uma única página, como JPEG, PNG, BMP, EMF ou WMF, bem como imagens de várias páginas, como TIFF e GIF, em PDF.

O exemplo de código a seguir mostra como converter imagens JPEG e TIFF em PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Para fazer esse código funcionar, você precisa adicionar referências a Aspose.Words e `aspose.pydrawing` ao seu projeto.

## Reduza o tamanho da saída do PDF

Ao salvar em PDF, você pode especificar se deseja otimizar a saída. Para fazer isso, você precisa definir o sinalizador [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) como true e, em seguida, as telas aninhadas redundantes e as telas vazias serão removidas e os glyphs vizinhos com a mesma formatação serão concatenados.

{{% alert color="primary" %}}

O uso da propriedade **OptimizeOutput** pode afetar a precisão da exibição do conteúdo.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Reduza o tamanho da saída do PDF

Ao salvar em PDF, você pode especificar se deseja otimizar a saída. Para fazer isso, você precisa definir o sinalizador [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) como true e, em seguida, as telas aninhadas redundantes e as telas vazias serão removidas e os glyphs vizinhos com a mesma formatação serão concatenados.

{{% alert color="primary" %}}

O uso da propriedade **OptimizeOutput** pode afetar a precisão da exibição do conteúdo.

{{% /alert %}}

## Veja também

- O artigo [Renderização](/words/pt/python-net/rendering/) para mais informações sobre os formatos de página fixa e layout de fluxo
- O artigo [Convertendo para formato de página fixa](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para mais informações sobre o layout da página
- O artigo [Especifique as opções de renderização ao converter para PDF](/words/pt/python-net/specify-rendering-options-when-converting-to-pdf/) para mais informações sobre o uso da classe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)
