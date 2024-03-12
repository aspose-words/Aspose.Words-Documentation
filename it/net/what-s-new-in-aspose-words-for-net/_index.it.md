---
title: Cosa c'è di nuovo
second_title: Aspose.Words per .NET
articleTitle: Novità in Aspose.Words per .NET
linktitle: Novità in Aspose.Words per .NET
type: docs
description: "Aspose.Words per .NET si espande e migliora ogni giorno. In questa pagina puoi conoscere le enormi e più interessanti funzionalità del prodotto."
weight: 10
url: /it/net/what-s-new-in-aspose-words-for-net/
---

Questa pagina descrive le nuove funzionalità Aspose.Words più interessanti introdotte nelle versioni recenti.

## Aspose.Words per .NET 24.1, 24.2, 24.3

Aspose.Words 24.1 migliora l'esperienza relativa alla gestione dei colori dei tratti, migliora gli oggetti OLE e il reporting LINQ, oltre a introdurre un nuovo API pubblico delle origini bibliografiche.

Aspose.Words 24.2 ha ampliato l'API dei grafici, la gestione degli stili e le opzioni LINQ. Questa versione di Aspose.Words ha anche introdotto la possibilità di specificare SvgSaveOptions durante il rendering, un controllo più flessibile nel caricamento dei file Markdown e l'utilizzo del testo di riferimento per note a piè di pagina e note di chiusura.

Aspose.Words 24.3 introduce un nuovo lettore/scrittore TIFF e l'emulazione di operazioni raster binarie per i metafile WMF. Aspose.Words 24.3 continua anche ad espandere l'API dei grafici.

### Rendering e stampa

#### Controllo colore tratto <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/it/net/aspose.words.drawing/stroke/) è stata estesa con una serie di nuove proprietà pubbliche relative alla gestione dei colori del tratto: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) e [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) e [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Estensione DrawingML Charts API <sup>24.2 / 24.3</sup>

Dei **DrawingML Charts API** continua ad essere ampliata.

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
- La funzionalità per recuperare il testo del segno di riferimento effettivo per le note a piè di pagina e le note di chiusura è stata migliorata con la proprietà [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) e il metodo [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- È stata abilitata la compatibilità con i grafici di `Word 2016` per `LINQ Reporting Engine`. <sup>24.2</sup>
- È stata implementata l'emulazione di operazioni raster binarie per i metafile WMF. <sup>24.3</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

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

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 23.9](/words/net/aspose-words-for-net-23-9-release-notes/).

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

Ulteriori informazioni su [Aspose.Words per .NET 23.7 Note sulla versione](/words/net/aspose-words-for-net-23-7-release-notes/).

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

