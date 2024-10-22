---
title: Cosa c'è di nuovo
second_title: Aspose.Words per C++
articleTitle: Cosa c'è di nuovo in Aspose.Words per C++
linktitle: Cosa c'è di nuovo in Aspose.Words per C++
type: docs
description: "Aspose.Words per C++ si espande e migliora ogni giorno. In questa pagina, puoi conoscere le caratteristiche enormi e più interessanti del prodotto."
weight: 2
url: /it/cpp/what-s-new-in-aspose-words-for-cpp/
---

Questa pagina descrive le nuove funzionalità Aspose.Words più interessanti introdotte nelle ultime versioni.

## Aspose.Words per C++ 24.9

Aspose.Words 24.9 introduce l'inserimento group shape e l'inserimento StructuredDocumentTag tramite DocumentBuilder, migliora il rendering dei grafici radiali con graduazioni, migliora le firme digitali con il supporto ES-EPES XAd, aggiunge il riconoscimento della sottolineatura Markdown e fornisce l'accesso ai separatori di note a piè di pagina/note di chiusura.

### Rendering e stampa

#### Graduazioni su grafici radiali

È stato implementato il rendering delle graduazioni su grafici radiali.

### Conversione, caricamento e salvataggio di documenti

#### Formattazione sottolineata durante il caricamento dei file Markdown

L'opzione per riconoscere la formattazione sottolineata durante il caricamento dei documenti Markdown è stata incorporata aggiungendo una nuova proprietà pubblica [ImportUnderlineFormatting]().

### Firme digitali

#### Firma documenti con XAdES-EPES

La possibilità di firmare documenti con XAdES-EPES livello XML-DSig firme è stato introdotto con l'aggiunta di una nuova proprietà pubblica [XmlDsigLevel]() e una nuova enumerazione pubblica [XmlDsigLevel]().

### Altri

* Un nuovo metodo pubblico [InsertGroupShape]() è stato aggiunto a group shapes.
* Un nuovo metodo pubblico [InsertStructuredDocumentTag]() è stato aggiunto per inserire **StructuredDocumentTags** in un documento.
* L'accesso pubblico ai separatori di note a piè di pagina/note di chiusura è stato fornito aggiungendo alcune classi e proprietà pubbliche.

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per C++ 24.9 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words per C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 espande le opzioni per gli assembly, migliora le capacità di rendering ed espande alcune altre opzioni.

Aspose.Words 24.6 migliora le opzioni di rendering, migliora la funzionalità di ricerca e confronto e amplia diverse altre funzionalità.

Aspose.Words 24.7 modifica il modo in cui si lavora con ActiveX, espande le capacità di rendering e esporta nei formati Markdown e XLSX.

### Formati supportati

A partire dalla versione 24.7, l'esportazione in PDF/UA-2 è supportata per garantire l'accessibilità agli utenti con disabilità.

### Rendering e stampa

#### Cambiamenti nei grafici, forme e DrawingML <sup>24.5</sup>

- Il rendering degli effetti DrawingML per la grafica SVG, che estende le funzionalità precedenti limitate alle immagini, è stato implementato.
- Il supporto per la creazione di grafici combinati e la regolazione di proprietà come larghezza spazio, sovrapposizione e scala a bolle all'interno dei gruppi di serie è stato introdotto aggiungendo le classi **ChartSeriesGroup** e **ChartSeriesGroupCollection** e la proprietà **SeriesGroups**.
- La funzionalità per manipolare l'effetto SoftEdge delle forme è stata implementata aggiungendo la classe **SoftEdgeFormat**.
- La possibilità di modificare regolare i valori delle forme è stata implementata aggiungendo le classi pubbliche **AdjustmentCollection** e **Adjustment** e la proprietà **Adjustments**.

#### Cambiamenti nei grafici, nelle forme e nel disegno <sup>24.6</sup>

