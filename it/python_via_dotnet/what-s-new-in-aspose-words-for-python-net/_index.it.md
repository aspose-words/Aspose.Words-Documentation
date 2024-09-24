---
title: Cosa c'è di nuovo
second_title: Aspose.Words per Python via .NET
articleTitle: Novità in Aspose.Words per Python via .NET
linktitle: Novità in Aspose.Words per Python via .NET
type: docs
description: "Aspose.Words per Python via .NET si espande e migliora ogni giorno. In questa pagina puoi conoscere le enormi e più interessanti funzionalità del prodotto."
weight: 10
url: /it/python-net/what-s-new-in-aspose-words-for-python-net/
---

Questa pagina descrive le nuove funzionalità Aspose.Words più interessanti introdotte nelle versioni recenti.

## Aspose.Words per Python tramite .NET 24.9

Aspose.Words 24.9 introduce l'inserimento di forme di gruppo e l'inserimento di StructuredDocumentTag tramite DocumentBuilder, migliora il rendering dei grafici radiali con graduazioni, migliora le firme digitali con il supporto XAdES-EPES, aggiunge il riconoscimento della sottolineatura Markdown e fornisce l'accesso ai separatori di note a piè di pagina/note di chiusura.

### Rendering e stampa

#### Graduazioni sui grafici radiali

È stato implementato il rendering delle graduazioni sui grafici radiali.

### Conversione, caricamento e salvataggio di documenti

#### Formattazione sottolineata durante il caricamento di file Markdown

L'opzione per riconoscere la formattazione sottolineata durante il caricamento di documenti Markdown è stata incorporata aggiungendo una nuova proprietà pubblica [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/).

### Firme digitali

#### Firma documenti con XAdES-EPES

La possibilità di firmare documenti con firme XML-DSig di livello XAdES-EPES è stata introdotta aggiungendo una nuova proprietà pubblica [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) e una nuova enumerazione pubblica [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/).

### Altro

* Un nuovo metodo pubblico [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/) è stato aggiunto alle forme di gruppo.
* Un nuovo metodo pubblico [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/) è stato aggiunto per inserire **StructuredDocumentTags** in un documento.
* L'accesso pubblico ai separatori di note a piè di pagina/note di chiusura è stato fornito aggiungendo alcune classi e proprietà pubbliche.

