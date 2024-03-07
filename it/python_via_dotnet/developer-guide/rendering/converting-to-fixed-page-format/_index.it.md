---
title: Conversione nel formato a pagina fissa
second_title: Aspose.Words per Python via .NET
articleTitle: Conversione nel formato a pagina fissa
linktitle: Conversione nel formato a pagina fissa
description: "Salva documenti nei formati PDF, XPS, HTML, XAML, PostScript e PCL utilizzando Python."
type: docs
weight: 10
url: /it/python-net/converting-to-fixed-page-format/
---

Aspose.Words implementa il proprio motore di layout di pagina. Prima di approfondire le sue specifiche, vale la pena discutere innanzitutto il documento ad alto livello. Quando pensano a un documento, gli utenti in genere immaginano una serie di fogli di carta contenenti parole, immagini, tabelle e grafici. I documenti possono essere di vario tipo, come testo, fogli di calcolo, diapositive, disegni CAD, diagrammi di flusso e, quindi, possono avere layout sostanzialmente diversi. La maggior parte delle applicazioni consente l'invio di documenti a una stampante; questo è il momento in cui un utente può effettivamente visualizzare l'aspetto finale previsto del documento.

## Visualizzazione di un documento in varie applicazioni

Varie applicazioni di visualizzazione o pubblicazione di documenti consentono agli utenti di aprire (Adobe Acrobat, XPS Viewer) e talvolta modificare (Adobe InDesign) documenti di formati specifici. Queste applicazioni producono tipicamente documenti in formato cosiddetto "a pagina fissa". Un formato di documento di questo tipo descrive esattamente dove è posizionato il contenuto di un documento su ogni pagina. Internamente, il formato PDF o XPS contiene una descrizione di ogni pagina, oltre alle istruzioni per disegnare, specificando il layout del contenuto sulla pagina. È simile ai formati immagine, che descrive dove il contenuto viene mostrato in formato raster o vettoriale.

Al contrario, alcune applicazioni di modifica del testo non supportano la visualizzazione delle pagine di un documento. Ad esempio, Microsoft Notepad supporta pochissime funzioni oltre alla semplice visualizzazione, modifica e stampa del testo. L'osservazione importante qui è che tali applicazioni non possono né mostrare le pagine del documento né dire all'utente quante di esse verrebbero stampate, consentendo solo di visualizzare il contenuto del documento. Il documento può essere salvato in formato testo normale e può essere aperto da molte altre applicazioni. Utilizzando un'applicazione che consente di visualizzare il contenuto binario di un file arbitrario è possibile vedere cosa è memorizzato nel file del documento: è solo testo semplice, non contiene nient'altro.

Applicazioni di modifica del testo leggermente più sofisticate, come Microsoft WordPad, salvano il documento in Rich Text Format (RTF), che supporta più funzioni di formattazione, come l'inserimento di immagini, la formattazione dei caratteri, i margini del paragrafo e la spaziatura. Tuttavia, anche il formato RTF contiene solo il contenuto del documento, senza informazioni sulle pagine.

Microsoft Word è oggi l'applicazione di modifica del testo più avanzata in Windows. Formatta i file nel formato DOCX, che descrive il contenuto del documento in modo flessibile ed esteso, consentendo agli utenti di specificare la dimensione della pagina, l'orientamento per una sezione del documento e, essendo un'applicazione WYSIWYG, anche mostrare le pagine del documento sullo schermo. Tuttavia non ci sono ancora informazioni su come verrà visualizzato il contenuto del documento sulle pagine disponibili nel file del documento. Il file del documento descrive solo il contenuto stesso e la relazione tra gli oggetti del documento, insieme ad alcuni vincoli geometrici. Di conseguenza, prima di visualizzare un documento, Microsoft Word calcola automaticamente tali informazioni. È qui che entra in gioco il layout di pagina.

## Che cos'è un layout di pagina

