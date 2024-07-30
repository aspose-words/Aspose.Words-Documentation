---
title: O que há de novo
second_title: Aspose.Words para Java
articleTitle: O que há de novo Aspose.Words para Java
linktitle: O que há de novo Aspose.Words para Java
type: docs
description: "Aspose.Words para Java expande e aumenta diariamente. Nesta página, você pode aprender sobre as características enormes e mais interessantes do produto."
weight: 2
url: /pt/java/what-s-new-in-aspose-words-for-java/
---

Esta página descreve o novo mais interessante Aspose.Words recursos introduzidos em versões recentes.

## Aspose.Words para Java 24.5, 24.6, 24.7

O Aspose.Words 24.5 expande as opções para montagens, melhora as capacidades de renderização e expande algumas outras opções.

O Aspose.Words 24.6 melhora as opções de renderização, melhora a funcionalidade de pesquisa e comparação e expande várias outras características.

O Aspose.Words 24.7 altera a forma como trabalha com ActiveX, expande as capacidades de renderização e também exporta para os formatos Markdown e XLSX.

### Formatos Suportados

A partir da versão 24.7, a exportação para PDF/UA-2 é suportada para garantir a acessibilidade para utilizadores com deficiência.

### Renderização e impressão

#### Mudanças em Charts, Shapes e DrawingML <sup>24.5</sup>

