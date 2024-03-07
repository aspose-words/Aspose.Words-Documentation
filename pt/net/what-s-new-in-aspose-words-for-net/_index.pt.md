---
title: O que há de novo
second_title: Aspose.Words para .NET
articleTitle: O que há de novo em Aspose.Words para .NET
linktitle: O que há de novo em Aspose.Words para .NET
type: docs
description: "Aspose.Words para .NET se expande e aprimora diariamente. Nesta página você poderá conhecer os grandes e mais interessantes recursos do produto."
weight: 10
url: /pt/net/what-s-new-in-aspose-words-for-net/
---

Esta página descreve os novos recursos Aspose.Words mais interessantes introduzidos em versões recentes.

## Aspose.Words para .NET 24.1, 24.2

Aspose.Words 24.1 melhora a experiência de gerenciamento de cores de traços, aprimora objetos OLE e relatórios LINQ, além de introduzir um novo API público de fontes bibliográficas.

Aspose.Words 24.2 expandiu a API de gráficos, gerenciamento de estilo e opções de LINQ. Esta versão do Aspose.Words também introduziu a capacidade de especificar SvgSaveOptions durante a renderização, controlar de forma mais flexível o carregamento de arquivos Markdown e trabalhar com texto de referência para notas de rodapé e notas finais.

### Renderização e Impressão

#### Controle de cor do traço <sup>24.1</sup>