Un layout di pagina di un documento è una struttura dati che descrive dove si trova un particolare oggetto sulle pagine di tutti gli oggetti del documento. Inoltre, poiché gli oggetti hanno proprietà che ne influenzano l'aspetto, come la dimensione del carattere, l'ombreggiatura o gli effetti di disegno, è necessario non solo sapere dove si trova l'oggetto, ma anche quali aree della pagina occupa e se lo farà. applicare a più pagine in modo che altri oggetti non si sovrappongano alle stesse aree.

Aspose.Words implementa internamente la funzionalità di layout della pagina consentendogli di produrre tutti i formati di pagina fissi, come PDF, XPS e vari formati di immagine. Senza il layout di pagina, le informazioni archiviate nel file del documento a pagina fissa non sarebbero disponibili e tutti questi formati non sarebbero supportati.

La relazione tra un documento e un layout di pagina è abbastanza semplice. Mentre un documento descrive il contenuto, il layout di pagina corrispondente descrive la geometria di quel contenuto. Si noti che un layout di pagina non può esistere senza un documento poiché non ci sarebbe alcun contenuto per calcolare la geometria, ma un documento può esistere senza un layout di pagina. Ad esempio, quando un documento DOCX viene convertito in un documento RTF, in genere non è necessario conoscere la geometria, poiché nessuno dei due formati la memorizza.

## Creazione del layout di pagina

Creare un layout di pagina può essere una procedura costosa, sia in termini di velocità che di memoria. Ciò è dovuto a diverse ragioni:

- Il documento potrebbe avere una grande quantità di contenuti, che potrebbe dover essere visualizzato su migliaia di pagine. La geometria di ogni oggetto su ogni pagina dovrebbe essere descritta, consumando risorse di memoria.
- Il documento può avere molte regole, ponendo vincoli alla geometria. Può essere impiegato un tempo computazionale considerevole, assicurando che ogni vincolo sia soddisfatto
- Alcune funzionalità del documento, ad esempio il campo `NUMPAGES`, creano dipendenze ricorsive per valori di proprietà futuri, che non sono disponibili al momento del calcolo. Ciò porta a calcoli ripetitivi e ad aumentare il tempo di calcolo.

Per i motivi sopra menzionati, Aspose.Words creerà un layout di pagina solo quando necessario. Un motivo tipico per ciò sarebbe la richiesta di visualizzare le pagine del documento o di ottenere un valore di campo che dipende dalle informazioni disponibili nel layout della pagina. Una ragione meno ovvia potrebbe essere l'esportazione di un documento in HTML. Anche se l'HTML non è un formato a pagina fissa e non descrive la geometria degli oggetti di contenuto, supporta comunque le immagini. Tali immagini possono avere la forma di forme create in Microsoft Word con un testo al loro interno. Ad esempio, un grafico con etichette degli assi può essere esportato in HTML come immagine, ma prima che ciò possa essere fatto Aspose.Words deve eseguire il rendering di quell'immagine e quindi deve sapere dove visualizzare l'etichetta. Vedi l'esempio del grafico qui sotto:

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="conversione in formato pagina fissa_1" style="width:800px"/>

### Proprietà non geometriche

Oltre a gestire le informazioni geometriche, un layout di pagina è anche responsabile del calcolo dei colori e degli stili dei bordi. In Microsoft Word, il colore del testo può essere specificato come automatico, il che implica che la selezione del colore dovrebbe essere basata sul colore dell'ombreggiatura della cella o del paragrafo, o in base al colore della pagina in cui appare il testo.

Il layout della pagina calcola dove apparirà il testo e quale contenuto verrà visualizzato dietro di esso, consentendo il calcolo del colore. Esistono altri calcoli specifici eseguiti dal layout della pagina. Ad esempio, un bordo orizzontale in una tabella dipende dal fatto che una riga della tabella sia l'ultima in una colonna di testo e che sia suddivisa tra le colonne. Se una riga viene visualizzata per ultima in una colonna, viene utilizzato il bordo inferiore anziché quello orizzontale.

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In Aspose.Words, un utente può richiedere se creare un nuovo layout di pagina o aggiornarne uno esistente. Entrambi possono essere eseguiti tramite il metodo [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/), fornito dalla classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Se un layout di pagina non esiste, ma è necessario (ad esempio, quando il documento viene esportato in un formato a pagina fissa), Aspose.Words chiamerà automaticamente questo metodo. Tuttavia, se un layout di pagina esiste già, Aspose.Words utilizzerà quello esistente, per evitare di consumare le risorse necessarie per aggiornarlo. In questo caso, l'utente deve chiamare il metodo [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/), per garantire che il layout della pagina sia aggiornato con il modello del documento.