- Foi implementada a renderização de efeitos DrawingML para gráficos SVG, estendendo a funcionalidade anterior limitada a imagens.
- O suporte para criar gráficos combinados e ajustar propriedades como largura de lacuna, sobreposição e escala de bolha dentro de grupos de séries foi introduzido adicionando o [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose. palavras/chartseriesgroup/) e [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) e as classes [SeriesGroups](https://reference.aspose.com/ palavras/java/com.aspose.words/chart/#getSeriesGroups).
- A funcionalidade para manipular o efeito SoftEdge de formas foi implementada adicionando a classe [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- A capacidade de modificar valores de ajuste de formas foi implementada adicionando [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) e [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) classes públicas e [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/# getAjustes) propriedade.

#### Alterações nos gráficos, formas e desenhos <sup>24.6</sup>

* Os recursos de gráficos foram melhorados. Agora pode criar uma maior variedade de gráficos, incluindo *Treemaps*, *Sunbursts*, *Histogramas*, gráficos *Pareto*, gráficos *Box & Whisker*, *Waterfalls* e *Funnels*. Isto permite-lhe visualizar os seus dados de uma forma mais diversificada e informativa.
* O controlo de cores para a formatação de sombras foi melhorado. Pode obter um controlo mais preciso sobre a aparência dos seus documentos, acedendo às cores das sombras.
* O aumento de desempenho para renderização em segundo plano foi melhorado. Pode acelerar significativamente a renderização de fundos contendo pequenos elementos graças à tecnologia nativa de azulejos.
* Foram adicionados gradientes realistas para formas. Agora pode criar formas DML com gradientes não lineares, imitando o estilo visual do Microsoft Word para um aspeto mais refinado.

#### Personalização do rótulo de dados do gráfico <sup>24.7</sup>

Foi adicionada a capacidade de personalizar as etiquetas de dados do gráfico, como **Orientation** e **Rotation**.

#### Estilo de número personalizado para níveis de lista <sup>24.7</sup>

Foi adicionado um setter para a propriedade pública [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Agora pode definir um estilo de número personalizado para os níveis de lista.

#### Alterações no trabalho com ActiveX <sup>24.7</sup>

* As propriedades dos objetos ActiveX podem agora ser modificadas, proporcionando mais controlo sobre o seu comportamento.
* Foi adicionada a capacidade de modificar o valor do controlo ActiveX do botão de opção para permitir a interação dinâmica.
* Foi adicionada a capacidade de alternar uma caixa de selecção ActiveX para "marcada" ou "desmarcada".

### Carregar e guardar documentos

#### Exportar ligações para o formato Markdown <sup>24.7</sup>

A capacidade de controlar a exportação de links no formato Markdown foi adicionada através da implementação da propriedade [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

### Pesquise e compare

#### Opções avançadas de comparação <sup>24,6</sup>
Foi adicionada a capacidade de agilizar os fluxos de trabalho de análise de dados com uma funcionalidade de comparação melhorada. Isto inclui uma nova opção [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) e uma interface redesenhada para comparações avançadas.

### Outro

* A função para eliminar páginas vazias de um documento foi implementada adicionando o método [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* A capacidade de verificar a presença de macros VBA sem carregar um documento foi fornecida adicionando [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) propriedade. <sup>24.5</sup>
* Agora há suporte para manter a numeração de origem ao inserir um documento usando o LINQ Reporting Engine. <sup>24.5</sup>
* Foi adicionada uma nova propriedade [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) – fornece um carimbo de data/hora mais preciso para comentários, melhorando a organização e a rastreabilidade. <sup>24.6</sup>
* O motor de relatórios LINQ foi melhorado. Foi feita a remoção seletiva de parágrafos vazios e a definição de mensagens personalizadas para membros de objetos em falta, gerando relatórios mais limpos e informativos. <sup>24.6</sup>
* O formato de data e hora é agora automaticamente detetado para exportação contínua para o formato XLSX. <sup>24.7</sup>
* Foi adicionada a propriedade pública [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), que permite verificar se um projeto VBA está protegido. <sup>24.7</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words for Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words for Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words for Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 melhora a experiência em torno da gestão de cores de curso, melhora objetos OLE e relatórios LINQ, bem como introduz um novo público Fontes de Bibliografia API.

Aspose.Words 24.2 gráficos expandidos API, gerenciamento de estilo e opções de LINQ. Esta versão de Aspose.Words também introduziu a capacidade de especificar SvgSaveOptions durante a renderização, carregamento de controle mais flexível Markdown arquivos, e trabalhando com texto de referência para notas de rodapé e notas finais.

Aspose.Words 24.3 introduz um novo TIFF Reader/Writer e Emulação de operações de raster binário para metafiles WMF. Aspose.Words 24.3 também continua a expandir os gráficos API.

Aspose.Words 24.4 aprimora a formatação de salvamento, algumas opções de renderização, bem como melhora o trabalho com assinaturas digitais.

### Formatos Suportados <sup>24.4</sup>

O formato de imagem **WebP** moderno agora é suportado no Aspose.Words. Agora é possível ler e inserir imagens WebP em documentos, bem como salvar imagens no formato WebP.

### Renderização e impressão

#### Controle de cor de Stroke <sup>24.1</sup>

O [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) classe foi estendida com um conjunto de novas propriedades públicas relacionadas à gestão de cores de curso: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) e [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) e [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Gráficos de DrawingML API Extensão <sup>24.2 / 24.3 / 24.4</sup>

O **DrawingML Charts API** continua a ser expandido.

#### Incorporar Fontes Declaradas em Regras @font-face <sup>24.4</sup>

Foi adicionada a capacidade de incorporar fontes declaradas em regras @font-face nas definições de fontes do documento resultante, adicionando uma nova propriedade chamada [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Trabalhar com Formatação de Brilho e Reflexo <sup>24.4</sup>

A capacidade de trabalhar com formatação de brilho e reflexo para um objeto de desenho foi implementada.

### A carregar e salvar documentos

#### Especifique SvgSaveOpções durante a renderização <sup>24.2</sup>

A capacidade de especificar [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) durante a renderização foi adicionado usando o [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) e [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) métodos.

#### Preserve Linhas vazias ao carregar Markdown arquivos <sup>24.2</sup>

A capacidade de preservar linhas vazias ao carregar Markdown arquivos foram adicionados.

#### Um novo leitor de TIFF / gravador <sup>24.3</sup>

Um novo leitor/escritor TIFF para Aspose.Words para .NET Standard, .NET 6 e mais tarde foi desenvolvido. Aspose.Words para .NET 24.3 adicionou suporte para leitura de imagens TIFF com tipos de compressão JPEG e JPEG antigo, e também melhorou significativamente a qualidade das operações de leitura e gravação.

### Outros

* A capacidade de modificar o texto do `TextBox` OLE control foi introduzido adicionando um novo [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) propriedade para o novo [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) classe. 24.1 <sup>24.1</sup>
* A Bibliografia Fontes públicas API foi implementado adicionando alguns novos [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) e [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) aulas e uma [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) enumeração, bem como adicionando um novo [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) propriedade para [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe. <sup>24.1</sup>
* Um API para limitar o acesso aos membros do tipo usando sintaxe do modelo para o motor de relatórios LINQ foi fornecido. <sup>24.1</sup>
* Novas propriedades públicas [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), e [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) para gestão de estilo melhorado foram adicionados ao [Style](https://reference.aspose.com/words/net/aspose.words/style/) classe. <sup>24.2</sup>
* A funcionalidade para recuperar o texto de marca de referência real para notas de rodapé e notas finais foi reforçada com o [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) propriedade e [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) método. <sup>24.2</sup>
* Compatibilidade com `Word 2016` gráficos para o `LINQ Reporting Engine` foi ativado. <sup>24.2</sup>
* Emulação de operações de raster binário para metafiles WMF foi implementada. <sup>24.3</sup>
* A capacidade de definir opções de assinatura para documentos dentro de **SaveOptions** foi ativada, adicionando uma nova classe chamada [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) com novos membros públicos, bem como adicionando novas propriedades às classes [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) e [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java Notas de lançamento 24.1](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de lançamento 24.2.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Saiba mais sobre [Aspose.Words para Java 24.3 Notas de lançamento.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Saiba mais sobre [Aspose.Words para Java 24.4 Notas de lançamento.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words para Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 expande opções de renderização, emulação de renderização de metafile e markdown salvar opções.

Aspose.Words 23.10 melhora a renderização, expande opções para carregar e salvar documentos e permite que os usuários mesclam documentos de novas maneiras.

Aspose.Words 23.11 melhora o trabalho com revisões, formato XLSX e fontes na legenda do gráfico com opções adicionais.

Aspose.Words 23.12 introduz novas propriedades e enumerações para trabalhar com documentos PDF, suporte para WebP imagens e biblioteca Bouncy Castle atualizado.

### Renderização e impressão

#### Personalizando títulos de eixos em DrawingML Gráficos <sup>23.9</sup>

A capacidade de personalizar títulos de eixo em gráficos DrawingML foi introduzida pela implementação de uma nova classe pública [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) e [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) propriedade.

#### Determinando a posição vertical das fontes dentro de um parágrafo <sup>23.9</sup>

Agora é possível definir a posição vertical das fontes dentro de um parágrafo usando o novo público [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) propriedade e o novo [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) enumeração.

#### Controle de cor de fundo <sup>23.10</sup>

A capacidade de recuperar a cor do primeiro plano sem modificadores foi adicionada à [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) e [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) aulas através da **BaseForeColor** propriedade.

#### Expandindo a Funcionalidade dos Gráficos <sup>23.10</sup>

A funcionalidade da [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), e [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) as classes foram expandidas com novos métodos e propriedades.

#### Ajuste e ajuste automaticamente uma imagem em uma forma <sup>23.10</sup>

Uma maneira simples de ajustar e ajustar automaticamente uma imagem dentro de uma forma particular foi fornecida através do novo [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) método.

#### Formatação de fonte padrão para desenho ML Gráfico Legend Entries <sup>23.11</sup>

A capacidade de especificar formatação de fonte padrão para entradas de legendas de gráficos DrawingML foi adicionada através do **Font** propriedade. Este recurso facilita uma aparência mais simplificada e consistente para elementos gráficos, melhorando a estética geral do documento.

#### Especifique o layout da página ao abrir o PDF no Reader <sup>23.12.1992</sup>

A capacidade de especificar o layout da página a ser usado ao abrir um documento em um leitor de PDF foi adicionada através da introdução de um novo [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) propriedade para [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe e a introdução de um novo [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) enumeração.

### A carregar e salvar documentos

#### Especificando um nome de pasta para construir URIs de imagem em Markdown <sup>23.9</sup>

O [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) a classe foi expandida, incluindo [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) propriedade, que permite especificar o nome da pasta usada para construir URIs de imagem escritos no Markdown documento.

#### Reduzir o PDF Tamanho de saída <sup>23.10</sup>

Várias otimizações de renderização em PDF para reduzir o tamanho da saída ao utilizar [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) foram implementadas configurações.

#### Reconhecer hiperlinks ao carregar documentos TXT <sup>23.10</sup>

O recurso para reconhecer hiperlinks ao carregar documentos TXT foi implementado adicionando um novo [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) propriedade.

### Outros

- Emulação de renderização Metafile para determinar o tamanho da rasterização foi implementada, especificamente para a largura da caneta WMF e largura da caneta cosmética EMF. Para alcançar isso, o **ScaleWmfFontsToMetafileSize** a propriedade foi substituída pela [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) propriedade e [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) a propriedade foi adicionada. <sup>23.9</sup>
- Um método simplificado para inserir um documento em outro documento na posição atual do cursor foi introduzido usando o [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) método. <sup>23.10</sup>
- Não. A capacidade de acessar e modificar propriedades de estilo foi adicionada através da introdução do novo [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) propriedade. <sup>23.10</sup>
- Um parâmetro tipo genérico foi adicionado aos métodos do [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) classe. <sup>23.10</sup>
- Uma maneira de controlar quando uma determinada revisão deve ser aceita/rejeitada ou não foi implementada usando [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) e [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) métodos. Este aprimoramento concede aos usuários um controle mais fino sobre o processo de revisão. <sup>23.11</sup>
- Não. A capacidade de escrever todas as seções de um documento na mesma planilha XLSX foi fornecida através do novo [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) tipo de enumeração e o novo [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) propriedade. <sup>23.11</sup>
- Suporte para WebP a imagem foi introduzida. Por favor, note que este recurso só está disponível para .NetStandart e .NET6+ versões. <sup>23.12.1992</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java Notas de versão 23.9](/words/java/aspose-words-for-java-23-9-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de versão 23.10](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de lançamento 23.11](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Saiba mais sobre [Aspose.Words para Java 23.12 Notas de lançamento](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 melhora a capacidade de trabalhar com dados da série de gráficos e a capacidade de trabalhar com documentos ODT, bem como melhorar cabeçalhos / pés e seu embrulho de texto.

Aspose.Words 23.6 expande opções de renderização, adiciona um novo formato de exportação, melhora o relatório LINQ e LowCode ferramentas.

Aspose.Words 23.7 melhora os recursos de relatórios, adiciona um novo formato de exportação e introduz mudanças no trabalho com tabelas e assinaturas digitais.

Aspose.Words 23.8 amplia as capacidades de diferentes formatos, melhora a renderização e adiciona novas opções para trabalhar com campos

### Formatos suportados

* A partir da versão 23.6, é possível salvar um documento no formato XLSX. Agora você pode converter seus documentos para o formato Excel. <sup>23.6</sup>

* A partir da versão 23.7, é possível salvar uma página de documento ou forma no formato EPS. <sup>23.7</sup>

* ## Novo formato Características

  - A funcionalidade para gerar automaticamente Tabela de Conteúdos (TOC) para documentos MOBI foi introduzida. <sup>23.8</sup>
  - O [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) construtor foi expandido com [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - A modelagem de texto vertical para metafiles EMF foi implementada. <sup>23.8</sup>

### Renderização

#### Obter e Modificar Gráfico Série Dados <sup>Países Baixos</sup>

O recurso para obter e modificar dados da série de gráficos foi fornecido adicionando:

- novas classes: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- novos tipos de enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Suporte para tipografia avançada <sup>23.6</sup>

O suporte para a tipografia avançada na renderização WMF, EMF e EMF+ foi adicionado.

#### Conteúdo colorido na página <sup>23.6</sup>

A propriedade pública [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), indicando se a página é colorida ou não, foi adicionada.

#### Formatação para etiquetas de dados de gráfico <sup>23.6</sup>

A capacidade de definir a formatação de preenchimento, curso e chamada para etiquetas de dados do gráfico foi implementada.

### Mail Merge e Relatórios

#### Inserção HTML dinâmica para o motor de relatórios LINQ <sup>23.6</sup>

Foi adicionada uma nova forma de inserção HTML dinâmica para o LINQ Reporting Engine.

#### Mustache Tags Suporte <sup>23.7</sup>

Mustache as tags agora são suportadas no [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) e [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) métodos.

#### LINQ Reporting Engine Template Atualizações da sintaxe <sup>23.7</sup>

A sintaxe do modelo LINQ Reporting Engine agora suporta `ElementAt` e métodos de extensão ElementAtOrDefault.

#### Especificando o tamanho de imagens renderizadas <sup>23.8</sup>

Uma nova propriedade pública **ImageSize** para especificar o tamanho das imagens renderizadas em pixel foi introduzido.

#### Preserve Whitespaces para JSON String Values – LINQ <sup>23.8</sup>

Uma opção foi adicionada ao LINQ Reporting Engine para preservar espaços brancos para valores de cadeia JSON.

### LowCode <sup>23.6</sup>

Novo LowCode métodos destinados a mesclar diferentes tipos de documentos em um único documento de saída foram adicionados.

### Outros

- O suporte para o embrulho de texto em cabeçalhos / rodapés foi implementado. <sup>Países Baixos</sup>
- Não. A capacidade de remover assinaturas digitais de documentos ODT foi adicionada através do [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) método. <sup>Países Baixos</sup>
- Não. A propriedade pública [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) para obter a base e texto rubi do guia fonético [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) foi adicionado. <sup>Países Baixos</sup>
- Não. A capacidade de recuperar um valor de assinatura digital de um documento assinado digitalmente como um array byte foi adicionado introduzindo um novo [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) propriedade. <sup>23.7</sup>
- O [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) aulas foram estendidas com novos membros públicos – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), e [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- O apoio aos campos de CITAÇÃO e BIBLIOGRAFIA foi adicionado. <sup>23.8</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java 23.5 Notas de lançamento](/words/java/aspose-words-for-java-23-5-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de lançamento 23.6](/words/java/aspose-words-for-java-23-6-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de versão 23.7](/words/java/aspose-words-for-java-23-7-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de lançamento 23.8](/words/java/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 melhora o desempenho da emulação de operação raster, bem como melhora a exportação de documentos e qualidade de renderização.

Aspose.Words 23.2 introduz documentos de salvamento no formato MOBI, melhora a renderização do gráfico e faz alterações notáveis aos detalhes da aparência do documento.

Aspose.Words 23.3 melhora a importação e economia de documentos com novas propriedades, e também melhora a qualidade do trabalho com fundo e primeiro plano cor e gradiente radial.

Aspose.Words 23.4 melhora o cálculo de alguns parâmetros e o posicionamento da tabela e do texto circundante.

### Melhorias de desempenho

#### Emulação de Operações Raster <sup>2,3 milhões de ecus</sup>

O desempenho e a qualidade da emulação de operações de raster com metafiles foram significativamente melhorados.

### Formatos suportados

#### Exportação para MOBI <sup>23.2</sup>

A partir da versão 23.2, é possível salvar um documento no formato MOBI (também chamado PRC, AZW – Amazon O próprio formato de arquivo e-book do Kindle). Agora você não pode apenas carregar documentos MOBI, mas também exportar seus arquivos para o formato MOBI.

### Renderização

#### Trabalho com cores de tema de sombra <sup>2,3 milhões de ecus</sup>

A capacidade de trabalhar com cores temáticas de sombreamento foi implementada.

#### Suporte de Coeficiente de R-quadrado em gráficos DML <sup>2,3 milhões de ecus</sup>

Suporte de coeficiente R-squared em rótulos de linha de tendência gráfico DML ao renderizar foi adicionado.

#### Melhorias de renderização do gráfico <sup>23.2</sup>

Desde 23.2 a renderização do gráfico foi significativamente melhorada.

#### Controle de cor de fundo e primeiro plano <sup>23.3</sup>

O [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) classe foi estendida com um conjunto de novas propriedades públicas relacionadas a fundo e cores anteriores: **ForeThemeColor** e **BackThemeColor**, **ForeTintAndShade** e **BackTintAndShade**.

#### Gradientes Radiais com `SkiaSharp` Shader nativo <sup>23.3</sup>

Renderização de gradientes radiais com os `SkiaSharp` shader nativo para .NET Standard foi implementado.

#### Distância entre a tabela e o texto circundante <sup>23.4</sup>

A capacidade de definir a distância entre a tabela e o texto circundante foi adicionada introduzindo novas propriedades para a [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) classe: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), e [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### A carregar e salvar documentos

#### Gerar `TOC` para documentos AZW3 <sup>2,3 milhões de ecus</sup>

A capacidade de gerar `TOC` (tabela de conteúdo) para documentos AZW3 foi adicionado através do uso do [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) propriedade.

#### Itens de lista de exportação para Markdown <sup>2,3 milhões de ecus</sup>

Uma maneira de controlar a exportação de itens de lista para Markdown formato foi fornecido adicionando o [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) propriedade para [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) classe.

#### Notificações de progresso de economia de documentos <sup>23.3</sup>

Salvar notificações de progresso para formatos MOBI e AZW3 foi implementado.

#### Ajuste de espaçamento de frases e palavras <sup>23.3</sup>

A capacidade de especificar se ajustar frase e espaçamento de palavras automaticamente após a importação de documentos foi adicionada introduzindo o **AdjustSentenceAndWordSpacing** propriedade.

### Outros

- Não. A capacidade de especificar o ajuste de espaçamento de caracteres de um documento foi adicionada através do [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) implementação da propriedade <sup>23.2</sup>
- A maneira de instruir Aspose.Words se incluir caixas de texto, notas de rodapé e notas finais em estatísticas de contagem de palavras foi fornecido adicionando o [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) propriedade <sup>23.2</sup>
- Uma nova opção para um estilo de documento, que permite especificar se o estilo é automaticamente redefinido com base no valor apropriado, foi introduzida através do [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) propriedade <sup>23.2</sup>
- Não. A capacidade de determinar se [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) é um guia fonético executado foi adicionado usando **IsPhoneticGuide** propriedade <sup>23.4</sup>
- Uma maneira simples de trabalhar com séries e eixos de gráficos combinados foi implementada introduzindo o **ChartAxisCollection** classe e adicionando o **Chart.Axes** propriedade <sup>23.4</sup>
- Novas propriedades públicas ligadas ao posicionamento relativo da forma e dimensionamento foram adicionadas ao [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe <sup>23.4</sup>
- A precisão e o desempenho do cálculo do brilho da cor para a resolução automática da cor do texto foram melhorados de acordo com as últimas versões de Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java 23.1 Notas de lançamento](/words/java/aspose-words-for-java-23-1-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de versão 23.2](/words/java/aspose-words-for-java-23-2-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de versão 23.3](/words/java/aspose-words-for-java-23-3-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de lançamento 23.4](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 expande opções para carregar e salvar documentos e melhorar a interação com algumas outras opções.

Aspose.Words 22.10 melhora encontrar e substituir opções, aprimora objetos OLE e amplia a funcionalidade da lista.

Aspose.Words 22.11 amplia sua funcionalidade com novas opções para um trabalho mais conveniente com objetos já familiares: campos, impressão, OLE e etiquetas de documentos estruturados.

Aspose.Words 22.12 melhora as capacidades de renderização e introduz opções para trabalhar com margens ao carregar / salvar um documento.

### Melhorias de desempenho <sup>22.12.1992</sup>

Uma otimização que reduz significativamente a profundidade do aninhamento de estado gráfico ao renderizar para PDF para manter a conformidade de especificação foi introduzida.

### Renderização e impressão

#### Impressão não colorida Páginas em uma impressora de cores <sup>22.11</sup>

Um modo de impressão colorido/grayscale personalizado foi implementado adicionando um novo **GrayscaleAuto** valor para o [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) enumeração.

Uma nova propriedade de impressão permite que os usuários controlem como as páginas não coloridas são impressas se o dispositivo suporta a impressão de cores. Esse recurso pode ser útil se os usuários quiserem imprimir automaticamente páginas não coloridas usando apenas o modo de impressão em tons de cinza.

#### Novas Propriedades de Renderização de Fronteiras <sup>22.12.1992</sup>

Novas propriedades públicas [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) e [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) foram introduzidos.

#### Fórmula de tendência linear para DrawingML Rendering <sup>22.12.1992</sup>

A renderização da fórmula de linha de tendência linear para gráficos DrawingML foi implementada.

#### Configurações de recuo de fonte para Google Noto Fontes <sup>22.12.1992</sup>

As configurações de retorno de fonte predefinidas para Google Noto fontes foram atualizadas.

### A carregar e salvar documentos

#### Cabeçalho de Cache ou forma de rodapé para reduzir o tamanho PDF <sup>22.9</sup>

A capacidade de armazenar formas de cabeçalho / rodapé para reduzir o tamanho do arquivo PDF de saída foi implementada adicionando um novo [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) propriedade.

#### Detecção automática de numeração ao carregar um documento <sup>22.9</sup>

A capacidade de especificar o [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) a propriedade após o carregamento de texto foi implementada através de uma extensão da [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) classe.

#### Especificando um particular Tipo de Margem <sup>22.12.1992</sup>

A capacidade de especificar um determinado [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) tipo para a seção dada foi implementado.

### Pesquisar e Comparar <sup>22.10</sup>

A capacidade de ignorar [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) após encontrar e substituir opções foi implementado adicionando um novo [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) propriedade para [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) classe.

### Outros

- Um novo recurso para obter FieldEQ como um OfficeMath foi adicionado. <sup>22.9</sup>
- Não. A criação de etiquetas de documentos estruturadas Group tipo no nível da linha foi permitido. <sup>22.9</sup>
- Objetos e controles OLE agora são tratados como imagens metafile ao converter um documento em HTML. <sup>22.10</sup>
- Um novo recurso para verificar se uma lista específica foi criada a partir do mesmo modelo que a lista comparada foi adicionada introduzindo um novo [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) método para [List](https://reference.aspose.com/words/java/com.aspose.words/list/) classe. <sup>22.10</sup>
- Não. A capacidade de criar novas tags de documentos estruturadas [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) o tipo foi adicionado. <sup>22.11</sup>
- A capacidade de rastrear o progresso de atualização de campo foi fornecida. <sup>22.11</sup>
- Um novo **EmbedAttachments** propriedade que permite aos usuários incorporar anexos OLE de um documento de origem no documento PDF de saída foi introduzido. <sup>22.11</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java Notas de lançamento 22.9](/words/java/aspose-words-for-java-22-9-release-notes/).

Saiba mais sobre [Aspose.Words para Java 22.10 Notas de lançamento](/words/java/aspose-words-for-java-22-10-release-notes/).

Saiba mais sobre [Aspose.Words para Java Notas de lançamento 22.11](/words/java/aspose-words-for-java-22-11-release-notes/).

Saiba mais sobre [Aspose.Words para Java 22.12 Notas de lançamento](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Ver também

{{% alert color="primary" %}}

Esta página contém as últimas notícias de lançamento nos últimos 2 anos. Para obter detalhes sobre versões anteriores, consulte o [Notas de lançamento '](/words/java/release-notes/) páginas nas seções relevantes.

{{% /alert %}}
