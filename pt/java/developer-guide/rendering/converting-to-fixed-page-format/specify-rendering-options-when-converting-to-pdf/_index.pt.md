---
title: Especificar Opções de Renderização ao converter para PDF
second_title: Aspose.Words para Java
articleTitle: Especificar Opções de Renderização ao converter para PDF
linktitle: Especificar Opções de Renderização ao converter para PDF
description: "Converta um documento em PDF com opções avançadas. Use PdfSaveOptions para alterar o resultado de salvar um documento em formato PDF usando Java."
type: docs
weight: 20
url: /pt/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

O formato PDF é um formato de página fixa que é muito popular entre os usuários e amplamente suportado por várias aplicações porque um documento PDF parece o mesmo em qualquer dispositivo. Por essa razão, converter para PDF é uma característica importante de Aspose.Words.

PDF é um formato complexo. Várias etapas de cálculos são necessárias no processo de conversão de um documento para PDF, incluindo o cálculo do layout. Uma vez que estas etapas incluem computação complexa, eles são demorados. Além disso, o formato PDF é bastante complexo por si só. Tem uma estrutura de arquivo específica, modelo gráfico e incorporação de fontes. Além disso, ele possui alguma funcionalidade de saída complexa, como tags de estrutura de documentos, criptografia, assinaturas digitais e formas editáveis.

Aspose.Words mecanismo de layout imita a maneira como o Microsoft Word’s page layout engine works. Portanto, Aspose.Words faz com que os documentos de saída PDF pareçam o mais próximo possível do que você pode ver Microsoft Word. Às vezes é necessário especificar opções adicionais, que podem afetar o resultado de salvar um documento no formato PDF. Estas opções podem ser especificadas pelo uso do [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe, contendo as propriedades que determinam como a saída PDF será exibida.

Alguns exemplos de uso **PdfSaveOptions** são fornecidos abaixo.

{{% alert color="primary" %}}

Atualmente, você pode salvar em PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u e formatos PDF/UA-1. Use o [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) enumeração para definir o nível de conformidade de padrões PDF. Note que com o formato PDF/A, um tamanho de arquivo de saída é maior que um tamanho de arquivo PDF regular.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) e [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) são marcados como obsoletos.

Para obter mais informações sobre PDF/A, consulte o próximo artigo, "Learn Features of Conversion to PDF/A".

{{% /alert %}}

## Criar um PDF Documento com formulários preenchidos

Também é possível exportar formas de preenchimento de uma Microsoft Word documento em PDF de saída, que tem formulários filáveis em vez de um texto simples. Use o [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) propriedade para salvar um documento como PDF com formulários filáveis.

Note que em contraste com <span notrans="<span notrans=" Microsoft Word"=""></span>, o formato PDF tem um número limitado de opções para formulários editáveis, como caixa de texto, caixa de combinação e caixa de seleção. Microsoft Word tem mais tipos de formulários, por exemplo, o selecionador de data de calendário. Geralmente, não é possível imitar totalmente Microsoft Word comportamento em PDF. Portanto, em alguns casos complexos, a saída PDF pode diferir do que você vê em Microsoft Word.

O exemplo de código abaixo mostra como salvar um documento como PDF com formulários filáveis com compressão e qualidade Jpeg especificada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exportação de estrutura de documentos e propriedades personalizadas

O [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) propriedade permite exportar estrutura de documentos para saída PDF.

As instalações de estrutura lógica em PDF fornecem um mecanismo para incorporar informações sobre a estrutura do conteúdo do documento, em um arquivo PDF. Aspose.Words preserva informações sobre a estrutura de uma Microsoft Word documento, como parágrafos, listas, tabelas, notas de rodapé/notas, etc.

O exemplo a seguir demonstra como salvar um documento em formato PDF, preservando a estrutura do documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words também permite exportar propriedades personalizadas do documento para PDF, que é demonstrado pelo seguinte exemplo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Exportação de Marcas e Categorias em Saída de PDF