Ulteriori informazioni su [Aspose.Words per .NET 23.2 Note sulla versione](/words/net/aspose-words-for-net-23-2-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

Ulteriori informazioni su [Aspose.Words per .NET 23.4 Note sulla versione](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words per .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 espande le opzioni per caricare e salvare documenti e migliora l'interazione con alcune altre opzioni.

Aspose.Words 22.10 migliora le opzioni di ricerca e sostituzione, potenzia gli oggetti OLE ed espande la funzionalità degli elenchi.

Aspose.Words 22.11 espande le sue funzionalità con nuove opzioni per lavorare più comodamente con oggetti già familiari: campi, stampa, OLE e tag di documenti strutturati.

Aspose.Words 22.12 migliora le capacità di rendering e introduce opzioni per lavorare con i margini durante il caricamento/salvataggio di un documento.

### Miglioramenti delle prestazioni <sup>22.12</sup>

È stata introdotta un'ottimizzazione che riduce significativamente la profondità dell'annidamento dello stato grafico durante il rendering in PDF per mantenere la conformità alle specifiche.

### Rendering e stampa

#### Stampa di pagine non colorate su una stampante a colori <sup>22.11</sup>

È stata implementata una modalità di stampa personalizzata a colori/scala di grigi aggiungendo un nuovo valore **GrayscaleAuto** all'enumerazione [ColorPrintMode](https://reference.aspose.com/words/it/net/aspose.words.rendering/colorprintmode/).

Una nuova proprietà di stampa consente agli utenti di controllare come vengono stampate le pagine non colorate se il dispositivo supporta la stampa a colori. Questa funzionalità può essere utile se gli utenti desiderano stampare automaticamente pagine non colorate utilizzando solo la modalità di stampa in scala di grigi.

#### Nuove proprietà di rendering dei bordi <sup>22.12</sup>

Sono state introdotte le nuove proprietà pubbliche [ThemeColor](https://reference.aspose.com/words/it/net/aspose.words/border/themecolor/) e [TintAndShade](https://reference.aspose.com/words/it/net/aspose.words/border/tintandshade/).

#### Formula della linea di tendenza lineare per il rendering DrawingML <sup>22.12</sup>

È stato implementato il rendering della formula della linea di tendenza lineare per i grafici DrawingML.

#### Impostazioni di fallback dei caratteri per i caratteri Google Noto <sup>22.12</sup>

Le impostazioni di fallback dei caratteri predefiniti per i caratteri Google Noto sono state aggiornate.

### Caricamento e salvataggio di documenti

#### Memorizzare nella cache le forme di intestazione o piè di pagina per ridurre le dimensioni del PDF <sup>22.9</sup>

La possibilità di memorizzare nella cache le forme di intestazione/piè di pagina per ridurre la dimensione del file PDF di output è stata implementata aggiungendo una nuova proprietà **CacheHeaderFooterShapes**.

#### Rilevamento automatico della numerazione durante il caricamento di un documento <sup>22.9</sup>

La possibilità di specificare la proprietà [AutoNumberingDetection](https://reference.aspose.com/words/it/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) al momento del caricamento del testo è stata implementata attraverso un'estensione della classe [TxtLoadOptions](https://reference.aspose.com/words/it/net/aspose.words.loading/txtloadoptions/).

#### Specificare un particolare tipo di margine <sup>22.12</sup>

È stata implementata la possibilità di specificare un particolare tipo [Margin](https://reference.aspose.com/words/it/net/aspose.words/pagesetup/margins/) per la sezione specificata.

### Cerca e confronta <sup>22.10</sup>

La possibilità di ignorare [StructuredDocumentTag](https://reference.aspose.com/words/it/net/aspose.words.markup/structureddocumenttag/) durante le opzioni di ricerca e sostituzione è stata implementata aggiungendo una nuova proprietà [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) alla classe [FindReplaceOptions](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/).

### Altro

* È stata aggiunta una nuova funzionalità per ottenere FieldEQ come OfficeMath. <sup>22.9</sup>
* Era consentita la creazione di tag di documenti strutturati di tipo Group a livello di Riga. <sup>22.9</sup>
* Gli oggetti e i controlli OLE vengono ora trattati come immagini metafile durante la conversione di un documento in HTML. <sup>22.10</sup>
* È stata aggiunta una nuova funzionalità per verificare che un particolare elenco sia stato creato dallo stesso modello dell'elenco confrontato introducendo un nuovo metodo [HasSameTemplate](https://reference.aspose.com/words/it/net/aspose.words.lists/list/hassametemplate/) nella classe [List](https://reference.aspose.com/words/it/net/aspose.words.lists/list/). <sup>22.10</sup>
* È stata aggiunta la possibilità di creare nuovi tag di documenti strutturati di tipo [Citation](https://reference.aspose.com/words/it/net/aspose.words.markup/sdttype/). <sup>22.11</sup>
* È stata fornita la possibilità di monitorare l'avanzamento dell'aggiornamento sul campo. <sup>22.11</sup>
* È stata introdotta una nuova proprietà **EmbedAttachments** che consente agli utenti di incorporare allegati OLE da un documento di origine nel documento PDF di output. <sup>22.11</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 22.9](/words/net/aspose-words-for-net-22-9-release-notes/).

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 22.10](/words/net/aspose-words-for-net-22-10-release-notes/).

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 22.11](/words/net/aspose-words-for-net-22-11-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 22.12](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words per .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 introduce il supporto per nuovi formati di caricamento e una nuova dimensione della pagina di stampa, oltre a migliorare alcune opzioni di rendering.

Aspose.Words 22.6 espande le possibilità di conversione di PDF in altri formati, oltre a migliorare il lavoro con DrawingML e l'effetto di riempimento del testo solido.

Aspose.Words 22.7 migliora le possibilità di lavorare con le funzionalità di rendering e aggiunge anche nuove funzionalità per lavorare con l'importazione e l'esportazione di HTML in PDF.

Aspose.Words 22.8 introduce un nuovo formato di esportazione e migliora vari algoritmi di rendering.

Il API è stato migliorato per uno sviluppo più flessibile e conveniente.

### Formati supportati

* È stato introdotto il supporto per il caricamento di documenti EPUB e XML aggiungendo nuovi valori all'enumerazione [LoadFormat](https://reference.aspose.com/words/it/net/aspose.words/loadformat/). A partire dalla versione 22.5, è possibile caricare documenti EPUB e XML nel modello di documento Aspose.Words e convertirli in qualsiasi [formati supportati](https://reference.aspose.com/words/it/net/aspose.words/saveformat/). <sup>22.5</sup>
* A partire dalla versione 22.8, è possibile salvare un documento nel formato AZW3 – Amazon formato di file e-book proprietario di Kindle (KF8 è un altro nome per il formato). Ora non solo puoi caricare documenti AZW3, ma anche esportare i tuoi file nel formato AZW3, che è essenzialmente un EPUB compilato. <sup>22.8</sup>

### Rendering e stampa

#### Nuovo formato di stampa <sup>22.5</sup>

È stato aggiunto il supporto per il formato pagina di stampa "Busta n. 10" introducendo un nuovo valore nell'enumerazione [PaperSize](https://reference.aspose.com/words/it/net/aspose.words/papersize/).

#### Rappresentazione di formule MathML <sup>22.5</sup>

È stata migliorata la resa di un riquadro di bordo attorno alle formule MathML e il rilevamento dei caratteri durante la resa dei caratteri per tali formule.

#### Miglioramenti al grafico DML <sup>22.6</sup>

Il API pubblico dei grafici DrawingML è stato esteso per supportare gradienti, texture e riempimenti a motivo.

#### Glyph descrive l'analisi per OpenType <sup>22.7</sup>

È stata implementata l'analisi dei profili glyph Aspose.Words per i caratteri OpenType (CFF).

In precedenza, l'analisi glyph per i font OpenType (CFF) veniva eseguita tramite GDI+. Quindi ora funziona nei casi in cui GDI+ non è disponibile: Java, piattaforme .NET Standard, sistema operativo Linux e così via. Glyph delinea che l'analisi è richiesta in casi specifici come WordArt, effetti di testo, alcune funzionalità di Office Math e altre.

#### Imposta la formattazione dell'ombra della forma <sup>22.7</sup>

È stata fornita la possibilità di impostare la formattazione dell'ombra dell'oggetto forma aggiungendo una nuova proprietà [ShadowFormat](https://reference.aspose.com/words/it/net/aspose.words.drawing/shapebase/shadowformat/).

#### Supporto per la spaziatura delle celle nelle tabelle <sup>22.8</sup>

Il motore di layout è ora notevolmente migliorato: è stato implementato un meccanismo di spaziatura delle celle nelle tabelle molto complesso.

#### Sostituzione dei caratteri per i simboli <sup>22.8</sup>

La sostituzione dei caratteri per i simboli è stata migliorata.

#### Algoritmo di rotazione delle etichette dell'asse del grafico <sup>22.8</sup>

L'algoritmo di rotazione delle etichette degli assi del grafico è stato migliorato.

### Caricamento e salvataggio di documenti

#### Carica e converti PDF in formato a pagina fissa senza modello di layout <sup>22.6</sup>

È stata implementata la possibilità di caricare e convertire documenti PDF in formati di pagina fissi con alta fedeltà e prestazioni.

#### Nuova modalità di importazione HTML <sup>22.7</sup>

È stata introdotta una nuova modalità di importazione HTML per elementi a livello di blocco aggiungendo un nuovo valore all'enumerazione [HtmlInsertOptions](https://reference.aspose.com/words/it/net/aspose.words/htmlinsertoptions/).

#### Converti in PDF/UA-1 CSompliant con WCAG 2.0 <sup>22.7</sup>

È stato aggiunto il supporto per la conversione di un documento nel formato PDF/UA-1, conforme a WCAG 2.0.

Pertanto, se il cliente dispone di un documento Word accessibile e lo converte in PDF/UA-1 tramite Aspose.Words menzionando le specifiche di conversione, l'output sarà compatibile con WCAG 2.0.

WCAG o Linee guida per l'accessibilità dei contenuti Web è un insieme di linee guida sviluppate dal W3C in collaborazione con individui e organizzazioni di tutto il mondo. Ora con Aspose.Words puoi convertire il tuo documento nel formato di output PDF/UA-1, adatto per creare documenti PDF conformi a WCAG 2.0.

Vale la pena notare che WCAG 2.0 prevede due requisiti aggiuntivi non specificati nella specifica PDF/UA-1:

*requisiti di contrasto

* requisiti per la codifica dei contenuti multimediali

Ma entrambi i requisiti non sono rilevanti nel nostro caso di conversione da Word a PDF.

### Altro

* È stata implementata l'eccezione relativa all'ereditarietà dell'effetto di riempimento del testo solido che imita il comportamento di MS Word. <sup>22.6</sup>
* È stato aggiunto il supporto dei campi `DATABASE`. Utilizzando questo tipo di campo è possibile, ad esempio, visualizzare i risultati di una query sul database in una tabella Microsoft Word. <sup>22.7</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 22.5](/words/net/aspose-words-for-net-22-5-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 22.6](/words/net/aspose-words-for-net-22-6-release-notes/).

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 22.7](/words/net/aspose-words-for-net-22-7-release-notes/).

Ulteriori informazioni su [Aspose.Words per le note sulla versione di .NET 22.8](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Guarda anche

{{% alert color="primary" %}}

Questa pagina contiene le ultime notizie sulle versioni degli ultimi 2 anni. Per dettagli sulle versioni precedenti, consultare le pagine [Note di rilascio'](/words/net/release-notes/) nelle sezioni pertinenti.

{{% /alert %}}