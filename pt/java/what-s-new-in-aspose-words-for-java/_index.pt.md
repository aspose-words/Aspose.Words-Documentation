---
title: O que há de novo
second_title: Aspose.Words para Java
articleTitle: O que há de novo em Aspose.Words para Java
linktitle: O que há de novo em Aspose.Words para Java
type: docs
description: "Aspose.Words para Java expande e aumenta diariamente. Nesta página, você pode aprender sobre as características enormes e mais interessantes do produto."
weight: 2
url: /pt/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

Esta página descreve os novos recursos Aspose.Words mais interessantes introduzidos em versões recentes.

## Aspose.Words para Java 24.9, 24.10

Aspose.Words 24.9 introduz group shape inserção e StructuredDocumentTag inserção via DocumentBuilder, melhora a renderização de gráficos radiais com graduações, melhora as assinaturas digitais com suporte a XAdES-EPES, adiciona reconhecimento de sublinhado Markdown e fornece acesso a separadores de notas de rodapé/notas de fim.

Aspose.Words 24.10 introduz suporte aprimorado ao controle ActiveX COM criação de CommandButton, novo controle de visibilidade de forma, capacidade de group shapes, exportação aprimorada de Markdown para tabelas, formatação de gráficos para gráficos Pie e Doughnut, Melhor manipulação de codificação Big5 e suporte para Fontes taiwanesas desatualizadas.

### Renderização e impressão

#### Graduações em gráficos radiais <sup>24.9</sup>

A renderização de graduações em gráficos radiais foi implementada.

#### CommandButton Controlos ActiveX <sup>24.10</sup>