Se você quiser exportar marcadores como esboços em PDF de saída, você pode usar o [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) propriedade. Esta propriedade especifica o nível padrão no esboço do documento, no qual Microsoft Word marcadores são exibidos. Se o documento contém marcadores no cabeçalho / rodapé do documento, você pode definir o [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) propriedade para [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) ou [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) para especificar como eles são exportados em PDF de saída. Os marcadores em cabeçalhos / pés não são exportados quando o valor de **HeaderFooterBookmarksExportMode** o [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

O exemplo de código abaixo mostra como exportar marcadores do primeiro cabeçalho / rodapé de uma seção:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

O PDF de saída deste exemplo é mostrado abaixo:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Quando **HeaderFooterBookmarksExportMode** está definido [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) e o documento tem cabeçalhos / rodapés pares e estranhos ou um cabeçalho / rodapé de primeira página diferente, os marcadores são exportados para os primeiros cabeçalhos / pés exclusivos em uma seção.

Você também pode exportar títulos na saída PDF, usando o [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) propriedade. Esta propriedade especifica quantos níveis de títulos estão incluídos no esboço do documento.

O exemplo de código abaixo mostra como exportar cabeçalhos com três níveis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

O PDF de saída deste exemplo é descrito abaixo:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Um marcador de livros ou navegação de cabeçalho pode ter diferentes aparências em vários visualizadores PDF. Além disso, em algumas aplicações, marcadores e navegação de cabeçalho não estão disponíveis na interface do usuário.

{{% /alert %}}

## Imagens de downsampling para reduzir o tamanho do documento

Aspose.Words fornece uma capacidade de downsample imagens, a fim de reduzir o tamanho de saída PDF, usando o [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) propriedade. O downsampling é ativado por padrão no [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) propriedade.

Note que também é possível definir uma resolução específica no [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) propriedade ou um limiar de resolução no [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) propriedade. No segundo caso, se a resolução de imagem é menor do que o valor de limiar, então o downsampling não será aplicado.

O exemplo de código abaixo exibe como alterar a resolução de imagens em um documento PDF de saída:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

A resolução é calculada de acordo com o tamanho real da imagem na página.

## Adicionar fontes no formato Adobe PDF

Aspose.Words também permite controlar como as fontes são incorporadas nos documentos PDF resultantes. As fontes precisam ser incorporadas em qualquer documento do Adobe PDF para garantir que o documento pode ser renderizado corretamente em qualquer máquina (veja mais detalhes sobre renderização de fontes na seção [Usar Fontes True Tipo](/words/pt/java/using-truetype-fonts/)). Por padrão, Aspose.Words incorpora um subconjunto de fontes usadas no documento no PDF gerado. Neste caso, apenas o glyphs (personagens) utilizados no documento são salvos em PDF.

### Quando usar fontes completas e quando subajustar

Há uma maneira de especificar uma opção para Aspose.Words para incorporar fontes completas. Mais detalhes, juntamente com algumas vantagens e desvantagens de cada configuração são descritos na tabela abaixo.

| Adicionar modo de fontes |  Vantagens | Desvantagens |
|  :-  |  :-  |  :-  |
|  `Full`  | Útil quando você deseja editar o PDF resultante mais tarde, adicionando ou modificando o texto. Todas as fontes estão incluídas, daí tudo glyphs estão presentes. | Uma vez que algumas fontes são grandes (vários megabytes), incorporando-as sem subconfiguração pode resultar em arquivos de saída grandes. |
|  `Subset`  | Subsetting é útil se você quiser manter o tamanho do arquivo de saída menor. | <p>O usuário não pode adicionar ou editar totalmente o texto usando a fonte subsetada no documento PDF de saída. Isto porque não tudo glyphs da fonte estão presentes.</p>

<p>Se vários PDFs forem salvos com fontes subsetadas e reunidos, então o documento PDF combinado pode ter uma fonte contendo muitos subconjuntos desnecessários.</p>
 |

### Adicionar fontes completas em PDF

O [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) propriedade permite especificar como Aspose.Words incorpora fontes em um documento PDF de saída.

- Não. Para incorporar fontes completas no documento PDF de saída, defina **EmbedFullFonts** para true
- Não. Para subajustar fontes ao salvar para PDF, defina **EmbedFullFonts** para false

O exemplo a seguir demonstra como incorporar fontes completas no documento PDF de saída:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

O exemplo a seguir demonstra como definir Aspose.Words para subconjuntar fontes na saída PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para esses exemplos de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Como Controlar a incorporação de fontes e Windows Fontes padrão

Fontes e Windows Fontes padrão são os conjuntos "padrão" de fontes, que geralmente estão presentes na máquina de destino ou fornecidos pelo leitor de documentos, portanto, eles não precisam ser incorporados no PDF de saída. Ao não incorporar essas fontes, você pode diminuir o tamanho dos documentos PDF renderizados e ainda manter a portabilidade.

Aspose.Words fornece opções para escolher como as fontes são exportadas para PDF. Você pode optar por incorporar fontes básicas e padrão no PDF de saída ou para pular incorporando-as e usar fontes PDF padrão ou fontes de sistema na máquina de destino. Usando qualquer uma dessas opções normalmente resulta em redução significativa do tamanho do arquivo para documentos PDF gerados por Aspose.Words.

- Uma vez que essas opções são mutuamente exclusivas, você deve escolher apenas uma de cada vez.
- Ao salvar com a conformidade PDF/A-1, todas as fontes usadas devem ser incorporadas ao documento PDF. Ao salvar com essa conformidade, o [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) a propriedade deve ser definida false e o [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) a propriedade deve ser definida [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Fontes de núcleo de incorporação

A opção de incorporar fontes Core pode ser habilitada ou desativada usando o [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) propriedade. Quando está definido true, as seguintes fontes mais populares "True Type" (Base 14 fontes) não são incorporadas no documento PDF de saída:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Estas fontes são substituídas pelas fontes do núcleo correspondente Tipo 1, que são fornecidas por um leitor quando o PDF é aberto.

O exemplo fornecido abaixo mostra como definir Aspose.Words para evitar incorporar fontes principais e deixar o leitor substituí-las com PDF Tipo 1 fontes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para este exemplo de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Uma vez que os telespectadores PDF fornecem fontes principais em qualquer plataforma suportada, esta opção também é útil quando uma portabilidade maior do documento é necessária. No entanto, as fontes principais podem parecer diferentes das fontes do sistema.

{{% alert color="primary" %}}

Esta configuração funciona apenas para ANSI (Windows-1252) codificação de texto. Escrever um texto não-ANSI para PDF sempre exigirá que as fontes correspondentes sejam incorporadas.

{{% /alert %}}

### Fontes de sistema de incorporação

Esta opção pode ser habilitada ou desativada usando o [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) propriedade. Quando esta propriedade está definida [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), o "Arial" e "Times New Roman" true fontes tipo não são incorporadas em um documento PDF. Neste caso, o espectador cliente depende das fontes instaladas no sistema operacional do cliente. Quando o **FontEmbeddingMode** A propriedade está definida [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words não incorporar nenhuma fonte.

O exemplo abaixo mostra como definir Aspose.Words para pular incorporar fontes Arial e Times New Roman em um documento PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Este modo é mais útil quando você deseja visualizar seus documentos na mesma plataforma, preservando a aparência exata de fontes no PDF de saída.

{{% alert color="primary" %}}

Esta configuração funciona apenas para ANSI (Windows-1252) codificação de texto. Escrever um texto não-ANSI para PDF requer que a fonte correspondente seja incorporada.

{{% /alert %}}