A classe [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) foi estendida com um conjunto de novas propriedades públicas relacionadas ao gerenciamento de cores de traços: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) e [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) e [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Extensão da API de gráficos DrawingML <sup>24.2</sup>

A **DrawingML Charts API** continua a ser expandida.

### Carregando e salvando documentos

#### Especifique SvgSaveOptions durante a renderização <sup>24.2</sup>

A capacidade de especificar [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) durante a renderização foi adicionada usando os métodos [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) e [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/).

#### Preservar linhas vazias ao carregar arquivos Markdown <sup>24.2</sup>

Foi adicionada a capacidade de preservar linhas vazias ao carregar arquivos Markdown.

### Outro

* A capacidade de modificar o texto do controle `TextBox` OLE foi introduzida adicionando uma nova propriedade [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) à nova classe [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* O API público de Fontes Bibliográficas foi implementado através da adição de um novo namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) com suas novas classes e enumerações, e através da adição de uma nova propriedade [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) à classe [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* Foi fornecido um API para limitar o acesso a membros de tipo usando sintaxe de modelo para o LINQ Reporting Engine. <sup>24.1</sup>
* Novas propriedades públicas [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) e [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) para gerenciamento aprimorado de estilo foram adicionadas à classe [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
- A funcionalidade para recuperar o texto real da marca de referência para notas de rodapé e notas finais foi aprimorada com a propriedade [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) e o método [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- A compatibilidade com gráficos do `Word 2016` para o `LINQ Reporting Engine` foi habilitada. <sup>24.2</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 expande as opções de renderização, emulação de renderização de metarquivo e opções de salvamento markdown.

Aspose.Words 23.10 melhora a renderização, expande as opções para carregar e salvar documentos e permite aos usuários mesclar documentos de novas maneiras.

Aspose.Words 23.11 aprimora o trabalho com revisões, formato XLSX e fontes na legenda do gráfico com opções adicionais.

Aspose.Words 23.12 introduz novas propriedades e enumerações para trabalhar com documentos PDF e OOXML, bem como suporte para imagens WebP.

### Renderização e Impressão

#### Personalizando títulos de eixos em gráficos DrawingML <sup>23.9</sup>

A capacidade de personalizar títulos de eixos em gráficos DrawingML foi introduzida pela implementação de uma nova propriedade de classe pública [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) e [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/).

#### Determinando a posição vertical das fontes dentro de um parágrafo <sup>23.9</sup>

Agora é possível definir a posição vertical das fontes dentro de um parágrafo usando a nova propriedade pública [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) e a nova enumeração [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/).

#### Controle de cores de primeiro plano <sup>23.10</sup>

A capacidade de recuperar a cor de primeiro plano sem modificadores foi adicionada às classes [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) e [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) por meio da propriedade **BaseForeColor**.

#### Expandindo a funcionalidade dos gráficos <sup>23.10</sup>

A funcionalidade das classes [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) e [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) foi expandida com novos métodos e propriedades.

#### Ajustar e ajustar automaticamente uma imagem em uma forma <sup>23.10</sup>

Uma maneira simples de ajustar e ajustar automaticamente uma imagem dentro de uma forma específica foi fornecida através do novo método [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formatação de fonte padrão para entradas de legenda do gráfico DrawingML <sup>23.11</sup>

A capacidade de especificar a formatação de fonte padrão para entradas de legenda de gráficos DrawingML foi adicionada por meio da propriedade [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Esse recurso facilita uma aparência mais simplificada e consistente dos elementos do gráfico, melhorando a estética geral do documento.

#### Especifique o layout da página ao abrir PDF no Reader <sup>23.12</sup>

A capacidade de especificar o layout da página a ser usado ao abrir um documento em um leitor de PDF foi adicionada através da introdução de uma nova propriedade [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) à classe [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) e da introdução de uma nova enumeração [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/).

### Carregando e salvando documentos

#### Especificando um nome de pasta para construir URIs de imagem em Markdown <sup>23.9</sup>

A classe [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) foi expandida incluindo a propriedade [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), que permite especificar o nome da pasta usada para construir URIs de imagens escritas no documento Markdown.

#### Reduza o tamanho da saída do PDF <sup>23.10</sup>

Foram implementadas várias otimizações de renderização de PDF para reduzir o tamanho de saída ao utilizar configurações [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### Reconhecer hiperlinks ao carregar documentos TXT <sup>23.10</sup>

O recurso de reconhecimento de hiperlinks ao carregar documentos TXT foi implementado com a adição de uma nova propriedade [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Outro

* A emulação de renderização de metarquivo para determinar o tamanho da rasterização foi implementada, especificamente para largura de caneta WMF e largura de caneta cosmética EMF. Para conseguir isso, a propriedade **ScaleWmfFontsToMetafileSize** foi substituída pela propriedade [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) e a propriedade [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) foi adicionada. <sup>23,9</sup>
* Um método simplificado para inserir um documento em outro documento na posição atual do cursor foi introduzido usando o método [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23h10</sup>
* A capacidade de acessar e modificar propriedades de estilo foi adicionada através da introdução da nova propriedade [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/). <sup>23h10</sup>
* Um parâmetro de tipo genérico foi adicionado aos métodos da classe [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/). <sup>23h10</sup>
* Uma forma de controlar quando uma determinada revisão deve ser aceita/rejeitada ou não foi implementada usando os métodos [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) e [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Esse aprimoramento concede aos usuários um controle mais preciso sobre o processo de revisão. <sup>23.11</sup>
* A capacidade de gravar todas as seções de um documento na mesma planilha XLSX foi fornecida por meio do novo tipo de enumeração [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) e da nova propriedade [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* Uma maneira de controlar como as extensões de formato ZIP64 serão usadas para documentos OOXML foi implementada por meio da nova propriedade Zip64Mode da classe `OoxmlSaveOptions` e da nova enumeração Zip64Mode. <sup>23.12</sup>
* Foi introduzido suporte para imagem WebP. Observe que este recurso está disponível apenas para as versões .NetStandart e .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.9](/words/net/aspose-words-for-net-23-9-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.10 Notas de versão](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.11 Notas de versão](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.12 Notas de versão](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 23,5, 23,6, 23,7, 23,8

Aspose.Words 23.5 aprimora a capacidade de trabalhar com dados de séries de gráficos e a capacidade de trabalhar com documentos ODT, bem como melhorar cabeçalhos/rodapés e sua quebra de texto.

Aspose.Words 23.6 expande as opções de renderização, adiciona um novo formato de exportação, melhora os relatórios LINQ e as ferramentas LowCode.

Aspose.Words 23.7 aprimora os recursos de relatórios, adiciona um novo formato de exportação e introduz alterações no trabalho com tabelas e assinaturas digitais.

Aspose.Words 23.8 expande os recursos de diferentes formatos, melhora a renderização e adiciona novas opções para trabalhar com campos

### Formatos Suportados

* A partir da versão 23.6 é possível salvar um documento no formato XLSX. Agora você pode converter seus documentos para o formato Excel. <sup>23,6</sup>
* A partir da versão 23.7, é possível salvar uma página ou forma de documento no formato EPS. <sup>23,7</sup>

### Novos recursos de formato

* Foi introduzida a funcionalidade para gerar automaticamente o Índice (TOC) para documentos MOBI. <sup>23,8</sup>
* O construtor [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) foi expandido com [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23,8</sup>
* A modelagem de texto vertical para metarquivos EMF foi implementada. <sup>23,8</sup>

### Renderização e Impressão

#### Obtenha e modifique dados de séries de gráficos <sup>23.5</sup>

O recurso para obter e modificar dados de séries de gráficos foi fornecido adicionando:

* novas classes: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* novos tipos de enum: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Suporte para tipografia avançada <sup>23.6</sup>

Foi adicionado suporte para tipografia avançada em renderização WMF, EMF e EMF+.

#### Conteúdo colorido na página <sup>23.6</sup>

Foi adicionada a propriedade pública [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), indicando se a página é colorida ou não.

#### Formatação para rótulos de dados de gráfico <sup>23.6</sup>

A capacidade de definir a formatação de preenchimento, traçado e texto explicativo para rótulos de dados do gráfico foi implementada.

### Mail Merge e relatórios

#### Inserção dinâmica de HTML para LINQ Reporting Engine <sup>23.6</sup>

Foi adicionada uma nova forma de inserção dinâmica de HTML para LINQ Reporting Engine.

#### Suporte a tags Mustache <sup>23.7</sup>

Tags Mustache agora são suportadas nos métodos [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) e [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Atualizações de sintaxe do modelo do mecanismo de relatório LINQ <sup>23.7</sup>

A sintaxe do modelo LINQ Reporting Engine agora oferece suporte aos métodos de extensão `ElementAt` e ElementAtOrDefault.

#### Especificando o tamanho das imagens renderizadas <sup>23.8</sup>

Foi introduzida uma nova propriedade pública [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) para especificar o tamanho das imagens renderizadas em pixels.

#### Preservar espaços em branco para valores de string JSON – LINQ <sup>23.8</sup>

Uma opção foi adicionada ao LINQ Reporting Engine para preservar espaços em branco para valores de string JSON.

### <sup>LowCode23.6</sup>

Foram adicionados novos métodos LowCode destinados a mesclar diferentes tipos de documentos em um único documento de saída.

### Outro

* Foi implementado suporte para quebra automática de texto em cabeçalhos/rodapés. <sup>23,5</sup>
* A capacidade de remover assinaturas digitais de documentos ODT foi adicionada através do método [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23,5</sup>
* Foi adicionada a propriedade pública [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) para obter o texto base e ruby do guia fonético [Run](https://reference.aspose.com/words/net/aspose.words/run/). <sup>23,5</sup>
* A capacidade de recuperar um valor de assinatura digital de um documento assinado digitalmente como uma matriz de bytes foi adicionada com a introdução de uma nova propriedade [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23,7</sup>
* As classes [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) foram estendidas com novos membros públicos – [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) e [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23,7</sup>
* Foi adicionado suporte para campos CITAÇÃO e BIBLIOGRAFIA. <sup>23,8</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.7 Notas de versão](/words/net/aspose-words-for-net-23-7-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.8](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 melhora o desempenho da emulação de operação raster, bem como melhora a exportação de documentos e a qualidade de renderização.

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

A classe [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) foi estendida com um conjunto de novas propriedades públicas relacionadas às cores de fundo e de primeiro plano: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) e [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) e [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Gradientes radiais com o `SkiaSharp` Native Shader <sup>23.3</sup>

A renderização de gradientes radiais com o shader nativo `SkiaSharp` para .NET Standard foi implementada.

#### Distância entre a tabela e o texto circundante <sup>23.4</sup>

A capacidade de definir a distância entre a tabela e o texto ao redor foi adicionada com a introdução de novas propriedades na classe [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) e [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Carregando e salvando documentos

#### Gerar `TOC` para documentos AZW3 <sup>23.1</sup>

A capacidade de gerar `TOC` (índice) para documentos AZW3 foi adicionada através do uso da propriedade [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Exportando itens de lista para Markdown <sup>23.1</sup>

Uma maneira de controlar a exportação de itens de lista para o formato Markdown foi fornecida adicionando a propriedade [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) à classe [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/).

#### Notificações de progresso de salvamento de documentos <sup>23.3</sup>

Foi implementado o salvamento de notificações de progresso para os formatos MOBI e AZW3.

#### Ajuste de frases e espaçamento entre palavras <sup>23.3</sup>

A capacidade de especificar se o espaçamento entre frases e palavras deve ser ajustado automaticamente na importação do documento foi adicionada com a introdução da propriedade [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Outro

* A capacidade de especificar o ajuste de espaçamento de caracteres de um documento foi adicionada através da implementação da propriedade [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* A maneira de instruir o Aspose.Words sobre a inclusão de caixas de texto, notas de rodapé e notas finais nas estatísticas de contagem de palavras foi fornecida adicionando a propriedade [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* Uma nova opção para um estilo de documento, que permite especificar se o estilo é redefinido automaticamente com base no valor apropriado, foi introduzida através da propriedade [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup>
* A capacidade de determinar se [Run](https://reference.aspose.com/words/net/aspose.words/run/) é uma execução de guia fonético foi adicionada usando a propriedade [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* Uma maneira simples de trabalhar com séries e eixos de gráficos combinados foi implementada introduzindo a classe [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) e adicionando a propriedade [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Novas propriedades públicas relacionadas ao posicionamento e dimensionamento relativo da forma foram adicionadas à classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* A precisão e o desempenho do cálculo do brilho da cor para resolução automática de cores do texto foram aprimorados de acordo com as versões mais recentes do Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.1](/words/net/aspose-words-for-net-23-1-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.2](/words/net/aspose-words-for-net-23-2-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.4](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 expande opções para carregar e salvar documentos e melhora a interação com algumas outras opções.

Aspose.Words 22.10 melhora as opções de localização e substituição, aprimora objetos OLE e expande a funcionalidade de lista.

Aspose.Words 22.11 expande sua funcionalidade com novas opções para um trabalho mais conveniente com objetos já familiares: campos, impressão, OLE e tags de documentos estruturados.

Aspose.Words 22.12 aprimora os recursos de renderização e introduz opções para trabalhar com margens ao carregar/salvar um documento.

### Melhorias de desempenho <sup>22.12</sup>

Foi introduzida uma otimização que reduz significativamente a profundidade do aninhamento do estado dos gráficos ao renderizar em PDF para manter a conformidade com as especificações.

### Renderização e Impressão

#### Imprimindo páginas não coloridas em uma impressora colorida <sup>22.11</sup>

Um modo de impressão personalizado em cores/tons de cinza foi implementado adicionando um novo valor **GrayscaleAuto** à enumeração [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/).

Uma nova propriedade de impressão permite que os usuários controlem como as páginas não coloridas serão impressas se o dispositivo suportar impressão colorida. Este recurso pode ser útil se os usuários desejarem imprimir automaticamente páginas não coloridas usando apenas o modo de impressão em escala de cinza.

#### Novas propriedades de renderização de borda <sup>22.12</sup>

Novas propriedades públicas [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) e [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) foram introduzidas.

#### Fórmula de linha de tendência linear para renderização DrawingML <sup>22.12</sup>

A renderização de fórmula de linha de tendência linear para gráficos DrawingML foi implementada.

#### Configurações de fallback de fonte para fontes Google Noto <sup>22.12</sup>

As configurações de fonte substituta predefinidas para fontes Google Noto foram atualizadas.

### Carregando e salvando documentos

#### Cache de formas de cabeçalho ou rodapé para reduzir o tamanho do PDF <sup>22.9</sup>

A capacidade de armazenar em cache formas de cabeçalho/rodapé para reduzir o tamanho do arquivo PDF de saída foi implementada adicionando uma nova propriedade **CacheHeaderFooterShapes**.

#### Detecção automática de numeração ao carregar um documento <sup>22.9</sup>

A capacidade de especificar a propriedade [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) no carregamento do texto foi implementada por meio de uma extensão da classe [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/).

#### Especificando um Tipo de Margem Específico <sup>22.12</sup>

A capacidade de especificar um tipo [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) específico para uma determinada seção foi implementada.

### Pesquise e compare <sup>22.10</sup>

A capacidade de ignorar [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) nas opções de localização e substituição foi implementada adicionando uma nova propriedade [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) à classe [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Outro

* Um novo recurso para obter FieldEQ como OfficeMath foi adicionado. <sup>22,9</sup>
* Foi permitida a criação de tags de documentos estruturados do tipo Group no nível da Linha. <sup>22,9</sup>
* Objetos e controles OLE agora são tratados como imagens de metarquivo ao converter um documento em HTML. <sup>22h10</sup>
* Um novo recurso para verificar se uma lista específica foi criada a partir do mesmo modelo da lista comparada foi adicionado através da introdução de um novo método [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) na classe [List](https://reference.aspose.com/words/net/aspose.words.lists/list/). <sup>22h10</sup>
* Foi adicionada a capacidade de criar novas tags de documentos estruturados do tipo [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/). <sup>22.11</sup>
* Foi fornecida a capacidade de acompanhar o progresso da atualização do campo. <sup>22.11</sup>
* Foi introduzida uma nova propriedade **EmbedAttachments** que permite aos usuários incorporar anexos OLE de um documento de origem no documento PDF de saída. <sup>22.11</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 22.9](/words/net/aspose-words-for-net-22-9-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 22.10 Notas de versão](/words/net/aspose-words-for-net-22-10-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 22.11 Notas de versão](/words/net/aspose-words-for-net-22-11-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 22.12 Notas de versão](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 22,5, 22,6, 22,7, 22,8

Aspose.Words 22.5 introduz suporte para novos formatos de carregamento e um novo tamanho de página de impressão, além de melhorar algumas opções de renderização.

Aspose.Words 22.6 amplia as possibilidades de conversão de PDF para outros formatos, além de melhorar o trabalho com DrawingML e efeito de preenchimento de texto sólido.

Aspose.Words 22.7 aprimora as possibilidades de trabalhar com recursos de renderização e também adiciona novos recursos para trabalhar com importação e exportação de HTML para PDF.

Aspose.Words 22.8 introduz um novo formato de exportação e melhora vários algoritmos de renderização.

O API foi aprimorado para um desenvolvimento mais flexível e conveniente.

### Formatos Suportados

* O suporte para carregamento de documentos EPUB e XML foi introduzido adicionando novos valores à enumeração [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/). A partir da versão 22.5, é possível carregar documentos EPUB e XML no modelo de documento Aspose.Words e convertê-los para qualquer [formatos suportados](https://reference.aspose.com/words/net/aspose.words/saveformat/). <sup>22,5</sup>
* A partir da versão 22.8, é possível salvar um documento no formato AZW3 – formato de arquivo de e-book proprietário do Kindle Amazon (KF8 é outro nome para o formato). Agora você pode não apenas carregar documentos AZW3, mas também exportar seus arquivos para o formato AZW3, que é essencialmente um EPUB compilado. <sup>22,8</sup>

### Renderização e Impressão

#### Novo tamanho de impressão <sup>22,5</sup>

O suporte para o tamanho de página de impressão "Envelope nº 10" foi adicionado com a introdução de um novo valor na enumeração [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).

#### Renderizando fórmulas MathML <sup>22.5</sup>

A renderização de uma caixa de borda em torno das fórmulas MathML e a detecção de fontes ao renderizar caracteres para tais fórmulas foram melhoradas.

#### Melhorias no gráfico DML <sup>22.6</sup>

Gráficos DrawingML API público foram estendidos para suportar preenchimentos de gradiente, textura e padrão.

#### Glyph descreve análise para OpenType <sup>22.7</sup>

A análise de contornos glyph do próprio Aspose.Words para fontes OpenType (CFF) foi implementada.

Anteriormente, a análise glyph para fontes OpenType (CFF) era realizada via GDI+. Portanto, agora funciona nos casos em que GDI + não está disponível – plataformas Java, .NET Standard, Linux OS, etc. A análise de contornos Glyph é necessária em casos específicos como WordArt, efeitos de texto, alguns recursos do Office Math e outros.

#### Definir formatação de sombra de forma <sup>22.7</sup>

A capacidade de definir a formatação de sombra do objeto de forma foi fornecida pela adição de uma nova propriedade [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/).

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

Um novo modo de importação HTML para elementos em nível de bloco foi introduzido adicionando um novo valor à enumeração [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/).

#### Converter para PDF/UA-1 CSompliant com WCAG 2.0 <sup>22.7</sup>

Foi adicionado suporte para conversão de um documento para o formato PDF/UA-1, compatível com WCAG 2.0.

Portanto, se o cliente tiver um documento Word acessível e o converter para PDF/UA-1 via Aspose.Words mencionando os detalhes da conversão, a saída será compatível com WCAG 2.0.

WCAG ou Diretrizes de Acessibilidade para Conteúdo da Web é um conjunto de diretrizes desenvolvido pelo W3C em colaboração com indivíduos e organizações em todo o mundo. Agora, com Aspose.Words você pode converter seu documento para o formato PDF/UA-1 de saída, que é adequado para criar documentos PDF compatíveis com WCAG 2.0.

Vale a pena notar que WCAG 2.0 tem dois requisitos adicionais que não são especificados na especificação PDF/UA-1:

* requisitos de contraste

* requisitos para marcação de conteúdo multimídia

Mas ambos os requisitos não são relevantes para o nosso caso de conversão de Word para PDF.

### Outro

* Foi implementada a exceção de herdar o efeito de preenchimento de texto sólido que imita o comportamento do MS Word. <sup>22.6</sup>
* Foi adicionado suporte para campos `DATABASE`. Utilizando este tipo de campo você pode, por exemplo, mostrar os resultados de uma consulta ao banco de dados em uma tabela Microsoft Word. <sup>22,7</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 22.5](/words/net/aspose-words-for-net-22-5-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 22.6](/words/net/aspose-words-for-net-22-6-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 22.7](/words/net/aspose-words-for-net-22-7-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 22.8](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Veja também

{{% alert color="primary" %}}

Esta página contém as últimas notícias de lançamento dos últimos 2 anos. Para obter detalhes sobre versões anteriores, consulte as páginas [Notas de lançamento'](/words/net/release-notes/) nas seções relevantes.

{{% /alert %}}