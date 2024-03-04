---
title: Opzioni durante la conversione in PDF
second_title: Aspose.Words per .NET
articleTitle: Specifica le opzioni di rendering durante la conversione in PDF
linktitle: Specifica le opzioni di rendering durante la conversione in PDF
description: "Converti un documento in PDF con opzioni avanzate utilizzando C#. Converti moduli DOCX in PDF C#. Utilizzare PdfSaveOptions per modificare il risultato del salvataggio di un documento in PDF."
type: docs
weight: 20
url: /it/net/specify-rendering-options-when-converting-to-pdf/
---

Il formato PDF è un formato a pagina fissa molto popolare tra gli utenti e ampiamente supportato da varie applicazioni, perché un documento PDF ha lo stesso aspetto su qualsiasi dispositivo. Per questo motivo, la conversione in PDF è una caratteristica importante di Aspose.Words.

Il PDF è un formato complesso. Nel processo di conversione di un documento in PDF sono necessarie diverse fasi di calcolo, compreso il calcolo del layout. Poiché queste fasi includono calcoli complessi, richiedono molto tempo. Inoltre, il formato PDF è piuttosto complesso di per sé. Ha una struttura di file, un modello grafico e un incorporamento di caratteri specifici. Inoltre, presenta alcune funzionalità di output complesse, come tag della struttura del documento, crittografia, firme digitali e moduli modificabili.

Il motore di layout Aspose.Words imita il modo in cui funziona il motore di layout di pagina di Microsoft Word. Pertanto, Aspose.Words fa sì che i documenti di output PDF siano il più vicino possibile a ciò che puoi vedere in Microsoft Word. A volte è necessario specificare opzioni aggiuntive, che possono influenzare il risultato del salvataggio di un documento nel formato PDF. Queste opzioni possono essere specificate utilizzando la classe [PdfSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/), contenente le proprietà che determinano come verrà visualizzato l'output PDF.

Di seguito sono forniti alcuni esempi di utilizzo di **PdfSaveOptions**.

{{% alert color="primary" %}}

Attualmente puoi salvare nei formati PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u e PDF/UA-1. Utilizzare l'enumerazione [PdfCompliance](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfcompliance/) per impostare il livello di conformità agli standard PDF. Tieni presente che con il formato PDF/A, la dimensione del file di output è maggiore della normale dimensione del file PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfcompliance/) e [PdfCompliance.PdfA1b](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfcompliance/) sono contrassegnati come obsoleti.

Per ulteriori informazioni su PDF/A, vedere l'articolo successivo, "Scopri le caratteristiche della conversione in PDF/A".

{{% /alert %}}

## Creazione di un documento PDF con moduli compilabili

È anche possibile esportare moduli compilabili da un documento Microsoft Word in un PDF di output, che contiene moduli compilabili invece di testo semplice. Utilizza la proprietà [PreserveFormFields](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) per salvare un documento come PDF con moduli compilabili.

Tieni presente che, a differenza di Microsoft Word, il formato PDF ha un numero limitato di opzioni per i moduli modificabili, come casella di testo, casella combinata e casella di controllo. Microsoft Word ha più tipi di moduli, ad esempio il selettore della data del calendario. In genere, non è possibile imitare completamente il comportamento Microsoft Word in PDF. Pertanto, in alcuni casi complessi, l'output PDF potrebbe differire da quello visualizzato in Microsoft Word.

L'esempio di codice seguente mostra come salvare un documento come PDF con moduli compilabili con compressione e qualità Jpeg specificate:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Esportazione della struttura del documento e delle proprietà personalizzate