{{% alert color="primary" %}}

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.9](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words per Python via .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 espande le opzioni per gli assiemi, migliora le capacità di rendering ed espande alcune altre opzioni.

Aspose.Words 24.6 migliora le opzioni di rendering, migliora le funzionalità di ricerca e confronto ed espande molte altre funzionalità.

Aspose.Words 24.7 cambia il modo in cui lavori con ActiveX, espande le capacità di rendering e l'esportazione nei formati Markdown e XLSX.

Aspose.Words 24.8 migliora la personalizzazione dei grafici con un controllo preciso sulle etichette degli assi, espande la gestione dei font, migliora la gestione della struttura dei documenti e aggiunge nuove funzionalità per l'esportazione HTML/XAML, la funzionalità PDF, la conversione dei documenti e le firme digitali.

### Formati supportati

A partire dalla versione 24.7, è supportata l'esportazione in PDF/UA-2 per garantire l'accessibilità agli utenti con disabilità.

### Rendering e stampa

#### Modifiche a Charts, Shapes e DrawingML <sup>24.5</sup>

* È stato implementato il rendering degli effetti DrawingML per la grafica SVG, che estende le funzionalità precedenti limitate alle immagini.
* Il supporto per la creazione di grafici combinati e la regolazione di proprietà come larghezza del gap, sovrapposizione e scala di bolle all'interno dei gruppi di serie è stato introdotto aggiungendo [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) e le classi [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) e le classi [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) proprietà.
* La funzionalità per manipolare l'effetto SoftEdge delle forme è stata implementata aggiungendo la classe [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* La possibilità di modificare i valori di regolazione delle forme è stata implementata aggiungendo **AdjustmentCollection** e **Adjustment** classi pubbliche e [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) proprietà.

#### Modifiche a grafici, forme e disegni <sup>24.6</sup>

* Le funzionalità di creazione dei grafici sono state migliorate. Ora puoi creare una più ampia varietà di grafici, tra cui *Treemaps*, *Sunbursts*, *Istogrammi*, grafici *Pareto*, grafici *Box & Whisker*, *Cascate* e *Imbuti*. Ciò ti consente di visualizzare i tuoi dati in un modo più diversificato e informativo.
* Il controllo del colore per la formattazione delle ombre è stato migliorato. Puoi ottenere un controllo più preciso sull'aspetto dei tuoi documenti accedendo ai colori delle ombre.
* L'aumento delle prestazioni per il rendering dello sfondo è stato migliorato. Puoi velocizzare notevolmente il rendering di sfondi contenenti piccoli elementi grazie alla tecnologia di piastrellatura nativa.
* Sono stati aggiunti gradienti realistici per le forme. Ora puoi creare forme DML con gradienti non lineari, imitando lo stile visivo di Microsoft Word per un aspetto più raffinato.

#### Personalizzazione etichetta dati grafico <sup>24.7</sup>

È stata aggiunta la possibilità di personalizzare le etichette dei dati del grafico come **Orientation** e **Rotation**.

#### Stile personalizzato dei numeri per i livelli di elenco <sup>24.7</sup>

È stato aggiunto un setter per la proprietà pubblica [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/). Ora puoi definire uno stile numerico personalizzato per i livelli di elenco.

#### Cambiamenti nell'utilizzo di ActiveX <sup>24.7</sup>

* Le proprietà degli oggetti ActiveX possono ora essere modificate, offrendoti un maggiore controllo sul loro comportamento.
* È stata aggiunta la possibilità di modificare il valore del controllo ActiveX del pulsante di opzione per abilitare l'interazione dinamica.
* È stata aggiunta la possibilità di impostare una casella di controllo ActiveX su "selezionata" o "deselezionata".

#### Controllo sull'orientamento e la rotazione delle etichette di spunta degli assi dei grafici <sup>24.8</sup>

È stato aggiunto un controllo preciso sull'orientamento e la rotazione delle etichette di spunta degli assi dei grafici per una personalizzazione più comoda dei grafici: la classe [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) è stata estesa con nuove proprietà [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) e [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Sostituzione della barra rovesciata con il simbolo dello yen <sup>24.8</sup>

L'esportazione HTML e XAML retrocompatibile per la sostituzione del carattere barra rovesciata con il simbolo dello yen è stata migliorata. Per ottenere ciò, la proprietà **replace_backslash_with_yen_sign** è stata aggiunta alle classi [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) e [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/).

#### Utilizzo di tag SDT come nomi di campi modulo durante l'esportazione in PDF <sup>24.8</sup>

L'esportazione PDF con supporto per l'utilizzo di tag SDT come nomi di campi modulo è stata migliorata aggiungendo una nuova proprietà [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) alla classe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Conversione, caricamento e salvataggio di documenti

#### Esportazione dei collegamenti nel formato Markdown <sup>24.7</sup>

È stata aggiunta la possibilità di controllare l'esportazione dei collegamenti in formato Markdown tramite l'implementazione della proprietà [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode <sup>24.8</sup>

È stata introdotta una nuova classe [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/), progettata per fornire un set di metodi per convertire vari tipi di documenti con una singola riga di codice.

### Cerca e confronta

#### Opzioni di confronto avanzate <sup>24.6</sup>
È stata aggiunta la possibilità di semplificare i flussi di lavoro di analisi dei dati con funzionalità di confronto migliorate. Ciò include una nuova opzione [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) e un'interfaccia riprogettata per confronti avanzati.

### Altro

* La funzione per eliminare le pagine vuote da un documento è stata implementata aggiungendo il metodo [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* La possibilità di verificare la presenza di macro VBA senza caricare un documento è stata fornita aggiungendo la proprietà [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* Ora è supportato il mantenimento della numerazione della fonte durante l'inserimento di un documento utilizzando LINQ Reporting Engine. <sup>24.5</sup>
* È stata aggiunta una nuova proprietà [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) che fornisce un timestamp più preciso per i commenti, migliorando l'organizzazione e la tracciabilità. <sup>24.6</sup>
* Il motore di reporting LINQ è stato migliorato. Sono state effettuate la rimozione selettiva dei paragrafi vuoti e la definizione di messaggi personalizzati per i membri degli oggetti mancanti, portando a report più chiari e informativi. <sup>24.6</sup>
* Il formato data/ora viene ora rilevato automaticamente per un'esportazione senza interruzioni nel formato XLSX. <sup>24.7</sup>
* È stata aggiunta la proprietà pubblica [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), che consente di verificare se un progetto VBA è protetto. <sup>24.7</sup>
* Le informazioni sui font sono state ampliate con la proprietà **embedding_licensing_rights** aggiunta alle classi [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) e [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* È stato aggiunto un modo per cancellare in modo efficiente intestazioni e piè di pagina di sezione preservando le filigrane per lavorare in modo più accurato con la struttura del documento. Per cancellare intestazioni e piè di pagina di sezione, utilizzare il nuovo metodo pubblico [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* È stata abilitata la firma digitale dei documenti XPS tramite [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/): è stata aggiunta una nuova proprietà [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/) a questo scopo. <sup>24.8</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.5](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.6](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.7](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.8](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words per Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 migliora l'esperienza relativa alla gestione dei colori dei tratti, migliora gli oggetti OLE e introduce un nuovo API pubblico delle origini bibliografiche.

Aspose.Words 24.2 ha ampliato l'API dei grafici e la gestione degli stili. Questa versione di Aspose.Words ha anche introdotto la possibilità di specificare SvgSaveOptions durante il rendering, un controllo più flessibile nel caricamento dei file Markdown e l'utilizzo del testo di riferimento per note a piè di pagina e note di chiusura.

Aspose.Words 24.3 introduce un nuovo lettore/scrittore TIFF e l'emulazione di operazioni raster binarie per i metafile WMF. Aspose.Words 24.3 continua anche ad espandere l'API dei grafici.

Aspose.Words 24.4 migliora il salvataggio dei formati, alcune opzioni di rendering, nonché migliora il lavoro con le firme digitali.

### Formati supportati <sup>24.4</sup>

Il formato immagine **WebP** moderno è ora supportato in Aspose.Words per .NET Framework 4.6.2 e versioni successive. Ora è possibile leggere e inserire immagini WebP nei documenti, nonché salvare immagini nel formato WebP.

Si prega di notare che attualmente WebP è disponibile solo in .NET Standard e .NET Framework v4.6.2 e versioni successive.

### Rendering e stampa

#### Controllo colore tratto <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) è stata estesa con una serie di nuove proprietà pubbliche relative alla gestione dei colori del tratto: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) e [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) e [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### Estensione DrawingML Charts API <sup>24.2 / 24.3 / 24.4</sup>

Dei **DrawingML Charts API** continua ad essere ampliata.

#### Incorpora i font dichiarati nelle regole @font-face <sup>24.4</sup>

È stata aggiunta la possibilità di incorporare i font dichiarati nelle regole @font-face nelle definizioni del font del documento risultante aggiungendo una nuova proprietà chiamata [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### Lavora con la formattazione effetto glow e riflessione <sup>24.4</sup>

È stata implementata la possibilità di lavorare con la formattazione effetto glow e riflessione per un oggetto di disegno.

### Caricamento e salvataggio di documenti

#### Specificare SvgSaveOptions durante il rendering <sup>24.2</sup>

È stata aggiunta la funzionalità per specificare [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) durante il rendering utilizzando i metodi [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) e [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions).

#### Conserva le righe vuote durante il caricamento dei file Markdown <sup>24.2</sup>

È stata aggiunta la possibilità di preservare le righe vuote durante il caricamento dei file Markdown.

#### Un nuovo lettore/scrittore TIFF <sup>24.3</sup>

È stato sviluppato un nuovo lettore/scrittore TIFF per Aspose.Words. Aspose.Words per .NET 24.3 ha aggiunto il supporto per la lettura di immagini TIFF con tipi di compressione JPEG e Old JPEG, migliorando significativamente la qualità delle operazioni di lettura e scrittura.

### Altro

* È stata introdotta la possibilità di modificare il testo del controllo OLE `TextBox` aggiungendo una nuova proprietà **Text** alla nuova classe **TextBoxControl**. <sup>24.1</sup>
* Il API pubblico delle fonti bibliografiche è stato implementato aggiungendo un nuovo spazio dei nomi [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) con le sue nuove classi ed enumerazioni e aggiungendo una nuova proprietà [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) alla classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). <sup>24.1</sup>
* Alla classe [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) sono state aggiunte le nuove proprietà pubbliche [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) e [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) per una gestione migliorata dello stile. <sup>24.2</sup>
* La funzionalità per recuperare il testo del segno di riferimento effettivo per le note a piè di pagina e le note di chiusura è stata migliorata con la proprietà [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) e il metodo [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>
* È stata implementata l'emulazione di operazioni raster binarie per i metafile WMF. <sup>24.3</sup>
* È stata abilitata la possibilità di definire opzioni di firma per i documenti all'interno di SaveOptions aggiungendo una nuova classe chiamata [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) con nuovi membri pubblici, nonché aggiungendo nuove proprietà alle classi [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) e [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.2](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.3](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 24.4](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words per Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 espande le opzioni di rendering, l'emulazione del rendering dei metafile e le opzioni di salvataggio markdown.

Aspose.Words 23.10 migliora il rendering, espande le opzioni per caricare e salvare i documenti e consente agli utenti di unire i documenti in nuovi modi.

Aspose.Words 23.11 migliora il lavoro con revisioni, formato XLSX e caratteri nella legenda del grafico con opzioni aggiuntive.

Aspose.Words 23.12 introduce nuove proprietà ed enumerazioni per lavorare con documenti PDF e OOXML, oltre al supporto per le immagini WebP.

### Rendering e stampa

#### Personalizzazione dei titoli degli assi nei grafici DrawingML <sup>23.9</sup>

La capacità di personalizzare i titoli degli assi nei grafici DrawingML è stata introdotta mediante l'implementazione di una nuova proprietà [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) e [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) della classe pubblica.

####  Determinazione della posizione verticale dei caratteri all'interno di un paragrafo <sup>23.9</sup>

È ora possibile definire la posizione verticale dei font all'interno di un paragrafo utilizzando la nuova proprietà pubblica [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) e la nuova enumerazione [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/).

#### Controllo colore di primo piano <sup>23.10</sup>

È stata aggiunta la possibilità di recuperare il colore di primo piano senza modificatori alle classi [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) e [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) tramite la proprietà **BaseForeColor**.

#### Espansione della funzionalità dei grafici <sup>23.10</sup>

La funzionalità delle classi [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) e [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) è stata ampliata con nuovi metodi e proprietà.

#### Regola e adatta automaticamente un'immagine a una forma <sup>23.10</sup>

Un modo semplice per regolare e adattare automaticamente un'immagine a una forma particolare è stato fornito tramite il nuovo metodo [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default).

#### Formattazione predefinita dei caratteri per le voci della legenda del grafico DrawingML <sup>23.11</sup>

La possibilità di specificare la formattazione predefinita dei caratteri per le voci della legenda dei grafici DrawingML è stata aggiunta tramite la proprietà [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Questa funzionalità facilita un aspetto più snello e coerente per gli elementi del grafico, migliorando l'estetica complessiva del documento.

#### Specificare il layout della pagina all'apertura del PDF in Reader <sup>23.12</sup>

È stata aggiunta la possibilità di specificare il layout di pagina da utilizzare all'apertura di un documento in un lettore PDF attraverso l'introduzione di una nuova proprietà [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) nella classe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) e l'introduzione di una nuova enumerazione [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/).

### Caricamento e salvataggio di documenti

#### Specificare un nome di cartella per costruire URI di immagine in Markdown <sup>23.9</sup>

La classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) è stata ampliata includendo la proprietà [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), che permette di specificare il nome della cartella utilizzata per costruire gli URI delle immagini scritte nel documento Markdown.

#### Riduci dimensione output PDF <sup>23.10</sup>

Sono state implementate varie ottimizzazioni del rendering PDF per ridurre le dimensioni dell'output quando si utilizzano le impostazioni [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/).

#### Riconoscere i collegamenti ipertestuali durante il caricamento di documenti TXT <sup>23.10</sup>

La funzionalità per riconoscere i collegamenti ipertestuali durante il caricamento di documenti TXT è stata implementata aggiungendo una nuova proprietà [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/).

### Altro

- È stata implementata l'emulazione del rendering del metafile per determinare la dimensione della rasterizzazione, in particolare per la larghezza della penna WMF e la larghezza della penna cosmetica EMF. Per raggiungere questo obiettivo, la proprietà **ScaleWmfFontsToMetafileSize** è stata sostituita con la proprietà [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) ed è stata aggiunta la proprietà [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/). <sup>23.9</sup>
- È stato introdotto un metodo semplificato per inserire un documento in un altro documento nella posizione corrente del cursore utilizzando il metodo [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23.10</sup>
- È stata aggiunta la possibilità di accedere e modificare le proprietà di stile attraverso l'introduzione della nuova proprietà [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/). <sup>23.10</sup>
- Ai metodi della classe [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) è stato aggiunto un parametro di tipo generico. <sup>23.10</sup>
- È stata fornita la possibilità di scrivere tutte le sezioni di un documento sullo stesso foglio di lavoro XLSX tramite il nuovo tipo di enumerazione [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) e la nuova proprietà [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/). <sup>23.11</sup>
* È stato implementato un modo per controllare il modo in cui verranno utilizzate le estensioni del formato ZIP64 per i documenti OOXML tramite la nuova proprietà Zip64Mode della classe `OoxmlSaveOptions` e la nuova enumerazione Zip64Mode. <sup>23.12</sup>
* È stato introdotto il supporto per l'immagine WebP. Tieni presente che questa funzionalità è disponibile solo per le versioni .NetStandart e .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Aspose.Words per le note sulla versione di Python via .NET 23.9](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 23.10](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 23.11](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per .NET 23.12](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words per Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 migliora la capacità di lavorare con i dati delle serie di grafici e la capacità di lavorare con documenti ODT, oltre a migliorare le intestazioni/piè di pagina e la disposizione del testo.

Aspose.Words 23.6 espande le opzioni di rendering, aggiunge un nuovo formato di esportazione, migliora il reporting LINQ e gli strumenti LowCode.

Aspose.Words 23.7 migliora le capacità di reporting, aggiunge un nuovo formato di esportazione e introduce modifiche all'utilizzo di tabelle e firme digitali.

Aspose.Words 23.8 espande le capacità di diversi formati, migliora il rendering e aggiunge nuove opzioni per lavorare con i campi

### Formati supportati

* A partire dalla versione 23.6 è possibile salvare un documento in formato XLSX. Ora puoi convertire i tuoi documenti in formato Excel. <sup>23.6</sup>

* A partire dalla versione 23.7, è possibile salvare una pagina o una forma di documento in formato EPS. <sup>23.7</sup>

### Nuove funzionalità di formato

- È stata introdotta la funzionalità per generare automaticamente il sommario (TOC) per i documenti MOBI. <sup>23.8</sup>
- Il costruttore [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) è stato ampliato con [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- È stata implementata la modellazione del testo verticale per i metafile EMF. <sup>23.8</sup>

### Rendering

#### Ottenere e modificare i dati della serie di grafici <sup>23.5</sup>

La funzionalità per ottenere e modificare i dati delle serie di grafici è stata fornita aggiungendo:

- nuove classi: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- nuovi tipi di enumerazione: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Supporto per la tipografia avanzata <sup>23.6</sup>

È stato aggiunto il supporto per la tipografia avanzata nel rendering WMF, EMF e EMF+.

#### Contenuto colorato nella pagina <sup>23.6</sup>

È stata aggiunta la proprietà pubblica [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/) che indica se la pagina è colorata o meno.

#### Formattazione per le etichette dei dati del grafico <sup>23.6</sup>

È stata implementata la possibilità di impostare la formattazione di riempimento, tratto e didascalia per le etichette dei dati del grafico.

### Mail Merge e reporting

#### Inserimento HTML dinamico per LINQ Reporting Engine <sup>23.6</sup>

È stata aggiunta una nuova modalità di inserimento HTML dinamico per LINQ Reporting Engine.

#### Supporto tag Mustache <sup>23.7</sup>

I tag Mustache sono ora supportati nei metodi [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) e [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Specificare la dimensione delle immagini renderizzate <sup>23.8</sup>

È stata introdotta una nuova proprietà pubblica [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) per specificare la dimensione delle immagini renderizzate in pixel.

#### Conserva gli spazi bianchi per i valori stringa JSON – LINQ <sup>23.8</sup>

È stata aggiunta un'opzione a LINQ Reporting Engine per preservare gli spazi vuoti per i valori di stringa JSON.

### <sup>LowCode23.6</sup>

Sono stati aggiunti nuovi metodi LowCode destinati a unire diversi tipi di documenti in un unico documento di output.

### Altro

- È stato implementato il supporto per il testo a capo nelle intestazioni/piè di pagina. <sup>23.5</sup>
- È stata aggiunta la possibilità di rimuovere le firme digitali dai documenti ODT tramite il metodo [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23.5</sup>
- Inserita la proprietà pubblica [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) per ottenere il testo base e rubino della guida fonetica [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). <sup>23.5</sup>
- È stata aggiunta la possibilità di recuperare un valore di firma digitale da un documento firmato digitalmente come array di byte introducendo una nuova proprietà [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23.7</sup>
- Le classi [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) sono state estese con nuovi membri pubblici: [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) e [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Aspose.Words per le note sulla versione di Python via .NET 23.5](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 23.6](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Ulteriori informazioni su [Aspose.Words per Python via .NET 23.7 Note sulla versione](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 23.8](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words per Python via .NET 23.1, 23.2, 23.3, 23.4

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

La classe [Fill](https://reference.aspose.com/words/it/net/aspose.words.drawing/fill/) è stata estesa con un set di nuove proprietà pubbliche relative ai colori di sfondo e primo piano: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) e [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) e [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Gradienti radiali con lo shader nativo `SkiaSharp` <sup>23.3</sup>

È stato implementato il rendering dei gradienti radiali con lo shader nativo `SkiaSharp` per .NET Standard.

#### Distanza tra la tabella e il testo circostante <sup>23.4</sup>

È stata aggiunta la possibilità di impostare la distanza tra la tabella e il testo circostante introducendo nuove proprietà nella classe [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) e [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Caricamento e salvataggio di documenti

#### Genera `TOC` per documenti AZW3 <sup>23.1</sup>

È stata aggiunta la possibilità di generare `TOC` (tabella dei contenuti) per i documenti AZW3 tramite l'uso della proprietà **epub_navigation_map_level**.

#### Esportazione di voci di elenco in Markdown <sup>23.1</sup>

È stato fornito un modo per controllare l'esportazione degli elementi dell'elenco nel formato Markdown aggiungendo la proprietà [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) alla classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Notifiche di avanzamento del salvataggio del documento <sup>23.3</sup>

È stato implementato il salvataggio delle notifiche di avanzamento per i formati MOBI e AZW3.

#### Regolazione della spaziatura delle frasi e delle parole <sup>23.3</sup>

È stata aggiunta la possibilità di specificare se regolare automaticamente la spaziatura delle frasi e delle parole durante l'importazione del documento introducendo la proprietà [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Altro

- È stata aggiunta la possibilità di specificare la regolazione della spaziatura dei caratteri di un documento tramite l'implementazione della proprietà [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2</sup>
- È stato fornito il modo per istruire Aspose.Words se includere caselle di testo, note a piè di pagina e note di chiusura nelle statistiche sul conteggio delle parole aggiungendo la proprietà [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- È stata introdotta una nuova opzione per uno stile di documento, che consente di specificare se lo stile viene ridefinito automaticamente in base al valore appropriato, è stata introdotta attraverso la proprietà [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup>
- È stata aggiunta la possibilità di determinare se [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) è una guida fonetica utilizzando la proprietà [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- È stato implementato un modo semplice per lavorare con serie e assi di grafici combinati introducendo la classe [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) e aggiungendo la proprietà [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- Alla classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup> sono state aggiunte nuove proprietà pubbliche legate al posizionamento e al dimensionamento relativo della forma
- La precisione e le prestazioni del calcolo della luminosità del colore per la risoluzione automatica del colore del testo sono state migliorate in conformità con le ultime versioni di Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Ulteriori informazioni su [Aspose.Words per Python via .NET 23.1 Note sulla versione](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Ulteriori informazioni su [Aspose.Words per Python via .NET 23.2 Note sulla versione](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Ulteriori informazioni su [Note sulla versione Aspose.Words per Python via .NET 23.3](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Ulteriori informazioni su [Aspose.Words per Python via .NET 23.4 Note sulla versione](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Guarda anche

{{% alert color="primary" %}}

Questa pagina contiene le ultime notizie sulle versioni degli ultimi 2 anni. Per dettagli sulle versioni precedenti, consultare le pagine [Note di rilascio'](/words/python-net/release-notes/) nelle sezioni pertinenti.

{{% /alert %}}