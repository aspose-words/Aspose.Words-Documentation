---
title: Cosa c'è di nuovo
second_title: Aspose.Words per .NET
articleTitle: Novità in Aspose.Words per .NET
linktitle: Novità in Aspose.Words per .NET
type: docs
description: "Aspose.Words per .NET si espande e migliora ogni giorno. In questa pagina puoi conoscere le enormi e più interessanti funzionalità del prodotto."
weight: 10
url: /it/net/what-s-new-in-aspose-words-for-net/
timestamp: 2024-12-11-13-48-02
---

Questa pagina descrive le nuove funzionalità Aspose.Words più interessanti introdotte nelle versioni recenti.

## Aspose.Wordsper .NET 24.9, 24.10, 24.11, 24.12

Aspose.Words 24.9 introduce l'inserimento di forme di gruppo e l'inserimento di StructuredDocumentTag tramite DocumentBuilder, migliora il rendering dei grafici radiali con graduazioni, migliora le firme digitali con il supporto XAdES-EPES, aggiunge il riconoscimento della sottolineatura Markdown e fornisce l'accesso ai separatori di note a piè di pagina/note di chiusura.

Aspose.Words 24.10 introduce un supporto avanzato per i controlli ActiveX con la creazione di CommandButton, un nuovo controllo di visibilità delle forme, la possibilità di raggruppare le forme, un'esportazione Markdown migliorata per le tabelle, la formattazione dei grafici per i grafici a torta e ad anello, una migliore gestione della codifica Big5 e il supporto per i font taiwanesi obsoleti.

Aspose.Words 24.11 introduce il riepilogo del documento basato su AI, opzioni di rendering avanzate, accesso migliorato alle proprietà del documento e sottotitoli del controllo ActiveX.

Aspose.Words 24.8 introduce il posizionamento personalizzabile delle etichette dati, la traduzione del testo basata su Google AI, opzioni di pulizia avanzate di Mail Merge e nuove classi di elaborazione LowCode.

### AI - Funzioni alimentate

#### Riepilogo dei documenti tramite OpenAI e Google <sup>24.11</sup>

Il supporto per il riepilogo dei documenti utilizzando i modelli di linguaggio generativo **OpenAI** e **Google** è stato integrato aggiungendo lo spazio dei nomi [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) con i suoi membri pubblici.

#### Traduzione del testo tramite i modelli linguistici generativi di Google <sup>24.12</sup>

La possibilità di tradurre il testo tramite i modelli linguistici generativi di Google è stata implementata in Aspose.Words aggiungendo il metodo [Translate](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/translate/) e l'enumerazione [Language](https://reference.aspose.com/words/net/aspose.words.ai/language/) allo spazio dei nomi [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/).

### Low Code <sup>24.12</sup>

