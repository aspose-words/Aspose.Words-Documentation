---
title: O que há de novo
second_title: Aspose.Words para .NET
articleTitle: O que há de novo em Aspose.Words para .NET
linktitle: O que há de novo em Aspose.Words para .NET
type: docs
description: "Aspose.Words para .NET se expande e aprimora diariamente. Nesta página você poderá conhecer os grandes e mais interessantes recursos do produto."
weight: 10
url: /pt/net/what-s-new-in-aspose-words-for-net/
timestamp: 2024-12-11-13-48-02
---

Esta página descreve os novos recursos Aspose.Words mais interessantes introduzidos em versões recentes.

## Aspose.Words para .NET 24.9, 24.10, 24.11, 24.12

Asposis.Words 24.9 introduz a inserção do formato do grupo e a inserção do StructuredDocumentTag através do DocumentBuilder, melhora a renderização de gráficos radiais com as graduações, melhora as assinaturas digitais com suporte XAdES-EPES, adiciona o reconhecimento sublinhado do Markdown e fornece acesso a separadores de notas de rodapé/nota.

O Aspose.Words 24.10 apresenta um suporte melhorado de controlo ActiveX com criação de CommandButton, novo controlo de visibilidade de formas, capacidade de agrupar formas, exportação de Markdown melhorada para tabelas, formatação de gráficos para gráficos de pizza e donut, melhor manuseamento de codificação Big5 e suporte para fontes taiwanesas desatualizadas.

Aspose.Words 24.11 introduz o resumo de documentos com AI, opções de renderização aprimoradas, acesso aprimorado às propriedades do documento e legendas de controle ActiveX.

O Aspose.Words 24.8 apresenta um posicionamento de etiquetas de dados personalizável, tradução de texto com tecnologia de IA da Google, opções de limpeza de direct mail melhoradas e novas classes de processamento LowCode.

### AI - recursos alimentados

#### Resumo de documentos utilizando OpenAI e Google <sup>24.11</sup>

O suporte para sumarização de documentos usando modelos de linguagem generativa **OpenAI** e **Google** foi integrado adicionando o namespace [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) com seus membros públicos.

#### Tradução de texto utilizando os modelos de linguagem generativa do Google <sup>24/12</sup>