- Le capacità di creazione di grafici sono state migliorate. È ora possibile creare una più ampia varietà di grafici, tra cui *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* grafici, *Box & Whisker* grafici, *Waterfalls* e *Funnels*. Ciò consente di visualizzare i dati in modo più diversificato e informativo.
- Il controllo del colore per la formattazione delle ombre è stato migliorato. Puoi ottenere un controllo più preciso sull'aspetto dei tuoi documenti accedendo ai colori delle ombre.
- L'aumento delle prestazioni per il rendering in background è stato migliorato. È possibile velocizzare notevolmente il rendering di sfondi contenenti piccoli elementi grazie alla tecnologia di piastrellatura nativa.
- Sono stati aggiunti gradienti realistici per le forme. Ora è possibile creare forme DML con gradienti non lineari, imitando lo stile visivo di Microsoft Word per un aspetto più lucido.

#### Personalizzazione dell'etichetta dei dati del grafico <sup>24.7</sup>

È stata aggiunta la possibilità di personalizzare le etichette dei dati del grafico come **Orientation** e **Rotation**.

#### Stile numero personalizzato per i livelli di elenco <sup>24.7</sup>

È stato aggiunto un setter per la proprietà pubblica [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/). È ora possibile definire uno stile numero personalizzato per i livelli di elenco.

#### Cambiamenti nel lavoro con ActiveX <sup>24.7</sup>

- Le proprietà degli oggetti ActiveX possono ora essere modificate, offrendo un maggiore controllo sul loro comportamento.
- È stata aggiunta la possibilità di modificare il valore del controllo ActiveX del pulsante di opzione per abilitare l'interazione dinamica.
- È stata aggiunta la possibilità di attivare una casella di controllo ActiveX su "selezionata" o "deselezionata".

### Caricamento e salvataggio dei documenti

#### Esportazione dei collegamenti nel formato Markdown <sup>24.7</sup>