La proprietà [https://reference.aspose.com/words/it/net/aspose.words. saving/pdfsaveoptions/properties/exportdocumentstructure) consente di esportare la struttura del documento nell'output PDF.

Le funzionalità della struttura logica PDF forniscono un meccanismo per incorporare informazioni relative alla struttura del contenuto del documento in un file PDF. Aspose.Words conserva le informazioni sulla struttura di un documento Microsoft Word, come paragrafi, elenchi, tabelle, note a piè di pagina/note di chiusura, ecc.

L'esempio seguente dimostra come salvare un documento in formato PDF, preservando la struttura del documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words consente inoltre di esportare le proprietà personalizzate del documento in PDF, come dimostrato dal seguente esempio:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Esportazione di contorni da segnalibri e intestazioni nel PDF di output

Se desideri esportare i segnalibri come contorni nel PDF di output, puoi utilizzare la proprietà [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/it/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/). Questa proprietà specifica il livello predefinito nella struttura del documento in cui vengono visualizzati i segnalibri Microsoft Word. Se il documento contiene segnalibri nell'intestazione/piè di pagina del documento, è possibile impostare la proprietà [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) su [First](https://reference.aspose.com/words/it/net/aspose.words.saving/headerfooterbookmarksexportmode/) o [All](https://reference.aspose.com/words/it/net/aspose.words.saving/headerfooterbookmarksexportmode/) per specificare come vengono esportati nel PDF di output. I segnalibri nelle intestazioni/piè di pagina non vengono esportati quando il valore di **HeaderFooterBookmarksExportMode** è [None](https://reference.aspose.com/words/it/net/aspose.words.saving/headerfooterbookmarksexportmode/).

L'esempio di codice seguente mostra come esportare i segnalibri dalla prima intestazione/piè di pagina di una sezione:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

Il PDF di output di questo esempio è mostrato di seguito:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Quando **HeaderFooterBookmarksExportMode** è impostato su [First](https://reference.aspose.com/words/it/net/aspose.words.saving/headerfooterbookmarksexportmode/) e il documento ha intestazioni/piè di pagina pari e dispari o un'intestazione/piè di pagina diversa, i segnalibri vengono esportati per le prime intestazioni/piè di pagina univoci in una sezione.

Puoi anche esportare intestazioni nel PDF di output, utilizzando la proprietà [HeadingsOutlineLevels](https://reference.aspose.com/words/it/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/). Questa proprietà specifica quanti livelli di intestazioni sono inclusi nella struttura del documento.

L'esempio di codice seguente mostra come esportare intestazioni con tre livelli:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

Il PDF di output di questo esempio è illustrato di seguito:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

La navigazione di un segnalibro o di un'intestazione può avere aspetti diversi nei vari visualizzatori PDF. Inoltre, in alcune applicazioni, i segnalibri e la navigazione delle intestazioni non sono disponibili nell'interfaccia utente.

{{% /alert %}}

## Downsampling delle immagini per ridurre le dimensioni del documento

Aspose.Words offre la possibilità di sottocampionare le immagini per ridurre le dimensioni del PDF di output, utilizzando la proprietà [DownsampleOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/). Il downsampling è abilitato per impostazione predefinita nella proprietà [DownsampleImages](https://reference.aspose.com/words/it/net/aspose.words.saving/downsampleoptions/downsampleimages/).

Tieni presente che è anche possibile impostare una risoluzione specifica nella proprietà [Resolution](https://reference.aspose.com/words/it/net/aspose.words.saving/downsampleoptions/resolution/) o una soglia di risoluzione nella proprietà [ResolutionThreshold](https://reference.aspose.com/words/it/net/aspose.words.saving/downsampleoptions/resolution/threshold). Nel secondo caso, se la risoluzione dell'immagine è inferiore al valore di soglia, il downsampling non verrà applicato.

L'esempio di codice seguente mostra come modificare la risoluzione delle immagini in un documento PDF di output:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

La risoluzione viene calcolata in base alla dimensione reale dell'immagine sulla pagina.

## Incorporamento di caratteri nel formato Adobe PDF

Aspose.Words consente inoltre di controllare il modo in cui i caratteri vengono incorporati nei documenti PDF risultanti. I caratteri devono essere incorporati in qualsiasi documento Adobe PDF per garantire che il documento possa essere visualizzato correttamente su qualsiasi macchina (vedere maggiori dettagli sul rendering dei caratteri nella sezione [Utilizzo dei caratteri TrueType](/words/it/net/using-truetype-fonts/)). Per impostazione predefinita, Aspose.Words incorpora un sottoinsieme di caratteri utilizzati nel documento nel PDF generato. In questo caso, solo gli glyph (caratteri) utilizzati nel documento vengono salvati in PDF.

### Quando utilizzare i caratteri completi e quando sottoinsiemi

Esiste un modo per specificare un'opzione per Aspose.Words per incorporare caratteri completi. Ulteriori dettagli, insieme ad alcuni vantaggi e svantaggi di ciascuna impostazione, sono descritti nella tabella seguente.

| Modalità Incorpora caratteri |  Vantaggi | Svantaggi |
|  :-  |  :-  |  :-  |
|  `Full`  | Utile quando si desidera modificare successivamente il PDF risultante aggiungendo o modificando il testo. Tutti i caratteri sono inclusi, quindi sono presenti tutti i glyph. | Poiché alcuni caratteri sono grandi (diversi megabyte), incorporarli senza sottoinsiemi può generare file di output di grandi dimensioni. |
|  `Subset`  | Il sottoinsieme è utile se si desidera mantenere più piccole le dimensioni del file di output. | <p>L'utente non può aggiungere o modificare completamente il testo utilizzando il carattere sottoinsieme nel documento PDF di output. Questo perché non sono presenti tutti i glyph del carattere.</p>

<p>Se più PDF vengono salvati con caratteri suddivisi in sottoinsiemi e assemblati insieme, il documento PDF combinato potrebbe avere un carattere contenente molti sottoinsiemi non necessari.</p> |

### Incorporamento di caratteri completi nel PDF

La proprietà [EmbedFullFonts](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) consente di specificare il modo in cui Aspose.Words incorpora i caratteri in un documento PDF di output.

- Per incorporare caratteri completi nel documento PDF di output, impostare **EmbedFullFonts** su true
- Per sottoimpostare i caratteri durante il salvataggio in PDF, impostare **EmbedFullFonts** su false

L'esempio seguente mostra come incorporare i caratteri completi nel documento PDF di output:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

L'esempio seguente dimostra come impostare Aspose.Words per sottoimpostare i caratteri nel PDF di output:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello per questi esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Come controllare l'incorporamento di caratteri principali e caratteri standard Windows

I caratteri principali e i caratteri Windows Standard sono i set di caratteri "standard", solitamente presenti sulla macchina di destinazione o forniti dal lettore di documenti, pertanto non è necessario che siano incorporati nel PDF di output. Non incorporando questi caratteri, è possibile ridurre la dimensione dei documenti PDF sottoposti a rendering mantenendone comunque la portabilità.

Aspose.Words fornisce opzioni per scegliere la modalità di esportazione dei caratteri in PDF. È possibile scegliere di incorporare i caratteri principali e standard nel PDF di output oppure di ignorarli e utilizzare invece i caratteri PDF principali o i caratteri di sistema standard sul computer di destinazione. L'utilizzo di una di queste opzioni normalmente comporta una significativa riduzione delle dimensioni del file per i documenti PDF generati da Aspose.Words.

- Poiché queste opzioni si escludono a vicenda, dovresti sceglierne solo una alla volta.
- Quando si salva con conformità PDF/A-1, tutti i caratteri utilizzati devono essere incorporati nel documento PDF. Quando si salva con questa conformità, la proprietà [UseCoreFonts](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) deve essere impostata su false e la proprietà [FontEmbeddingMode](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) deve essere impostata su [EmbedAll](https://reference.aspose.com/words/it/net/aspose.words.saving/pdffontembeddingmode/).

### Incorporamento di caratteri principali

L'opzione per incorporare i caratteri Core può essere abilitata o disabilitata utilizzando la proprietà [UseCoreFonts](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/usecorefonts/). Quando è impostato su true, i seguenti font "True Type" più diffusi (font Base 14) non vengono incorporati nel documento PDF di output:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Questi font vengono sostituiti con i corrispondenti font Type 1 principali, forniti da un lettore all'apertura del PDF.

L'esempio fornito di seguito mostra come impostare Aspose.Words per evitare di incorporare i caratteri principali e consentire al lettore di sostituirli con i caratteri PDF Type 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello per questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Poiché i visualizzatori PDF forniscono caratteri principali su qualsiasi piattaforma supportata, questa opzione è utile anche quando è richiesta una maggiore portabilità dei documenti. Tuttavia, i caratteri principali potrebbero avere un aspetto diverso dai caratteri di sistema.

{{% alert color="primary" %}}

Questa impostazione funziona solo per la codifica del testo ANSI (Windows-1252). La scrittura di un testo non ANSI su PDF richiederà sempre l'incorporamento dei caratteri corrispondenti.

{{% /alert %}}

### Incorporamento di caratteri di sistema

Questa opzione può essere abilitata o disabilitata utilizzando la proprietà [FontEmbeddingMode](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/). Quando questa proprietà è impostata su [EmbedNonstandard](https://reference.aspose.com/words/it/net/aspose.words.saving/pdffontembeddingmode/), i caratteri di tipo true "Arial" e "Times New Roman" non vengono incorporati in un documento PDF. In questo caso, il visualizzatore client si basa sui caratteri installati nel sistema operativo del client. Quando la proprietà **FontEmbeddingMode** è impostata su [EmbedNone](https://reference.aspose.com/words/it/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words non incorpora alcun carattere.

L'esempio seguente mostra come impostare Aspose.Words per evitare di incorporare i caratteri Arial e Times New Roman in un documento PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Questa modalità è particolarmente utile quando desideri visualizzare i tuoi documenti sulla stessa piattaforma, preservando l'esatto aspetto dei caratteri nel PDF di output.

{{% alert color="primary" %}}

Questa impostazione funziona solo per la codifica del testo ANSI (Windows-1252). La scrittura di un testo non ANSI in PDF richiede l'incorporamento del carattere corrispondente.

{{% /alert %}}
