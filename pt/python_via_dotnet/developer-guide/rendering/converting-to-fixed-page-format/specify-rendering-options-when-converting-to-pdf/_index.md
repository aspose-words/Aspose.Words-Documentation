---
title: Opções ao converter para PDF
second_title: Aspose.Words para Python via .NET
articleTitle: Especifique as opções de renderização ao converter para PDF
linktitle: Especifique as opções de renderização ao converter para PDF
description: "Converta um documento em PDF com opções avançadas usando Python. Use PdfSaveOptions para alterar o resultado de salvar um documento no formato PDF."
type: docs
weight: 20
url: /pt/python-net/specify-rendering-options-when-converting-to-pdf/
---

O formato PDF é um formato de página fixa muito popular entre os usuários e amplamente suportado por vários aplicativos, porque um documento PDF tem a mesma aparência em qualquer dispositivo. Por esse motivo, a conversão para PDF é um recurso importante do Aspose.Words.

PDF é um formato complexo. Várias etapas de cálculos são necessárias no processo de conversão de um documento para PDF, incluindo o cálculo do layout. Como esses estágios incluem cálculos complexos, eles consomem muito tempo. Além disso, o formato PDF é bastante complexo por si só. Possui estrutura de arquivos específica, modelo gráfico e incorporação de fontes. Além disso, apresenta algumas funcionalidades de saída complexas, como tags de estrutura de documentos, criptografia, assinaturas digitais e formulários editáveis.

O mecanismo de layout Aspose.Words imita a forma como o mecanismo de layout de página do Microsoft Word funciona. Portanto, Aspose.Words faz com que os documentos de saída em PDF pareçam o mais próximo possível do que você pode ver em Microsoft Word. Às vezes é necessário especificar opções adicionais, o que pode afetar o resultado de salvar um documento no formato PDF. Essas opções podem ser especificadas pelo uso da classe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), contendo as propriedades que determinam como a saída do PDF será exibida.

Alguns exemplos de uso de [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) são fornecidos abaixo.

{{% alert color="primary" %}}

Atualmente, você também pode salvar nos formatos PDF/A-1 e PDF/A-2. Observe que com o formato PDF/A, o tamanho do arquivo de saída é maior do que o tamanho normal de um arquivo PDF.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) e [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) estão marcados como obsoletos.

Para obter mais informações sobre PDF/A, consulte o próximo artigo, "Aprenda recursos de conversão para PDF/A".

{{% /alert %}}

## Criando um documento PDF com formulários preenchíveis

Também é possível exportar formulários preenchíveis de um documento Microsoft Word para um PDF de saída, que possui formulários preenchíveis em vez de texto simples. Use a propriedade [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) para salvar um documento como PDF com formulários preenchíveis.

Observe que, diferentemente do Microsoft Word, o formato PDF possui um número limitado de opções para formulários editáveis, como caixa de texto, caixa de combinação e caixa de seleção. Microsoft Word possui mais tipos de formulários, por exemplo, seletor de data de calendário. Geralmente, não é possível imitar totalmente o comportamento do Microsoft Word em PDF. Portanto, em alguns casos complexos, a saída do PDF pode ser diferente do que você vê no Microsoft Word.

O exemplo de código abaixo mostra como salvar um documento como PDF com formulários preenchíveis com compactação e qualidade JPEG especificadas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Exportando estrutura do documento e propriedades personalizadas

A propriedade [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) permite exportar a estrutura do documento para saída em PDF.

Os recursos de estrutura lógica do PDF fornecem um mecanismo para incorporar informações relacionadas à estrutura do conteúdo do documento em um arquivo PDF. Aspose.Words preserva informações sobre a estrutura de um documento Microsoft Word, como parágrafos, listas, tabelas, notas de rodapé/notas finais, etc.