A capacidade de traduzir texto utilizando os modelos de linguagem generativa do Google foi implementada no Aspose.Words adicionando o método [Translate](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/translate/ ) e a enumeração [Language](https://reference.aspose.com/words/net/aspose.words.ai/language/) para [Aspose.Words.AI](https://reference.aspose.com/ palavras/net/aspose.words.ai/) namespace.

### Código baixo <sup>24.12</sup>

Novas classes LowCode como [Comparer](https://reference.aspose.com/words/net/aspose.words.lowcode/comparer/), [MailMerger](https://reference.aspose.com/words/net/ aspose.words.lowcode/mailmerger/), [Substituidor](https://reference.aspose.com/words/net/aspose.words.lowcode/replacer/), [Divisor](https://reference.aspose. com/words/net/aspose.words.lowcode/splitter/) etc.

### Renderização e impressão

#### Graduações sobre gráficos radiais <sup>24.9</sup>

A renderização das graduações em gráficos radiais foi implementada.

#### ActiveX Controlos do botão de comando <sup>24.10</sup>

A capacidade de criar controlos ActiveX CommandButton foi introduzida adicionando um novo método público [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) e uma nova classe pública [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/).

#### Controlar a visibilidade da forma <sup>24.10</sup>

Foi adicionada uma nova propriedade pública [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) para controlar a visibilidade das formas.

#### Alterações nos gráficos de pizza e de rosca <sup>24.10</sup>

Foram adicionadas várias novas propriedades públicas para formatar gráficos de pizza e de rosca.

#### Controlar a renderização das bordas do campo do formulário de escolha PDF <sup>24.11</sup>

Uma nova opção para controlar a renderização de PDF fronteiras de campo de formulário de escolha foi implementada adicionando uma nova opção pública [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/).

#### Obter e definir códigos de formato para dados do Gráfico <sup>24.11</sup>

A capacidade de obter e definir códigos de formato para dados de gráfico foi adicionada implementando a propriedade [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) nas classes [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/) e [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/).

#### Renderizar gráficos de histograma com caixas e rótulos <sup>24.11</sup>

A renderização do Gráfico de histograma foi melhorada, permitindo um número especificado de caixas e rótulos.

#### Personalizar o posicionamento dos rótulos de dados <sup>24.12</sup>

A capacidade de personalizar o posicionamento dos rótulos de dados foi adicionada com a introdução de novas propriedades ao [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) e [ ChartDataLabelCollection ](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/) classes.

### Documentos de conversão, carregamento e poupança

#### Sublinhar formatação ao carregar ficheiros de marcação <sup>24.9</sup>

A opção de reconhecer a formatação sublinhada ao carregar documentos Markdown foi incorporada adicionando uma nova propriedade pública [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Exportar tabelas como HTML ao guardar no Markdown <sup>24.10</sup>

Uma opção para exportar tabelas como HTML ao guardar documentos no formato Markdown foi implementada adicionando uma nova propriedade pública [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words. saving/markdownsaveoptions/exportashtml/) e uma enumeração [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/).

#### Exportar PDF com estrutura lógica actualizada <sup>24.11</sup>

PDF a exportação foi melhorada através da inclusão de propriedades de título de tabela como PDF títulos de elementos de estrutura lógica.

### Mala direta e relatórios

#### Remover tabelas vazias durante a correspondência em série <sup>24.12</sup>

Foi adicionada uma nova opção **RemoveEmptyTables** à enumeração [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) para refinar a saída da mala direta.

### Assinaturas Digitais

#### Assinar documentos com XAdES-EPES <sup>24.9</sup>

A capacidade de assinar documentos com assinaturas XML-DSig de nível XAdES-EPES foi introduzida pela adição de uma nova propriedade pública [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevellevel/) e uma nova enumeração pública [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsigleve/).

### Outro

* Um novo método público [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inertgroupshape/) foi adicionado a formas de grupo. <sup>24.9</sup>
* Um novo método público [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserstruturddocumenttag/) foi adicionado para inserir **StructuredDocumentTags** num documento. <sup>24.9</sup>
* O acesso público aos separadores de notas de rodapé/nota final foi fornecido pela adição de algumas classes e propriedades públicas. <sup>24.9</sup>
* A capacidade de agrupar formas individuais, agrupar formas e agrupar directamente formas e formas de grupo foi introduzida adicionando o método [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1). <sup>24.10</sup>
* O manuseamento da codificação Big5 para tabelas cmap TrueType foi melhorado. <sup>24.10</sup>
* O suporte para fontes desatualizadas de Taiwan foi melhorado. <sup>24.10</sup>
* Para acessar as propriedades do documento estendido, propriedades somente leitura foram adicionadas à classe [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/). <sup>24.11</sup>
* A definição de legendas para controlos ActiveX foi activada adicionando um novo setter público à propriedade [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.9](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.10](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 24.11 notas de versão](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 24.12 notas de versão](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-12-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 24.5, 24,6, 24.7, 24.8

O Aspose.Words 24.5 expande as opções para montagens, melhora as capacidades de renderização e expande algumas outras opções.

O Aspose.Words 24.6 melhora as opções de renderização, melhora a funcionalidade de pesquisa e comparação e expande várias outras características.

O Aspose.Words 24.7 altera a forma como trabalha com ActiveX, expande as capacidades de renderização e também exporta para os formatos Markdown e XLSX.

O Aspose.Words 24.8 melhora a personalização de gráficos com um controlo preciso sobre as etiquetas dos eixos, expande a gestão de tipos de letra, melhora o manuseamento da estrutura de documentos e adiciona novas funcionalidades para a exportação de HTML/XAML, funcionalidade de PDF, conversão de documentos e assinaturas digitais.

### Formatos Suportados

A partir da versão 24.7, a exportação para PDF/UA-2 é suportada para garantir a acessibilidade para utilizadores com deficiência.

### Plataformas <sup>24.5</sup>

Os assemblies .NET 7.0/8.0 foram incluídos no pacote Aspose.Words NuGet.

### Renderização e impressão

#### Mudanças em Charts, Shapes e DrawingML <sup>24.5</sup>

* A renderização de efeitos DrawingML para gráficos SVG, estendendo a funcionalidade anterior limitada a imagens, foi implementada.
* O suporte para criação de gráficos combinados e ajuste de propriedades como largura de intervalo, sobreposição e escala de bolha em grupos de séries foi introduzido com a adição das classes [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) e [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) e da propriedade [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* A funcionalidade para manipular o efeito SoftEdge de formas foi implementada adicionando a classe [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* A capacidade de modificar valores de ajuste de formas foi implementada adicionando [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) e [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) classes públicas e [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) propriedade.

#### Alterações nos gráficos, formas e desenhos <sup>24.6</sup>

* Os recursos de gráficos foram melhorados. Agora pode criar uma maior variedade de gráficos, incluindo *Treemaps*, *Sunbursts*, *Histogramas*, gráficos *Pareto*, gráficos *Box & Whisker*, *Waterfalls* e *Funnels*. Isto permite-lhe visualizar os seus dados de uma forma mais diversificada e informativa.
* O controlo de cores para a formatação de sombras foi melhorado. Pode obter um controlo mais preciso sobre a aparência dos seus documentos, acedendo às cores das sombras.
* O aumento de desempenho para renderização em segundo plano foi melhorado. Pode acelerar significativamente a renderização de fundos contendo pequenos elementos graças à tecnologia nativa de azulejos.
* Foram adicionados gradientes realistas para formas. Agora pode criar formas DML com gradientes não lineares, imitando o estilo visual do Microsoft Word para um aspeto mais refinado.

#### Personalização do rótulo de dados do gráfico <sup>24.7</sup>

Foi adicionada a capacidade de personalizar as etiquetas de dados do gráfico, como **Orientation** e **Rotation**.

#### Estilo de número personalizado para níveis de lista <sup>24.7</sup>

Foi adicionado um setter para a propriedade pública [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/). Agora pode definir um estilo de número personalizado para os níveis de lista.

#### Alterações no trabalho com ActiveX <sup>24.7</sup>

* As propriedades dos objetos ActiveX podem agora ser modificadas, proporcionando mais controlo sobre o seu comportamento.
* Foi adicionada a capacidade de modificar o valor do controlo ActiveX do botão de opção para permitir a interação dinâmica.
* Foi adicionada a capacidade de alternar uma caixa de selecção ActiveX para "marcada" ou "desmarcada".

#### Controlo sobre a orientação e rotação dos rótulos de escala do eixo do gráfico <sup>24.8</sup>

Foi adicionado um controlo preciso sobre a orientação e rotação dos rótulos dos eixos do gráfico para uma personalização mais conveniente do gráfico – o [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) foi estendida com a nova classe [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) e [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/) propriedades.

#### Substituindo a barra invertida pelo sinal do iene <sup>24.8</sup>

A exportação HTML e XAML compatível com versões anteriores para substituir o caractere de barra invertida pelo sinal do iene foi melhorada. Para o conseguir, foi adicionada a propriedade **ReplaceBackslashWithYenSign** a [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) e [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Utilização de tags SDT como nomes de campos de formulário ao exportar para PDF <sup>24.8</sup>

A exportação de PDF com suporte para a utilização de etiquetas SDT como nomes de campos de formulários foi melhorada com a adição de uma nova propriedade [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) para a classe [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Converter, carregar e guardar documentos

#### Exportar ligações para o formato Markdown <sup>24.7</sup>

A capacidade de controlar a exportação de links no formato Markdown foi adicionada através da implementação da propriedade [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode <sup>24.8</sup>

Uma nova classe [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), concebida para fornecer um conjunto de métodos para converter vários tipos de documentos com uma única linha de código, foi introduzido.

### Pesquise e compare

#### Opções avançadas de comparação <sup>24.6</sup>
Foi adicionada a capacidade de agilizar os fluxos de trabalho de análise de dados com uma funcionalidade de comparação melhorada. Isto inclui uma nova opção [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) e uma interface redesenhada para comparações avançadas.

### Outro

* A função para eliminar páginas vazias de um documento foi implementada adicionando o método [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* A capacidade de verificar a presença de macros VBA sem carregar um documento foi fornecida adicionando a propriedade [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Agora há suporte para manter a numeração de origem ao inserir um documento usando o LINQ Reporting Engine. <sup>24.5</sup>
* Foi adicionada uma nova propriedade [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) – fornece um carimbo de data/hora mais preciso para comentários, melhorando a organização e a rastreabilidade. <sup>24.6</sup>
* O motor de relatórios LINQ foi melhorado. Foi feita a remoção seletiva de parágrafos vazios e a definição de mensagens personalizadas para membros de objetos em falta, gerando relatórios mais limpos e informativos. <sup>24.6</sup>
* O formato de data e hora é agora automaticamente detetado para exportação contínua para o formato XLSX. <sup>24.7</sup>
* Foi adicionada a propriedade pública [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), que permite verificar se um projeto VBA está protegido. <sup>24.7</sup>
* A informação da fonte foi expandida com a propriedade **EmbeddingLicensingRights** adicionada a [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) e [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) classes. <sup>24.8</sup>
* Foi adicionada uma forma de limpar os cabeçalhos e rodapés de secção de forma eficiente e, ao mesmo tempo, preservar as marcas de água para trabalhar com maior precisão com a estrutura do documento. Para limpar os cabeçalhos e rodapés das secções, utilize o novo método público [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* A assinatura digital de documentos XPS utilizando [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) foi ativada – uma nova propriedade [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/). <sup>24.8</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.5](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.6](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.7](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.8](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 melhora a experiência de gerenciamento de cores de traços, aprimora objetos OLE e relatórios LINQ, além de introduzir um novo API público de fontes bibliográficas.

Aspose.Words 24.2 expandiu a API de gráficos, gerenciamento de estilo e opções de LINQ. Esta versão do Aspose.Words também introduziu a capacidade de especificar SvgSaveOptions durante a renderização, controlar de forma mais flexível o carregamento de arquivos Markdown e trabalhar com texto de referência para notas de rodapé e notas finais.

O Aspose.Words 24.3 introduz um novo leitor/escritor TIFF e emulação de operações de raster binário para metaficheiros WMF. O Aspose.Words 24.3 continua a expandir a API de gráficos.

Aspose.Words 24.4 aprimora a formatação de salvamento, algumas opções de renderização, bem como melhora o trabalho com assinaturas digitais.

### Formatos Suportados <sup>24.4</sup>

O formato de imagem **WebP** moderno agora é suportado no Aspose.Words para o .NET Framework 4.6.2 e superior. Agora é possível ler e inserir imagens WebP em documentos, bem como salvar imagens no formato WebP.

Por favor, note que o WebP está atualmente disponível apenas no .NET Standard e no .NET Framework v4.6.2 e acima.

### Renderização e Impressão

#### Controle de cor do traço <sup>24.1</sup>

A classe [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) foi estendida com um conjunto de novas propriedades públicas relacionadas ao gerenciamento de cores de traços: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) e [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) e [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Extensão da API de gráficos DrawingML <sup>24.2 / 24.3 / 24.4</sup>

A **DrawingML Charts API** continua a ser expandida.

#### Incorporar Fontes Declaradas em Regras @font-face <sup>24.4</sup>

Foi adicionada a capacidade de incorporar fontes declaradas em regras @font-face nas definições de fontes do documento resultante, adicionando uma nova propriedade chamada [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/).

#### Trabalhar com Formatação de Brilho e Reflexo <sup>24.4</sup>

A capacidade de trabalhar com formatação de brilho e reflexo para um objeto de desenho foi implementada.

### Carregando e salvando documentos

#### Especifique SvgSaveOptions durante a renderização <sup>24.2</sup>

A capacidade de especificar [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) durante a renderização foi adicionada usando os métodos [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) e [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/).

#### Preservar linhas vazias ao carregar arquivos Markdown <sup>24.2</sup>

Foi adicionada a capacidade de preservar linhas vazias ao carregar arquivos Markdown.

#### Um Novo Leitor/Escritor TIFF <sup>24.3</sup>

Foi desenvolvido um novo leitor/escritor TIFF para o Aspose.Words para .NET Standard, .NET 6 e versões posteriores. O Aspose.Words para .NET 24.3 adicionou suporte para a leitura de imagens TIFF com tipos de compressão JPEG e Old JPEG, e também melhorou significativamente a qualidade das operações de leitura e escrita.

### Outro

* A capacidade de modificar o texto do controle `TextBox` OLE foi introduzida adicionando uma nova propriedade [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) à nova classe [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* O API público de Fontes Bibliográficas foi implementado através da adição de um novo namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) com suas novas classes e enumerações, e através da adição de uma nova propriedade [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) à classe [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* Foi fornecido um API para limitar o acesso a membros de tipo usando sintaxe de modelo para o LINQ Reporting Engine. <sup>24.1</sup>
* Novas propriedades públicas [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) e [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) para gerenciamento aprimorado de estilo foram adicionadas à classe [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* A funcionalidade para recuperar o texto real da marca de referência para notas de rodapé e notas finais foi aprimorada com a propriedade [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) e o método [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* A compatibilidade com gráficos do `Word 2016` para o `LINQ Reporting Engine` foi habilitada. <sup>24.2</sup>
* A emulação de operações de raster binário para metaficheiros WMF foi implementada. <sup>24.3</sup>
* A capacidade de definir opções de assinatura para documentos dentro de **SaveOptions** foi ativada, adicionando uma nova classe chamada [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) com novos membros públicos, bem como adicionando novas propriedades às classes [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) e [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 24.4](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

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

* A emulação de renderização de metarquivo para determinar o tamanho da rasterização foi implementada, especificamente para largura de caneta WMF e largura de caneta cosmética EMF. Para conseguir isso, a propriedade **ScaleWmfFontsToMetafileSize** foi substituída pela propriedade [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) e a propriedade [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) foi adicionada. <sup>23.9</sup>
* Um método simplificado para inserir um documento em outro documento na posição atual do cursor foi introduzido usando o método [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23h10</sup>
* A capacidade de acessar e modificar propriedades de estilo foi adicionada através da introdução da nova propriedade [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/). <sup>23h10</sup>
* Um parâmetro de tipo genérico foi adicionado aos métodos da classe [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/). <sup>23h10</sup>
* Uma forma de controlar quando uma determinada revisão deve ser aceita/rejeitada ou não foi implementada usando os métodos [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) e [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Esse aprimoramento concede aos usuários um controle mais preciso sobre o processo de revisão. <sup>23.11</sup>
* A capacidade de gravar todas as seções de um documento na mesma planilha XLSX foi fornecida por meio do novo tipo de enumeração [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) e da nova propriedade [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* Uma maneira de controlar como as extensões de formato ZIP64 serão usadas para documentos OOXML foi implementada por meio da nova propriedade Zip64Mode da classe `OoxmlSaveOptions` e da nova enumeração Zip64Mode. <sup>23.12</sup>
* Foi introduzido suporte para imagem WebP. Observe que este recurso está disponível apenas para as versões .NetStandart e .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.9](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.10 Notas de versão](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.11 Notas de versão](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.12 Notas de versão](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words para .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 aprimora a capacidade de trabalhar com dados de séries de gráficos e a capacidade de trabalhar com documentos ODT, bem como melhorar cabeçalhos/rodapés e sua quebra de texto.

Aspose.Words 23.6 expande as opções de renderização, adiciona um novo formato de exportação, melhora os relatórios LINQ e as ferramentas LowCode.

Aspose.Words 23.7 aprimora os recursos de relatórios, adiciona um novo formato de exportação e introduz alterações no trabalho com tabelas e assinaturas digitais.

Aspose.Words 23.8 expande os recursos de diferentes formatos, melhora a renderização e adiciona novas opções para trabalhar com campos

### Formatos Suportados

* A partir da versão 23.6 é possível salvar um documento no formato XLSX. Agora você pode converter seus documentos para o formato Excel. <sup>23.6</sup>
* A partir da versão 23.7, é possível salvar uma página ou forma de documento no formato EPS. <sup>23.7</sup>

### Novos recursos de formato

* Foi introduzida a funcionalidade para gerar automaticamente o Índice (TOC) para documentos MOBI. <sup>23.8</sup>
* O construtor [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) foi expandido com [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* A modelagem de texto vertical para metarquivos EMF foi implementada. <sup>23.8</sup>

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

* Foi implementado suporte para quebra automática de texto em cabeçalhos/rodapés. <sup>23.5</sup>
* A capacidade de remover assinaturas digitais de documentos ODT foi adicionada através do método [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23.5</sup>
* Foi adicionada a propriedade pública [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) para obter o texto base e ruby do guia fonético [Run](https://reference.aspose.com/words/net/aspose.words/run/). <sup>23.5</sup>
* A capacidade de recuperar um valor de assinatura digital de um documento assinado digitalmente como uma matriz de bytes foi adicionada com a introdução de uma nova propriedade [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23.7</sup>
* As classes [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) foram estendidas com novos membros públicos – [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) e [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Foi adicionado suporte para campos CITAÇÃO e BIBLIOGRAFIA. <sup>23.8</sup>

{{% alert color="primary" %}}

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/).

Saiba mais sobre [Aspose.Words para .NET 23.7 Notas de versão](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

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

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.2](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

Saiba mais sobre [Notas de versão do Aspose.Words para .NET 23.4](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Veja também

{{% alert color="primary" %}}

Esta página contém as últimas notícias de lançamento dos últimos 2 anos. Para obter detalhes sobre versões anteriores, consulte as páginas [Notas de lançamento'](/words/net/release-notes/) nas seções relevantes.

{{% /alert %}}
