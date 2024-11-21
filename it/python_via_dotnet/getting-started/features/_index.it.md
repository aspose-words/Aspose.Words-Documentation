---
title: Caratteristiche
second_title: Aspose.Words per Python via .NET
articleTitle: Funzionalità supportate
linktitle: Funzionalità supportate
description: "Aspose.Words for Python via .NET offre agli utenti un'ampia gamma di funzionalità, dalla semplice conversione e modifica dei documenti alla creazione di documenti strutturati e visivamente accattivanti o all'automazione del reporting."
type: docs
weight: 30
url: /it/python-net/features/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words offre agli utenti un'ampia gamma di funzionalità. Gli utenti possono eseguire un'enorme quantità di attività relative ai documenti, dalla semplice conversione di documenti da un formato supportato a un altro e la modifica di tali documenti durante il processo di conversione ad attività aziendali, come la creazione di documenti strutturati e visivamente accattivanti o l'automazione del reporting.

I formati e gli standard dei documenti moderni sono complessi e quando nel tuo progetto sono necessarie la conversione dei documenti o altre funzionalità di elaborazione dei documenti, l'unica soluzione pratica è spesso quella di affidarsi a un componente di terze parti che implementi la funzionalità desiderata. Ma l'utilizzo di un componente di terze parti comporta sempre qualche rischio. Uno dei rischi unici nell'elaborazione dei documenti è la questione di quanto completamente e correttamente la biblioteca implementi un particolare formato o standard di documento.

Aspose si impegna a fornire le implementazioni più complete e accurate dei formati e degli standard dei documenti. Il team Aspose.Words dimostra il proprio impegno verso l'interoperabilità fornendo note di implementazione dettagliate per i formati di documenti supportati su più piattaforme.

Le tabelle seguenti riepilogano e confrontano la disponibilità delle funzionalità Aspose.Words per Python via .NET e forniscono collegamenti a descrizioni dettagliate delle funzionalità.

## Piattaforme supportate

Le piattaforme Aspose.Words per Python via .NET possono essere utilizzate su Windows x64 o x86, macOS x86_x64 o arm64 e un'ampia gamma di distribuzioni Linux con Python 3.5 o successivo installato. Esistono requisiti aggiuntivi per le piattaforme Linux e macOS di destinazione:
- Librerie runtime GCC-6 (o successive)
- Dipendenze di .NET Core Runtime. L'installazione di .NET Core Runtime stessa è necessaria per `NOT`
- Per Python 3.5-3.7: è necessaria la build `pymalloc` di Python. L'opzione di compilazione `--with-pymalloc` Python è abilitata per impostazione predefinita. In genere, la build `pymalloc` di Python è contrassegnata con il suffisso `m` nel nome del file.
- Libreria Python condivisa `libpython`. L'opzione di compilazione `--enable-shared` Python è disabilitata per impostazione predefinita, alcune distribuzioni Python non contengono la libreria condivisa `libpython`. Per alcune piattaforme Linux, la libreria condivisa `libpython` può essere installata utilizzando il gestore pacchetti, ad esempio: `sudo apt-get install libpython3.7`. Il problema comune è che la libreria `libpython` è installata in una posizione diversa rispetto alla posizione di sistema standard per le librerie condivise. Il problema può essere risolto utilizzando le opzioni di compilazione Python per impostare percorsi di libreria alternativi durante la compilazione di Python oppure risolto creando un collegamento simbolico al file di libreria `libpython` nel percorso standard del sistema per le librerie condivise. In genere, il nome del file della libreria condivisa `libpython` è `libpythonX.Ym.so.1.0` per Python 3.5-3.7 o libpythonX.Y.so.1.0 per Python 3.8 o successivo (ad esempio: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Se hai bisogno di supporto per più piattaforme, cerca i prodotti "fratello gemello" Aspose.Words per .NET o Aspose.Words per Java.

## Formati di file e conversioni

Molti clienti in tutto il mondo si affidano alle funzionalità complete di importazione ed esportazione di documenti fornite da Aspose.Words.

|  Caratteristica|Descrizione | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | L'implementazione del formato DOC più veloce e completa che puoi trovare. | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words fornisce un supporto completo OOXML, Flat OPC e anche Word 2003 XML. | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | Supporto completo del formato RTF per interagire con una varietà di applicazioni. | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | Carica e salva HTML/XHTML per un'interoperabilità ancora maggiore. È disponibile anche il salvataggio come MHTML. | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words può caricare e salvare documenti nel formato `OpenDocument` Text (.odt). | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | Converti qualsiasi documento in PDF con alta fedeltà. PDF/A è supportato. | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | Converti qualsiasi documento in XPS con alta fedeltà. | {{< emoticons/tick >}} |
| `Plain Text - TXT` | Estrai facilmente il testo salvandolo in formato testo normale. | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB è un formato popolare per gli eBook. Puoi convertire qualsiasi documento da Aspose.Words al formato IDPF EPUB. | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words per .NET fornisce supporto per salvare il documento in formato PCL. | {{< emoticons/tick >}} |

