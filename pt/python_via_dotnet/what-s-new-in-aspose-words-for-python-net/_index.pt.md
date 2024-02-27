---
title: O que há de novo
second_title: Aspose.Words para Python via .NET
articleTitle: O que há de novo em Aspose.Words para Python via .NET
linktitle: O que há de novo em Aspose.Words para Python via .NET
type: docs
description: "Aspose.Words para Python via .NET se expande e aprimora diariamente. Nesta página você poderá conhecer os grandes e mais interessantes recursos do produto."
weight: 10
url: /pt/python-net/what-s-new-in-aspose-words-for-python-net/
---

Esta página descreve os novos recursos Aspose.Words mais interessantes introduzidos em versões recentes.

## Aspose.Words para Python via .NET 24.1, 24.2

Aspose.Words 24.1 melhora a experiência de gerenciamento de cores de traços, aprimora objetos OLE e também introduz um novo API público de fontes bibliográficas.

Aspose.Words 24.2 expandiu a API de gráficos e gerenciamento de estilo. Esta versão do Aspose.Words também introduziu a capacidade de especificar SvgSaveOptions durante a renderização, controlar de forma mais flexível o carregamento de arquivos Markdown e trabalhar com texto de referência para notas de rodapé e notas finais.

### Renderização e Impressão

#### Controle de cor do traço <sup>24.1</sup>

A classe [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) foi estendida com um conjunto de novas propriedades públicas relacionadas ao gerenciamento de cores de traços: **ForeThemeColor** e **BackThemeColor**, **ForeTintAndShade** e **BackTintAndShade**.

#### Extensão da API de gráficos DrawingML <sup>24.2</sup>

A **DrawingML Charts API** continua a ser expandida.

### Carregando e salvando documentos

#### Especifique SvgSaveOptions durante a renderização <sup>24.2</sup>

A capacidade de especificar [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) durante a renderização foi adicionada usando os métodos [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) e [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions).

#### Preservar linhas vazias ao carregar arquivos Markdown <sup>24.2</sup>

Foi adicionada a capacidade de preservar linhas vazias ao carregar arquivos Markdown.

### Outro

* A capacidade de modificar o texto do controle `TextBox` OLE foi introduzida adicionando uma nova propriedade **Text** à nova classe **TextBoxControl**. <sup>24.1</sup>
* O API público de Fontes Bibliográficas foi implementado através da adição de um novo namespace **Aspose.Words.Bibliography** com suas novas classes e enumerações, e através da adição de uma nova propriedade **Bibliography** à classe **Document**. <sup>24.1</sup>
* Novas propriedades públicas [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) e [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) para gerenciamento aprimorado de estilo foram adicionadas à classe [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). <sup>24.2</sup>
* A funcionalidade para recuperar o texto real da marca de referência para notas de rodapé e notas finais foi aprimorada com a propriedade [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) e o método [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 24.2](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 expande as opções de renderização, emulação de renderização de metarquivo e opções de salvamento markdown.

Aspose.Words 23.10 melhora a renderização, expande as opções para carregar e salvar documentos e permite aos usuários mesclar documentos de novas maneiras.

Aspose.Words 23.11 aprimora o trabalho com revisões, formato XLSX e fontes na legenda do gráfico com opções adicionais.

Aspose.Words 23.12 introduz novas propriedades e enumerações para trabalhar com documentos PDF e OOXML, bem como suporte para imagens WebP.

### Renderização e Impressão

#### Personalizando títulos de eixos em gráficos DrawingML <sup>23.9</sup>

A capacidade de personalizar títulos de eixos em gráficos DrawingML foi introduzida pela implementação de uma nova propriedade de classe pública [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) e [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/).

####  Determinando a posição vertical das fontes dentro de um parágrafo <sup>23.9</sup>

Agora é possível definir a posição vertical das fontes dentro de um parágrafo usando a nova propriedade pública [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) e a nova enumeração [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/).

#### Controle de cores de primeiro plano <sup>23.10</sup>

A capacidade de recuperar a cor de primeiro plano sem modificadores foi adicionada às classes [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) e [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) por meio da propriedade **BaseForeColor**.

#### Expandindo a funcionalidade dos gráficos <sup>23.10</sup>

A funcionalidade das classes [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) e [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) foi expandida com novos métodos e propriedades.

#### Ajustar e ajustar automaticamente uma imagem em uma forma <sup>23.10</sup>

Uma maneira simples de ajustar e ajustar automaticamente uma imagem dentro de uma forma específica foi fornecida através do novo método [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default).

#### Formatação de fonte padrão para entradas de legenda do gráfico DrawingML <sup>23.11</sup>

A capacidade de especificar a formatação de fonte padrão para entradas de legenda de gráficos DrawingML foi adicionada por meio da propriedade [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Esse recurso facilita uma aparência mais simplificada e consistente dos elementos do gráfico, melhorando a estética geral do documento.

#### Especifique o layout da página ao abrir PDF no Reader <sup>23.12</sup>

A capacidade de especificar o layout da página a ser usado ao abrir um documento em um leitor de PDF foi adicionada através da introdução de uma nova propriedade [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) na classe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) e da introdução de uma nova enumeração [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/).

### Carregando e salvando documentos

#### Especificando um nome de pasta para construir URIs de imagem em Markdown <sup>23.9</sup>

A classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) foi expandida incluindo a propriedade [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), que permite especificar o nome da pasta usada para construir URIs de imagens escritas no documento Markdown.