Sono state introdotte nuove classi LowCode come [Comparer](https://reference.aspose.com/words/net/aspose.words.lowcode/comparer/), [MailMerger](https://reference.aspose.com/words/net/aspose.words.lowcode/mailmerger/), [Replacer](https://reference.aspose.com/words/net/aspose.words.lowcode/replacer/), [Splitter](https://reference.aspose.com/words/net/aspose.words.lowcode/splitter/) ecc., che offrono un set di metodi che creano il perfetto equilibrio tra semplicità e flessibilità per l'elaborazione dei documenti.

### Rendering e stampa

#### Graduazioni sui grafici radiali <sup>24.9</sup>

È stato implementato il rendering delle graduazioni sui grafici radiali.

#### Controlli ActiveX CommandButton <sup>24.10</sup>

La possibilità di creare controlli ActiveX CommandButton è stata introdotta aggiungendo un nuovo metodo pubblico [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) e una nuova classe pubblica [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/).

#### Visibilità delle forme di controllo <sup>24.10</sup>

È stata aggiunta una nuova proprietà pubblica [Nascosto](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) per controllare la visibilità delle forme.

#### Modifiche nei grafici a torta e ad anello <sup>24.10</sup>

Sono state aggiunte diverse nuove proprietà pubbliche per formattare i grafici a torta e ad anello.

#### Controllare il rendering dei bordi del campo del modulo di scelta PDF <sup>24.11</sup>

Una nuova opzione per controllare il rendering dei bordi del campo del modulo di scelta PDF è stata implementata aggiungendo una nuova opzione pubblica [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/).

#### Ottenere e impostare i codici di formato per i dati del grafico <sup>24.11</sup>

La possibilità di ottenere e impostare i codici di formato per i dati del grafico è stata aggiunta implementando la proprietà [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) nelle classi [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/) e [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/).

#### Rendering di grafici istografici con contenitori ed etichette <sup>24.11</sup>

Il rendering del grafico istogramma è stato migliorato consentendo un numero specificato di contenitori ed etichette.

#### Personalizza il posizionamento delle etichette dati <sup>24.12</sup>

La possibilità di personalizzare il posizionamento delle etichette dati è stata aggiunta introducendo nuove proprietà nelle classi [ChartDataLabel](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabel/) e [ChartDataLabelCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatalabelcollection/).

### Conversione, caricamento e salvataggio di documenti

#### Formattazione sottolineata durante il caricamento di file Markdown <sup>24.9</sup>

L'opzione per riconoscere la formattazione sottolineata durante il caricamento di documenti Markdown è stata incorporata aggiungendo una nuova proprietà pubblica [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Esportazione di tabelle come HTML durante il salvataggio in Markdown <sup>24.10</sup>

È stata implementata un'opzione per esportare le tabelle come HTML durante il salvataggio di documenti in formato Markdown aggiungendo una nuova proprietà pubblica [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) e un'enumerazione [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/).

#### Esporta PDF con struttura logica aggiornata <sup>24.11</sup>

L'esportazione PDF è stata migliorata includendo le proprietà del titolo della tabella come titoli degli elementi della struttura logica PDF.

### Unione di posta e reportistica

#### Rimuovi tabelle vuote durante l'unione di posta <sup>24.12</sup>

Una nuova opzione **RemoveEmptyTables** è stata aggiunta all'enumerazione [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) per perfezionare l'output dell'unione di posta.

### Firme digitali

#### Firma documenti con XAdES-EPES <sup>24.9</sup>

La possibilità di firmare documenti con firme XML-DSig di livello XAdES-EPES è stata introdotta aggiungendo una nuova proprietà pubblica [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) e una nuova enumerazione pubblica [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Altro

* Un nuovo metodo pubblico [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) è stato aggiunto alle forme di gruppo. <sup>24.9</sup>
* È stato aggiunto un nuovo metodo pubblico [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) per inserire **StructuredDocumentTag** in un documento. <sup>24.9</sup>
* L'accesso pubblico ai separatori di note a piè di pagina/note di chiusura è stato fornito aggiungendo alcune classi e proprietà pubbliche. <sup>24.9</sup>
* La possibilità di raggruppare singole forme, raggruppare forme insieme e raggruppare direttamente sia forme che gruppi di forme è stata introdotta aggiungendo il metodo [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1). <sup>24.10</sup>
* La gestione della codifica Big5 per le tabelle cmap TrueType è stata migliorata. <sup>24.10</sup>
* Il supporto per i font taiwanesi obsoleti è stato migliorato. <sup>24.10</sup>
* Per accedere alle proprietà estese del documento, alla classe [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/) sono state aggiunte proprietà di sola lettura. <sup>24.11</sup>
* L'impostazione dei sottotitoli per i controlli ActiveX è stata abilitata aggiungendo un nuovo setter pubblico alla proprietà [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.9](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.10](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

Scopri di più su [Aspose.Words per .NET 24.11 Note di rilascio](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/).

Scopri di più su [Aspose.Words per .NET 24.12 Note di rilascio](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-12-release-notes/).

{{% /alert %}}

## Aspose.Words per .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 espande le opzioni per gli assiemi, migliora le capacità di rendering ed espande alcune altre opzioni.

Aspose.Words 24.6 migliora le opzioni di rendering, migliora le funzionalità di ricerca e confronto ed espande molte altre funzionalità.

Aspose.Words 24.7 cambia il modo in cui lavori con ActiveX, espande le capacità di rendering e l'esportazione nei formati Markdown e XLSX.

Aspose.Words 24.8 migliora la personalizzazione dei grafici con un controllo preciso sulle etichette degli assi, espande la gestione dei font, migliora la gestione della struttura dei documenti e aggiunge nuove funzionalità per l'esportazione HTML/XAML, funzionalità PDF, conversione dei documenti e firme digitali.

### Formati supportati

A partire dalla versione 24.7, è supportata l'esportazione in PDF/UA-2 per garantire l'accessibilità agli utenti con disabilità.

### Piattaforme <sup>24.5</sup>

Gli assembly .NET 7.0/8.0 sono stati inclusi nel pacchetto Aspose.Words NuGet.

### Rendering e stampa

#### Modifiche a Charts, Shapes e DrawingML <sup>24.5</sup>

* È stato implementato il rendering degli effetti DrawingML per la grafica SVG, che estende le funzionalità precedenti limitate alle immagini.
* Il supporto per la creazione di grafici combinati e la regolazione di proprietà come larghezza del gap, sovrapposizione e scala di bolle all'interno dei gruppi di serie è stato introdotto aggiungendo [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) e le classi [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) e le classi [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/) proprietà.
* La funzionalità per manipolare l'effetto SoftEdge delle forme è stata implementata aggiungendo la classe [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* La possibilità di modificare i valori di regolazione delle forme è stata implementata aggiungendo [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) e [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) classi pubbliche e [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) proprietà.

#### Modifiche a grafici, forme e disegni <sup>24.6</sup>

* Le funzionalità di creazione dei grafici sono state migliorate. Ora puoi creare una più ampia varietà di grafici, tra cui *Treemaps*, *Sunbursts*, *Istogrammi*, grafici *Pareto*, grafici *Box & Whisker*, *Cascate* e *Imbuti*. Ciò ti consente di visualizzare i tuoi dati in un modo più diversificato e informativo.
* Il controllo del colore per la formattazione delle ombre è stato migliorato. Puoi ottenere un controllo più preciso sull'aspetto dei tuoi documenti accedendo ai colori delle ombre.
* L'aumento delle prestazioni per il rendering dello sfondo è stato migliorato. Puoi velocizzare notevolmente il rendering di sfondi contenenti piccoli elementi grazie alla tecnologia di piastrellatura nativa.
* Sono stati aggiunti gradienti realistici per le forme. Ora puoi creare forme DML con gradienti non lineari, imitando lo stile visivo di Microsoft Word per un aspetto più raffinato.

#### Personalizzazione etichetta dati grafico <sup>24.7</sup>

È stata aggiunta la possibilità di personalizzare le etichette dei dati del grafico come **Orientation** e **Rotation**.

#### Stile personalizzato dei numeri per i livelli di elenco <sup>24.7</sup>

È stato aggiunto un setter per la proprietà pubblica [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/). Ora puoi definire uno stile numerico personalizzato per i livelli di elenco.

#### Cambiamenti nell'utilizzo di ActiveX <sup>24.7</sup>

* Le proprietà degli oggetti ActiveX possono ora essere modificate, offrendoti un maggiore controllo sul loro comportamento.
* È stata aggiunta la possibilità di modificare il valore del controllo ActiveX del pulsante di opzione per abilitare l'interazione dinamica.
* È stata aggiunta la possibilità di impostare una casella di controllo ActiveX su "selezionata" o "deselezionata".

#### Controllo sull'orientamento e la rotazione delle etichette di spunta degli assi del grafico <sup>24.8</sup>

È stato aggiunto un controllo preciso sull'orientamento e la rotazione delle etichette di spunta degli assi del grafico per una personalizzazione più comoda del grafico: la classe [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) è stata estesa con le nuove proprietà [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) e [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Sostituzione della barra rovesciata con il simbolo dello yen <sup>24.8</sup>

L'esportazione HTML e XAML retrocompatibile per la sostituzione del carattere barra rovesciata con il simbolo dello yen è stata migliorata. Per ottenere questo risultato, la proprietà **ReplaceBackslashWithYenSign** è stata aggiunta alle classi [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) e [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Utilizzo di tag SDT come nomi di campi modulo durante l'esportazione in PDF <sup>24.8</sup>

L'esportazione PDF con supporto per l'utilizzo di tag SDT come nomi di campi modulo è stata migliorata aggiungendo una nuova proprietà [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) alla classe [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Conversione, caricamento e salvataggio di documenti

#### Esportazione dei collegamenti nel formato Markdown <sup>24.7</sup>

È stata aggiunta la possibilità di controllare l'esportazione dei collegamenti in formato Markdown tramite l'implementazione della proprietà [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode <sup>24.8</sup>

È stata introdotta una nuova classe [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), progettata per fornire un set di metodi per convertire vari tipi di documenti con una singola riga di codice.

### Cerca e confronta

#### Opzioni di confronto avanzate <sup>24.6</sup>
È stata aggiunta la possibilità di semplificare i flussi di lavoro di analisi dei dati con funzionalità di confronto migliorate. Ciò include una nuova opzione [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) e un'interfaccia riprogettata per confronti avanzati.

### Altro

* La funzione per eliminare le pagine vuote da un documento è stata implementata aggiungendo il metodo [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* La possibilità di verificare la presenza di macro VBA senza caricare un documento è stata fornita aggiungendo la proprietà [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Ora è supportato il mantenimento della numerazione della fonte durante l'inserimento di un documento utilizzando LINQ Reporting Engine. <sup>24.5</sup>
* È stata aggiunta una nuova proprietà [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) che fornisce un timestamp più preciso per i commenti, migliorando l'organizzazione e la tracciabilità. <sup>24.6</sup>
* Il motore di reporting LINQ è stato migliorato. Sono state effettuate la rimozione selettiva dei paragrafi vuoti e la definizione di messaggi personalizzati per i membri degli oggetti mancanti, portando a report più chiari e informativi. <sup>24.6</sup>
* Il formato data/ora viene ora rilevato automaticamente per un'esportazione senza interruzioni nel formato XLSX. <sup>24.7</sup>
* È stata aggiunta la proprietà pubblica [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), che consente di verificare se un progetto VBA è protetto. <sup>24.7</sup>
* Le informazioni sui font sono state ampliate con la proprietà **EmbeddingLicensingRights** aggiunta alle classi [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) e [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* È stato aggiunto un modo per cancellare in modo efficiente intestazioni e piè di pagina di sezione preservando le filigrane per lavorare in modo più accurato con la struttura del documento. Per cancellare le intestazioni e i piè di pagina delle sezioni, utilizzare il nuovo metodo pubblico [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* La firma digitale dei documenti XPS tramite [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) è stata abilitata: è stata aggiunta una nuova proprietà [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) a questo scopo. <sup>24.8</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.5](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.6](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.7](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.8](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words per .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 migliora l'esperienza relativa alla gestione dei colori dei tratti, migliora gli oggetti OLE e il reporting LINQ, oltre a introdurre un nuovo API pubblico delle origini bibliografiche.

Aspose.Words 24.2 ha ampliato l'API dei grafici, la gestione degli stili e le opzioni LINQ. Questa versione di Aspose.Words ha anche introdotto la possibilità di specificare SvgSaveOptions durante il rendering, un controllo più flessibile nel caricamento dei file Markdown e l'utilizzo del testo di riferimento per note a piè di pagina e note di chiusura.

Aspose.Words 24.3 introduce un nuovo lettore/scrittore TIFF e l'emulazione di operazioni raster binarie per i metafile WMF. Aspose.Words 24.3 continua anche ad espandere l'API dei grafici.

Aspose.Words 24.4 migliora il salvataggio dei formati, alcune opzioni di rendering, nonché migliora il lavoro con le firme digitali.

### Formati supportati <sup>24.4</sup>

Il formato immagine **WebP** moderno è ora supportato in Aspose.Words per .NET Framework 4.6.2 e versioni successive. Ora è possibile leggere e inserire immagini WebP nei documenti, nonché salvare immagini nel formato WebP.

Si prega di notare che attualmente WebP è disponibile solo in .NET Standard e .NET Framework v4.6.2 e versioni successive.

### Rendering e stampa

#### Controllo colore tratto <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/it/net/aspose.words.drawing/stroke/) è stata estesa con una serie di nuove proprietà pubbliche relative alla gestione dei colori del tratto: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) e [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) e [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Estensione DrawingML Charts API <sup>24.2 / 24.3 / 24.4</sup>

Dei **DrawingML Charts API** continua ad essere ampliata.

#### Incorpora i font dichiarati nelle regole @font-face <sup>24.4</sup>

È stata aggiunta la possibilità di incorporare i font dichiarati nelle regole @font-face nelle definizioni del font del documento risultante aggiungendo una nuova proprietà chiamata [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/).

#### Lavora con la formattazione effetto glow e riflessione <sup>24.4</sup>

È stata implementata la possibilità di lavorare con la formattazione effetto glow e riflessione per un oggetto di disegno.

### Caricamento e salvataggio di documenti

#### Specificare SvgSaveOptions durante il rendering <sup>24.2</sup>

È stata aggiunta la funzionalità per specificare [SvgSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/svgsaveoptions/) durante il rendering utilizzando i metodi [ShapeRenderer](https://reference.aspose.com/words/it/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/save/) e [OfficeMathRenderer](https://reference.aspose.com/words/it/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/it/net/aspose.words.rendering/noderendererbase/save/).

#### Conserva le righe vuote durante il caricamento dei file Markdown <sup>24.2</sup>

È stata aggiunta la possibilità di preservare le righe vuote durante il caricamento dei file Markdown.

#### Un nuovo lettore/scrittore TIFF <sup>24.3</sup>

È stato sviluppato un nuovo lettore/scrittore TIFF per Aspose.Words per .NET Standard, .NET 6 e versioni successive. Aspose.Words per .NET 24.3 ha aggiunto il supporto per la lettura di immagini TIFF con tipi di compressione JPEG e Old JPEG, migliorando significativamente la qualità delle operazioni di lettura e scrittura.

### Altro

* È stata introdotta la possibilità di modificare il testo del controllo OLE `TextBox` aggiungendo una nuova proprietà [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) alla nuova classe [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* Il API pubblico delle fonti bibliografiche è stato implementato aggiungendo un nuovo spazio dei nomi [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) con le sue nuove classi ed enumerazioni e aggiungendo una nuova proprietà [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) alla classe [Document](https://reference.aspose.com/words/it/net/aspose.words/document/). <sup>24.1</sup>
* È stato fornito un API per limitare l'accesso ai membri del tipo utilizzando la sintassi del modello per LINQ Reporting Engine. <sup>24.1</sup>
* Alla classe [Style](https://reference.aspose.com/words/it/net/aspose.words/style/) sono state aggiunte le nuove proprietà pubbliche [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) e [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) per una gestione migliorata dello stile. <sup>24.2</sup>
* La funzionalità per recuperare il testo del segno di riferimento effettivo per le note a piè di pagina e le note di chiusura è stata migliorata con la proprietà [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) e il metodo [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* È stata abilitata la compatibilità con i grafici di `Word 2016` per `LINQ Reporting Engine`. <sup>24.2</sup>
* È stata implementata l'emulazione di operazioni raster binarie per i metafile WMF. <sup>24.3</sup>
* È stata abilitata la possibilità di definire opzioni di firma per i documenti all'interno di SaveOptions aggiungendo una nuova classe chiamata [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) con nuovi membri pubblici, nonché aggiungendo nuove proprietà alle classi [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) e [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.4](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words per .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 espande le opzioni di rendering, l'emulazione del rendering dei metafile e le opzioni di salvataggio markdown.

Aspose.Words 23.10 migliora il rendering, espande le opzioni per caricare e salvare i documenti e consente agli utenti di unire i documenti in nuovi modi.

Aspose.Words 23.11 migliora il lavoro con revisioni, formato XLSX e caratteri nella legenda del grafico con opzioni aggiuntive.

Aspose.Words 23.12 introduce nuove proprietà ed enumerazioni per lavorare con documenti PDF e OOXML, oltre al supporto per le immagini WebP.

### Rendering e stampa

#### Personalizzazione dei titoli degli assi nei grafici DrawingML <sup>23.9</sup>

La capacità di personalizzare i titoli degli assi nei grafici DrawingML è stata introdotta mediante l'implementazione di una nuova proprietà [ChartAxisTitle](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartaxistitle/) e [Title](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartaxis/title/) della classe pubblica.

#### Determinazione della posizione verticale dei caratteri all'interno di un paragrafo <sup>23.9</sup>

È ora possibile definire la posizione verticale dei font all'interno di un paragrafo utilizzando la nuova proprietà pubblica [BaselineAlignment](https://reference.aspose.com/words/it/net/aspose.words/paragraphformat/baselinealignment/) e la nuova enumerazione [BaselineAlignment](https://reference.aspose.com/words/it/net/aspose.words/baselinealignment/).

#### Controllo colore di primo piano <sup>23.10</sup>

È stata aggiunta la possibilità di recuperare il colore di primo piano senza modificatori alle classi [Fill](https://reference.aspose.com/words/it/net/aspose.words.drawing/fill/) e [Stroke](https://reference.aspose.com/words/it/net/aspose.words.drawing/stroke/) tramite la proprietà **BaseForeColor**.

#### Espansione della funzionalità dei grafici <sup>23.10</sup>

La funzionalità delle classi [ChartDataPointCollection](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartseries/) e [ChartFormat](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartformat/) è stata ampliata con nuovi metodi e proprietà.

#### Regola e adatta automaticamente un'immagine a una forma <sup>23.10</sup>

Un modo semplice per regolare e adattare automaticamente un'immagine a una forma particolare è stato fornito tramite il nuovo metodo [FitImageToShape](https://reference.aspose.com/words/it/net/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formattazione predefinita dei caratteri per le voci della legenda del grafico DrawingML <sup>23.11</sup>

La possibilità di specificare la formattazione predefinita dei caratteri per le voci della legenda dei grafici DrawingML è stata aggiunta tramite la proprietà [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Questa funzionalità facilita un aspetto più snello e coerente per gli elementi del grafico, migliorando l'estetica complessiva del documento.

#### Specificare il layout della pagina all'apertura del PDF in Reader <sup>23.12</sup>

È stata aggiunta la possibilità di specificare il layout di pagina da utilizzare all'apertura di un documento in un lettore PDF attraverso l'introduzione di una nuova proprietà [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) nella classe [PdfSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/) e l'introduzione di una nuova enumerazione [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/).

### Caricamento e salvataggio di documenti

#### Specificare un nome di cartella per costruire URI di immagine in Markdown <sup>23.9</sup>

La classe [MarkdownSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/markdownsaveoptions/) è stata ampliata includendo la proprietà [ImagesFolderAlias](https://reference.aspose.com/words/it/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), che permette di specificare il nome della cartella utilizzata per costruire gli URI delle immagini scritte nel documento Markdown.

#### Riduci dimensione output PDF <sup>23.10</sup>

Sono state implementate varie ottimizzazioni del rendering PDF per ridurre le dimensioni dell'output quando si utilizzano le impostazioni [OptimizeOutput](https://reference.aspose.com/words/it/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### Riconoscere i collegamenti ipertestuali durante il caricamento di documenti TXT <sup>23.10</sup>

La funzionalità per riconoscere i collegamenti ipertestuali durante il caricamento di documenti TXT è stata implementata aggiungendo una nuova proprietà [DetectHyperlinks](https://reference.aspose.com/words/it/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Altro

* È stata implementata l'emulazione del rendering del metafile per determinare la dimensione della rasterizzazione, in particolare per la larghezza della penna WMF e la larghezza della penna cosmetica EMF. Per raggiungere questo obiettivo, la proprietà **ScaleWmfFontsToMetafileSize** è stata sostituita con la proprietà [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) ed è stata aggiunta la proprietà [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/it/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* Utilizzando il metodo [InsertDocumentInline](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertdocumentinline/) è stato introdotto un metodo semplificato per inserire un documento in un altro documento nella posizione corrente del cursore. <sup>23.10</sup>
* È stata aggiunta la possibilità di accedere e modificare le proprietà di stile attraverso l'introduzione della nuova proprietà [Locked](https://reference.aspose.com/words/it/net/aspose.words/style/locked/). <sup>23.10</sup>
* Ai metodi della classe [CompositeNode](https://reference.aspose.com/words/it/net/aspose.words/compositenode/) è stato aggiunto un parametro di tipo generico. <sup>23.10</sup>
* È stato implementato un modo per controllare quando una determinata revisione deve essere accettata/rifiutata o meno utilizzando i metodi [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) e [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Questo miglioramento garantisce agli utenti un controllo più preciso sul processo di revisione. <sup>23.11</sup>
* La possibilità di scrivere tutte le sezioni di un documento sullo stesso foglio di lavoro XLSX è stata fornita tramite il nuovo tipo di enumerazione [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) e la nuova proprietà [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* È stato implementato un modo per controllare come verranno utilizzate le estensioni del formato ZIP64 per i documenti OOXML tramite la nuova proprietà Zip64Mode della classe `OoxmlSaveOptions` e la nuova enumerazione Zip64Mode. <sup>23.12</sup>
* È stato introdotto il supporto per l'immagine WebP. Tieni presente che questa funzionalità è disponibile solo per le versioni .NetStandart e .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 23.9](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 23.10](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 23.11](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 23.12](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words per .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 migliora la capacità di lavorare con i dati delle serie di grafici e la capacità di lavorare con documenti ODT, oltre a migliorare le intestazioni/piè di pagina e la disposizione del testo.

Aspose.Words 23.6 espande le opzioni di rendering, aggiunge un nuovo formato di esportazione, migliora il reporting LINQ e gli strumenti LowCode.

Aspose.Words 23.7 migliora le capacità di reporting, aggiunge un nuovo formato di esportazione e introduce modifiche all'utilizzo di tabelle e firme digitali.

Aspose.Words 23.8 espande le capacità di diversi formati, migliora il rendering e aggiunge nuove opzioni per lavorare con i campi

### Formati supportati

* A partire dalla versione 23.6 è possibile salvare un documento in formato XLSX. Ora puoi convertire i tuoi documenti in formato Excel. <sup>23.6</sup>
* A partire dalla versione 23.7, è possibile salvare una pagina o una forma di documento in formato EPS. <sup>23.7</sup>

### Nuove funzionalità di formato

* È stata introdotta la funzionalità per generare automaticamente il sommario (TOC) per i documenti MOBI. <sup>23.8</sup>
* Il costruttore [PdfEncryptionDetails](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) è stato ampliato con [PdfPermissions](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* È stata implementata la modellazione del testo verticale per i metafile EMF. <sup>23.8</sup>

### Rendering e stampa

#### Ottenere e modificare i dati della serie di grafici <sup>23.5</sup>

La funzionalità per ottenere e modificare i dati delle serie di grafici è stata fornita aggiungendo:

* nuove classi: [ChartXValue](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* nuovi tipi di enumerazione: [ChartXValueType](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Supporto per la tipografia avanzata <sup>23.6</sup>

È stato aggiunto il supporto per la tipografia avanzata nel rendering WMF, EMF e EMF+.

#### Contenuto colorato nella pagina <sup>23.6</sup>

È stata aggiunta la proprietà pubblica [PageInfo.Colored](https://reference.aspose.com/words/it/net/aspose.words.rendering/pageinfo/colored/) che indica se la pagina è colorata o meno.

#### Formattazione per le etichette dei dati del grafico <sup>23.6</sup>

È stata implementata la possibilità di impostare la formattazione di riempimento, tratto e didascalia per le etichette dei dati del grafico.

### Mail Merge e reporting

#### Inserimento HTML dinamico per LINQ Reporting Engine <sup>23.6</sup>

È stata aggiunta una nuova modalità di inserimento HTML dinamico per LINQ Reporting Engine.

#### Supporto tag Mustache <sup>23.7</sup>

I tag Mustache sono ora supportati nei metodi [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/it/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) e [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/it/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Aggiornamenti della sintassi del modello del motore di reporting LINQ <sup>23.7</sup>

La sintassi del modello LINQ Reporting Engine ora supporta i metodi di estensione `ElementAt` e ElementAtOrDefault.

#### Specificare la dimensione delle immagini renderizzate <sup>23.8</sup>

È stata introdotta una nuova proprietà pubblica [ImageSize](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/imagesize/) per specificare la dimensione delle immagini renderizzate in pixel.

#### Conserva gli spazi bianchi per i valori stringa JSON – LINQ <sup>23.8</sup>

È stata aggiunta un'opzione a LINQ Reporting Engine per preservare gli spazi vuoti per i valori di stringa JSON.

### <sup>LowCode23.6</sup>

Sono stati aggiunti nuovi metodi LowCode destinati a unire diversi tipi di documenti in un unico documento di output.

### Altro

* È stato implementato il supporto per il testo a capo nelle intestazioni/piè di pagina. <sup>23.5</sup>
* È stata aggiunta la possibilità di rimuovere le firme digitali dai documenti ODT tramite il metodo [RemoveAllSignatures](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23.5</sup>
* È stata aggiunta la proprietà pubblica [PhoneticGuide](https://reference.aspose.com/words/it/net/aspose.words/run/phoneticguide/) per ottenere il testo base e rubino della guida fonetica [Run](https://reference.aspose.com/words/it/net/aspose.words/run/). <sup>23.5</sup>
* È stata aggiunta la possibilità di recuperare un valore di firma digitale da un documento firmato digitalmente come array di byte introducendo una nuova proprietà [SignatureValue](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23.7</sup>
* Le classi [Row](https://reference.aspose.com/words/it/net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/it/net/aspose.words.tables/cell/) sono state estese con nuovi membri pubblici: [Row.NextRow](https://reference.aspose.com/words/it/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/it/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/it/net/aspose.words.tables/cell/nextcell/) e [Cell.PreviousCell](https://reference.aspose.com/words/it/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* È stato aggiunto il supporto per i campi CITAZIONE e BIBLIOGRAFIA. <sup>23.8</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/).

Ulteriori informazioni su [Aspose.Words per .NET 23.7 Note sulla versione](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 23.8](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words per .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 migliora le prestazioni dell'emulazione delle operazioni raster, oltre a migliorare l'esportazione dei documenti e la qualità del rendering.

Aspose.Words 23.2 introduce il salvataggio dei documenti nel formato MOBI, migliora il rendering dei grafici e apporta modifiche notevoli ai dettagli dell'aspetto dei documenti.

Aspose.Words 23.3 migliora l'importazione e il salvataggio dei documenti con nuove proprietà e migliora anche la qualità del lavoro con il colore di sfondo e primo piano e il gradiente radiale.

Aspose.Words 23.4 migliora il calcolo di alcuni parametri e il posizionamento della tabella e del testo circostante.

### Miglioramenti delle prestazioni

#### Emulazione di operazioni raster <sup>23.1</sup>

Le prestazioni e la qualità dell'emulazione delle operazioni raster con i metafile sono state notevolmente migliorate.

### Formati supportati

#### Esporta in MOBI <sup>23.2</sup>

A partire dalla versione 23.2, è possibile salvare un documento in formato MOBI (chiamato anche PRC, AZW – Amazon il formato file e-book proprio di Kindle). Ora non solo puoi caricare documenti MOBI, ma anche esportare i tuoi file in formato MOBI.

### Rendering

#### Lavorare con i colori del tema dell'ombreggiatura <sup>23.1</sup>

È stata implementata la possibilità di lavorare con i colori del tema dell'ombreggiatura.

#### Supporto del coefficiente R quadrato nei grafici DML <sup>23.1</sup>

È stato aggiunto il supporto del coefficiente R quadrato nelle etichette della linea di tendenza del grafico DML durante il rendering.

#### Miglioramenti al rendering del grafico <sup>23.2</sup>

Dalla versione 23.2 il rendering del grafico è stato notevolmente migliorato.

#### Controllo del colore di sfondo e primo piano <sup>23.3</sup>

La classe [Fill](https://reference.aspose.com/words/it/net/aspose.words.drawing/fill/) è stata estesa con un set di nuove proprietà pubbliche relative ai colori di sfondo e primo piano: [ForeThemeColor](https://reference.aspose.com/words/it/net/aspose.words.drawing/fill/forethemecolor/) e [BackThemeColor](https://reference.aspose.com/words/it/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/it/net/aspose.words.drawing/fill/foretintandshade/) e [BackTintAndShade](https://reference.aspose.com/words/it/net/aspose.words.drawing/fill/backtintandshade/).

#### Gradienti radiali con lo shader nativo `SkiaSharp` <sup>23.3</sup>

È stato implementato il rendering dei gradienti radiali con lo shader nativo `SkiaSharp` per .NET Standard.

#### Distanza tra la tabella e il testo circostante <sup>23.4</sup>

È stata aggiunta la possibilità di impostare la distanza tra la tabella e il testo circostante introducendo nuove proprietà nella classe [Table](https://reference.aspose.com/words/it/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/it/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/it/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/it/net/aspose.words.tables/table/distancetop/) e [DistanceBottom](https://reference.aspose.com/words/it/net/aspose.words.tables/table/distancebottom/).

### Caricamento e salvataggio di documenti

#### Genera `TOC` per documenti AZW3 <sup>23.1</sup>

È stata aggiunta la possibilità di generare `TOC` (tabella dei contenuti) per i documenti AZW3 tramite l'uso della proprietà [NavigationMapLevel](https://reference.aspose.com/words/it/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Esportazione di voci di elenco in Markdown <sup>23.1</sup>

È stato fornito un modo per controllare l'esportazione degli elementi dell'elenco nel formato Markdown aggiungendo la proprietà [ListExportMode](https://reference.aspose.com/words/it/net/aspose.words.saving/markdownsaveoptions/listexportmode/) alla classe [MarkdownSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/markdownsaveoptions/).

#### Notifiche di avanzamento del salvataggio del documento <sup>23.3</sup>

È stato implementato il salvataggio delle notifiche di avanzamento per i formati MOBI e AZW3.

#### Regolazione della spaziatura delle frasi e delle parole <sup>23.3</sup>

È stata aggiunta la possibilità di specificare se regolare automaticamente la spaziatura delle frasi e delle parole durante l'importazione del documento introducendo la proprietà [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/it/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Altro

* La possibilità di specificare la regolazione della spaziatura dei caratteri di un documento è stata aggiunta tramite l'implementazione della proprietà [JustificationMode](https://reference.aspose.com/words/it/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* È stato fornito il modo per istruire Aspose.Words se includere caselle di testo, note a piè di pagina e note di chiusura nelle statistiche sul conteggio delle parole aggiungendo la proprietà [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/it/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* Attraverso la proprietà [AutomaticallyUpdate](https://reference.aspose.com/words/it/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup> è stata introdotta una nuova opzione per uno stile di documento, che consente di specificare se lo stile viene ridefinito automaticamente in base al valore appropriato
* È stata aggiunta la possibilità di determinare se [Run](https://reference.aspose.com/words/it/net/aspose.words/run/) è una guida fonetica utilizzando la proprietà [IsPhoneticGuide](https://reference.aspose.com/words/it/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* È stato implementato un modo semplice per lavorare con serie e assi di grafici combinati introducendo la classe [ChartAxisCollection](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chartaxiscollection/) e aggiungendo la proprietà [Chart.Axes](https://reference.aspose.com/words/it/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Alla classe [Shape](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/) <sup>23.4</sup> sono state aggiunte nuove proprietà pubbliche legate al posizionamento e al dimensionamento relativo della forma
* La precisione e le prestazioni del calcolo della luminosità del colore per la risoluzione automatica del colore del testo sono state migliorate in conformità con le ultime versioni di Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Aspose.Words per .NET 23.1 Note sulla versione](/words/net/aspose-words-for-net-23-1-release-notes/).

Ulteriori informazioni su [Aspose.Words per .NET 23.2 Note sulla versione](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

Ulteriori informazioni su [Aspose.Words per .NET 23.4 Note sulla versione](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Guarda anche

{{% alert color="primary" %}}

Questa pagina contiene le ultime notizie sulle versioni degli ultimi 2 anni. Per dettagli sulle versioni precedenti, consultare le pagine [Note di rilascio'](/words/net/release-notes/) nelle sezioni pertinenti.

{{% /alert %}}
