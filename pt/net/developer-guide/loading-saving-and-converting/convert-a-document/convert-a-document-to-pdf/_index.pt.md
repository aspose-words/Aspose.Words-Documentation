---
title: Converter Word em PDF em C#
second_title: Aspose.Words para .NET
articleTitle: Converter um documento em PDF
linktitle: Converter um documento em PDF
description: "Converta um documento em PDF usando C#. Converta DOCX em PDF C#. Vários formatos de entrada são suportados, incluindo formatos Word, OpenOffice, Imagem e e-book."
type: docs
weight: 10
url: /pt/net/convert-a-document-to-pdf/
---

A capacidade de converter documentos de um formato para outro de maneira fácil e confiável é um recurso importante do Aspose.Words. Um dos formatos mais populares para conversão é o PDF – um formato de layout fixo, que preserva a aparência original de um documento durante sua renderização em diversas plataformas. O termo "renderização" é usado em Aspose.Words para descrever o processo de conversão de um documento em um formato de arquivo paginado ou que tenha o conceito de páginas.

## Converter um documento do Word em PDF

A conversão de Word para PDF é um processo bastante complexo que requer várias etapas de cálculo. O mecanismo de layout Aspose.Words imita a forma como o mecanismo de layout de página do Microsoft Word funciona, fazendo com que os documentos de saída em PDF pareçam o mais próximo possível do que você pode ver no Microsoft Word.

Com o Aspose.Words você pode converter programaticamente um documento de formatos Word, como DOC ou DOCX, para PDF sem usar o Microsoft Office. Este artigo explica como realizar essa conversão.

{{% alert color="primary" %}}

Observe que o número de páginas de um documento afeta o tempo de conversão.

{{% /alert %}}

### Converta DOCX ou DOC para PDF

A conversão do formato de documento DOC ou DOCX para o formato PDF em Aspose.Words é muito fácil e pode ser realizada com apenas duas linhas de código que:

1. Carregue seu documento em um objeto [Document](https://reference.aspose.com/words/net/aspose.words/document/) usando um de seus construtores, especificando o nome do documento com sua extensão de formato.
1. Invoque um dos métodos [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) no objeto **Document** e especifique o formato de saída desejado como PDF inserindo um nome de arquivo com a extensão ".PDF".

O exemplo de código a seguir mostra como converter um documento DOCX em PDF usando o método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/):

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Às vezes é necessário especificar opções adicionais, o que pode afetar o resultado de salvar um documento como PDF. Essas opções podem ser especificadas pelo uso da classe [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/), contendo propriedades que determinam como a saída do PDF será exibida.

Observe que com a mesma técnica, você pode converter qualquer documento em formato de layout de fluxo para o formato PDF.

{{% /alert %}}

### Converter para diferentes padrões de PDF

Aspose.Words fornece a enumeração [PDFCompliace](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) para suportar a conversão de DOC ou DOCX em vários padrões de formato PDF (como PDF 1.7, PDF 1.5, etc.).

O exemplo de código a seguir demonstra como converter um documento em PDF 1.7 usando [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) em conformidade com PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Converter imagens em PDF

A conversão para PDF não é restrita aos formatos de documento Microsoft Word. Qualquer formato suportado por Aspose.Words, inclusive criado programaticamente, também pode ser convertido para PDF. Por exemplo, podemos converter imagens de uma única página, como JPEG, PNG, BMP, EMF ou WMF, bem como imagens de várias páginas, como TIFF e GIF, em PDF.

O exemplo de código a seguir mostra como converter imagens JPEG e TIFF em PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Para fazer esse código funcionar, você precisa adicionar referências a Aspose.Words e `System.Drawing` ao seu projeto.

## Reduza o tamanho da saída do PDF

Ao salvar em PDF, você pode especificar se deseja otimizar a saída. Para fazer isso, você precisa definir o sinalizador [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) como true e, em seguida, as telas aninhadas redundantes e as telas vazias serão removidas e os glyphs vizinhos com a mesma formatação serão concatenados.

O exemplo de código a seguir mostra como otimizar a saída:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

O uso da propriedade **OptimizeOutput** pode afetar a precisão da exibição do conteúdo.

{{% /alert %}}

## Veja também

- O artigo [Renderização](/words/pt/net/rendering/) para mais informações sobre os formatos de página fixa e layout de fluxo
- O artigo [Convertendo para formato de página fixa](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) para mais informações sobre o layout da página
- O artigo [Especifique as opções de renderização ao converter para PDF](/words/pt/net/specify-rendering-options-when-converting-to-pdf/) para mais informações sobre o uso da classe `PdfSaveOptions`
- O artigo [Aprenda os recursos de conversão para PDF/A e PDF/UA](/words/pt/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) que descreve qual padrão PDF e o ISO relevante para padrões PDF suportam Aspose.Words
- O artigo [Qual padrão PDF é melhor escolher](/words/pt/net/which-pdf-standard-is-better-to-choose/) para determinar quais padrões de PDF fazem sentido para quais casos

- O artigo [Trabalhando com PDF/A ou PDF/UA](/words/pt/net/working-with-pdfa-or-pdfua/) descreve os requisitos para o conteúdo do documento nos formatos PDF/A e PDF/UA – principalmente os requisitos para a estrutura e fontes

- O artigo [Avisos de problemas de acessibilidade ao salvar em PDF/A e PDF/UA](/words/pt/net/warnings-when-saving-to-pdfa-and-pdfua/) descreve quais requisitos de acessibilidade de conteúdo o PDF/A e o PDF/UA impõem