### Struttura dinamica

Il processo di creazione del layout di pagina comprende i seguenti passaggi:

- *Conversion* – enumerazione del contenuto del modello di documento e preparazione degli oggetti di layout corrispondenti.
- *Build*: organizzazione degli oggetti di layout per rappresentare il contenuto del documento sulle pagine.
- *Reflow* – aggiornamento della disposizione degli oggetti per soddisfare i vincoli geometrici.
- *Proiezione di oggetti di layout in una presentazione a pagina fissa e finalizzazione delle informazioni sul colore*.
- *Costruzione e ridisposizione del contenuto della forma*: un passaggio richiesto se il documento contiene forme con contenuto di testo nidificato.

Tieni presente che il layout della pagina è una struttura dinamica, che può essere parzialmente ricostruita. Ciò è particolarmente necessario quando è impossibile calcolare i valori dei campi senza ricostruire la struttura del layout del documento. Il campo può fare riferimento alla posizione di un oggetto su una pagina e allo stesso tempo anche il valore del campo stesso viene visualizzato sulla pagina, influenzando la posizione dell'oggetto a cui si fa riferimento. Non è possibile creare un layout di pagina in una volta sola, perché i valori dei campi potrebbero non essere ancora disponibili al momento del posizionamento su una pagina.

Considera lo scenario tipico in cui il campo `NUMPAGES` viene visualizzato nel piè di pagina della prima pagina del documento. Il valore di questo campo è il numero totale di pagine. Per posizionare il campo su una pagina è necessario conoscerne il valore. Se attualmente viene creata solo la prima pagina, il numero totale di pagine non è ancora noto. In questo caso, il layout della pagina deve utilizzare il valore predefinito e successivamente tornare a quel campo e modificarne il valore in base ai calcoli effettivi. Tuttavia, la modifica del valore del campo potrebbe influire su altri contenuti del documento su una pagina e, infine, causare l'aggiunta di una nuova pagina o la rimozione di una pagina esistente, rendendo quindi obsoleto il valore calcolato. Questo problema può essere risolto rendendo possibile l'aggiornamento del layout della pagina esistente.

Quando si crea un layout, è anche possibile impostare le proprietà [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) che influenzano l'output del documento sulle pagine.

## Salvataggio nel formato a pagina fissa

Dopo aver creato il layout della pagina e calcolato la geometria degli oggetti e la loro posizione sulla pagina, il documento può essere salvato in un formato a pagina fissa supportato da Aspose.Words. Quando si salvano documenti in formati a pagina fissa, è possibile utilizzare le opzioni di rendering comuni a tutti questi formati. Permettono di controllare:

- Il numero e l'intervallo di pagine contenute nel documento di output ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)).
- Un insieme di caratteri utilizzati per il rendering dei numeri ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/)).
- Un lettore di metafile ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/)). Per maggiori dettagli, vedere l'articolo [Gestione dei metafile Windows](/words/it/python-net/handling-windows-metafiles/).
- Un tasso di qualità per la ricompressione delle immagini JPEG, il cui valore può variare leggermente, a seconda del formato di salvataggio selezionato ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/)).
- Ottimizzazione della grafica vettoriale nell'output Aspose.Words ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)).
- Opzioni grafiche durante il salvataggio nei formati Tiff, Png, Bmp, Jpeg, Emf ([use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/), [use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)).
- Salvataggio del documento in scala di grigi ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)).
- Passaggio dal rendering delle forme DrawingML alle forme di fallback ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)).
- Passaggio tra le modalità di rendering degli effetti DML ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)).

L'esempio seguente mostra come salvare un documento in formato JPEG utilizzando il metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) e le opzioni di rendering:

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
