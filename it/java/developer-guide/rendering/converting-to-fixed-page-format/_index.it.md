---
title: Conversione in formato pagina fissa in Java
second_title: Aspose.Words per Java
articleTitle: Conversione in formato a pagina fissa
linktitle: Conversione in formato a pagina fissa
description: "Aspose.Words per Java implementa il proprio motore di layout di pagina che consente di produrre tutti i formati di pagina fissi, come PDF, XPS e vari formati di immagine."
type: docs
weight: 10
url: /it/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implementa il proprio motore di layout di pagina. Prima di approfondire le sue specifiche, vale la pena di discutere prima documento ad alto livello. Quando si pensa a un documento, gli utenti in genere immaginano un numero di fogli di carta contenenti parole, immagini, tabelle e grafici. I documenti possono essere di vario tipo, come testo, fogli di calcolo, diapositive, disegni CAD, diagrammi di flusso e, quindi, possono avere layout essenzialmente diversi. La maggior parte delle applicazioni consente l'invio di documenti a una stampante; questo è quando un utente può effettivamente visualizzare l'aspetto finale previsto del documento.

## Visualizzazione di un documento in varie applicazioni

Varie applicazioni di visualizzazione o pubblicazione di documenti consentono agli utenti di aprire (Adobe Acrobat, XPS Viewer) e talvolta modificare (Adobe InDesign) documenti di formati specifici. Queste applicazioni producono in genere i cosiddetti documenti in formato "pagina fissa". Tale formato di documento descrive esattamente dove il contenuto di un documento è posto su ogni pagina. Internamente, il formato PDF o XPS contiene una descrizione di ogni pagina, nonché istruzioni di disegno, specificando il layout del contenuto della pagina. Questo è simile ai formati di immagine, che descrivono dove il contenuto viene mostrato in forma raster o vettoriale.

Al contrario, alcune applicazioni di modifica del testo non supportano la visualizzazione delle pagine di un documento. Ad esempio, Microsoft Notepad supporta pochissime funzioni oltre alla semplice visualizzazione, modifica e stampa del testo. L'osservazione importante qui è che tali applicazioni non possono né mostrare pagine del documento né dire a un utente quante di esse verrebbero stampate, consentendo solo di visualizzare il contenuto del documento. Il documento può essere salvato in formato testo normale e può essere aperto da molte altre applicazioni. Utilizzando un'applicazione che consente di visualizzare il contenuto binario di un file arbitrario si può vedere ciò che è memorizzato nel file del documento – è solo testo semplice, non c'è nient'altro in esso.

Le applicazioni di modifica del testo leggermente più sofisticate, come Microsoft Word Pad, salvano il documento in formato Rich Text (RTF), che supporta più funzioni di formattazione, come l'inserimento di immagini, la formattazione dei caratteri, i margini dei paragrafi e la spaziatura. Tuttavia, il formato RTF contiene anche solo il contenuto del documento, non avendo informazioni sulle pagine.

Microsoft Word è l'applicazione di modifica del testo più avanzata in Windows oggi. Formatta i file nel formato DOCX, che descrive il contenuto del documento in modo flessibile ed esteso, consentendo agli utenti di specificare le dimensioni della pagina, l'orientamento per una sezione del documento e, essendo un'applicazione WYSIWYG, anche mostrare le pagine del documento sullo schermo. Tuttavia, non ci sono ancora informazioni su come il contenuto del documento viene visualizzato nelle pagine disponibili nel file del documento. Il file documento descrive solo il contenuto stesso e la relazione degli oggetti documento tra loro, insieme ad alcuni vincoli geometrici. Di conseguenza, prima di visualizzare un documento, Microsoft Word calcola l'informazione stessa. È qui che entra in gioco un layout di pagina.

## Cos'è un layout di pagina