O exemplo a seguir demonstra como salvar um documento no formato PDF, preservando a estrutura do documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words também permite exportar propriedades personalizadas de documentos para PDF, o que é demonstrado pelo exemplo a seguir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Exportando contornos de marcadores e títulos em PDF de saída

Se quiser exportar marcadores como contornos no PDF de saída, você pode usar a propriedade [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/). Esta propriedade especifica o nível padrão na estrutura do documento, no qual os marcadores Microsoft Word são exibidos. Se o documento contiver marcadores no cabeçalho/rodapé do documento, você poderá definir a propriedade [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) como [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) ou [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) para especificar como eles serão exportados no PDF de saída. Os marcadores nos cabeçalhos/rodapés não são exportados quando o valor do [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) é [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

O exemplo de código abaixo mostra como exportar marcadores do primeiro cabeçalho/rodapé de uma seção:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

O PDF de saída deste exemplo é mostrado abaixo:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Quando [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) é definido como [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) e o documento tem cabeçalhos/rodapés pares e ímpares ou um cabeçalho/rodapé de primeira página diferente, os marcadores são exportados para os primeiros cabeçalhos/rodapés exclusivos em uma seção.

Você também pode exportar títulos no PDF de saída, usando a propriedade [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/). Esta propriedade especifica quantos níveis de títulos estão incluídos na estrutura de tópicos do documento.

O exemplo de código abaixo mostra como exportar títulos com três níveis:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

O PDF de saída deste exemplo é mostrado abaixo:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Um marcador ou navegação de título pode ter aparências diferentes em vários visualizadores de PDF. Além disso, em alguns aplicativos, os marcadores e a navegação por títulos não estão disponíveis na IU.

{{% /alert %}}

## Redução da resolução de imagens para reduzir o tamanho do documento

Aspose.Words oferece a capacidade de reduzir a resolução de imagens para reduzir o tamanho do PDF de saída, usando a propriedade [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/). A redução da resolução é habilitada por padrão na propriedade [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/).

Observe que também é possível definir uma resolução específica na propriedade [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/), ou um limite de resolução na propriedade [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/). No segundo caso, se a resolução da imagem for inferior ao valor limite, a redução da resolução não será aplicada.

O exemplo de código abaixo mostra como alterar a resolução das imagens em um documento PDF de saída:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

A resolução é calculada de acordo com o tamanho real da imagem na página.

## Incorporação de fontes no formato Adobe PDF

Aspose.Words também permite controlar como as fontes são incorporadas nos documentos PDF resultantes. As fontes precisam ser incorporadas em qualquer documento Adobe PDF para garantir que o documento possa ser renderizado corretamente em qualquer máquina (veja mais detalhes sobre renderização de fontes na seção [Usando fontes TrueType](/words/pt/python-net/using-truetype-fonts/)). Por padrão, o Aspose.Words incorpora um subconjunto de fontes usadas no documento no PDF gerado. Neste caso, apenas os glyphs (caracteres) utilizados no documento são salvos em PDF.

### Quando usar fontes completas e quando subconjunto

Existe uma maneira de especificar uma opção para o Aspose.Words incorporar fontes completas. Mais detalhes, juntamente com algumas vantagens e desvantagens de cada configuração estão descritos na tabela abaixo.

| Modo Incorporar Fontes |  Vantagens | Desvantagens |
|  :-  |  :-  |  :-  |
|  `Full`  | Útil quando você deseja editar o PDF resultante posteriormente, adicionando ou modificando o texto. Todas as fontes estão incluídas, portanto, todos os glyphs estão presentes. | Como algumas fontes são grandes (vários megabytes), incorporá-las sem subconjuntos pode resultar em arquivos de saída grandes. |
|  `Subset`  | A criação de subconjuntos é útil se você quiser manter o tamanho do arquivo de saída menor. | <p>O usuário não pode adicionar ou editar totalmente o texto usando a fonte subconjunto no documento PDF de saída. Isso ocorre porque nem todos os glyphs da fonte estão presentes.</p>

<p>Se vários PDFs forem salvos com fontes subconjuntos e reunidos, o documento PDF combinado poderá ter uma fonte contendo muitos subconjuntos desnecessários.</p> |

### Incorporando fontes completas em PDF

A propriedade [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) permite especificar como o Aspose.Words incorpora fontes em um documento PDF de saída.

- Para incorporar fontes completas no documento PDF de saída, defina [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) como *True*
- Para criar subconjuntos de fontes ao salvar em PDF, defina [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) como *False*

O exemplo a seguir demonstra como incorporar fontes completas no documento PDF de saída:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

O exemplo a seguir demonstra como configurar Aspose.Words para subconjunto de fontes no PDF de saída:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para esses exemplos em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Como controlar a incorporação de fontes principais e fontes padrão Windows

Fontes principais e fontes Windows Standard são os conjuntos "padrão" de fontes, que geralmente estão presentes na máquina de destino ou fornecidas pelo leitor de documentos, portanto, não precisam ser incorporados no PDF de saída. Ao não incorporar essas fontes, você pode diminuir o tamanho dos documentos PDF renderizados e ainda manter a portabilidade.

Aspose.Words oferece opções para escolher como as fontes são exportadas para PDF. Você pode optar por incorporar fontes principais e padrão no PDF de saída ou ignorar a incorporação e usar fontes PDF principais padrão ou fontes do sistema na máquina de destino. O uso de qualquer uma dessas opções normalmente resulta em uma redução significativa do tamanho do arquivo para documentos PDF gerados por Aspose.Words.

- Como essas opções são mutuamente exclusivas, você deve escolher apenas uma de cada vez.
- Ao salvar em conformidade com PDF/A-1, todas as fontes usadas devem ser incorporadas ao documento PDF. Ao salvar com esta conformidade, a propriedade [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) deve ser definida como *False* e a propriedade [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) deve ser definida como [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Incorporando fontes principais

A opção de incorporar fontes Core pode ser habilitada ou desabilitada usando a propriedade [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/). Quando definido como true, as seguintes fontes "True Type" mais populares (fontes Base 14) não são incorporadas no documento PDF de saída:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Essas fontes são substituídas pelas fontes principais Tipo 1 correspondentes, que são fornecidas por um leitor quando o PDF é aberto.

O exemplo fornecido abaixo mostra como configurar Aspose.Words para evitar a incorporação de fontes principais e permitir que o leitor as substitua por fontes PDF Tipo 1:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo para este exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Como os visualizadores de PDF fornecem fontes básicas em qualquer plataforma suportada, esta opção também é útil quando é necessária maior portabilidade de documentos. No entanto, as fontes principais podem ser diferentes das fontes do sistema.

{{% alert color="primary" %}}

Esta configuração funciona apenas para texto com codificação ANSI (Windows-1252). Escrever um texto não ANSI em PDF sempre exigirá a incorporação das fontes correspondentes.

{{% /alert %}}

### Incorporando fontes do sistema

Esta opção pode ser habilitada ou desabilitada usando o [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Quando esta propriedade está definida como [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), as fontes do tipo true "Arial" e "Times New Roman" não são incorporadas em um documento PDF. Nesse caso, o visualizador do cliente depende das fontes instaladas no sistema operacional do cliente. Quando a propriedade [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) é definida como [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), o Aspose.Words não incorpora nenhuma fonte.

O exemplo abaixo mostra como configurar o Aspose.Words para ignorar a incorporação de fontes Arial e Times New Roman em um documento PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Este modo é mais útil quando você deseja visualizar seus documentos na mesma plataforma, preservando a aparência exata das fontes no PDF de saída.

{{% alert color="primary" %}}

Esta configuração funciona apenas para texto com codificação ANSI (Windows-1252). Escrever um texto não-ANSI em PDF requer que a fonte correspondente seja incorporada.

{{% /alert %}}
