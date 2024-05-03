---
title: Convertire in Formato pagina fissa in Java
second_title: Aspose.Words per Java
articleTitle: Convertire in Formato pagina fissa
linktitle: Convertire in Formato pagina fissa
description: "Aspose.Words per Java implementa il proprio motore di layout di pagina che consente di produrre tutti i formati di pagina fissi, come PDF, XPS, e vari formati di immagine."
type: docs
weight: 10
url: /it/java/converting-to-fixed-page-format/
---

Aspose.Words implementa il proprio motore di layout pagina. Prima di approfondire le sue specifiche, vale la pena prima discutere di documento ad alto livello. Quando si pensa a un documento, gli utenti tipicamente immaginano un certo numero di fogli di carta contenenti parole, immagini, tabelle e grafici. I documenti possono essere di vari tipi, come testo, fogli di calcolo, diapositive, disegni CAD, schede di flusso, e, quindi, possono avere layout essenzialmente diversi. La maggior parte delle applicazioni permettono di inviare documenti a una stampante; questo è quando un utente può effettivamente visualizzare l'aspetto finale del documento.

## Visualizzazione di un documento in varie applicazioni

Varie applicazioni di visualizzazione o pubblicazione di documenti permettono agli utenti di aprire (Adobe Acrobat, XPS Visualizzatore), e talvolta modificare (Adobe InDesign) documenti di formati specifici. Queste applicazioni tipicamente producono i cosiddetti documenti di formato "fixed-page". Tale formato di documento descrive esattamente dove il contenuto di un documento viene inserito in ogni pagina. Internamente, il PDF o XPS il formato contiene una descrizione di ogni pagina, così come le istruzioni di disegno, specificando il layout del contenuto nella pagina. Questo è simile a formati di immagine, descrivendo dove il contenuto è mostrato in forma raster o vettoriale.

Al contrario, alcune applicazioni di editing di testo non supportano la visualizzazione delle pagine di un documento. Per esempio, Microsoft Notepad supporta pochissime funzioni diverse dalla semplice visualizzazione, modifica e stampa del testo. L'osservazione importante qui è che tali applicazioni non possono mostrare le pagine del documento né dire a un utente quanti di loro sarebbero stampati, solo permettendo di visualizzare il contenuto del documento. Il documento può essere salvato in formato testo semplice e può essere aperto da molte altre applicazioni. Utilizzando un'applicazione che permette di visualizzare il contenuto binario di un file arbitrario si può vedere ciò che viene memorizzato nel file di documento – è solo testo semplice, non c'è nient'altro in esso.

Applicazioni di text-editing leggermente più sofisticate, come Microsoft WordPad, salvare il documento in Rich Text Format (RTF), che supporta più funzioni di formattazione, come l'inserimento di immagini, formattazione dei caratteri, margini di paragrafo e spaziatura. Tuttavia, il formato RTF contiene anche solo il contenuto del documento, senza informazioni sulle pagine.

Microsoft Word è l'applicazione di testo più avanzata in Windows Oggi. Formatta i file nel formato DOCX, che descrive il contenuto del documento in modo flessibile ed esteso, consentendo agli utenti di specificare la dimensione della pagina, l'orientamento per una sezione del documento e, essendo un'applicazione WYSIWYG anche mostrare le pagine del documento sullo schermo. Tuttavia, non ci sono ancora informazioni su come il contenuto del documento viene visualizzato sulle pagine disponibili nel file del documento. Il file di documento descrive solo il contenuto stesso, e il rapporto di oggetti di documento l'uno con l'altro, insieme ad alcuni vincoli geometrici. Di conseguenza, prima di visualizzare un documento, Microsoft Word calcola l'informazione stessa. Questo è dove entra in gioco un layout di pagina.

## Che cosa è un layout di pagina