Un layout di pagina del documento è una struttura di dati, che descrive dove si trova un particolare oggetto nelle pagine per tutti gli oggetti del documento. Inoltre, poiché gli oggetti hanno proprietà che influenzano le loro apparenze, come la dimensione del carattere, l'ombreggiatura o gli effetti di disegno, è necessario non solo sapere dove si trova l'oggetto, ma anche quale area della pagina occupa e se si applicherà a più pagine in modo che altri oggetti non si sovrappongano alla stessa area.

Aspose.Words implementa internamente la funzionalità di layout di pagina che consente di produrre tutti i formati di pagina fissi, ad esempio PDF, XPS e vari formati di immagine. Senza il layout di pagina, le informazioni memorizzate nel file di documento a pagina fissa non sarebbero disponibili e tutti questi formati non sarebbero supportati.

La relazione tra un documento e un layout di pagina è abbastanza semplice. Mentre un documento descrive il contenuto, il layout di pagina corrispondente descrive la geometria di tale contenuto. Si noti che un layout di pagina non può esistere senza un documento poiché non ci sarebbe contenuto per il calcolo della geometria, ma un documento può esistere senza un layout di pagina. Ad esempio, quando un documento DOCX viene convertito in un documento RTF, in genere non è necessario conoscere la geometria, poiché nessuno dei due formati lo memorizza.

## Creazione di un layout di pagina

La creazione di un layout di pagina può essere una procedura costosa, sia in termini di velocità che di memoria. Ciò è dovuto a diversi motivi:

- Il documento può avere una grande quantità di contenuti, che potrebbe essere necessario visualizzare su migliaia di pagine. La geometria di ogni oggetto in ogni pagina dovrebbe essere descritta, consumando risorse di memoria.
- Il documento può avere molte regole, ponendo vincoli sulla geometria. Può essere impiegato un tempo di calcolo considerevole, assicurando che ogni vincolo sia soddisfatto.
- Alcune funzionalità del documento, ad esempio il campo `NUMPAGES`, creano dipendenze ricorsive per i valori delle proprietà future, che non sono disponibili al momento del calcolo. Ciò porta a calcoli ripetitivi e si somma nel tempo di calcolo.

Per i motivi sopra indicati, Aspose.Words creerà un layout di pagina solo quando è necessario. Un motivo tipico per questo sarebbe una richiesta di rendere le pagine del documento o di ottenere un valore di campo che dipende dalle informazioni disponibili nel layout di pagina. Una ragione meno ovvia potrebbe essere l'esportazione di un documento in HTML. Anche se HTML non è un formato a pagina fissa e non descrive la geometria degli oggetti di contenuto, supporta comunque le immagini. Tali immagini possono essere sotto forma di forme create in Microsoft Word con un testo al loro interno. Ad esempio, un grafico con etichette degli assi può essere esportato in HTML come immagine, ma prima che ciò possa essere fatto Aspose.Words deve eseguire il rendering di quell'immagine e quindi deve sapere dove visualizzare l'etichetta. Vedere l'esempio grafico qui sotto:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Proprietà non geometriche

Oltre a gestire le informazioni geometriche, un layout di pagina è anche responsabile del calcolo dei colori e degli stili di bordo. In Microsoft Word, il colore del testo può essere specificato come automatico, il che implica che la selezione del colore deve essere basata sul colore di ombreggiatura della cella o del paragrafo o sul colore della pagina, in cui viene visualizzato il testo.

Il layout di pagina calcola dove apparirà il testo e quale contenuto verrà visualizzato dietro di esso, consentendo il calcolo del colore. Ci sono altri calcoli specifici eseguiti dal layout di pagina. Ad esempio, un bordo orizzontale in una tabella dipende dal fatto che una riga di tabella sia l'ultima in una colonna di testo e se sia suddivisa tra colonne. Se una riga viene visualizzata per ultima in una colonna, viene utilizzato il bordo inferiore anziché orizzontale.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In Aspose.Words, un utente può richiedere se creare un nuovo layout di pagina o aggiornarne uno esistente. Entrambi possono essere eseguiti con il metodo [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)), fornito dalla classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Se un layout di pagina non esiste, ma è necessario (ad esempio, quando il documento viene esportato in un formato a pagina fissa), Aspose.Words chiamerà automaticamente questo metodo. Tuttavia, se un layout di pagina esiste già, Aspose.Words utilizzerà quello esistente, al fine di evitare di consumare le risorse necessarie per aggiornarlo. In questo caso, l'utente deve chiamare il metodo `UpdatePageLayout`, al fine di garantire che il layout di pagina sia aggiornato con il modello di documento.