#### Reduza o tamanho da saída do PDF <sup>23.10</sup>

Foram implementadas várias otimizações de renderização de PDF para reduzir o tamanho de saída ao utilizar configurações [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/).

#### Reconhecer hiperlinks ao carregar documentos TXT <sup>23.10</sup>

O recurso de reconhecimento de hiperlinks ao carregar documentos TXT foi implementado com a adição de uma nova propriedade [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/).

### Outro

- Foi implementada emulação de renderização de metarquivo para determinar o tamanho da rasterização, especificamente para largura de caneta WMF e largura de caneta cosmética EMF. Para conseguir isso, a propriedade **ScaleWmfFontsToMetafileSize** foi substituída pela propriedade [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) e a propriedade [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) foi adicionada. <sup>23,9</sup>
- Um método simplificado para inserir um documento em outro documento na posição atual do cursor foi introduzido usando o método [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23h10</sup>
- A capacidade de acessar e modificar propriedades de estilo foi adicionada através da introdução da nova propriedade [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/). <sup>23h10</sup>
- Foi adicionado um parâmetro de tipo genérico aos métodos da classe [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). <sup>23h10</sup>
- A capacidade de escrever todas as seções de um documento na mesma planilha XLSX foi fornecida através do novo tipo de enumeração [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) e da nova propriedade [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/). <sup>23.11</sup>
* Uma maneira de controlar como as extensões de formato ZIP64 serão usadas para documentos OOXML foi implementada por meio da nova propriedade Zip64Mode da classe `OoxmlSaveOptions` e da nova enumeração Zip64Mode. <sup>23.12</sup>
* Foi introduzido suporte para imagem WebP. Observe que este recurso está disponível apenas para as versões .NetStandart e .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 23.9](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Saiba mais sobre [Aspose.Words para Python via .NET 23.10 Notas de versão](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Saiba mais sobre [Aspose.Words para Python via .NET 23.11 Notas de versão](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.12 Notas de versão](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 23,5, 23,6, 23,7, 23,8

Aspose.Words 23.5 aprimora a capacidade de trabalhar com dados de séries de gráficos e a capacidade de trabalhar com documentos ODT, bem como melhorar cabeçalhos/rodapés e sua quebra de texto.

Aspose.Words 23.6 expande as opções de renderização, adiciona um novo formato de exportação, melhora os relatórios LINQ e as ferramentas LowCode.

Aspose.Words 23.7 aprimora os recursos de relatórios, adiciona um novo formato de exportação e introduz alterações no trabalho com tabelas e assinaturas digitais.

Aspose.Words 23.8 expande os recursos de diferentes formatos, melhora a renderização e adiciona novas opções para trabalhar com campos

### Formatos Suportados

* A partir da versão 23.6 é possível salvar um documento no formato XLSX. Agora você pode converter seus documentos para o formato Excel. <sup>23,6</sup>

* A partir da versão 23.7, é possível salvar uma página ou forma de documento no formato EPS. <sup>23,7</sup>

### Novos recursos de formato

- Foi introduzida a funcionalidade para gerar automaticamente o Índice (TOC) para documentos MOBI. <sup>23,8</sup>
- O construtor [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) foi expandido com [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23,8</sup>
- Foi implementada a modelagem de texto vertical para metarquivos EMF. <sup>23,8</sup>

### Renderização

#### Obtenha e modifique dados de séries de gráficos <sup>23.5</sup>

O recurso para obter e modificar dados de séries de gráficos foi fornecido adicionando:

- novas classes: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- novos tipos de enum: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Suporte para tipografia avançada <sup>23.6</sup>

Foi adicionado suporte para tipografia avançada em renderização WMF, EMF e EMF+.

#### Conteúdo colorido na página <sup>23.6</sup>

Foi adicionada a propriedade pública [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), indicando se a página é colorida ou não.

#### Formatação para rótulos de dados de gráfico <sup>23.6</sup>

A capacidade de definir a formatação de preenchimento, traçado e texto explicativo para rótulos de dados do gráfico foi implementada.

### Mail Merge e relatórios

#### Inserção dinâmica de HTML para LINQ Reporting Engine <sup>23.6</sup>

Foi adicionada uma nova forma de inserção dinâmica de HTML para LINQ Reporting Engine.

#### Suporte a tags Mustache <sup>23.7</sup>

Tags Mustache agora são suportadas nos métodos [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) e [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Especificando o tamanho das imagens renderizadas <sup>23.8</sup>

Foi introduzida uma nova propriedade pública [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) para especificar o tamanho das imagens renderizadas em pixels.

#### Preservar espaços em branco para valores de string JSON – LINQ <sup>23.8</sup>

Uma opção foi adicionada ao LINQ Reporting Engine para preservar espaços em branco para valores de string JSON.

### <sup>LowCode23.6</sup>

Foram adicionados novos métodos LowCode destinados a mesclar diferentes tipos de documentos em um único documento de saída.

### Outro

- Foi implementado suporte para quebra automática de texto em cabeçalhos/rodapés. <sup>23,5</sup>
- A capacidade de remover assinaturas digitais de documentos ODT foi adicionada através do método [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23,5</sup>
- Foi adicionada a propriedade pública [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) para obter o texto base e ruby do guia fonético [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). <sup>23,5</sup>
- A capacidade de recuperar um valor de assinatura digital de um documento assinado digitalmente como uma matriz de bytes foi adicionada com a introdução de uma nova propriedade [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23,7</sup>
- As classes [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) foram ampliadas com novos membros públicos – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) e [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23,7</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 23.5](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 23.6](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Saiba mais sobre [Aspose.Words para Python via .NET 23.7 Notas de versão](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 23.8](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 melhora o desempenho da emulação de operação raster, bem como melhora a exportação e qualidade de renderização de documentos.

Aspose.Words 23.2 introduz o salvamento de documentos no formato MOBI, melhora a renderização do gráfico e faz alterações notáveis nos detalhes da aparência do documento.

Aspose.Words 23.3 aprimora a importação e salvamento de documentos com novas propriedades, e também melhora a qualidade do trabalho com cores de fundo e primeiro plano e gradiente radial.

Aspose.Words 23.4 melhora o cálculo de alguns parâmetros e o posicionamento da tabela e do texto circundante.

### Melhorias de desempenho

#### Emulação de operações raster <sup>23.1</sup>

O desempenho e a qualidade da emulação de operações raster com metarquivos foram significativamente melhorados.

### Formatos Suportados

#### Exportar para MOBI <sup>23.2</sup>

A partir da versão 23.2, é possível salvar um documento no formato MOBI (também chamado de PRC, AZW – formato de arquivo de e-book próprio do Kindle Amazon). Agora você pode não apenas carregar documentos MOBI, mas também exportar seus arquivos para o formato MOBI.

### Renderização

#### Trabalhar com cores de tema de sombreamento <sup>23.1</sup>

A capacidade de trabalhar com cores de tema de sombreamento foi implementada.

#### Suporte do coeficiente R-quadrado em gráficos DML <sup>23.1</sup>

Suporte ao coeficiente R-quadrado em rótulos de linha de tendência do gráfico DML quando a renderização foi adicionada.

#### Melhorias na renderização de gráficos <sup>23.2</sup>

Desde a versão 23.2, a renderização do gráfico foi significativamente melhorada.

#### Controle de cores de fundo e primeiro plano <sup>23.3</sup>

A classe [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) foi estendida com um conjunto de novas propriedades públicas relacionadas às cores de fundo e de primeiro plano: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) e [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) e [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Gradientes radiais com o `SkiaSharp` Native Shader <sup>23.3</sup>

A renderização de gradientes radiais com o shader nativo `SkiaSharp` para .NET Standard foi implementada.

#### Distância entre a tabela e o texto circundante <sup>23.4</sup>

A capacidade de definir a distância entre a tabela e o texto ao redor foi adicionada com a introdução de novas propriedades na classe [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) e [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Carregando e salvando documentos

#### Gerar `TOC` para documentos AZW3 <sup>23.1</sup>

A capacidade de gerar `TOC` (índice) para documentos AZW3 foi adicionada através do uso da propriedade [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/).

#### Exportando itens de lista para Markdown <sup>23.1</sup>

Uma maneira de controlar a exportação de itens de lista para o formato Markdown foi fornecida adicionando a propriedade [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) à classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Notificações de progresso de salvamento de documentos <sup>23.3</sup>

Foi implementado o salvamento de notificações de progresso para os formatos MOBI e AZW3.

#### Ajuste de frases e espaçamento entre palavras <sup>23.3</sup>

A capacidade de especificar se o espaçamento entre frases e palavras deve ser ajustado automaticamente na importação do documento foi adicionada com a introdução da propriedade [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Outro

- A capacidade de especificar o ajuste de espaçamento de caracteres de um documento foi adicionada através da implementação da propriedade [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2</sup>
- A maneira de instruir o Aspose.Words sobre a inclusão de caixas de texto, notas de rodapé e notas finais nas estatísticas de contagem de palavras foi fornecida adicionando a propriedade [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- Uma nova opção para um estilo de documento, que permite especificar se o estilo é redefinido automaticamente com base no valor apropriado, foi introduzida através da propriedade [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup>
- A capacidade de determinar se [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) é uma execução de guia fonético foi adicionada usando a propriedade [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- Uma maneira simples de trabalhar com séries e eixos de gráficos combinados foi implementada introduzindo a classe [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) e adicionando a propriedade [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- Novas propriedades públicas ligadas ao posicionamento relativo e dimensionamento da forma foram adicionadas à classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup>
- A precisão e o desempenho do cálculo do brilho da cor para resolução automática de cores do texto foram aprimorados de acordo com as versões mais recentes do Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 23.1](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 23.2](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 23.3](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 23.4](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 expande opções para carregar e salvar documentos e melhora a interação com algumas outras opções.

Aspose.Words 22.10 melhora as opções de localização e substituição, aprimora objetos OLE e expande a funcionalidade de lista.

Aspose.Words 22.11 expande sua funcionalidade com novas opções para um trabalho mais conveniente com objetos já familiares: OLE e tags de documentos estruturados.

Aspose.Words 22.12 aprimora os recursos de renderização e introduz opções para trabalhar com margens ao carregar/salvar um documento.

### Melhorias de desempenho <sup>22.12</sup>

Foi introduzida uma otimização que reduz significativamente a profundidade do aninhamento do estado dos gráficos ao renderizar em PDF para manter a conformidade com as especificações.

### Renderização e Impressão

#### Novas propriedades de renderização de borda <sup>22.12</sup>

Novas propriedades públicas [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) e [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/) foram introduzidas.

#### Fórmula de linha de tendência linear para renderização DrawingML <sup>22.12</sup>

A renderização de fórmula de linha de tendência linear para gráficos DrawingML foi implementada.

#### Configurações de fallback de fonte para fontes Google Noto <sup>22.12</sup>

As configurações de fonte substituta predefinidas para fontes Google Noto foram atualizadas.

### Carregando e salvando documentos

#### Cache de formas de cabeçalho ou rodapé para reduzir o tamanho do PDF <sup>22,9</sup>

A capacidade de armazenar em cache formas de cabeçalho/rodapé para reduzir o tamanho do arquivo PDF de saída foi implementada adicionando uma nova propriedade **CacheHeaderFooterShapes**.

#### Detecção automática de numeração ao carregar um documento <sup>22.9</sup>

A capacidade de especificar a propriedade [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) no carregamento do texto foi implementada por meio de uma extensão da classe [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/).

#### Especificando um Tipo de Margem Específico <sup>22.12</sup>

A capacidade de especificar um tipo **Margin** específico para uma determinada seção foi implementada.

### Pesquise e compare <sup>22.10</sup>

A capacidade de ignorar [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) nas opções de localização e substituição foi implementada adicionando uma nova propriedade [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) à classe [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Outro

- Foi adicionado um novo recurso para obter FieldEQ como OfficeMath. <sup>22,9</sup>
- Foi permitida a criação de tags de documentos estruturados do tipo Group no nível da Linha. <sup>22,9</sup>
- Objetos e controles OLE agora são tratados como imagens de metarquivo ao converter um documento em HTML. <sup>22h10</sup>
- Um novo recurso para verificar se uma lista específica foi criada a partir do mesmo modelo da lista comparada foi adicionado, introduzindo um novo método **HasSameTemplate** na classe [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/). <sup>22h10</sup>
- Foi adicionada a capacidade de criar novas tags de documentos estruturados do tipo [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/). <sup>22.11</sup>
- Foi introduzida uma nova propriedade **EmbedAttachments** que permite aos usuários incorporar anexos OLE de um documento de origem no documento PDF de saída. <sup>22.11</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 22.9](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

Saiba mais sobre [Aspose.Words para Python via .NET 22.10 Notas de versão](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

Saiba mais sobre [Aspose.Words para Python via .NET 22.11 Notas de versão](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

Saiba mais sobre [Aspose.Words para Python via .NET 22.12 Notas de versão](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 22,5, 22,6, 22,7, 22,8

Aspose.Words 22.5 apresenta suporte para novos formatos de carregamento e um novo tamanho de página de impressão, além de melhorar algumas opções de renderização.

Aspose.Words 22.6 amplia as possibilidades de conversão de PDF para outros formatos, além de melhorar o trabalho com DrawingML e efeito de preenchimento de texto sólido.

Aspose.Words 22.7 aprimora as possibilidades de trabalhar com recursos de renderização e também adiciona novos recursos para trabalhar com importação e exportação de HTML para PDF.

Aspose.Words 22.8 introduz um novo formato de exportação e melhora vários algoritmos de renderização.

O API foi aprimorado para um desenvolvimento mais flexível e conveniente.

### Formatos Suportados

* O suporte para carregamento de documentos EPUB e XML foi introduzido adicionando novos valores à enumeração **LoadFormat**. A partir da versão 22.5, é possível carregar documentos EPUB e XML no modelo de documento Aspose.Words e convertê-los para qualquer [Formatos de documentos suportados](/words/pt/python-net/supported-document-formats/). <sup>22,5</sup>
* A partir da versão 22.8, é possível salvar um documento no formato AZW3 – formato de arquivo de e-book proprietário do Kindle Amazon (KF8 é outro nome para o formato). Agora você pode não apenas carregar documentos AZW3, mas também exportar seus arquivos para o formato AZW3, que é essencialmente um EPUB compilado. <sup>22,8</sup>

### Renderização e Impressão

#### Novo tamanho de impressão <sup>22,5</sup>

O suporte para o tamanho de página de impressão "Envelope nº 10" foi adicionado com a introdução de um novo valor na enumeração [PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/).

#### Renderizando fórmulas MathML <sup>22.5</sup>

A renderização de uma caixa de borda em torno de fórmulas MathML e a detecção de fonte ao renderizar caracteres para tais fórmulas foram melhoradas.

#### Melhorias no gráfico DML <sup>22.6</sup>

Gráficos DrawingML API público foram estendidos para suportar preenchimentos de gradiente, textura e padrão.

#### Glyph descreve análise para OpenType <sup>22.7</sup>

A análise de contornos glyph do próprio Aspose.Words para fontes OpenType (CFF) foi implementada.

Anteriormente, a análise glyph para fontes OpenType (CFF) era realizada via GDI+. Portanto, agora funciona nos casos em que GDI + não está disponível – plataformas Java, .NET Standard, Linux, macOS, etc. A análise de contornos Glyph é necessária em casos específicos como WordArt, efeitos de texto, alguns recursos do Office Math e outros.

#### Definir formatação de sombra de forma <sup>22.7</sup>

A capacidade de definir a formatação de sombra do objeto de forma foi fornecida pela adição de uma nova propriedade [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/).

#### Suporte para espaçamento de células nas Tabelas <sup>22.8</sup>

O mecanismo de layout foi significativamente melhorado: um mecanismo muito complexo de espaçamento de células em tabelas foi implementado.

#### Substituição de fonte para símbolos <sup>22.8</sup>

A substituição de fontes para símbolos foi melhorada.

#### Algoritmo de rotação do rótulo do eixo do gráfico <sup>22.8</sup>

O algoritmo de rotação dos rótulos dos eixos do gráfico foi aprimorado.

### Carregando e salvando documentos

#### Carregar e converter PDF em formato de página fixa sem modelo de layout <sup>22.6</sup>

Foi implementada a capacidade de carregar e converter documentos PDF em formatos de página fixos com alta fidelidade e desempenho.

#### Novo modo de importação de HTML <sup>22.7</sup>

Um novo modo de importação HTML para elementos em nível de bloco foi introduzido adicionando um novo valor à enumeração [HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/).

#### Converter para PDF/UA-1 compatível com WCAG 2.0 <sup>22.7</sup>

Foi adicionado suporte para conversão de um documento para o formato PDF/UA-1, compatível com WCAG 2.0.

Portanto, se o cliente tiver um documento Word acessível e o converter para PDF/UA-1 via Aspose.Words mencionando os detalhes da conversão, a saída será compatível com WCAG 2.0.

WCAG ou Diretrizes de Acessibilidade para Conteúdo da Web é um conjunto de diretrizes desenvolvido pelo W3C em colaboração com indivíduos e organizações em todo o mundo. Agora, com Aspose.Words você pode converter seu documento para o formato PDF/UA-1 de saída, que é adequado para criar documentos PDF compatíveis com WCAG 2.0.

Vale a pena notar que WCAG 2.0 tem dois requisitos adicionais que não são especificados na especificação PDF/UA-1:

- requisitos de contraste
- requisitos para marcação de conteúdo multimídia

Mas ambos os requisitos não são relevantes para o nosso caso de conversão de Word para PDF.

### Outro

Foi implementada a exceção de herdar o efeito de preenchimento de texto sólido que imita o comportamento do MS Word. <sup>22.6</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 22.5](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 22.6](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 22.7](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 22.8](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Python via .NET 22.3, 22.4

Aspose.Words 22.3 amplia as possibilidades de trabalhar com formatos PDF e TXT e melhora o trabalho de alguns algoritmos e mecanismos existentes.

Aspose.Words 22.4 aprimora os recursos de PDF – agora você pode salvar um arquivo no formato PDF/A-4 e obter uma série de outras melhorias na saída de PDF. Ao mesmo tempo, Aspose.Words 22.4 oferece recursos adicionais para trabalhar com gráficos DML, ler metadados do Photoshop e importar elementos HTML em nível de bloco.

O API foi aprimorado para um desenvolvimento mais flexível e conveniente.

### Recursos suportados

A partir do Aspose.Words 22.4, foi adicionado suporte para Python 3.10.

### Melhorias de desempenho

Foi implementado o carregamento de um cache de pesquisa de fontes salvo anteriormente para acelerar o processo de inicialização do cache de fontes na renderização. Agora suas soluções funcionarão ainda mais rápido.

### Formatos Suportados

Foi adicionado o carregamento de um documento no formato AZW3 (KF8 é outro nome para o formato). Agora você pode carregar um documento AZW3 e convertê-lo para qualquer outro formato compatível.

### Renderização

#### Renderizando fórmulas MathML

A renderização de operadores em fórmulas MathML foi melhorada.

#### Melhorias no gráfico DML

As seguintes melhorias foram feitas nos gráficos DML:

* O algoritmo de escala do eixo do gráfico DML foi aprimorado para ser igual ao do MS Word

* A capacidade de manipular entradas de legenda do gráfico DrawingML foi fornecida para tornar nosso gráfico API cada vez mais abrangente
* Foi implementada a capacidade de especificar o nome de um arquivo xls/xlsx ao qual o gráfico DrawingML está vinculado

#### Renderização para PDF com conformidade com PDF/A-4

A renderização em PDF com conformidade com PDF/A-4 foi adicionada adicionando novos valores à enumeração [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) – [PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4). Esta opção assume níveis de conformidade revisados: a conformidade regular do PDF/A-4 é equivalente ao nível de conformidade U das versões anteriores, e a conformidade do nível A é removida.

#### Leitura da resolução de metadados do Photoshop em JPEG

A leitura da resolução de metadados do Photoshop em imagens JPEG foi implementada para corrigir um problema interessante com o dimensionamento incorreto das imagens na renderização.

#### Permitir que o texto latino seja agrupado no meio de uma palavra

O suporte para o recurso "Permitir que o texto latino seja agrupado no meio de uma palavra" foi implementado para tornar nosso suporte ao latim ainda melhor na renderização.

### Carregando e salvando documentos

#### Controlando o comportamento do estilo ao carregar um documento

Uma nova opção [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/) foi introduzida para controlar o comportamento de estilos conflitantes na importação de documentos.

#### Converter formas em SVG ao exportar

A capacidade de converter formas em imagens SVG ao exportar para HTML, MHTML ou EPUB foi fornecida pela adição da propriedade [export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/).

#### Salvando em PDF 2.0 e melhorias na saída de PDF

A capacidade de salvar um documento como PDF 2.0 adicionando um novo valor à enumeração [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/), bem como diversas outras melhorias solicitadas na saída de PDF, foram introduzidas.

#### Novo modo de importação de HTML

Um novo modo de importação para elementos HTML em nível de bloco foi implementado para imitar o comportamento do Microsoft Word.

### Outro

* Foi introduzida a capacidade de obter OOXML de um controle de conteúdo e salvá-lo em string.
* Foi adicionado o reconhecimento de notas de rodapé não padrão em documentos PDF importados.
* Foi adicionada a capacidade de obter dados de campo personalizados associados ao campo.
* O algoritmo de comparação de tabelas baseado na análise profunda do mecanismo de comparação Microsoft Word foi aprimorado.
* A sintaxe de comentários no mecanismo LINQ Reporting foi fornecida.

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 22.3](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para Python via .NET 22.4](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/).

{{% /alert %}}

## Veja também

{{% alert color="primary" %}}

Esta página contém as últimas notícias de lançamento dos últimos 2 anos. Para obter detalhes sobre versões anteriores, consulte as páginas [Notas de lançamento'](/words/python-net/release-notes/) nas seções relevantes.

{{% /alert %}}