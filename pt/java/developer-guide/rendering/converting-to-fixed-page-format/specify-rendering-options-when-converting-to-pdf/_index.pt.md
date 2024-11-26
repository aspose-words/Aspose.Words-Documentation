---
title: Especificar opções de renderização ao converter para PDF
second_title: Aspose.Words para Java
articleTitle: Especificar opções de renderização ao converter para PDF
linktitle: Especificar opções de renderização ao converter para PDF
description: "Converta um documento em PDF com opções avançadas. Use PdfSaveOptions para alterar o resultado de salvar um documento para o formato PDF Usando Java."
type: docs
weight: 20
url: /pt/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

O formato PDF é um formato de página fixa que é muito popular entre os usuários e amplamente suportado por vários aplicativos porque um documento PDF tem a mesma aparência em qualquer dispositivo. Por esse motivo, converter para PDF é uma característica importante de Aspose.Words.

PDF é um formato complexo. Várias etapas de cálculos são necessárias no processo de conversão de um documento para PDF, incluindo o cálculo do layout. Uma vez que estas fases incluem cálculos complexos, são demoradas. Além disso, o formato PDF é bastante complexo por si só. Possui uma estrutura de arquivo específica, modelo gráfico e incorporação de fontes. Além disso, apresenta algumas funcionalidades de saída complexas, tais como etiquetas de estrutura de documentos, encriptação, assinaturas digitais e formulários editáveis.

Aspose.Words Mecanismo de layout imita a maneira como o mecanismo de layout de página do Microsoft Word funciona. Portanto, Aspose.Words faz com que PDF documentos de saída pareçam o mais próximo possível do que você pode ver em Microsoft Word. Às vezes, é necessário especificar opções adicionais, o que pode afetar o resultado de salvar um documento no formato PDF. Essas opções podem ser especificadas pelo uso da classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), contendo as propriedades que determinam como a saída PDF será exibida.

Alguns exemplos de uso de **PdfSaveOptions** são fornecidos abaixo.

{{% alert color="primary" %}}

Atualmente, você pode salvar em PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, e PDF/UA-1 formatos. Use a enumeração [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) para definir o nível de conformidade das normas PDF. Observe que, com o formato PDF/A, um tamanho de arquivo de saída é maior do que um tamanho de arquivo PDF normal.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) e [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) são marcados como obsoletos.

Para obter mais informações sobre PDF/A, consulte o próximo artigo,"aprender características da conversão para PDF/A".

{{% /alert %}}

## Criando um documento PDF com formulários preenchíveis

Também é possível exportar formulários preenchíveis de um documento Microsoft Word para a saída PDF, que tem formulários preenchíveis em vez de um texto simples. Use a propriedade [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) para salvar um documento como PDF com formulários preenchíveis.

Observe que, ao contrário de Microsoft Word, o formato PDF tem um número limitado de opções para formulários editáveis, como caixa de texto, caixa de combinação e checkbox. Microsoft Word tem mais tipos de formulários, por exemplo, selecionador de data do calendário. Geralmente, não é possível imitar completamente o comportamento Microsoft Word em PDF. Portanto, em alguns casos complexos, a saída PDF pode diferir do que você vê em Microsoft Word.

O exemplo de código abaixo mostra como salvar um documento como PDF com formulários preenchíveis com compactação e qualidade Jpeg especificadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exportando a estrutura do documento e as propriedades personalizadas

A propriedade [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) permite exportar a estrutura do documento para a saída PDF.

PDF os recursos de estrutura lógica fornecem um mecanismo para incorporar informações, relativas à estrutura do conteúdo do documento, em um arquivo PDF. Aspose.Words preserva informações sobre a estrutura de um documento Microsoft Word, como parágrafos, listas, tabelas, notas de rodapé/notas de fim, etc.