## Rendering e stampa

Aspose.Words ora fornisce un rendering ad alta fedeltà delle pagine del documento.

|  Caratteristica | Python via .NET |
|  :-  |  :-  |
| Layout del documento in pagine con alta fedeltà (esattamente come farebbe Microsoft Word®) in tutti i formati seguenti. | {{< emoticons/tick >}} |
| Rendering di singole pagine o documenti completi in PDF o XPS. | {{< emoticons/tick >}} |
| Renderizza le pagine del documento in immagini BMP | {{< emoticons/tick >}} |
| Trasforma le pagine del documento in immagini (PNG, EMF, JPEG, GIF). | {{< emoticons/tick >}} |
| Rendering di singole forme dal documento in immagini raster o vettoriali. | {{< emoticons/tick >}} |
| Specifica la risoluzione dell'immagine, la qualità, la compressione e altre opzioni. | {{< emoticons/tick >}} |
| Esegui il rendering di pagine o forme in un oggetto grafico .NET con trasformazioni, a una dimensione specifica. | {{< emoticons/tick >}} |
| Stampa le pagine dei documenti utilizzando l'infrastruttura di stampa .NET. | {{< emoticons/cross >}} |
| Aggiorna `TOC`, numeri di pagina e altri campi prima del rendering o della stampa. | {{< emoticons/tick >}} |

## Caratteristiche del contenuto del documento

Aspose.Words fornisce un ricco modello di oggetti composto da oltre 100 classi pubbliche, che consentono di generare, combinare, modificare, analizzare o esaminare in altro modo a livello di codice i documenti caricati.

|  Caratteristica | Python via .NET |
|  :-  |  :-  |
| Accedi, crea e modifica paragrafi e testo. | {{< emoticons/tick >}} |
| Accedi, crea e modifica immagini, caselle di testo e forme. | {{< emoticons/tick >}} |
| Accedi, crea e modifica tabelle, righe e celle. | {{< emoticons/tick >}} |
| Accedi, crea e modifica campi, campi modulo, collegamenti ipertestuali e segnalibri. | {{< emoticons/tick >}} |
| Accedi, crea e modifica sezioni, intestazioni e piè di pagina del documento. | {{< emoticons/tick >}} |
| Accedi, crea e modifica note a piè di pagina, note di chiusura e commenti. | {{< emoticons/tick >}} |
| Accedi, crea e modifica XML personalizzato, SmartTag e tag di documenti strutturati (controlli del contenuto). | {{< emoticons/tick >}} |
| Accedi e modifica tutti gli elementi del documento utilizzando classi e metodi simili a **XmlDocument**. | {{< emoticons/tick >}} |
| Aggiorna i risultati dei campi `IF`, formula e altri tipi di campi popolari. | {{< emoticons/tick >}} |
| Ricostruisci e aggiorna i campi del sommario (TOC) esattamente come fa Microsoft Word. | {{< emoticons/tick >}} |
| Copia e sposta gli elementi del documento tra documenti. | {{< emoticons/tick >}} |
| Unisci e dividi documenti. | {{< emoticons/tick >}} |
| Ottieni e imposta proprietà del documento integrate e personalizzate. | {{< emoticons/tick >}} |
| Specifica la protezione dei documenti, apri i documenti protetti e crittografati. | {{< emoticons/tick >}} |
| Trova e sostituisci il testo, enumera il contenuto del documento. | {{< emoticons/tick >}} |
| Accetta tutte le revisioni in un documento. | {{< emoticons/tick >}} |
| Conserva o estrai oggetti OLE e controlli ActiveX dal documento. | {{< emoticons/tick >}} |
| Conserva o rimuovi le macro VBA dal documento. Conserva la firma digitale delle macro VBA. | {{< emoticons/tick >}} |
| Rileva e verifica le firme digitali nei documenti. | {{< emoticons/tick >}} |
| Inserisci testo HTML. | {{< emoticons/tick >}} |
| Estrai macro VBA da un documento Word. | {{< emoticons/tick >}} |

## Funzionalità di formattazione dei documenti