A capacidade de criar controles ActiveX CommandButton foi introduzida adicionando um novo método público [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl) e uma nova classe pública [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### Visibilidade Da Forma De Controlo <sup>24.10</sup>

Uma nova propriedade pública [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden) foi adicionada para controlar a visibilidade das formas.

#### Alterações nos gráficos Pie e Doughnut <sup>24.10</sup>

Várias novas propriedades públicas foram adicionadas aos gráficos format Pie e Doughnut.

### Converter, carregar e guardar documentos

#### Sublinhar a formatação ao carregar ficheiros Markdown <sup>24.9</sup>

A opção de reconhecer a formatação de sublinhado ao carregar documentos Markdown foi incorporada adicionando uma nova propriedade pública [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### Exportando tabelas como HTML ao salvar em Markdown <sup>24.10</sup>

Uma opção para exportar tabelas como HTML ao salvar documentos no formato Markdown foi implementada adicionando uma nova propriedade pública [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml) e uma enumeração [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### Assinaturas Digitais

#### Assinar documentos com XAdES-EPES <sup>24.9</sup>

A capacidade de assinar documentos com XAdES-EPES Nível XML-DSig assinaturas foi introduzida adicionando uma nova propriedade pública [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) e uma nova enumeração pública [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Outros

* Um novo método público [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) foi adicionado a group shapes. <sup>24.9</sup>
* Um novo método público [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) foi adicionado para inserir **StructuredDocumentTags** em um documento. <sup>24.9</sup>
* O acesso público aos separadores de notas de rodapé/notas de fim foi proporcionado pela adição de algumas classes e propriedades públicas. <sup>24.9</sup>
* A capacidade de agrupar formas individuais, group shapes juntas, e agrupar diretamente ambas as formas e group shapes foi introduzida pela adição do método [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...). <sup>24.10</sup>
* O tratamento de codificação Big5 para TrueType tabelas cmap foi melhorado. <sup>24.10</sup>
* O Suporte Para fontes taiwanesas desatualizadas foi aprimorado. <sup>24.10</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java 24.9 notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

Saiba mais sobre [Aspose.Words para Java 24.10 notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 expande as opções para assemblies, melhora os recursos de renderização e expande algumas outras opções.

Aspose.Words 24.6 melhora as opções de renderização, melhora a funcionalidade de pesquisa e comparação e expande vários outros recursos.

Aspose.Words 24.7 altera a forma como trabalha com ActiveX, expande as capacidades de renderização, bem como exporta para os formatos Markdown e XLSX.

Aspose.Words 24.8 aprimora a personalização do gráfico com controle preciso sobre os rótulos dos eixos, expande o gerenciamento de fontes, melhora o manuseio da estrutura do documento e adiciona novos recursos para exportação HTML/XAML, funcionalidade PDF, conversão de documentos e assinaturas digitais.

### Formatos Suportados

A partir da versão 24.7, a exportação para PDF/UA-2 é suportada para garantir a acessibilidade aos utilizadores com deficiência.

### Renderização e impressão

#### Alterações nos gráficos, formas e DrawingML <sup>24.5</sup>

- DrawingML a renderização de efeitos para SVG gráficos, estendendo a funcionalidade anterior limitada a imagens, foi implementada.
- Foi introduzido o suporte para a criação de gráficos combinados e para o ajuste de propriedades, tais como a largura do intervalo, a sobreposição e a escala de bolhas nos grupos de séries, adicionando-se as classes [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) e [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) e a propriedade [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups).
- A funcionalidade para manipular o efeito SoftEdge das formas foi implementada adicionando a classe [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- A capacidade de modificar ajustar valores de formas foi implementada adicionando as classes públicas [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) e [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) e a propriedade [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments).

#### Alterações nos gráficos, formas e desenhos <sup>24.6</sup>

- As capacidades de gráficos foram melhoradas. Agora você pode criar uma variedade maior de gráficos, incluindo *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* gráficos, *Box & Whisker* gráficos, *Waterfalls* e *Funnels*. Isto permite-lhe visualizar os seus dados de uma forma mais diversificada e informativa.
- O controlo das cores para a formatação das Sombras foi melhorado. Você pode obter um controle mais preciso sobre a aparência de seus documentos acessando cores de sombra.
- O aumento de desempenho para a renderização em segundo plano foi melhorado. Você pode acelerar significativamente a renderização de fundos contendo pequenos elementos graças à tecnologia nativa de ladrilhos.
- Foram adicionados gradientes realistas para formas. Agora você pode criar DML formas com gradientes não lineares, imitando o estilo visual de Microsoft Word para uma aparência mais polida.

#### Personalização Do Rótulo Dos Dados Do Gráfico <sup>24.7</sup>

Foi adicionada a capacidade de personalizar rótulos de dados do gráfico, como **Orientation** e **Rotation**.

#### Estilo De Número personalizado para níveis de Lista <sup>24.7</sup>

Foi adicionado um setter para a propriedade pública [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Agora você pode definir um estilo de número personalizado para níveis de lista.

#### Mudanças no trabalho com ActiveX <sup>24.7</sup>

* As propriedades dos objetos ActiveX agora podem ser modificadas, dando a você mais controle sobre seu comportamento.
* Foi adicionada a capacidade de modificar o valor do controlo ActiveX do botão de opção para permitir a interacção dinâmica.
* A capacidade de alternar um ActiveX checkbox para "marcado" ou "desmarcado" foi adicionada.

#### Controlo sobre a orientação e rotação das etiquetas de Marcação Do Eixo do Gráfico <sup>24.8</sup>

Foi adicionado um controlo preciso sobre a orientação e rotação dos rótulos de escala do eixo do gráfico para uma personalização mais conveniente do gráfico – A classe [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) foi alargada com novas propriedades **Orientation** e **Rotation**.

#### Substituindo a barra invertida pelo sinal do Iene <sup>24.8</sup>

A exportação HTML e XAML Compatível com versões anteriores para substituir o caractere de barra invertida pelo sinal de iene foi melhorada. Para conseguir isso, a propriedade **ReplaceBackslashWithYenSign** foi adicionada às classes [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) e [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Usando SDT Tags como nomes de campo de formulário ao exportar para PDF <sup>24.8</sup>

A exportação PDF com suporte para o uso de tags SDT como nomes de campos de formulário foi aprimorada adicionando uma nova propriedade **UseSdtTagAsFormFieldName** à classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Converter, carregar e guardar documentos

#### Exportando Links para o formato Markdown <sup>24.7</sup>

A capacidade de controlar a exportação de links no formato Markdown foi adicionada através da implementação da propriedade [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode 24.8 <sup>24.8</sup>

Foi introduzida uma nova classe **LowCode.Converter**, concebida para fornecer um conjunto de métodos para converter vários tipos de documentos com uma única linha de código.

### Pesquisar e comparar

#### Opções Avançadas De Comparação <sup>24.6</sup>

Foi adicionada a capacidade de simplificar os fluxos de trabalho de análise de dados com uma funcionalidade de comparação melhorada. Isso inclui uma nova opção [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) e uma interface redesenhada para comparações avançadas.

### Outros

* A função para eliminar páginas vazias de um documento foi implementada adicionando o método [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* A capacidade de verificar a presença de VBA macros sem carregar um documento foi fornecida adicionando a propriedade [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros). <sup>24.5</sup>
* A manutenção da numeração de origem durante a inserção de um documento utilizando o mecanismo de relatórios LINQ é agora suportada. <sup>24.5</sup>
* Uma nova propriedade [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) foi adicionada-isto fornece um carimbo de data / hora mais preciso para os comentários, melhorando a organização e a rastreabilidade. <sup>24.6</sup>
* O mecanismo de relatórios LINQ foi melhorado. A remoção selectiva de parágrafos vazios e a definição de mensagens personalizadas para membros de objectos em falta foram efectuadas, o que levou a relatórios mais limpos e informativos. <sup>24.6</sup>
* O formato datetime agora é detectado automaticamente para exportação contínua para o formato XLSX. <sup>24.7</sup>
* A propriedade pública [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), que permite verificar se um projeto VBA está protegido, foi adicionada. <sup>24.7</sup>
* As informações da fonte foram expandidas com a propriedade **EmbeddingLicensingRights** adicionada às classes [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) e [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Uma maneira de limpar eficientemente os cabeçalhos e rodapés das seções, preservando marcas d'água, foi adicionada para trabalhar com mais precisão com a estrutura do documento. Para limpar os cabeçalhos e rodapés das secções, utilize o novo método público **ClearHeadersFooters**. <sup>24.8</sup>
* A assinatura Digital de XPS documentos usando [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) foi ativada – uma nova propriedade **DigitalSignatureDetails** foi adicionada para esse fim. <sup>24.8</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java 24.5 Notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Saiba mais sobre [Aspose.Words para Java 24.6 Notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Saiba mais sobre [Aspose.Words para Java 24.7 notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Saiba mais sobre [Aspose.Words para Java 24.8 notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 melhora a experiência em torno do gerenciamento de cores de traços, aprimora OLE objetos e LINQ relatórios, bem como introduz uma nova bibliografia fontes públicas API.

Aspose.Words 24.2 gráficos expandidos API, gestão de estilos e opções LINQ. Esta versão de Aspose.Words também introduziu a capacidade de especificar SvgSaveOptions durante a renderização, controle mais flexível Carregando Markdown arquivos e trabalhando com texto de referência para notas de rodapé e notas de fim.

Aspose.Words 24.3 introduz um novo TIFF Leitor/Gravador e emulação de operações de varredura binária para WMF metarquivos. Aspose.Words 24.3 também continua a expandir os gráficos API.

Aspose.Words 24.4 melhora os formatos de gravação, algumas opções de renderização, bem como melhora o trabalho com assinaturas digitais.

### Formatos Suportados <sup>24.4</sup>

O formato de imagem **WebP** moderno é agora suportado em Aspose.Words. Agora você pode ler e inserir imagens WebP em documentos, bem como salvar imagens no formato WebP.

### Renderização e impressão

#### Controlo Da Cor Do Traçado <sup>24.1</sup>

A classe [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) foi estendida com um conjunto de novas propriedades públicas relacionadas ao gerenciamento de cores de traçado: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) e [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) e [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### DrawingML Gráficos API Extensão <sup>24.2 / 24.3 / 24.4</sup>

O **DrawingML Charts API** continua a ser expandido.

#### Incorporar fontes declaradas em @font-face regras <sup>24.4</sup>

Adicionada a capacidade de incorporar fontes declaradas nas regras @font-face nas definições de fonte do documento resultante foi introduzida adicionando uma nova propriedade [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Trabalhar com formatação de brilho e reflexão <sup>24.4</sup>

A capacidade de trabalhar com formatação de brilho e reflexão para um objeto de desenho foi implementada.

### Carregar e guardar documentos

#### Especifique SvgSaveOptions Durante A Renderização <sup>24.2</sup>

A capacidade de especificar [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) durante a renderização foi adicionada usando o [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) e [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) métodos.

#### Preservar linhas vazias ao carregar ficheiros Markdown <sup>24.2</sup>

A capacidade de preservar linhas vazias ao carregar arquivos Markdown foi adicionada.

#### Um Novo TIFF Leitor / Escritor <sup>24.3</sup>

Foi desenvolvido um novo leitor/gravador TIFF para Aspose.Words para .NET Standard, .NET 6 e posterior. Aspose.Words Para .NET 24.3 Adicionado suporte para leitura de TIFF imagens com JPEG e antigos JPEG tipos de compressão, e também melhorou significativamente a qualidade das operações de leitura e gravação.

### Outros

* A capacidade de modificar o texto do controlo `TextBox` OLE foi introduzida adicionando uma nova propriedade [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) à nova classe [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/). 24.1 <sup>24.1</sup>
* As fontes bibliográficas public API foram implementadas adicionando algumas novas [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) e [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) classes e uma [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) enumeração, bem como adicionando uma nova propriedade [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) à classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). <sup>24.1</sup>
* Foi fornecido um API para limitar o acesso aos membros do tipo que utilizam a sintaxe do modelo para o motor de relatórios LINQ. <sup>24.1</sup>
* Novas propriedades públicas [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) e [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) para gerenciamento de estilo aprimorado foram adicionadas à classe [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* A funcionalidade para recuperar o texto real da marca de referência para notas de rodapé e notas de fim foi melhorada com a propriedade [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) e o método [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* A compatibilidade com os gráficos `Word 2016` para o `LINQ Reporting Engine` foi activada. <sup>24.2</sup>
* A emulação de operações de varredura binária para metarquivos WMF foi implementada. <sup>24.3</sup>
* A capacidade de definir opções de assinatura para documentos dentro de **SaveOptions** foi habilitada adicionando uma nova classe [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) com novos membros públicos, bem como adicionando novas propriedades às classes [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) e [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java 24.1 notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Saiba mais sobre [Aspose.Words para Java 24.2 notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

Saiba mais sobre [Aspose.Words para Java 24.3 notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

Saiba mais sobre [Aspose.Words para Java 24.4 notas de vers](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 expande as opções de renderização, emulação de renderização de metarquivo e opções de salvamento de markdown.

Aspose.Words 23.10 melhora a renderização, expande as opções para carregar e salvar documentos e permite que os usuários mesclem documentos de novas maneiras.

Aspose.Words 23.11 melhora o trabalho com revisões, XLSX formato e fontes na legenda do gráfico com opções adicionais.

Aspose.Words 23.12 introduz novas propriedades e enumerações para trabalhar com PDF Documentos, Suporte para WebP imagens e biblioteca Bouncy Castle atualizada.

### Renderização e impressão

#### Personalização dos títulos dos eixos em gráficos DrawingML <sup>23.9</sup>

A capacidade de personalizar títulos de eixos em gráficos DrawingML foi introduzida pela implementação de uma nova propriedade public class [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) e [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle).

#### Determinação da posição Vertical das fontes num parágrafo <sup>23.9</sup>

Agora é possível definir a posição vertical das fontes dentro de um parágrafo usando a nova propriedade public [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) e a nova enumeração [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/).

#### Controlo Da Cor Do Primeiro Plano <sup>23.10</sup>

A capacidade de recuperar a cor de primeiro plano sem modificadores foi adicionada às classes [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) e [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) através da propriedade **BaseForeColor**.

#### Expansão da funcionalidade dos gráficos <sup>23.10</sup>

A funcionalidade das classes [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) e [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) foi expandida com novos métodos e propriedades.

#### Ajustar e ajustar automaticamente uma imagem numa forma <sup>23.10</sup>

Uma maneira simples de ajustar e ajustar automaticamente uma imagem dentro de uma forma específica foi fornecida através do novo método [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape).

#### Formatação de fonte padrão para DrawingML entradas de legenda de gráfico <sup>23.11</sup>

A capacidade de especificar a formatação de fonte padrão para entradas de legenda de gráficos DrawingML foi adicionada por meio da propriedade **Font**. Este recurso facilita uma aparência mais simplificada e consistente para os elementos do gráfico, melhorando a estética geral do documento.

#### Especificar o Layout da Página ao Abrir PDF No Reader <sup>23.12</sup>

A capacidade de especificar o layout de página a ser usado ao abrir um documento em um leitor PDF foi adicionada através da introdução de uma nova propriedade [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) à classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) e da introdução de uma nova enumeração [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/).

### Carregar e guardar documentos

#### Especificando um nome de pasta para construir a imagem URIs em Markdown <sup>23.9</sup>

A classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) foi expandida incluindo a propriedade [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias), que permite especificar o nome da pasta usada para construir a imagem URIs escrita no documento Markdown.

#### Reduzir PDF Tamanho Da Saída <sup>23.10</sup>

Várias otimizações de renderização PDF para reduzir o tamanho da saída ao utilizar as configurações [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) foram implementadas.

#### Reconhecer hiperligações ao carregar TXT documentos <sup>23.10</sup>

O recurso para reconhecer hiperlinks ao carregar documentos TXT foi implementado adicionando uma nova propriedade [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks).

### Outros

- A emulação de renderização de metarquivo para determinar o tamanho da rasterização foi implementada, especificamente para WMF Largura da caneta e EMF Largura da caneta cosmética. Para isso, a propriedade **ScaleWmfFontsToMetafileSize** foi substituída pela propriedade [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) e a propriedade [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) foi adicionada. <sup>23.9</sup>
- Foi introduzido um método simplificado para inserir um documento noutro documento na posição actual do cursor utilizando o método [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions). <sup>23.10</sup>
- A capacidade de aceder e modificar propriedades de estilo foi adicionada através da introdução da nova propriedade [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked). <sup>23.10</sup>
- Um parâmetro de tipo genérico foi adicionado aos métodos da classe [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/). <sup>23.10</sup>
- Uma forma de controlar quando uma determinada revisão deve ser aceite/rejeitada ou não foi implementada utilizando os métodos [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) e [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria). Esta melhoria confere aos utilizadores um controlo mais rigoroso sobre o processo de revisão. <sup>23.11</sup>
- A capacidade de escrever todas as secções de um documento na mesma folha de cálculo XLSX foi fornecida através do novo tipo de enumeração [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) e da propriedade new [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode). <sup>23.11</sup>
- Foi introduzido o suporte para a imagem WebP. Observe que esse recurso está disponível apenas para .NetStandart e .NET6+ versões. <sup>23.12</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words Para Java 23.9 notas de vers](/words/java/aspose-words-for-java-23-9-release-notes/).

Saiba mais sobre [Aspose.Words para Java 23.10 notas de vers](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Saiba mais sobre [Aspose.Words para Java 23.11 notas de vers](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Saiba mais sobre [Aspose.Words para Java 23.12 notas de vers](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 melhora a capacidade de trabalhar com dados de séries de gráficos e a capacidade de trabalhar com documentos ODT, bem como melhorar cabeçalhos/rodapés e sua quebra de texto.

Aspose.Words 23.6 expande as opções de renderização, adiciona um novo formato de exportação, melhora as ferramentas LINQ Relatórios e LowCode.

Aspose.Words 23.7 aprimora os recursos de relatórios, adiciona um novo formato de exportação e introduz alterações no trabalho com tabelas e assinaturas digitais.

Aspose.Words 23.8 expande as capacidades de diferentes formatos, melhora a renderização e adiciona novas opções para trabalhar com campos.

### Formatos Suportados

* A partir da versão 23.6, é possível guardar um documento no formato XLSX. Agora você pode converter seus documentos para o formato Excel. <sup>23.6</sup>

* A partir da versão 23.7, é possível guardar uma página ou forma de documento no formato EPS. <sup>23.7</sup>

* ### Novos Recursos De Formato

  - Foi introduzida a funcionalidade para gerar automaticamente o sumário (TOC) para MOBI documentos. <sup>23.8</sup>
  - O construtor [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) foi expandido com [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - A definição do texto vertical para os metarquivos EMF foi implementada. <sup>23.8</sup>

### Renderização

#### Obter e modificar dados da série de gráficos <sup>23.5</sup>

O recurso para obter e modificar os dados da série de gráficos foi fornecido adicionando:

- novas classes: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- novos tipos de enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Suporte para tipografia avançada <sup>23.6</sup>

Foi adicionado suporte para tipografia avançada em WMF, EMF e EMF+ renderização.

#### Conteúdo colorido na página <sup>23.6</sup>

A propriedade pública [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), indicando se a página é colorida ou não, foi adicionada.

#### Formatação dos rótulos dos dados do Gráfico <sup>23.6</sup>

A capacidade de definir preenchimento, traçado e formatação de texto explicativo para rótulos de dados de gráfico foi implementada.

### Mail Merge e relatórios

#### Dinâmica HTML inserção para LINQ Mecanismo de relatório <sup>23.6</sup>

Foi adicionada uma nova forma de inserção dinâmica HTML para o mecanismo de Relatórios LINQ.

#### Mustache Suporte A Tags <sup>23.7</sup>

As tags Mustache são agora suportadas nos métodos [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) e [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String).

#### LINQ Actualizações Da Sintaxe Do Modelo Do Motor De Relatórios <sup>23.7</sup>

A sintaxe do modelo do mecanismo de Relatório LINQ agora suporta os métodos de extensão `ElementAt` e ElementAtOrDefault.

#### Especificando o tamanho das imagens renderizadas <sup>23.8</sup>

Foi introduzida uma nova propriedade pública **ImageSize** para especificar o tamanho das imagens renderizadas em pixel.

#### Preservar espaços em branco para JSON valores de cadeia de caracteres - LINQ <sup>23.8</sup>

Uma opção foi adicionada ao mecanismo de relatório LINQ para preservar espaços em branco para valores de string JSON.

### LowCode <sup>23.6</sup>

Foram adicionados novos métodos LowCode destinados a fundir diferentes tipos de documentos num único documento de saída.

### Outros

- Foi implementado o apoio à quebra de texto nos cabeçalhos/rodapés. <sup>23.5</sup>
- A capacidade de remover assinaturas digitais de documentos ODT foi adicionada através do método [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream). <sup>23.5</sup>
- A propriedade pública [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) para obter o texto base e ruby do guia fonético [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) foi adicionada. <sup>23.5</sup>
- A capacidade de recuperar um valor de assinatura digital de um documento assinado digitalmente como uma matriz de Bytes foi adicionada através da introdução de uma nova propriedade [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue). <sup>23.7</sup>
- As classes [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) foram alargadas com novos membros públicos– [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), e [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Foi adicionado suporte para os campos CITATION e BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java 23.5 Notas de vers](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

Saiba mais sobre [Aspose.Words Para Java 23.6 notas de vers](/words/java/aspose-words-for-java-23-6-release-notes/).

Saiba mais sobre [Aspose.Words para Java 23.7 notas de vers](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

Saiba mais sobre [Aspose.Words para Java 23.8 notas de vers](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words para Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 melhora o desempenho da emulação de operação raster, bem como melhora a exportação de documentos e a qualidade de renderização.

Aspose.Words 23.2 introduz o salvamento de documentos no formato MOBI, melhora a renderização do gráfico e faz alterações notáveis nos detalhes da aparência do documento.

Aspose.Words 23.3 aprimora a importação e o salvamento de documentos com novas propriedades e também melhora a qualidade do trabalho com cores de fundo e primeiro plano e gradiente radial.

Aspose.Words 23.4 melhora o cálculo de alguns parâmetros e o posicionamento da tabela e do texto circundante.

### Melhorias De Desempenho

#### Emulação de operações Raster <sup>23.1</sup>

O desempenho e a qualidade da emulação de operações raster com metarquivos foram significativamente melhorados.

### Formatos Suportados

#### Exportar para MOBI <sup>23.2</sup>

A partir da versão 23.2, é possível salvar um documento no formato MOBI (também chamado PRC, AZW – Amazon formato de arquivo de E-book do próprio Kindle). Agora você pode não apenas carregar MOBI documentos, mas também exportar seus arquivos para o formato MOBI.

### Renderização

#### Trabalhar com cores de tema de sombreamento <sup>23.1</sup>

A capacidade de trabalhar com cores de tema de sombreamento foi implementada.

#### Suporte do coeficiente R-quadrado em DML Gráficos <sup>23.1</sup>

Suporte do coeficiente R-quadrado nos rótulos das linhas de tendência do gráfico DML quando a renderização foi adicionada.

#### Melhorias Na Renderização De Gráficos <sup>23.2</sup>

Desde 23.2, a renderização do gráfico foi significativamente melhorada.

#### Controlo das cores de fundo e de Primeiro Plano <sup>23.3</sup>

A classe [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) foi alargada com um conjunto de novas propriedades públicas relacionadas com as cores de fundo e de primeiro plano: **ForeThemeColor** e **BackThemeColor**, **ForeTintAndShade** e **BackTintAndShade**.

#### Gradientes radiais com o sombreador nativo `SkiaSharp` <sup>23.3</sup>

A renderização de gradientes radiais com o sombreador nativo `SkiaSharp` para .NET Standard foi implementada.

#### Distância entre a tabela e o texto circundante <sup>23.4</sup>

A capacidade de definir a distância entre a tabela e o texto circundante foi adicionada através da introdução de novas propriedades para a classe [Table](https://reference.aspose.com/words/java/com.aspose.words/table/): [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), e [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Carregar e guardar documentos

#### Gerar `TOC` para AZW3 Documentos <sup>23.1</sup>

A capacidade de gerar `TOC` (Índice) para AZW3 documentos foi adicionada através da utilização da propriedade [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel).

#### Exportar itens da lista para Markdown <sup>23.1</sup>

Uma maneira de controlar a exportação de itens de lista para o formato Markdown foi fornecida adicionando a propriedade [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) à classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/).

#### Notificações De Progresso Da Gravação De Documentos <sup>23.3</sup>

Foi implementado o salvamento de notificações de progresso para os formatos MOBI e AZW3.

#### Ajuste do espaçamento entre frases e palavras <sup>23.3</sup>

A capacidade de especificar se deve ajustar o espaçamento entre frases e palavras automaticamente após a importação do documento foi adicionada através da introdução da propriedade **AdjustSentenceAndWordSpacing**.

### Outros

- A capacidade de especificar o ajuste do espaçamento de caracteres de um documento foi adicionada através da implementação da propriedade [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) <sup>23.2</sup>
- A maneira de instruir Aspose.Words se deve incluir caixas de texto, notas de rodapé e notas de fim nas estatísticas de contagem de palavras foi fornecida adicionando a propriedade [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) <sup>23.2</sup>
- Uma nova opção para um estilo de documento, que permite especificar se o estilo é redefinido automaticamente com base no valor apropriado, foi introduzida através da propriedade [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) <sup>23.2</sup>
- A capacidade de determinar se [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) é uma execução de guia fonético foi adicionada usando a propriedade **IsPhoneticGuide** <sup>23.4</sup>
- Uma maneira simples de trabalhar com séries e eixos de gráficos combinados foi implementada introduzindo a classe **ChartAxisCollection** e adicionando a propriedade **Chart.Axes** <sup>23.4</sup>
- Novas propriedades públicas ligadas ao posicionamento e dimensionamento relativo da forma foram adicionadas à classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) <sup>23.4</sup>
- A precisão e o desempenho do cálculo do brilho da cor para a resolução automática da cor do texto foram melhorados de acordo com as versões mais recentes de Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Aspose.Words para Java 23.1 notas de vers](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

Saiba mais sobre [Aspose.Words Para Java 23.2 notas de vers](/words/java/aspose-words-for-java-23-2-release-notes/).

Saiba mais sobre [Aspose.Words para Java 23.3 notas de vers](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

Saiba mais sobre [Aspose.Words Para Java 23.4 notas de vers](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Ver Também

{{% alert color="primary" %}}

Esta página contém as últimas notícias de lançamento dos últimos 2 anos. Para obter detalhes sobre versões anteriores, consulte o [Notas De Lan](https://releases.aspose.com/words/java/release-notes/) páginas nas secções relevantes.

{{% /alert %}}
