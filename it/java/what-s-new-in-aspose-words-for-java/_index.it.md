---
title: Cosa c'è di nuovo
second_title: Aspose.Words per Java
articleTitle: Cosa c'è di nuovo Aspose.Words per Java
linktitle: Cosa c'è di nuovo Aspose.Words per Java
type: docs
description: "Aspose.Words per Java espande e migliora ogni giorno. In questa pagina, è possibile conoscere le caratteristiche enormi e più interessanti del prodotto."
weight: 2
url: /it/java/what-s-new-in-aspose-words-for-java/
---

Questa pagina descrive il nuovo più interessante Aspose.Words caratteristiche introdotte nelle versioni recenti.

## Aspose.Words per Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 espande le opzioni per gli assiemi, migliora le capacità di rendering ed espande alcune altre opzioni.

Aspose.Words 24.6 migliora le opzioni di rendering, migliora le funzionalità di ricerca e confronto ed espande molte altre funzionalità.

Aspose.Words 24.7 cambia il modo in cui lavori con ActiveX, espande le capacità di rendering e l'esportazione nei formati Markdown e XLSX.

Aspose.Words 24.8 migliora la personalizzazione dei grafici con un controllo preciso sulle etichette degli assi, espande la gestione dei font, migliora la gestione della struttura dei documenti e aggiunge nuove funzionalità per l'esportazione HTML/XAML, la funzionalità PDF, la conversione dei documenti e le firme digitali.

### Formati supportati

A partire dalla versione 24.7, è supportata l'esportazione in PDF/UA-2 per garantire l'accessibilità agli utenti con disabilità.

### Rendering e stampa

#### Modifiche a Charts, Shapes e DrawingML <sup>24.5</sup>

- È stato implementato il rendering degli effetti DrawingML per la grafica SVG, estendendo le funzionalità precedenti limitate alle immagini.
- È stato introdotto il supporto per la creazione di grafici combinati e la regolazione di proprietà come larghezza del gap, sovrapposizione e scala di bolle all'interno dei gruppi di serie aggiungendo [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose. words/chartseriesgroup/) e le classi [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) e le classi [SeriesGroups](https://reference.aspose.com/ parole/java/com.aspose.words/chart/#getSeriesGroups).
- La funzionalità per manipolare l'effetto SoftEdge delle forme è stata implementata aggiungendo la classe [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- La possibilità di modificare i valori di regolazione delle forme è stata implementata aggiungendo [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) e [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) classi pubbliche e [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/# getAdjustments) proprietà.

#### Modifiche a grafici, forme e disegni <sup>24.6</sup>

* Le funzionalità di creazione dei grafici sono state migliorate. Ora puoi creare una più ampia varietà di grafici, tra cui *Treemaps*, *Sunbursts*, *Istogrammi*, grafici *Pareto*, grafici *Box & Whisker*, *Cascate* e *Imbuti*. Ciò ti consente di visualizzare i tuoi dati in un modo più diversificato e informativo.
* Il controllo del colore per la formattazione delle ombre è stato migliorato. Puoi ottenere un controllo più preciso sull'aspetto dei tuoi documenti accedendo ai colori delle ombre.
* L'aumento delle prestazioni per il rendering dello sfondo è stato migliorato. Puoi velocizzare notevolmente il rendering di sfondi contenenti piccoli elementi grazie alla tecnologia di piastrellatura nativa.
* Sono stati aggiunti gradienti realistici per le forme. Ora puoi creare forme DML con gradienti non lineari, imitando lo stile visivo di Microsoft Word per un aspetto più raffinato.

#### Personalizzazione etichetta dati grafico <sup>24.7</sup>

È stata aggiunta la possibilità di personalizzare le etichette dei dati del grafico come **Orientation** e **Rotation**.

#### Stile personalizzato dei numeri per i livelli di elenco <sup>24.7</sup>