Un layout della pagina dei documenti è una struttura dei dati, che descrive dove un oggetto particolare si trova sulle pagine per tutti gli oggetti dei documenti. Inoltre, dal momento che gli oggetti hanno proprietà che influenzano le loro apparenze, come le dimensioni del carattere, ombreggiature o effetti di disegno, è necessario non solo sapere dove l'oggetto è, ma anche quale area (s) della pagina che occupa, e se si applica a più pagine in modo che altri oggetti non sovrappongano la stessa area (s).

Aspose.Words implementa la funzionalità di layout della pagina interna che consente di produrre tutti i formati di pagina fissi, come PDF, XPS, e vari formati di immagine. Senza il layout della pagina, le informazioni memorizzate nel file documento pagina fissa non sarebbero disponibili e tutti questi formati non sarebbero supportati.

La relazione tra un documento e un layout di pagina è abbastanza semplice. Mentre un documento descrive il contenuto, il layout corrispondente della pagina descrive la geometria di quel contenuto. Nota, che un layout di pagina non può esistere senza un documento in quanto non ci sarebbe alcun contenuto per l'elaborazione della geometria, ma un documento può esistere senza un layout di pagina. Ad esempio, quando un documento DOCX viene convertito in un documento RTF, in genere non è necessario conoscere la geometria, poiché né il formato lo memorizza.

## Creazione di un layout di pagina

Creare un layout di pagina può essere una procedura costosa, sia in termini di velocità che di memoria. Questo è dovuto a diversi motivi:

- No. Il documento può avere una grande quantità di contenuti, che possono essere visualizzati su migliaia di pagine. La geometria di ogni oggetto su ogni pagina dovrebbe essere descritta, consumando risorse di memoria.
- No. Il documento può avere molte regole, ponendo vincoli sulla geometria. Si può passare un tempo computazionale notevole, assicurando che ogni vincolo sia soddisfatto
- Alcune caratteristiche del documento, per esempio, `NUMPAGES` campo, creare dipendenze ricorrenti per i valori di proprietà futuri, che non sono disponibili al momento del calcolo. Questo porta a calcoli ripetitivi e aggiunge in tempo di calcolo.

A causa delle suddette ragioni, Aspose.Words creerà un layout di pagina solo quando è necessario. Un motivo tipico per questo sarebbe una richiesta di rendere pagine di documento o di ottenere un valore di campo che dipende dalle informazioni disponibili nel layout di pagina. Una ragione meno evidente potrebbe essere esportare un documento in HTML. Anche se HTML non è un formato di pagina fissa e non descrive la geometria degli oggetti di contenuto, supporta ancora le immagini. Tali immagini possono essere sotto forma di forme create in Microsoft Word con un testo dentro di loro. Ad esempio, un grafico con le etichette degli assi può essere esportato in HTML come immagine, ma prima che questo possa essere fatto Aspose.Words ha bisogno di rendere quell'immagine, e quindi deve sapere dove visualizzare l'etichetta. Vedi l'esempio seguente del grafico:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Non geometrico Proprietà

Oltre alla gestione delle informazioni geometriche, un layout di pagina è anche responsabile del calcolo dei colori e degli stili di confine. In Microsoft Word, il colore del testo può essere specificato come automatico, implicando che la selezione del colore dovrebbe essere basata sul colore di ombreggiatura della cella o del paragrafo, o in base al colore della pagina, dove il testo appare.

Il layout di pagina calcola dove apparirà il testo e quali contenuti verranno resi dietro di esso, consentendo il calcolo del colore. Ci sono altri calcoli specifici eseguiti dal layout della pagina. Per esempio, un bordo orizzontale in una tabella dipende dal fatto che una riga di tabella è dura in una colonna di testo, e se è rotto tra le colonne. Se una riga viene resa dura in una colonna, il bordo inferiore viene utilizzato invece di orizzontale.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

