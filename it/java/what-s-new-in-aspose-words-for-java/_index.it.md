---
title: Cosa c'è di nuovo
second_title: Aspose.Words per Java
articleTitle: Novità in Aspose.Words per Java
linktitle: Novità in Aspose.Words per Java
type: docs
description: "Aspose.Words per Java si espande e migliora ogni giorno. In questa pagina, puoi conoscere le caratteristiche enormi e più interessanti del prodotto."
weight: 2
url: /it/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

Questa pagina descrive le nuove funzionalità Aspose.Words più interessanti introdotte nelle ultime versioni.

## Aspose.Words per Java 24.9, 24.10

Aspose.Words 24.9 introduce l'inserimento group shape e l'inserimento StructuredDocumentTag tramite DocumentBuilder, migliora il rendering dei grafici radiali con graduazioni, migliora le firme digitali con il supporto XAdES-EPES, aggiunge il riconoscimento della sottolineatura Markdown e fornisce l'accesso ai separatori di note a piè di pagina/note di chiusura.

Aspose.Words 24.10 introduce il supporto avanzato del controllo ActiveX con la creazione di CommandButton, il nuovo controllo della visibilità delle forme, la possibilità di esportare group shapes, una migliore esportazione Markdown per le tabelle, la formattazione dei grafici per i grafici Pie e Doughnut, una migliore gestione della codifica Big5 e il supporto per i font taiwanesi obsoleti.

### Rendering e stampa

#### Graduazioni su grafici radiali <sup>24.9</sup>

È stato implementato il rendering delle graduazioni su grafici radiali.

#### CommandButton Controlli ActiveX <sup>24.10</sup>