O exemplo a seguir demonstra como salvar um documento no formato PDF, preservando a estrutura do documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words também permite exportar propriedades personalizadas do documento para PDF, o que é demonstrado pelo exemplo a seguir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Exportando contornos de marcadores e títulos na saída PDF

Se pretender exportar marcadores como contornos na saída PDF, pode utilizar a propriedade [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel). Essa propriedade especifica o nível padrão no contorno do documento, no qual Microsoft Word marcadores são exibidos. Se o documento contiver marcadores no cabeçalho / rodapé do documento, pode definir a propriedade [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) como [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) ou [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) para especificar como são exportados na saída PDF. Os marcadores em cabeçalhos / rodapés não são exportados quando o valor de **HeaderFooterBookmarksExportMode** é [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

O exemplo de código abaixo mostra como exportar marcadores do primeiro cabeçalho / rodapé de uma seção:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

A saída PDF deste exemplo é mostrada abaixo:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Quando **HeaderFooterBookmarksExportMode** é definido como [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) e o documento tem cabeçalhos/rodapés pares e ímpares ou um cabeçalho/rodapé de primeira página diferente, os marcadores são exportados para os primeiros cabeçalhos/rodapés exclusivos de uma seção.

Você também pode exportar títulos na saída PDF, usando a propriedade [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels). Esta propriedade especifica quantos níveis de rubricas estão incluídos no esboço do documento.

O exemplo de código abaixo mostra como exportar títulos com três níveis:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

A saída PDF deste exemplo é representada abaixo:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Uma navegação de marcador ou título pode ter aparências diferentes em vários visualizadores PDF. Além disso, em algumas aplicações, os marcadores e a navegação de cabeçalho não estão disponíveis em UI.

{{% /alert %}}

## Reduzir a resolução de imagens para reduzir o tamanho do documento

Aspose.Words fornece a capacidade de reduzir a amostragem de imagens para reduzir o tamanho de saída PDF, usando a propriedade [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions). A redução da resolução é activada por predefinição na propriedade [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages).

Observe que também é possível definir uma resolução específica na propriedade [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) ou um limite de resolução na propriedade [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold). No segundo caso, se a resolução da imagem for inferior ao valor limite, a redução da resolução não será aplicada.

O exemplo de código abaixo mostra como alterar a resolução das imagens num documento de saída PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

A resolução é calculada de acordo com o tamanho real da imagem na página.

## Incorporação de Fontes no formato Adobe PDF

Aspose.Words também permite controlar como as fontes são incorporadas nos documentos PDF resultantes. As fontes precisam ser incorporadas em qualquer documento Adobe PDF para garantir que o documento possa ser renderizado corretamente em qualquer máquina (Veja mais detalhes sobre a renderização de fontes na seção [Utilizar TrueType Tipos De Letra](/words/java/using-truetype-fonts/)). Por padrão, Aspose.Words incorpora um subconjunto de fontes usadas no documento no PDF gerado. Neste caso, apenas os glifos (caracteres) utilizados no documento são guardados em PDF.

### Quando usar fontes completas e quando subconjunto

Existe uma maneira de especificar uma opção para Aspose.Words incorporar fontes completas. Mais pormenores, juntamente com algumas vantagens e desvantagens de cada configuração, estão descritos no quadro seguinte.

| Modo Incorporar Fontes | Vantagens | Desvantagens |
| :- | :- | :- |
| `Full` | Útil quando você deseja editar o PDF resultante posteriormente, adicionando ou Modificando o texto. Todas as fontes estão incluídas, portanto, todos os glifos estão presentes. | Como algumas fontes são grandes (vários megabytes), incorporá-las sem subconjuntos pode resultar em grandes arquivos de saída. |
| `Subset` | A subconjunto é útil se você quiser manter o tamanho do arquivo de saída menor. | <p>O Usuário não pode adicionar ou editar totalmente o texto usando a fonte subsetada no documento output PDF. Isso ocorre porque nem todos os glifos da fonte estão presentes.</p><p>Se vários PDFs forem salvos com fontes subconjuntos e montados juntos, o documento PDF combinado pode ter uma fonte contendo muitos subconjuntos desnecessários.</p> |

### Incorporar fontes completas em PDF

A propriedade [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) permite especificar como Aspose.Words incorpora fontes em um documento de saída PDF.

- Para incorporar fontes completas no documento de saída PDF, Defina **EmbedFullFonts** como true
- Para subconjunto de fontes ao salvar em PDF, Defina **EmbedFullFonts** como false

O exemplo a seguir demonstra como incorporar fontes completas no documento de saída PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

O exemplo a seguir demonstra como definir Aspose.Words como subconjunto de fontes na saída PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Pode transferir o ficheiro de modelo para estes exemplos a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Como controlar a incorporação de fontes principais e fontes padrão Windows

Fontes principais e Windows fontes padrão são os conjuntos" padrão " de fontes, que geralmente estão presentes na máquina de destino ou fornecidos pelo leitor de documentos, portanto, não precisam ser incorporados na saída PDF. Ao não incorporar essas fontes, você pode diminuir o tamanho dos documentos renderizados PDF e ainda manter a portabilidade.

Aspose.Words fornece opções para escolher como as fontes são exportadas para PDF. Você pode optar por incorporar fontes principais e padrão na saída PDF ou ignorar a incorporação delas e usar fontes principais padrão PDF ou fontes do sistema na máquina de destino. O uso de qualquer uma dessas opções normalmente resulta em redução significativa do tamanho do arquivo para PDF documentos gerados por Aspose.Words.

- Como essas opções são mutuamente exclusivas, você deve escolher apenas uma de cada vez.
- Ao salvar com conformidade PDF/A-1, todas as fontes usadas devem ser incorporadas ao documento PDF. Ao salvar com essa conformidade, a propriedade [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) deve ser definida como false e a propriedade [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) deve ser definida como [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Incorporando Fontes Principais

A opção de incorporar fontes principais pode ser ativada ou desativada usando a propriedade [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts). Quando está definido como true, as seguintes fontes "True Type" mais populares (fontes de Base 14) não são incorporadas no documento de saída PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Essas fontes são substituídas pelas fontes principais do tipo 1 correspondentes, que são fornecidas por um leitor quando o PDF é aberto.

O exemplo fornecido abaixo mostra como definir Aspose.Words para evitar a incorporação de fontes principais e permitir que o leitor as substitua por fontes PDF Tipo 1:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para este exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Uma vez que os visualizadores PDF fornecem fontes principais em qualquer plataforma suportada, esta opção também é útil quando é necessária uma maior portabilidade de documentos. No entanto, as fontes principais podem ser diferentes das fontes do sistema.

{{% alert color="primary" %}}

Esta definição funciona apenas para texto de codificação ANSI (Windows-1252). Escrever um texto nãoANSI para PDF exigirá sempre que as fontes correspondentes sejam incorporadas.

{{% /alert %}}

### Incorporação De Fontes Do Sistema

Esta opção pode ser activada ou desactivada utilizando a propriedade [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode). Quando esta propriedade é definida como [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), as fontes true type" Arial " e "Times New Roman" não são incorporadas num documento PDF. Nesse caso, o visualizador do cliente depende das fontes instaladas no sistema operacional do cliente. Quando a propriedade **FontEmbeddingMode** estiver definida como [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words não incorpore nenhuma fonte.

O exemplo abaixo mostra como definir Aspose.Words para ignorar a incorporação de Fontes Arial e Times New Roman em um documento PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Este modo é mais útil quando pretende visualizar os seus documentos na mesma plataforma, preservando a aparência exacta das fontes na saída PDF.

{{% alert color="primary" %}}

Esta definição funciona apenas para texto de codificação ANSI (Windows-1252). Escrever um texto nãoANSI para PDF requer que a fonte correspondente seja incorporada.

{{% /alert %}}