È stato aggiunto un setter per la proprietà pubblica [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Ora puoi definire uno stile numerico personalizzato per i livelli di elenco.

#### Cambiamenti nell'utilizzo di ActiveX <sup>24.7</sup>

* Le proprietà degli oggetti ActiveX possono ora essere modificate, offrendoti un maggiore controllo sul loro comportamento.
* È stata aggiunta la possibilità di modificare il valore del controllo ActiveX del pulsante di opzione per abilitare l'interazione dinamica.
* È stata aggiunta la possibilità di impostare una casella di controllo ActiveX su "selezionata" o "deselezionata".

#### Controllo sull'orientamento e la rotazione delle etichette di spunta degli assi dei grafici <sup>24.8</sup>

È stato aggiunto un controllo preciso sull'orientamento e la rotazione delle etichette di spunta degli assi dei grafici per una personalizzazione più comoda dei grafici: la classe [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) è stata estesa con nuove proprietà **Orientation** e **Rotation**.

#### Sostituzione della barra rovesciata con il simbolo dello yen <sup>24.8</sup>

L'esportazione HTML e XAML retrocompatibile per la sostituzione del carattere barra rovesciata con il simbolo dello yen è stata migliorata. Per ottenere ciò, la proprietà **ReplaceBackslashWithYenSign** è stata aggiunta alle classi [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) e [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Utilizzo di tag SDT come nomi di campi modulo durante l'esportazione in PDF <sup>24.8</sup>

L'esportazione PDF con supporto per l'utilizzo di tag SDT come nomi di campi modulo è stata migliorata aggiungendo una nuova proprietà **UseSdtTagAsFormFieldName** alla classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Conversione, caricamento e salvataggio di documenti

#### Esportazione dei collegamenti nel formato Markdown <sup>24.7</sup>

È stata aggiunta la possibilità di controllare l'esportazione dei collegamenti in formato Markdown tramite l'implementazione della proprietà [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

È stata introdotta una nuova classe **LowCode.Converter**, progettata per fornire un set di metodi per convertire vari tipi di documenti con una singola riga di codice.

### Cerca e confronta

#### Opzioni di confronto avanzate <sup>24.6</sup>
È stata aggiunta la possibilità di semplificare i flussi di lavoro di analisi dei dati con funzionalità di confronto migliorate. Ciò include una nuova opzione [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) e un'interfaccia riprogettata per confronti avanzati.

### Altro

* È stata implementata la funzione per eliminare le pagine vuote da un documento aggiungendo il metodo [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* È stata fornita la possibilità di verificare la presenza di macro VBA senza caricare un documento aggiungendo [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) proprietà. <sup>24.5</sup>
* Ora è supportato il mantenimento della numerazione della fonte durante l'inserimento di un documento utilizzando LINQ Reporting Engine. <sup>24.5</sup>
* È stata aggiunta una nuova proprietà [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) che fornisce un timestamp più preciso per i commenti, migliorando l'organizzazione e la tracciabilità. <sup>24.6</sup>
* Il motore di reporting LINQ è stato migliorato. Sono state effettuate la rimozione selettiva dei paragrafi vuoti e la definizione di messaggi personalizzati per i membri degli oggetti mancanti, portando a report più chiari e informativi. <sup>24.6</sup>
* Il formato data/ora viene ora rilevato automaticamente per un'esportazione senza interruzioni nel formato XLSX. <sup>24.7</sup>
* È stata aggiunta la proprietà pubblica [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), che consente di verificare se un progetto VBA è protetto. <sup>24.7</sup>
* Le informazioni sui font sono state ampliate con la proprietà **EmbeddingLicensingRights** aggiunta alle classi [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) e [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* È stato aggiunto un modo per cancellare in modo efficiente intestazioni e piè di pagina di sezione preservando le filigrane per lavorare in modo più accurato con la struttura del documento. Per cancellare intestazioni e piè di pagina di sezione, utilizzare il nuovo metodo pubblico **ClearHeadersFooters**. <sup>24.8</sup>
* È stata abilitata la firma digitale dei documenti XPS tramite [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/): è stata aggiunta una nuova proprietà **DigitalSignatureDetails** a questo scopo. <sup>24.8</sup>

{{% alert color="primary" %}}

Ulteriori informazioni sulle [Note sulla versione di Aspose.Words per Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Ulteriori informazioni sulle [Note sulla versione di Aspose.Words per Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Ulteriori informazioni sulle [Note sulla versione di Aspose.Words per Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Ulteriori informazioni sulle [Note sulla versione di Aspose.Words per Java 24.8](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 migliora l'esperienza di gestione dei colori dei colpi, migliora gli oggetti OLE e il reporting LINQ, così come introduce una nuova Bibliografia Fonti pubbliche API.

Aspose.Words 24.2 grafici espansi API, gestione dello stile e opzioni LINQ. Questa versione Aspose.Words ha anche introdotto la capacità di specificare SvgSaveOptions durante il rendering, caricamento di controllo più flessibile Markdown file, e lavorare con testo di riferimento per le note a piè di pagina e le note finali.

Aspose.Words 24.3 introduce un nuovo lettore TIFF/Writer e l'emulazione di operazioni di raster binario per i metafile WMF. Aspose.Words 24.3 continua anche ad espandere i grafici API.

Aspose.Words 24.4 migliora il salvataggio dei formati, alcune opzioni di rendering, nonché migliora il lavoro con le firme digitali.

### Formati supportati <sup>24.4</sup>

Il formato immagine **WebP** moderno è ora supportato in Aspose.Words. Ora è possibile leggere e inserire immagini WebP nei documenti, nonché salvare immagini nel formato WebP.

### Rendering e stampa

#### Stroke controllo colore <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) classe è stata estesa con una serie di nuove proprietà pubbliche relative alla gestione dei colori dei colpi: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) e [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) e [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Disegno di graficiML API Estensione <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** continua ad essere ampliato.

#### Incorpora i font dichiarati nelle regole @font-face <sup>24.4</sup>

È stata aggiunta la possibilità di incorporare i font dichiarati nelle regole @font-face nelle definizioni del font del documento risultante aggiungendo una nuova proprietà chiamata [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Lavora con la formattazione effetto glow e riflessione <sup>24.4</sup>

È stata implementata la possibilità di lavorare con la formattazione effetto glow e riflessione per un oggetto di disegno.

### Caricamento e salvataggio dei documenti

#### Specificare SvgSaveOptions durante il rendering <sup>24.2</sup>

La capacità di specificare [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) durante il rendering è stato aggiunto utilizzando [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) e [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) metodi.

#### Conserva le linee vuote durante il caricamento Markdown file <sup>24.2</sup>

La capacità di preservare le linee vuote durante il caricamento Markdown i file sono stati aggiunti.

#### Un nuovo lettore TIFF/Writer <sup>24.3</sup>

Un nuovo lettore/scrittore TIFF per Aspose.Words per .NET Standard, .NET 6 e più tardi è stato sviluppato. Aspose.Words per .NET 24.3 ha aggiunto il supporto per la lettura delle immagini TIFF con i tipi di compressione JPEG e Old JPEG, e ha anche migliorato significativamente la qualità delle operazioni di lettura e scrittura.

### Altri

* # La capacità di modificare il testo del `TextBox` Il controllo OLE è stato introdotto aggiungendo un nuovo [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) proprietà al nuovo [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) classe. 24.1 <sup>24.1</sup>
* The Bibliography Sources public API è stato implementato aggiungendo alcuni nuovi [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) e [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) classi e un [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) enumerazione, così come aggiungendo una nuova [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) proprietà alla [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe. <sup>24.1</sup>
* API per limitare l'accesso ai membri del tipo utilizzando la sintassi del modello per il LINQ Reporting Engine è stato fornito. <sup>24.1</sup>
* Nuove proprietà pubbliche [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), e [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) per una migliore gestione dello stile sono stati aggiunti al [Style](https://reference.aspose.com/words/net/aspose.words/style/) classe. <sup>24.2</sup>
* # La funzionalità per recuperare il testo del segno di riferimento effettivo per le note a piè di pagina e le note finali è stata migliorata con [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) proprietà e [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) metodo. <sup>24.2</sup>
* Compatibilità con `Word 2016` grafici per i `LINQ Reporting Engine` è stato abilitato. <sup>24.2</sup>
* E' stata implementata l'emulazione delle operazioni binarie di raster per i metafile WMF. <sup>24.3</sup>
* È stata abilitata la possibilità di definire opzioni di firma per i documenti all'interno di SaveOptions aggiungendo una nuova classe chiamata [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) con nuovi membri pubblici, nonché aggiungendo nuove proprietà alle classi [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) e [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 24.1 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Scopri di più su [Aspose.Words per Java 24.2 Nota di rilascio.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Scopri di più su [Aspose.Words per Java 24.3 Nota di rilascio.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Scopri di più su [Aspose.Words per Java 24.4 Nota di rilascio.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words per Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 espande le opzioni di rendering, l'emulazione di rendering del metafile e markdown salvare le opzioni.

Aspose.Words 23.10 migliora il rendering, espande le opzioni per il caricamento e il salvataggio dei documenti, e consente agli utenti di unire i documenti in modi nuovi.

Aspose.Words 23.11 migliora il lavoro con revisioni, formato XLSX e font sulla leggenda del grafico con opzioni aggiuntive.

Aspose.Words 23.12 introduce nuove proprietà enumerazioni per lavorare con documenti PDF, supporto per WebP immagini, e aggiornato Bouncy Castle biblioteca.

### Rendering e stampa

#### Personalizzazione dei titoli Axes in DrawingML Grafico <sup>23.9</sup>

La capacità di personalizzare i titoli degli assi nei grafici DrawingML è stata introdotta dall'implementazione di una nuova classe pubblica [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) e [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) proprieta'.

#### Determinazione della posizione verticale dei caratteri all'interno di un paragrafo <sup>23.9</sup>

È ora possibile definire la posizione verticale dei caratteri all'interno di un paragrafo utilizzando il nuovo pubblico [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) proprietà e la nuova [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) enumerazione.

#### Controllo del colore del primo piano <sup>23.10</sup>

La capacità di recuperare il colore di primo piano senza modificatori è stato aggiunto al [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) e [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) classi attraverso la **BaseForeColor** proprieta'.

#### Ampliamento della funzionalità dei grafici <sup>23.10</sup>

La funzionalità della [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), e [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) classi è stato ampliato con nuovi metodi e proprietà.

#### Regolare automaticamente e adattare un'immagine in una forma <sup>23.10</sup>

Un modo semplice per regolare automaticamente e adattare un'immagine all'interno di una particolare forma è stato fornito attraverso la nuova [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) metodo.

#### Formattazione del carattere predefinito per il disegno M La leggenda del grafico <sup>23.11</sup>

La capacità di specificare la formattazione del carattere predefinito per le voci leggendarie dei grafici DrawingML è stata aggiunta tramite il **Font** proprieta'. Questa funzione facilita un aspetto più snella e coerente per gli elementi grafici, migliorando l'estetica del documento generale.

#### Specificare layout di pagina quando si apre PDF in lettore <sup>23.12</sup>

La capacità di specificare il layout della pagina da utilizzare quando si apre un documento in un lettore PDF è stata aggiunta attraverso l'introduzione di un nuovo [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) proprietà alla [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe e l'introduzione di un nuovo [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) enumerazione.

### Caricamento e salvataggio dei documenti

#### Specificare un nome della cartella per costruire URI di immagine in Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) la classe è stata ampliata includendo [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) proprietà, che consente di specificare il nome della cartella utilizzata per costruire URI dell'immagine scritta nel Markdown documento.

#### Ridurre PDF Dimensioni di uscita <sup>23.10</sup>

Varie ottimizzazioni di rendering PDF per ridurre le dimensioni di output quando si utilizza [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) le impostazioni sono state implementate.

#### Riconoscere i collegamenti ipertestuali durante il caricamento dei documenti TXT <sup>23.10</sup>

La funzione per riconoscere i collegamenti ipertestuali quando si caricano i documenti TXT è stata implementata aggiungendo un nuovo [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) proprieta'.

### Altri

- Emulazione di rendering Metafile per determinare la dimensione di rasterizzazione è stata implementata, specificamente per la larghezza della penna WMF e la larghezza della penna cosmetica EMF. Per raggiungere questo obiettivo, **ScaleWmfFontsToMetafileSize** la proprietà è stata sostituita con [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) proprietà e [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) è stato aggiunto. <sup>23.9</sup>
- È stato introdotto un metodo semplificato per l'inserimento di un documento in un altro documento nella posizione del cursore corrente utilizzando il [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) metodo. <sup>23.10</sup>
- No. La capacità di accedere e modificare le proprietà dello stile è stata aggiunta attraverso l'introduzione del nuovo [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) proprieta'. <sup>23.10</sup>
- È stato aggiunto un parametro generico di tipo ai metodi [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) classe. <sup>23.10</sup>
- Un modo di controllare quando una certa revisione dovrebbe essere accettata/rigettata o non è stata attuata utilizzando [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) e [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) metodi. Questo miglioramento garantisce agli utenti un controllo più accurato sul processo di revisione. <sup>23.11</sup>
- No. La capacità di scrivere tutte le sezioni di un documento sullo stesso foglio di lavoro XLSX è stata fornita attraverso il nuovo [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) tipo di enumerazione e il nuovo [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) proprieta'. <sup>23.11</sup>
- Supporto per WebP è stata introdotta l'immagine. Si prega di notare che questa funzione è disponibile solo per .NetStandart e .NET6+ versioni. <sup>23.12</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 23.9 Nota di rilascio](/words/java/aspose-words-for-java-23-9-release-notes/).

Scopri di più su [Aspose.Words per Java 23.10 Note di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Scopri di più su [Aspose.Words per Java 23.11 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Scopri di più su [Aspose.Words per Java 23.12 Note di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 migliora la capacità di lavorare con i dati della serie di grafici e la capacità di lavorare con i documenti ODT, così come migliorare intestazioni / piedi e il loro involucro di testo.

Aspose.Words 23.6 amplia le opzioni di rendering, aggiunge un nuovo formato di esportazione, migliora il reporting LINQ e LowCode strumenti.

Aspose.Words 23.7 migliora le funzionalità di reporting, aggiunge un nuovo formato di esportazione e introduce modifiche al lavoro con tabelle e firme digitali.

Aspose.Words 23.8 amplia le capacità di diversi formati, migliora il rendering e aggiunge nuove opzioni per lavorare con i campi

### Formati supportati

* A partire dalla versione 23.6, è possibile salvare un documento in formato XLSX. Ora è possibile convertire i documenti in formato Excel. <sup>23.6</sup>

* A partire dalla versione 23.7, è possibile salvare una pagina di documento o la forma in formato EPS. <sup>2.</sup>

* # ### Nuove funzioni di formato

  - È stata introdotta la funzionalità per generare automaticamente Table of Contents (TOC) per i documenti MOBI. <sup>23.8</sup>
  - The [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) costruttore è stato ampliato con [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - È stata implementata la modellazione del testo verticale per i metafile EMF. <sup>23.8</sup>

### Rendering

#### Ottieni e modifica Dati della serie Grafico <sup>2.</sup>

La funzione per ottenere e modificare i dati della serie di grafici è stata fornita aggiungendo:

- nuove classi: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nuovi tipi di enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Supporto per la tipografia avanzata <sup>23.6</sup>

È stato aggiunto il supporto per la tipografia avanzata nel rendering WMF, EMF ed EMF+.

#### Contenuto colorato nella pagina <sup>23.6</sup>

La proprietà pubblica [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), indicando se la pagina è colorata o meno, è stato aggiunto.

#### Formattazione per Etichette Dati Grafico <sup>23.6</sup>

La capacità di impostare la formattazione di riempimento, ictus e callout per le etichette dei dati del grafico è stata implementata.

### Mail Merge e Relazione

#### Inserimento HTML dinamico per LINQ Reporting Engine <sup>23.6</sup>

È stato aggiunto un nuovo modo di inserimento HTML dinamico per LINQ Reporting Engine.

#### Mustache Tag Supporto <sup>2.</sup>

Mustache i tag sono ora supportati nel [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) e [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) metodi.

#### LINQ Reporting Engine Template Syntax Aggiornamenti <sup>2.</sup>

La sintassi del modello LINQ Reporting Engine supporta ora `ElementAt` e metodi di estensione ElementAtOrDefault.

#### Specificare la dimensione delle immagini resered <sup>23.8</sup>

Una nuova proprietà pubblica **ImageSize** per specificare la dimensione delle immagini rese in pixel è stato introdotto.

#### Conservare gli spazi bianchi per i valori di stringa JSON – LINQ <sup>23.8</sup>

È stata aggiunta un'opzione al LINQ Reporting Engine per preservare gli spazi bianchi per i valori della stringa JSON.

### LowCode <sup>23.6</sup>

Nuovo LowCode sono stati aggiunti metodi per unire diversi tipi di documenti in un unico documento di output.

### Altri

- Il supporto per l'involucro di testi in intestazioni/piedi è stato implementato. <sup>2.</sup>
- No. La capacità di rimuovere le firme digitali dai documenti ODT è stata aggiunta attraverso il [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) metodo. <sup>2.</sup>
- No. La proprietà pubblica [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) per ottenere il testo base e rubino della guida fonetica [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) è stato aggiunto. <sup>2.</sup>
- No. La capacità di recuperare un valore di firma digitale da un documento firmato digitalmente come array byte è stata aggiunta introducendo un nuovo [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) proprieta'. <sup>2.</sup>
- The [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) le classi sono state estese con nuovi membri pubblici – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), e [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>2.</sup>
- È stato aggiunto il supporto per i campi CITAZIONE e BIBLIOGRAFIA. <sup>23.8</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 23.5 Nota di rilascio](/words/java/aspose-words-for-java-23-5-release-notes/).

Scopri di più su [Aspose.Words per Java 23.6 Nota di rilascio](/words/java/aspose-words-for-java-23-6-release-notes/).

Scopri di più su [Aspose.Words per Java 23.7 Nota di rilascio](/words/java/aspose-words-for-java-23-7-release-notes/).

Scopri di più su [Aspose.Words per Java 23.8 Nota di rilascio](/words/java/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 migliora le prestazioni dell'emulazione del funzionamento del raster e migliora la qualità di esportazione e rendering dei documenti.

Aspose.Words 23.2 introduce documenti di salvataggio nel formato MOBI, migliora il rendering del grafico e apporta notevoli modifiche ai dettagli dell'aspetto del documento.

Aspose.Words 23.3 migliora l'importazione e il risparmio di documenti con nuove proprietà, e migliora anche la qualità del lavoro con sfondo e primo piano colore e gradiente radiale.

Aspose.Words 23.4 migliora il calcolo di alcuni parametri e il posizionamento della tabella e del testo circostante.

### Miglioramenti delle prestazioni

#### Emulazione delle operazioni di raster <sup>2.</sup>

Le prestazioni e la qualità dell'emulazione delle operazioni di raster con i metafile sono state notevolmente migliorate.

### Formati supportati

#### Esportazione a MOBI <sup>23.2</sup>

A partire dalla versione 23.2, è possibile salvare un documento in formato MOBI (chiamato anche PRC, AZW – Amazon Il formato di file e-book di Kindle). Ora è possibile non solo caricare i documenti MOBI, ma anche esportare i file in formato MOBI.

### Rendering

#### Lavorare con colori tema ombreggiatura <sup>2.</sup>

La capacità di lavorare con ombreggiatura colori tema è stato implementato.

#### Supporto di R-squared Coefficient in grafici DML <sup>2.</sup>

Supporto del coefficiente R-squared nelle etichette trendline grafico DML quando il rendering è stato aggiunto.

#### Miglioramenti di rendering grafico <sup>23.2</sup>

Dal 23.2 il rendering grafico è stato notevolmente migliorato.

#### Background e controllo del colore del primo piano <sup>23.3</sup>

The [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) classe è stata estesa con una serie di nuove proprietà pubbliche relative ai colori di sfondo e primo piano: **ForeThemeColor** e **BackThemeColor**, **ForeTintAndShade** e **BackTintAndShade**.

#### Gradienti radiali con `SkiaSharp` Nativo Shader <sup>23.3</sup>

Rendering di gradienti radiali con il `SkiaSharp` ombra nativo per .NET Standard è stato implementato.

#### Distanza tra la tabella e il testo circostante <sup>23.4</sup>

La capacità di impostare la distanza tra la tabella e il testo circostante è stata aggiunta introducendo nuove proprietà [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) classe: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), e [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Caricamento e salvataggio dei documenti

#### Generazione `TOC` per documenti AZW3 <sup>2.</sup>

La capacità di generare `TOC` (tabella dei contenuti) per i documenti AZW3 è stato aggiunto attraverso l'uso del [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) proprieta'.

#### Elenco degli articoli da esportare Markdown <sup>2.</sup>

Un modo per controllare l'esportazione di elementi di elenco per Markdown il formato è stato fornito aggiungendo [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) proprietà alla [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) classe.

#### Risparmio di documenti <sup>23.3</sup>

È stato implementato il salvataggio delle notifiche di progresso per i formati MOBI e AZW3.

#### Regolazione di separazione e spaziatura di parole <sup>23.3</sup>

La capacità di specificare se regolare la frase e la parola che spaziano automaticamente all'importazione del documento è stata aggiunta introducendo **AdjustSentenceAndWordSpacing** proprieta'.

### Altri

- No. La capacità di specificare la regolazione della spaziatura del carattere di un documento è stata aggiunta attraverso il [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) implementazione della proprietà <sup>23.2</sup>
- La strada per istruire Aspose.Words se includere caselle di testo, note a piè di pagina, e le note finali nelle statistiche del conteggio delle parole sono state fornite aggiungendo [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) proprietà <sup>23.2</sup>
- Una nuova opzione per uno stile di documento, che consente di specificare se lo stile viene automaticamente ridefinito in base al valore appropriato, è stato introdotto attraverso il [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) proprietà <sup>23.2</sup>
- No. La capacità di determinare se [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) è stata aggiunta una guida fonetica utilizzando **IsPhoneticGuide** proprietà <sup>23.4</sup>
- Un modo semplice per lavorare con serie e assi di grafici combo è stato implementato introducendo **ChartAxisCollection** classe e l'aggiunta **Chart.Axes** proprietà <sup>23.4</sup>
- Nuove proprietà pubbliche connesse alla forma relativa posizionamento e dimensionamento sono state aggiunte al [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe <sup>23.4</sup>
- L'accuratezza e le prestazioni del calcolo della luminosità del colore per la risoluzione automatica del colore del testo sono state migliorate in conformità alle ultime versioni di Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 23.1 Nota di rilascio](/words/java/aspose-words-for-java-23-1-release-notes/).

Scopri di più su [Aspose.Words per Java 23.2 Nota di rilascio](/words/java/aspose-words-for-java-23-2-release-notes/).

Scopri di più su [Aspose.Words per Java 23.3 Nota di rilascio](/words/java/aspose-words-for-java-23-3-release-notes/).

Scopri di più su [Aspose.Words per Java 23.4 Nota di rilascio](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 amplia le opzioni per il caricamento e il salvataggio dei documenti e migliora l'interazione con alcune altre opzioni.

Aspose.Words 22.10 migliora le opzioni di trovare e sostituire, migliora gli oggetti OLE e espande la funzionalità dell'elenco.

Aspose.Words 22.11 amplia la sua funzionalità con nuove opzioni per un lavoro più conveniente con oggetti già familiari: campi, stampa, OLE e documenti strutturati.

Aspose.Words 22.12 migliora le funzionalità di rendering e introduce opzioni per lavorare con margini quando si carica / salva un documento.

### Miglioramenti delle prestazioni <sup>22.12</sup>

È stata introdotta un'ottimizzazione che riduce significativamente la profondità di nidificazione dello stato grafico durante il rendering in PDF per mantenere la conformità delle specifiche.

### Rendering e stampa

#### Stampa Non colorato Pagine su una stampante a colori <sup>22.11</sup>

È stata implementata una modalità di stampa personalizzata colorata/grayscale aggiungendo una nuova **GrayscaleAuto** valore al [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) enumerazione.

Una nuova proprietà di stampa consente agli utenti di controllare come vengono stampate pagine non colorate se il dispositivo supporta la stampa a colori. Questa funzione può essere utile se gli utenti vogliono stampare automaticamente pagine non colorate utilizzando solo la modalità di stampa su scala grigia.

#### Nuove proprietà di rendering dei bordi <sup>22.12</sup>

Nuove proprietà pubbliche [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) e [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) sono stati presentati.

#### Formula lineare Trendline per il rendering di DrawingML <sup>22.12</sup>

Il rendering lineare della formula trendline per i grafici DrawingML è stato implementato.

#### Impostazioni del carattere di ritorno per Google Noto Fonti <sup>22.12</sup>

Le impostazioni predefinite per l'errore del carattere Google Noto i caratteri sono stati aggiornati.

### Caricamento e salvataggio dei documenti

#### Cache Header o Footer forme per ridurre formato PDF <sup>22.9</sup>

La capacità di nascondere le forme di intestazione/footer per ridurre le dimensioni del file PDF di output è stata implementata aggiungendo un nuovo [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) proprieta'.

#### Rilevamento automatico della numerazione quando si carica un documento <sup>22.9</sup>

La capacità di specificare la [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) proprietà sul caricamento del testo è stato implementato attraverso un esteso del [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) classe.

#### Specificare una Particolare Tipo di margine <sup>22.12</sup>

La capacità di specificare un particolare [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) tipo per la sezione indicata è stato implementato.

### Cerca e confronta <sup>22.10</sup>

La capacità di ignorare [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) su trovare e sostituire le opzioni è stato implementato aggiungendo una nuova [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) proprietà alla [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) classe.

### Altri

- È stata aggiunta una nuova funzionalità per ottenere FieldEQ come OfficeMath. <sup>22.9</sup>
- No. La creazione di tag di documenti strutturati di Group tipo al livello di riga è stato permesso. <sup>22.9</sup>
- Gli oggetti e i controlli OLE sono ora trattati come immagini metafile quando si converte un documento in HTML. <sup>22.10</sup>
- Una nuova funzionalità per verificare che sia stato creato uno specifico elenco dallo stesso modello dell'elenco comparato introducendo un nuovo [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) metodo nel [List](https://reference.aspose.com/words/java/com.aspose.words/list/) classe. <sup>22.10</sup>
- No. La capacità di creare nuovi tag di documenti strutturati [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) tipo è stato aggiunto. <sup>22.11</sup>
- È stata fornita la capacità di monitorare il progresso dell'aggiornamento del campo. <sup>22.11</sup>
- Un nuovo **EmbedAttachments** proprietà che consente agli utenti di incorporare gli allegati OLE da un documento sorgente nel documento PDF di uscita è stato introdotto. <sup>22.11</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 22.9 Nota di rilascio](/words/java/aspose-words-for-java-22-9-release-notes/).

Scopri di più su [Aspose.Words per Java 22.10 Note di rilascio](/words/java/aspose-words-for-java-22-10-release-notes/).

Scopri di più su [Aspose.Words per Java 22.11 Nota di rilascio](/words/java/aspose-words-for-java-22-11-release-notes/).

Scopri di più su [Aspose.Words per Java 22.12 Note di rilascio](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Vedi anche

{{% alert color="primary" %}}

Questa pagina contiene le ultime notizie di rilascio per gli ultimi 2 anni. Per dettagli sulle versioni precedenti, vedere il [Nota di rilascio '](/words/java/release-notes/) pagine nelle relative sezioni.

{{% /alert %}}