La possibilità di creare controlli ActiveX CommandButton è stata introdotta aggiungendo un nuovo metodo pubblico [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl) e una nuova classe pubblica [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### Visibilità della forma di controllo <sup>24.10</sup>

È stata aggiunta una nuova proprietà pubblica [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden) per controllare la visibilità delle forme.

#### Variazioni nei grafici Pie e Doughnut <sup>24.10</sup>

Diverse nuove proprietà pubbliche sono state aggiunte ai grafici format Pie e Doughnut.

### Conversione, caricamento e salvataggio di documenti

#### Formattazione sottolineata durante il caricamento dei file Markdown <sup>24.9</sup>

L'opzione per riconoscere la formattazione sottolineata durante il caricamento dei documenti Markdown è stata incorporata aggiungendo una nuova proprietà pubblica [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### Esportazione di tabelle come HTMLquando si salva in Markdown <sup>24.10</sup>

Un'opzione per esportare tabelle come HTML quando si salvano documenti in formato Markdown è stata implementata aggiungendo una nuova proprietà pubblica [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml) e un'enumerazione [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### Firme digitali

#### Firma documenti con XAdES-EPES <sup>24.9</sup>

La possibilità di firmare documenti con firme di livello XAdES-EPES XML-DSig è stata introdotta aggiungendo una nuova proprietà pubblica [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) e una nuova enumerazione pubblica [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Altri

* Un nuovo metodo pubblico [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) è stato aggiunto a group shapes. <sup>24.9</sup>
* Un nuovo metodo pubblico [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) è stato aggiunto per inserire **StructuredDocumentTags** in un documento. <sup>24.9</sup>
* L'accesso pubblico ai separatori di note a piè di pagina/note di chiusura è stato fornito aggiungendo alcune classi e proprietà pubbliche. <sup>24.9</sup>
* La possibilità di raggruppare singole forme, group shapes insieme, e raggruppare direttamente entrambe le forme e group shapes è stata introdotta aggiungendo il metodo [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...). <sup>24.10</sup>
* La gestione della codifica Big5 per le tabelle cmap TrueType è stata migliorata. <sup>24.10</sup>
* Il supporto per i font taiwanesi obsoleti è stato migliorato. <sup>24.10</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 24.9 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

Scopri di più su [Aspose.Words per Java 24.10 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 espande le opzioni per gli assembly, migliora le capacità di rendering ed espande alcune altre opzioni.

Aspose.Words 24.6 migliora le opzioni di rendering, migliora la funzionalità di ricerca e confronto e amplia diverse altre funzionalità.

Aspose.Words 24.7 modifica il modo in cui si lavora con ActiveX, espande le capacità di rendering e esporta nei formati Markdown e XLSX.

Aspose.Words 24.8 migliora la personalizzazione dei grafici con un controllo preciso sulle etichette degli assi, espande la gestione dei font, migliora la gestione della struttura dei documenti e aggiunge nuove funzionalità per l'esportazioneHTML/XAML, la funzionalità PDF, la conversione dei documenti e le firme digitali.

### Formati supportati

A partire dalla versione 24.7, l'esportazione a PDF/UA-2 è supportata per garantire l'accessibilità per gli utenti con disabilità.

### Rendering e stampa

#### Cambiamenti in grafici, forme e DrawingML <sup>24.5</sup>

- È stato implementato il rendering degli effetti DrawingML per la grafica SVG, che estende le funzionalità precedenti limitate alle immagini.
- Il supporto per la creazione di grafici combinati e la regolazione di proprietà come larghezza spazio, sovrapposizione e scala a bolle all'interno dei gruppi di serie è stato introdotto aggiungendo le classi [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) e [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) e la proprietà [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups).
- La funzionalità per manipolare l'effetto SoftEdge delle forme è stata implementata aggiungendo la classe [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- La possibilità di modificare regolare i valori delle forme è stata implementata aggiungendo le classi pubbliche [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) e [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) e la proprietà [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments).

#### Cambiamenti nei grafici, nelle forme e nel disegno <sup>24.6</sup>

- Le capacità di creazione di grafici sono state migliorate. È ora possibile creare una più ampia varietà di grafici, tra cui *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* grafici, *Box & Whisker* grafici, *Waterfalls* e *Funnels*. Ciò consente di visualizzare i dati in modo più diversificato e informativo.
- Il controllo del colore per la formattazione delle ombre è stato migliorato. Puoi ottenere un controllo più preciso sull'aspetto dei tuoi documenti accedendo ai colori delle ombre.
- L'aumento delle prestazioni per il rendering in background è stato migliorato. È possibile velocizzare notevolmente il rendering di sfondi contenenti piccoli elementi grazie alla tecnologia di piastrellatura nativa.
- Sono stati aggiunti gradienti realistici per le forme. Ora è possibile creare forme DML con gradienti non lineari, imitando lo stile visivo di Microsoft Word per un aspetto più lucido.

#### Personalizzazione dell'etichetta dei dati del grafico <sup>24.7</sup>

È stata aggiunta la possibilità di personalizzare le etichette dei dati del grafico come **Orientation** e **Rotation**.

#### Stile numero personalizzato per i livelli di elenco <sup>24.7</sup>

È stato aggiunto un setter per la proprietà pubblica [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). È ora possibile definire uno stile numero personalizzato per i livelli di elenco.

#### Cambiamenti nel lavoro con ActiveX <sup>24.7</sup>

* Le proprietà degli oggetti ActiveX possono ora essere modificate, offrendo un maggiore controllo sul loro comportamento.
* È stata aggiunta la possibilità di modificare il valore del controllo ActiveX del pulsante di opzione per abilitare l'interazione dinamica.
* È stata aggiunta la possibilità di attivare un ActiveX checkbox su "controllato" o "deselezionato".

#### Controllo sull'asse del grafico Etichette di spunta Orientamento e rotazione <sup>24.8</sup>

È stato aggiunto un controllo preciso sull'orientamento e la rotazione delle etichette di spunta dell'asse del grafico per una più comoda personalizzazione del grafico: la classe [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) è stata estesa con le nuove proprietà **Orientation** e **Rotation**.

#### Sostituzione della barra rovesciata con il segno Yen <sup>24.8</sup>

L'esportazione retrocompatibile HTML e XAML per sostituire il carattere di barra rovesciata con il segno di Yen è stata migliorata. Per ottenere ciò, la proprietà **ReplaceBackslashWithYenSign** è stata aggiunta alle classi [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) e [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Utilizzo dei tag SDT come nomi dei campi modulo durante l'esportazione in PDF <sup>24.8</sup>

L'esportazione PDF con supporto per l'utilizzo di tag SDT come nomi di campi del modulo è stata migliorata aggiungendo una nuova proprietà **UseSdtTagAsFormFieldName** alla classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Conversione, caricamento e salvataggio di documenti

#### Esportazione di collegamenti in formato Markdown <sup>24.7</sup>

La possibilità di controllare l'esportazione dei collegamenti in formato Markdown è stata aggiunta attraverso l'implementazione della proprietà [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode 24.8 <sup>24.8</sup>

È stata introdotta una nuova classe **LowCode.Converter**, progettata per fornire un insieme di metodi per convertire vari tipi di documenti con una singola riga di codice.

### Cerca e confronta

#### Opzioni di confronto avanzate <sup>24.6</sup>

È stata aggiunta la possibilità di semplificare i flussi di lavoro di analisi dei dati con funzionalità di confronto migliorate. Ciò include una nuova opzione [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) e un'interfaccia ridisegnata per confronti avanzati.

### Altri

* La funzione per eliminare le pagine vuote da un documento è stata implementata aggiungendo il metodo [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* La possibilità di verificare la presenza di macro VBA senza caricare un documento è stata fornita aggiungendo la proprietà [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros). <sup>24.5</sup>
* Mantenere la numerazione delle origini durante l'inserimento di un documento utilizzando il motore di reporting LINQ è ora supportato. <sup>24.5</sup>
* È stata aggiunta una nuova proprietà [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc), che fornisce un timestamp più preciso per i commenti, migliorando l'organizzazione e la tracciabilità. <sup>24.6</sup>
* Il motore di reporting LINQ è stato migliorato. La rimozione selettiva di paragrafi vuoti e la definizione di messaggi personalizzati per i membri di oggetti mancanti sono stati fatti, portando a rapporti più puliti e più informativi. <sup>24.6</sup>
* Il formato datetime viene ora rilevato automaticamente per l'esportazione senza interruzioni nel formato XLSX. <sup>24.7</sup>
* È stata aggiunta la proprietà pubblica [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), che consente di verificare se un progetto VBA è protetto. <sup>24.7</sup>
* Le informazioni sui font sono state espanse con la proprietà **EmbeddingLicensingRights** aggiunta alle classi [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) e [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* È stato aggiunto un modo per cancellare in modo efficiente intestazioni di sezione e piè di pagina preservando le filigrane per lavorare in modo più accurato con la struttura del documento. Per cancellare intestazioni di sezione e piè di pagina, utilizzare il nuovo metodo pubblico **ClearHeadersFooters**. <sup>24.8</sup>
* È stata abilitata la firma digitale dei documenti XPS che utilizzano [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/): a tale scopo è stata aggiunta una nuova proprietà **DigitalSignatureDetails**. <sup>24.8</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 24.5 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Scopri di più su [Aspose.Words per Java 24.6 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Scopri di più su [Aspose.Words per Java 24.7 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Scopri di più su [Aspose.Words per Java 24.8 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 migliora l'esperienza di gestione dei colori dei tratti, migliora gli oggetti OLE e il reporting LINQ, oltre a introdurre una nuova bibliografia Fonti pubbliche API.

Aspose.Words 24.2 Grafici espansi API, gestione dello stile e opzioni LINQ. Questa versione di Aspose.Words ha anche introdotto la capacità di specificare SvgSaveOptions durante il rendering, il controllo più flessibile che carica i file Markdown e lavora con il testo di riferimento per le note a piè di pagina e le note di chiusura.

Aspose.Words 24.3 introduce un nuovo lettore / scrittore TIFF ed emulazione di operazioni raster binarie per metafile WMF. Aspose.Words 24.3 continua anche ad espandere i Grafici API.

Aspose.Words 24.4 migliora il salvataggio dei formati, alcune opzioni di rendering e migliora il lavoro con le firme digitali.

### Formati supportati <sup>24.4</sup>

Il moderno formato immagine **WebP** è ora supportato in Aspose.Words. Ora è possibile leggere e inserire immagini WebP nei documenti, nonché salvare le immagini in formato WebP.

### Rendering e stampa

#### Controllo del colore del tratto <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) è stata estesa con una serie di nuove proprietà pubbliche relative alla gestione dei colori dei tratti: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) e [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) e [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### DrawingML Grafici API Estensione <sup>24.2 / 24.3 / 24.4</sup>

Il **DrawingML Charts API** continua ad essere espanso.

#### Incorpora i font dichiarati nelle regole @font-face <sup>24.4</sup>

Aggiunta la possibilità di incorporare i font dichiarati nelle regole @font-face nelle definizioni dei font del documento risultante è stata introdotta aggiungendo una nuova proprietà [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Lavorare con la formattazione bagliore e riflessione <sup>24.4</sup>

È stata implementata la possibilità di lavorare con la formattazione di bagliore e riflessione per un oggetto di disegno.

### Caricamento e salvataggio dei documenti

#### Specificare SvgSaveOptions durante il rendering <sup>24.2</sup>

La capacità di specificare [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) durante il rendering è stata aggiunta usando [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) e [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) metodi.

#### Conserva le righe vuote durante il caricamento dei file Markdown <sup>24.2</sup>

È stata aggiunta la possibilità di conservare le righe vuote durante il caricamento dei file Markdown.

#### Un nuovo TIFF Lettore / scrittore <sup>24.3</sup>

È stato sviluppato un nuovo lettore/scrittore TIFF per Aspose.Words per .NET Standard, .NET 6 e versioni successive. Aspose.Words per .NET 24.3 ha aggiunto il supporto per la lettura di immagini TIFF con tipi di compressione JPEG e vecchi JPEG e ha anche migliorato significativamente la qualità delle operazioni di lettura e scrittura.

### Altri

* La possibilità di modificare il testo del controllo `TextBox` OLE è stata introdotta aggiungendo una nuova proprietà [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) alla nuova classe [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/). 24.1 <sup>24.1</sup>
* La Bibliografia Fonti pubbliche API è stato implementato con l'aggiunta di alcuni nuovi [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) e classi [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) e un'enumerazione [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/), nonché aggiungendo una nuova proprietà [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) alla classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). <sup>24.1</sup>
* È stato fornito un API per limitare l'accesso ai membri di tipo utilizzando la sintassi del modello per il motore di reporting LINQ. <sup>24.1</sup>
* Nuove proprietà pubbliche [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) e [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) per la gestione avanzata dello stile sono state aggiunte alla classe [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* La funzionalità per recuperare il testo del marchio di riferimento effettivo per le note a piè di pagina e le note di chiusura è stata migliorata con la proprietà [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) e il metodo [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* La compatibilità con i grafici `Word 2016` per il `LINQ Reporting Engine` è stata abilitata. <sup>24.2</sup>
* È stata implementata l'emulazione di operazioni raster binarie per metafile WMF. <sup>24.3</sup>
* La possibilità di definire le opzioni di firma per i documenti all'interno di **SaveOptions** è stata abilitata aggiungendo una nuova classe [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) con nuovi membri pubblici, nonché aggiungendo nuove proprietà alle classi [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) e [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 24.1 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Scopri di più su [Aspose.Words per Java 24.2 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

Scopri di più su [Aspose.Words per Java 24.3 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

Scopri di più su [Aspose.Words per Java 24.4 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 espande le opzioni di rendering, l'emulazione di rendering metafile e le opzioni di salvataggio markdown.

Aspose.Words 23.10 migliora il rendering, espande le opzioni per il caricamento e il salvataggio dei documenti e consente agli utenti di unire i documenti in nuovi modi.

Aspose.Words 23.11 migliora il lavoro con le revisioni, il formato XLSX e i caratteri sulla legenda del grafico con opzioni aggiuntive.

Aspose.Words 23.12 introduce nuove proprietà ed enumerazioni per lavorare con i documenti PDF, il supporto per le immagini WebP e la libreria Bouncy Castle aggiornata.

### Rendering e stampa

#### Personalizzazione dei titoli degli assi nei grafici DrawingML <sup>23.9</sup>

La possibilità di personalizzare i titoli degli assi nei grafici DrawingML è stata introdotta dall'implementazione di una nuova proprietà public class [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) e [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle).

#### Determinazione della posizione verticale dei caratteri all'interno di un paragrafo <sup>23.9</sup>

È ora possibile definire la posizione verticale dei font all'interno di un paragrafo utilizzando la nuova proprietà public [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) e la nuova enumerazione [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/).

#### Controllo del colore di primo piano <sup>23.10</sup>

La possibilità di recuperare il colore di primo piano senza modificatori è stata aggiunta alle classi [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) e [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) tramite la proprietà **BaseForeColor**.

#### Espansione della funzionalità dei grafici <sup>23.10</sup>

La funzionalità delle classi [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) e [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) è stata ampliata con nuovi metodi e proprietà.

#### Regola e adatta automaticamente un'immagine in una forma <sup>23.10</sup>

Un modo semplice per regolare e adattare automaticamente un'immagine all'interno di una particolare forma è stato fornito attraverso il nuovo metodo [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape).

#### Formattazione predefinita dei caratteri per le voci della legenda del grafico DrawingML <sup>23.11</sup>

La possibilità di specificare la formattazione predefinita dei caratteri per le voci di legenda dei grafici DrawingML è stata aggiunta tramite la proprietà **Font**. Questa funzione facilita un aspetto più snello e coerente per gli elementi del grafico, migliorando l'estetica complessiva del documento.

#### Specificare il layout di pagina quando si apre PDF in Reader <sup>23.12</sup>

La possibilità di specificare il layout di pagina da utilizzare quando si apre un documento in un lettore PDF è stata aggiunta attraverso l'introduzione di una nuova proprietà [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) alla classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) e l'introduzione di una nuova enumerazione [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/).

### Caricamento e salvataggio dei documenti

#### Specificare il nome di una cartella per costruire l'immagine URIsin Markdown <sup>23.9</sup>

La classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) è stata espansa includendo la proprietà [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias), che consente di specificare il nome della cartella utilizzata per costruire l'immagine URIs scritta nel documento Markdown.

#### Ridurre PDF Dimensione dell'output <sup>23.10</sup>

Sono state implementate varie ottimizzazioni di rendering PDF per ridurre le dimensioni dell'output quando si utilizzano le impostazioni [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput).

#### Riconoscere i collegamenti ipertestuali durante il caricamento di documenti TXT <sup>23.10</sup>

La funzione per riconoscere i collegamenti ipertestuali durante il caricamento di documenti TXT è stata implementata aggiungendo una nuova proprietà [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks).

### Altri

- È stata implementata l'emulazione del rendering Metafile per determinare la dimensione della rasterizzazione, in particolare per WMF pen width e EMF cosmetic pen width. Per ottenere ciò, la proprietà **ScaleWmfFontsToMetafileSize** è stata sostituita con la proprietà [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) e la proprietà [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) è stata aggiunta. <sup>23.9</sup>
- Un metodo semplificato per l'inserimento di un documento in un altro documento nella posizione corrente del cursore è stato introdotto utilizzando il metodo [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions). <sup>23.10</sup>
- La possibilità di accedere e modificare le proprietà di stile è stata aggiunta attraverso l'introduzione della nuova proprietà [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked). <sup>23.10</sup>
- Un parametro di tipo generico è stato aggiunto ai metodi della classe [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/). <sup>23.10</sup>
- Un modo per controllare quando una determinata revisione deve essere accettata / rifiutata o meno è stato implementato utilizzando i metodi [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) e [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria). Questo miglioramento garantisce agli utenti un controllo più preciso sul processo di revisione. <sup>23.11</sup>
- La possibilità di scrivere tutte le sezioni di un documento sullo stesso foglio di lavoro XLSX è stata fornita tramite il nuovo tipo di enumerazione [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) e la nuova proprietà [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode). <sup>23.11</sup>
- È stato introdotto il supporto per l'immagine WebP. Si prega di notare che questa funzione è disponibile solo per .versioni NetStandart e .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 23.9 Nota di rilascio](/words/java/aspose-words-for-java-23-9-release-notes/).

Scopri di più su [Aspose.Words per Java 23.10 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Scopri di più su [Aspose.Words per Java 23.11 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Scopri di più su [Aspose.Words per Java 23.12 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 migliora la capacità di lavorare con i dati delle serie di grafici e la capacità di lavorare con i documenti ODT, oltre a migliorare le intestazioni/piè di pagina e il loro spostamento del testo.

Aspose.Words 23.6 espande le opzioni di rendering, aggiunge un nuovo formato di esportazione, migliora gli strumenti LINQ reporting e LowCode.

Aspose.Words 23.7 migliora le funzionalità di reporting, aggiunge un nuovo formato di esportazione e introduce modifiche all'utilizzo di tabelle e firme digitali.

Aspose.Words 23.8 espande le funzionalità di diversi formati, migliora il rendering e aggiunge nuove opzioni per lavorare con i campi.

### Formati supportati

* A partire dalla versione 23.6, è possibile salvare un documento in formato XLSX. Ora puoi convertire i tuoi documenti in formato Excel. <sup>23.6</sup>

* A partire dalla versione 23.7, è possibile salvare una pagina o una forma del documento in formato EPS. <sup>23.7</sup>

* ### Nuove caratteristiche di formato

  - È stata introdotta la funzionalità per generare automaticamente il Sommario (TOC) per i documenti MOBI. <sup>23.8</sup>
  - Il costruttore [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) è stato espanso con [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - È stata implementata la modellatura del testo verticale per metafile EMF. <sup>23.8</sup>

### Rendering

#### Ottenere e modificare i dati delle serie di grafici <sup>23.5</sup>

La funzione per ottenere e modificare i dati delle serie di grafici è stata fornita aggiungendo:

- nuove classi: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nuovi tipi di enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Supporto per tipografia avanzata <sup>23.6</sup>

È stato aggiunto il supporto per la tipografia avanzata nel rendering WMF, EMF e EMF+.

#### Contenuto colorato sulla pagina <sup>23.6</sup>

La proprietà pubblica [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), che indica se la pagina è colorata o meno, è stata aggiunta.

#### Formattazione per le etichette dei dati del grafico <sup>23.6</sup>

È stata implementata la possibilità di impostare la formattazione di riempimento, traccia e callout per le etichette dei dati del grafico.

### Mail Merge e rapporti

#### Inserimento dinamico HTML per il motore di reportistica LINQ <sup>23.6</sup>

È stato aggiunto un nuovo modo di inserimento dinamico HTML per il motore di reportistica LINQ.

#### Mustache Tag Supporto <sup>23.7</sup>

I tag Mustache sono ora supportati nei metodi [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) e [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String).

#### LINQ Aggiornamenti della sintassi del modello del motore di reporting <sup>23.7</sup>

La sintassi del modello del motore di reporting LINQ ora supporta i metodi di estensione `ElementAt` e ElementAtOrDefault.

#### Specificare la dimensione delle immagini renderizzate <sup>23.8</sup>

È stata introdotta una nuova proprietà pubblica **ImageSize** per specificare la dimensione delle immagini renderizzate in pixel.

#### Conserva spazi bianchi per JSON Valori stringa - LINQ <sup>23.8</sup>

È stata aggiunta un'opzione al motore di reporting LINQ per preservare gli spazi bianchi per i valori di stringa JSON.

### LowCode <sup>23.6</sup>

Sono stati aggiunti nuovi metodi LowCode destinati a unire diversi tipi di documenti in un singolo documento di output.

### Altri

- È stato implementato il supporto per il wrapping del testo nelle intestazioni/piè di pagina. <sup>23.5</sup>
- La possibilità di rimuovere le firme digitali dai documenti ODT è stata aggiunta tramite il metodo [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream). <sup>23.5</sup>
- È stata aggiunta la proprietà pubblica [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) per ottenere il testo base e ruby della guida fonetica [Run](https://reference.aspose.com/words/java/com.aspose.words/run/). <sup>23.5</sup>
- La possibilità di recuperare un valore di firma digitale da un documento con firma digitale come matrice di byte è stata aggiunta introducendo una nuova proprietà [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue). <sup>23.7</sup>
- Le classi [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) sono state ampliate con nuovi membri pubblici– [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), e [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- È stato aggiunto il supporto per i campi CITATION e BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 23.5 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

Scopri di più su [Aspose.Words per Java 23.6 Nota di rilascio](/words/java/aspose-words-for-java-23-6-release-notes/).

Scopri di più su [Aspose.Words per Java 23.7 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

Scopri di più su [Aspose.Words per Java 23.8 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words per Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 migliora le prestazioni dell'emulazione delle operazioni raster e migliora la qualità dell'esportazione e del rendering dei documenti.

Aspose.Words 23.2 introduce il salvataggio dei documenti nel formato MOBI, migliora il rendering dei grafici e apporta notevoli modifiche ai dettagli dell'aspetto del documento.

Aspose.Words 23.3 migliora l'importazione e il salvataggio dei documenti con nuove proprietà e migliora anche la qualità del lavoro con il colore di sfondo e di primo piano e il gradiente radiale.

Aspose.Words 23.4 migliora il calcolo di alcuni parametri e il posizionamento della tabella e del testo circostante.

### Miglioramenti delle prestazioni

#### Emulazione di operazioni Raster <sup>23.1</sup>

Le prestazioni e la qualità dell'emulazione delle operazioni raster con metafile sono state notevolmente migliorate.

### Formati supportati

#### Esporta in MOBI <sup>23.2</sup>

A partire dalla versione 23.2, è possibile salvare un documento in formato MOBI (chiamato anche PRC, AZW – Amazon Formato di file e-book di Kindle). Ora è possibile non solo caricare i documenti MOBI, ma anche esportare i file in formato MOBI.

### Rendering

#### Lavorare con i colori del tema di ombreggiatura <sup>23.1</sup>

È stata implementata la possibilità di lavorare con i colori dei temi di ombreggiatura.

#### Supporto del coefficiente R-quadrato nei grafici DML <sup>23.1</sup>

Supporto del coefficiente R-quadrato nelle etichette della linea di tendenza del grafico DML quando è stato aggiunto il rendering.

#### Miglioramenti del rendering grafico <sup>23.2</sup>

Da 23.2 il rendering del grafico è stato notevolmente migliorato.

#### Controllo del colore di sfondo e di primo piano <sup>23.3</sup>

La classe [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) è stata estesa con una serie di nuove proprietà pubbliche relative ai colori di sfondo e di primo piano: **ForeThemeColor** e **BackThemeColor**, **ForeTintAndShade** e **BackTintAndShade**.

#### Gradienti radiali con lo Shader nativo `SkiaSharp` <sup>23.3</sup>

È stato implementato il rendering dei gradienti radiali con lo shader nativo `SkiaSharp` per .NET Standard.

#### Distanza tra la tabella e il testo circostante <sup>23.4</sup>

La possibilità di impostare la distanza tra la tabella e il testo circostante è stata aggiunta introducendo nuove proprietà nella classe [Table](https://reference.aspose.com/words/java/com.aspose.words/table/): [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), e [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Caricamento e salvataggio dei documenti

#### Genera `TOC` per AZW3 Documenti <sup>23.1</sup>

La possibilità di generare `TOC` (sommario) per i documenti AZW3 è stata aggiunta tramite l'uso della proprietà [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel).

#### Esportazione di elementi di elenco in Markdown <sup>23.1</sup>

È stato fornito un modo per controllare l'esportazione delle voci di elenco nel formato Markdown aggiungendo la proprietà [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) alla classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/).

#### Notifiche di avanzamento del salvataggio del documento <sup>23.3</sup>

È stato implementato il salvataggio delle notifiche di avanzamento per i formati MOBI e AZW3.

#### Frase e parola di regolazione spaziatura <sup>23.3</sup>

La possibilità di specificare se regolare automaticamente la spaziatura di frasi e parole all'importazione del documento è stata aggiunta introducendo la proprietà **AdjustSentenceAndWordSpacing**.

### Altri

- La possibilità di specificare la regolazione della spaziatura dei caratteri di un documento è stata aggiunta tramite l'implementazione della proprietà [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) <sup>23.2</sup>
- Il modo per indicare a Aspose.Words se includere caselle di testo, note a piè di pagina e note di chiusura nelle statistiche di conteggio parole è stato fornito aggiungendo la proprietà [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) <sup>23.2</sup>
- Una nuova opzione per uno stile di documento, che consente di specificare se lo stile viene ridefinito automaticamente in base al valore appropriato, è stata introdotta tramite la proprietà [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) <sup>23.2</sup>
- La possibilità di determinare se [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) è un'esecuzione di guida fonetica è stata aggiunta utilizzando la proprietà **IsPhoneticGuide** <sup>23.4</sup>
- È stato implementato un modo semplice per lavorare con serie e assi di grafici combinati introducendo la classe **ChartAxisCollection** e aggiungendo la proprietà **Chart.Axes** <sup>23.4</sup>
- Alla classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) sono state aggiunte nuove proprietà pubbliche collegate alla forma posizionamento relativo e dimensionamento <sup>23.4</sup>
- La precisione e le prestazioni del calcolo della luminosità del colore per la risoluzione automatica del colore del testo sono state migliorate in conformità con le ultime versioni di Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per Java 23.1 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

Scopri di più su [Aspose.Words per Java 23.2 Nota di rilascio](/words/java/aspose-words-for-java-23-2-release-notes/).

Scopri di più su [Aspose.Words per Java 23.3 Nota di rilascio](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

Scopri di più su [Aspose.Words per Java 23.4 Nota di rilascio](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Vedi anche

{{% alert color="primary" %}}

Questa pagina contiene le ultime notizie di rilascio degli ultimi 2 anni. Per i dettagli sulle versioni precedenti, vedere [Note di rilascio'](https://releases.aspose.com/words/java/release-notes/) pagine nelle relative sezioni.

{{% /alert %}}