La possibilità di controllare l'esportazione dei collegamenti in formato Markdown è stata aggiunta attraverso l'implementazione della proprietà [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Cerca e confronta

#### Opzioni di confronto avanzate <sup>24.6</sup>

È stata aggiunta la possibilità di semplificare i flussi di lavoro di analisi dei dati con funzionalità di confronto migliorate. Ciò include una nuova opzione **IgnoreStoreItemId** e un'interfaccia ridisegnata per confronti avanzati.

### Altri

- La funzione per eliminare le pagine vuote da un documento è stata implementata aggiungendo il metodo [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- La possibilità di verificare la presenza di macro VBA senza caricare un documento è stata fornita aggiungendo la proprietà **HasMacros**. <sup>24.5</sup>
- È stata aggiunta una nuova proprietà **DateTimeUtc**, che fornisce un timestamp più preciso per i commenti, migliorando l'organizzazione e la tracciabilità. <sup>24.6</sup>
- Il formato datetime viene ora rilevato automaticamente per l'esportazione senza soluzione di continuità in formato XLSX. <sup>24.7</sup>
- È stata aggiunta la proprietà pubblica [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), che consente di verificare se un progetto VBA è protetto. <sup>24.7</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per C++ 24.5 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Scopri di più su [Aspose.Words per C++ 24.6 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Scopri di più su [Aspose.Words per C++ 24.7 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words per C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 migliora l'esperienza di gestione dei colori dei tratti, migliora gli oggetti OLE e introduce una nuova API pubblica Fonti bibliografiche.

Aspose.Words 24.2 Grafici espansi API e gestione dello stile. Questa versione di Aspose.Words ha anche introdotto la capacità di specificare SvgSaveOptions durante il rendering, il controllo più flessibile che carica i file Markdown e lavora con il testo di riferimento per le note a piè di pagina e le note di chiusura.

Aspose.Words 24.3 introduce l'emulazione delle operazioni raster binarie per i metafile WMF e continua anche ad espandere l'API dei grafici.

Aspose.Words 24.4 migliora alcune opzioni di rendering e migliora il lavoro con le firme digitali.

### Rendering e stampa

#### Controllo del colore del tratto <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) è stata estesa con una serie di nuove proprietà pubbliche relative alla gestione dei colori dei tratti: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) e [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) e [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### Estensione API grafici DrawingML <sup>24.2 / 24.3 / 24.4</sup>

Il **DrawingML Charts API** continua ad essere espanso.

#### Incorpora i font dichiarati nelle regole @font-face <sup>24.4</sup>

Aggiunta la possibilità di incorporare i font dichiarati nelle regole @font-face nelle definizioni dei font del documento risultante è stata introdotta aggiungendo una nuova proprietà [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/).

#### Lavorare con la formattazione bagliore e riflessione <sup>24.4</sup>

È stata implementata la possibilità di lavorare con la formattazione di bagliore e riflessione per un oggetto di disegno.

### Caricamento e salvataggio dei documenti

#### Specificare SvgSaveOptions durante il rendering <sup>24.2</sup>

La capacità di specificare [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) durante il rendering è stata aggiunta usando [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) e [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) metodi.

#### Conserva le righe vuote durante il caricamento dei file Markdown <sup>24.2</sup>

È stata aggiunta la possibilità di conservare le righe vuote durante il caricamento dei file Markdown.

### Altri

- La possibilità di modificare il testo del controllo OLE `TextBox` è stata introdotta aggiungendo una nuova proprietà **Text** alla nuova classe **TextBoxControl**. <sup>24.1</sup>
- L'API pubblica Bibliography Sources è stata implementata attraverso l'aggiunta di un nuovo spazio dei nomi [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) con le sue nuove classi e enumerazioni e attraverso l'aggiunta di una nuova proprietà [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) alla classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- Nuove proprietà pubbliche [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) e [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) per la gestione avanzata dello stile sono state aggiunte alla classe [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). <sup>24.2</sup>
- La funzionalità per recuperare il testo del marchio di riferimento effettivo per le note a piè di pagina e le note di chiusura è stata migliorata con la proprietà [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) e il metodo [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- È stata implementata l'emulazione di operazioni raster binarie per i metafile WMF. <sup>24.3</sup>
- La possibilità di definire le opzioni di firma per i documenti all'interno di **SaveOptions** è stata abilitata aggiungendo una nuova classe **DigitalSignatureDetails** con nuovi membri pubblici, nonché aggiungendo nuove proprietà alle classi [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) e [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per C++ 24.1 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Scopri di più su [Aspose.Words per C++ 24.2 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Scopri di più su [Aspose.Words per C++ 24.3 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Scopri di più su [Aspose.Words per C++ 24.4 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words per C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 espande le opzioni di rendering, l'emulazione di rendering metafile e le opzioni di salvataggio markdown.

Aspose.Words 23.10 migliora il rendering, espande le opzioni per il caricamento e il salvataggio dei documenti e consente agli utenti di unire i documenti in nuovi modi.

Aspose.Words 23.11 migliora il lavoro con revisioni, formato XLSX e font sulla legenda del grafico con opzioni aggiuntive.

Aspose.Words 23.12 introduce nuove proprietà ed enumerazioni per lavorare con i documenti PDF e OOXML, nonché il supporto per le immagini WebP.

### Rendering e stampa

#### Personalizzazione dei titoli degli assi nei grafici DrawingML <sup>23.9</sup>

La possibilità di personalizzare i titoli degli assi nei grafici DrawingML è stata introdotta dall'implementazione di una nuova proprietà public class **ChartAxisTitle** e [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/).

#### Determinazione della posizione verticale dei caratteri all'interno di un paragrafo <sup>23.9</sup>

È ora possibile definire la posizione verticale dei font all'interno di un paragrafo utilizzando la nuova proprietà public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) e la nuova enumerazione [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### Controllo del colore di primo piano <sup>23.10</sup>

La possibilità di recuperare il colore di primo piano senza modificatori è stata aggiunta alle classi [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) e [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) tramite la proprietà **BaseForeColor**.

#### Espansione della funzionalità dei grafici <sup>23.10</sup>

La funzionalità delle classi [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) e [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) è stata ampliata con nuovi metodi e proprietà.

#### Regola e adatta automaticamente un'immagine in una forma <sup>23.10</sup>

Un modo semplice per regolare e adattare automaticamente un'immagine all'interno di una particolare forma è stato fornito attraverso il nuovo metodo [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formattazione predefinita dei caratteri per le voci della legenda del grafico DrawingML <sup>23.11</sup>

La possibilità di specificare la formattazione predefinita dei caratteri per le voci di legenda dei grafici DrawingML è stata aggiunta tramite la proprietà [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Questa funzione facilita un aspetto più snello e coerente per gli elementi del grafico, migliorando l'estetica complessiva del documento.

#### Specificare il layout di pagina quando si apre PDF in Reader <sup>23.12</sup>

La possibilità di specificare il layout di pagina da utilizzare quando si apre un documento in un lettore PDF è stata aggiunta attraverso l'introduzione di una nuova proprietà **PageLayout** alla classe [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) e l'introduzione di una nuova enumerazione **PdfPageLayout**.

### Caricamento e salvataggio dei documenti

#### Specificare il nome di una cartella per costruire l'immagine URIsin Markdown <sup>23.9</sup>

La classe [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) è stata espansa includendo la proprietà [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), che consente di specificare il nome della cartella utilizzata per costruire l'immagine URIs scritta nel documento Markdown.

#### Ridurre PDF Dimensione dell'output <sup>23.10</sup>

Sono state implementate varie ottimizzazioni di rendering PDF per ridurre le dimensioni dell'output quando si utilizzano le impostazioni [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/).

#### Riconoscere i collegamenti ipertestuali durante il caricamento di documenti TXT <sup>23.10</sup>

La funzione per riconoscere i collegamenti ipertestuali durante il caricamento dei documenti TXT è stata implementata aggiungendo una nuova proprietà [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/).

### Altri

- È stata implementata l'emulazione del rendering Metafile per determinare le dimensioni della rasterizzazione, in particolare per la larghezza della penna WMF e la larghezza della penna cosmetica EMF. Per ottenere ciò, la proprietà **ScaleWmfFontsToMetafileSize** è stata sostituita con la proprietà [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) e la proprietà [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) è stata aggiunta. <sup>23.9</sup>
* Un metodo semplificato per l'inserimento di un documento in un altro documento nella posizione corrente del cursore è stato introdotto utilizzando il metodo [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* La possibilità di accedere e modificare le proprietà di stile è stata aggiunta attraverso l'introduzione della nuova proprietà [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/). <sup>23.10</sup>
* Un parametro di tipo generico è stato aggiunto ai metodi della classe [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/). <sup>23.10</sup>
* Un modo per controllare quando una determinata revisione deve essere accettata / rifiutata o meno è stato implementato utilizzando i metodi [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) e [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/). Questo miglioramento garantisce agli utenti un controllo più preciso sul processo di revisione. <sup>23.11</sup>
* La possibilità di scrivere tutte le sezioni di un documento sullo stesso foglio di lavoro XLSX è stata fornita tramite il nuovo tipo di enumerazione [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) e la nuova proprietà [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/). <sup>23.11</sup>
* Un modo per controllare come verranno utilizzate le estensioni di formato ZIP64 per i documenti OOXML è stato implementato attraverso la nuova proprietà Zip64Mode della classe `OoxmlSaveOptions` e la nuova enumerazione Zip64Mode. <sup>23.12</sup>
* È stato introdotto il supporto per l'immagine WebP. Si prega di notare che questa funzione è disponibile solo per .versioni NetStandart e .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Scopri di più su [Aspose.Words per C++ 23.9 Note di rilascio](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Scopri di più su [Aspose.Words per C++ 23.10 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Scopri di più su [Aspose.Words per C++ 23.11 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Scopri di più su [Aspose.Words per C++ 23.12 Note di rilascio](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Vedi anche

{{% alert color="primary" %}}

Questa pagina contiene le ultime notizie di rilascio degli ultimi 2 anni. Per i dettagli sulle versioni precedenti, vedere [Note di rilascio'](/words/cpp/release-notes/) pagine nelle relative sezioni.

{{% /alert %}}