### Struttura dinamica

Il processo di creazione del layout di pagina comprende i seguenti passaggi:

- *Conversion* - enumerazione del contenuto del modello di documento e preparazione degli oggetti di layout corrispondenti.
- *Build* – disposizione degli oggetti di layout per rappresentare il contenuto del documento sulle pagine.
- *Reflow* – aggiornamento della disposizione degli oggetti per soddisfare i vincoli geometrici.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - passaggio necessario se il documento contiene forme con contenuto di testo nidificato.

Si noti che il layout di pagina è una struttura dinamica, che può essere parzialmente ricostruita. Ciò è particolarmente necessario quando è impossibile calcolare i valori dei campi senza ricostruire la struttura del layout del documento. Il campo può fare riferimento alla posizione di un oggetto in una pagina e allo stesso tempo anche il valore del campo stesso viene visualizzato nella pagina, influenzando la posizione dell'oggetto di riferimento. Non è possibile creare un layout di pagina in un colpo solo, poiché i valori dei campi potrebbero non essere ancora disponibili al momento del posizionamento su una pagina.

Si consideri lo scenario tipico quando il campo `NUMPAGES` appare nel piè di pagina della prima pagina del documento. Il valore di questo campo è il numero totale di pagine. Per posizionare il campo su una pagina, il suo valore dovrebbe essere noto. Se solo la prima pagina è attualmente in costruzione, il numero totale di pagine non è ancora noto. In questo caso, il layout di pagina deve utilizzare il valore predefinito e successivamente tornare a quel campo e modificarne il valore in base ai calcoli effettivi. Tuttavia, la modifica del valore del campo può influire sul contenuto di altri documenti in una pagina e, in ultima analisi, causare l'aggiunta di una nuova pagina o la rimozione di una pagina esistente, rendendo così obsoleto il valore calcolato. Questo problema può essere risolto rendendo possibile aggiornare il layout di pagina esistente.

Quando si crea un layout, è anche possibile impostare le proprietà [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) che influenzano l'output del documento sulle pagine.

## Salvataggio in formato pagina fissa

Dopo la creazione del layout di pagina e il calcolo della geometria degli oggetti e della loro posizione sulla pagina, il documento può essere salvato in un formato a pagina fissa supportato da Aspose.Words. Quando si salvano documenti in formati a pagina fissa, è possibile utilizzare le opzioni di rendering comuni a tutti questi formati. Permettono di controllare:

- Il numero e l'intervallo di pagine contenute nel documento di output ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Avanzamento del salvataggio del documento pagina per pagina ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un insieme di caratteri che vengono utilizzati per il rendering dei numeri ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un giocatore metafile ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Per maggiori dettagli, vedere il [Gestione dei metafile Windows](/words/java/handling-windows-metafiles/) articolo.
- Un tasso di qualità per ricomprimereJPEG immagini, il cui valore può variare leggermente, a seconda del formato di salvataggio selezionato ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Ottimizzazione della grafica vettoriale nell'output Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opzioni grafiche durante il salvataggio nei formati Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Salvataggio del documento in scala di grigi ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Passaggio tra il rendering delle forme DrawingML e le forme di fallback ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Passaggio tra le modalità di rendering degli effetti DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

L'esempio seguente illustra come salvare un documento in formato JPEG utilizzando il metodo `Save` e le opzioni di rendering:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