In <span notrans="<span notrans=" Aspose.Words"=""></span>> un utente può richiedere se costruire un nuovo layout di pagina, o aggiornare uno esistente. Entrambi possono essere eseguiti da [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) metodo, fornito dal [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe. Se un layout di pagina non esiste, ma c'è bisogno di esso (ad esempio, quando il documento viene esportato in un formato di pagina fissa), Aspose.Words chiamerà automaticamente questo metodo. Tuttavia, se un layout di pagina esiste già, Aspose.Words userà quello esistente, al fine di evitare di consumare le risorse necessarie per aggiornarlo. In questo caso, l'utente deve chiamare `UpdatePageLayout` metodo, al fine di garantire che il layout della pagina sia aggiornato con il modello del documento.

### Struttura dinamica

Il processo di creazione del layout di pagina comprende i seguenti passaggi:

- No. *Conversion* – enumerando il contenuto del modello di documento e preparando gli oggetti di layout corrispondenti.
- No. *Build* – organizzare oggetti di layout per rappresentare il contenuto del documento sulle pagine.
- No. *Reflow* – aggiornamento della disposizione degli oggetti per soddisfare i vincoli di geometria.
- *Progetto oggetti di layout in presentazione pagina fissa e finalizzazione delle informazioni di colore*.
- *Costruzione e riflusso di contenuti di forma* – un passo richiesto se il documento contiene forme con contenuto di testo nidificati.

Nota, che il layout della pagina è una struttura dinamica, che può essere parzialmente ricostruita. Ciò è particolarmente necessario quando è impossibile calcolare i valori del campo senza ricostruire la struttura del layout del documento. Il campo può fare riferimento alla posizione di un oggetto su una pagina, e allo stesso tempo il valore del campo stesso è reso anche sulla pagina, che interessa la posizione dell'oggetto di riferimento. Un layout di pagina non può essere costruito in una sola volta, perché i valori di campo potrebbero non essere ancora disponibili al momento del posizionamento su una pagina.

Considerare lo scenario tipico quando `NUMPAGES` campo appare nel piè di pagina della prima pagina nel documento. Il valore di questo campo è il numero totale di pagine. Per posizionare il campo su una pagina, il suo valore dovrebbe essere conosciuto. Se solo la prima pagina è in fase di costruzione, il numero totale di pagine non è ancora noto. In questo caso, il layout della pagina deve utilizzare il valore predefinito e poi tornare a quel campo e cambiare il suo valore in base ai calcoli reali. Tuttavia, cambiare il valore del campo può influenzare altri contenuti di documento su una pagina e, infine, causare un'aggiunta di una nuova pagina o una pagina esistente rimossa, rendendo così il valore calcolato obsoleto. Questo problema può essere risolto rendendo possibile l'aggiornamento del layout della pagina esistente.

Quando si crea un layout, è anche possibile configurare [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) proprietà che influiscono sull'output del documento sulle pagine.

## Salvataggio del formato di pagina fissa

Dopo la costruzione del layout della pagina e la geometria degli oggetti e la loro posizione nella pagina sono calcolate, il documento può essere salvato in un formato di pagina fissa supportato da Aspose.Words. Quando si salvano i documenti in formati di pagina fissa, è possibile utilizzare le opzioni di rendering comuni a tutti questi formati. Permettono di controllare:

- No. Il numero e la gamma di pagine contenute nel documento di output ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progresso del salvataggio di documenti pagina per pagina ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un insieme di caratteri che vengono utilizzati per il rendering dei numeri ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un metafile player ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Per maggiori dettagli, vedere il [Manipolazione Windows Metafiles](/words/it/java/handling-windows-metafiles/) articolo.
- Un tasso di qualità per ricomprimere le immagini JPEG, il cui valore può differire leggermente, a seconda del formato di salvataggio selezionato ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Ottimizzazione della grafica vettoriale Aspose.Words output ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opzioni grafiche durante il salvataggio in formati Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Salvare il documento in scala di grigi ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Passare tra il rendering delle forme DrawingML e le forme fallback ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Interruttore tra modalità di rendering degli effetti DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

L'esempio seguente mostra come salvare un documento in formato JPEG utilizzando il `Save` metodo e opzioni di rendering:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