Aspose.Words fornisce accesso programmatico dettagliato alle proprietà di formattazione di tutti gli elementi del documento.

|  Caratteristica | Python via .NET |
|  :-  |  :-  |
| Accedi e modifica tutta la formattazione dei caratteri, inclusi caratteri, colori, effetti, bordi e ombreggiature. | {{< emoticons/tick >}} |
| Accedi e modifica tutta la formattazione dei paragrafi inclusi rientri, spaziatura, bordi e ombreggiature, tabulazioni. | {{< emoticons/tick >}} |
| Accedi e modifica la formattazione di tutti gli elenchi puntati e numerati, inclusi numerazione e livelli. | {{< emoticons/tick >}} |
| Accedi e modifica la formattazione della tabella, inclusi allineamento, orientamento, bordi e ombreggiatura. | {{< emoticons/tick >}} |
| Accedi e modifica tutte le proprietà della sezione, inclusi formato carta, margini e orientamento. | {{< emoticons/tick >}} |
| Accedi, crea e modifica gli stili di documento. | {{< emoticons/tick >}} |
| Accedi e modifica gli oggetti di disegno tra cui posizione, dimensione, proprietà di linea e riempimento, byte di immagine. | {{< emoticons/tick >}} |

## Caratteristiche Mail Merge

Puoi utilizzare Aspose.Words come soluzione di reporting autonoma. Progetta i tuoi report in Microsoft Word e poi fai in modo che Aspose.Words compili i documenti con dati provenienti da varie origini dati.

|  Caratteristica | Python via .NET |
|  :-  |  :-  |
| Utilizza tutti i campi mail merge Microsoft Word standard nei tuoi report, inclusi `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, GREETINGLINE. | {{< emoticons/tick >}} |
| Esegui mail merge per documenti che contengono anche i campi e le formule `IF` più complessi e nidificati. | {{< emoticons/tick >}} |
| Compila e amplia dinamicamente tabelle o frammenti nel documento dalla tua origine dati utilizzando le regioni mail merge. | {{< emoticons/cross >}} |
| Genera facilmente report che contengono dati master-detail (parent-child) come Order/OrderDetails. | {{< emoticons/cross >}} |
| Compila i documenti con dati provenienti da qualsiasi origine dati .NET come DataSet, DataTable, DataView, DataReader o ADO Recordset. | {{< emoticons/cross >}} |
| Popola documenti da qualsiasi origine dati come una query LINQ, un file XML o oggetti business implementando l'interfaccia [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/). | {{< emoticons/cross >}} |
| Assumi un controllo preciso, ad esempio sulla formattazione dei numeri, sul modo in cui i tuoi dati vengono uniti utilizzando gli eventi. | {{< emoticons/cross >}} |
| Inserisci immagini durante mail merge. | {{< emoticons/tick >}} |
| Creare o modificare a livello di codice un'origine dati Microsoft Word mail merge per un documento. Conserva le impostazioni mail merge e le origini dati. | {{< emoticons/tick >}} |
| Recupera i nomi dei campi mail merge. | {{< emoticons/tick >}} |

## Funzionalità di reporting

LINQ Reporting Engine è uno strumento di reporting avanzato che consente di generare documenti basati su documenti modello e dati ottenuti da varie fonti tra cui database, XML, JSON, OData, oggetti di tipo CLR personalizzato, documenti esterni e altro ancora pronto all'uso.

| Caratteristiche principali | Python via .NET |
|  :-  |  :-  |
| Supporto della sintassi C# e dei metodi di estensione LINQ direttamente nei modelli (anche per origini dati `ADO.NET`) | {{< emoticons/tick >}} |
| Supporto di blocchi di documenti ripetibili e condizionali (loop e condizioni) per tabelle, elenchi e contenuto comune | {{< emoticons/tick >}} |
| Supporto di grafici e immagini generati dinamicamente | {{< emoticons/tick >}} |
| Supporto per l'inserimento di documenti esterni e blocchi HTML in un documento | {{< emoticons/tick >}} |
| Supporto di più origini dati (anche di diverso tipo) per la generazione di un unico documento | {{< emoticons/tick >}} |
| Supporto integrato delle relazioni dati (master-detail) | {{< emoticons/tick >}} |
| Supporto completo di varie manipolazioni dei dati come raggruppamento, ordinamento, filtraggio e altro direttamente nei modelli | {{< emoticons/tick >}} |
| WYSIWYG: un documento generato mantiene la stessa formattazione dei suoi elementi di un modello corrispondente | {{< emoticons/tick >}} |
