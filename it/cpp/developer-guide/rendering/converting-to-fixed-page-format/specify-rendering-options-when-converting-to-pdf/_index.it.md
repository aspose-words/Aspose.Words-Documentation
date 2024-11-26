---
title: Specificare le opzioni di rendering durante la conversione in PDF
second_title: Aspose.Words per C++
articleTitle: Specificare le opzioni di rendering durante la conversione in PDF
linktitle: Specificare le opzioni di rendering durante la conversione in PDF
description: "Convertire un documento in PDF con opzioni avanzate utilizzando C++. Utilizzare PdfSaveOptions per modificare il risultato del salvataggio di un documento in formato PDF."
type: docs
weight: 30
url: /it/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Il formato PDF è un formato a pagina fissa che è molto popolare tra gli utenti e ampiamente supportato da varie applicazioni perché un documento PDF ha lo stesso aspetto su qualsiasi dispositivo. Per questo motivo, la conversione in PDF è una caratteristica importante di Aspose.Words.

PDF è un formato complesso. Sono necessarie diverse fasi di calcolo nel processo di conversione di un documento in PDF, incluso il calcolo del layout. Poiché queste fasi includono calcoli complessi, richiedono molto tempo. Inoltre, il formato PDF è piuttosto complesso di per sé. Ha una struttura di file specifica, modello grafico e font embedding. Inoltre, presenta alcune funzionalità di output complesse, come tag di struttura del documento, crittografia, firme digitali e moduli modificabili.

Aspose.Words layout engine imita il modo in cui il motore di layout di pagina di Microsoft Word funziona. Pertanto, Aspose.Words rende i documenti di output PDF il più vicino possibile a ciò che è possibile vedere in Microsoft Word. A volte è necessario specificare opzioni aggiuntive, che possono influire sul risultato del salvataggio di un documento nel formato PDF. Queste opzioni possono essere specificate usando la classe [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), contenente le proprietà che determinano come verrà visualizzato l'output PDF.

Di seguito sono riportati alcuni esempi di utilizzo di **PdfSaveOptions**.

{{% alert color="primary" %}}

Attualmente, è possibile salvare in PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2 u e PDF/UA- 1 formati. Utilizzare l'enumerazione [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) per impostare il livello di conformità agli standard PDF. Si noti che con il formato PDF/A, una dimensione del file di output è maggiore di una normale dimensione del file PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) e [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) sono contrassegnati come obsoleti.

Per ulteriori informazioni su PDF/A, vedere il prossimo articolo, "Informazioni sulle caratteristiche della conversione in PDF/A".

{{% /alert %}}

## Creazione di un documento PDF con moduli compilabili

È anche possibile esportare moduli compilabili da un documento Microsoft Word in output PDF, che ha moduli compilabili invece di testo normale. Utilizzare la proprietà [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) per salvare un documento come PDF con moduli compilabili.

Si noti che a differenza di Microsoft Word, il formato PDF ha un numero limitato di opzioni per i moduli modificabili, ad esempio casella di testo, casella combinata e casella di controllo. Microsoft Word ha più tipi di moduli, ad esempio selettore data calendario. Generalmente, non è possibile imitare completamente il comportamento di Microsoft Word in PDF. Pertanto, in alcuni casi complessi, l'output di PDF può differire da quello visualizzato in Microsoft Word.

L'esempio di codice riportato di seguito mostra come salvare un documento come PDF con moduli compilabili con compressione e qualità Jpeg specificate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Esportazione della struttura del documento e delle proprietà personalizzate

La proprietà [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) consente di esportare la struttura del documento nell'output PDF.

PDF strutture logiche forniscono un meccanismo per incorporare informazioni, per quanto riguarda la struttura del contenuto del documento, in un file PDF. Aspose.Words conserva le informazioni sulla struttura di un documento Microsoft Word, ad esempio paragrafi, elenchi, tabelle, note a piè di pagina/note di chiusura, ecc.

Nell'esempio seguente viene illustrato come salvare un documento in formato PDF, preservando la struttura del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words consente inoltre di esportare le proprietà personalizzate del documento in PDF, come dimostrato dall'esempio seguente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Esportazione di contorni da segnalibri e intestazioni in Output PDF

Se si desidera esportare i segnalibri come contorni in output PDF, è possibile utilizzare la proprietà [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Questa proprietà specifica il livello predefinito nella struttura del documento, al quale vengono visualizzati i segnalibri Microsoft Word. Se il documento contiene segnalibri nell'intestazione / piè di pagina del documento, è possibile impostare la proprietà [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) su [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) o [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) per specificare come vengono esportati nell'output PDF. I segnalibri nelle intestazioni / piè di pagina non vengono esportati quando il valore di **HeaderFooterBookmarksExportMode** è [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

L'esempio di codice riportato di seguito mostra come esportare i segnalibri dalla prima intestazione/piè di pagina di una sezione:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

L'output PDF di questo esempio è mostrato di seguito:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Quando **HeaderFooterBookmarksExportMode** è impostato su First e il documento ha intestazioni/piè di pagina pari e dispari o un'intestazione/piè di pagina diversa, i segnalibri vengono esportati per le prime intestazioni/piè di pagina univoche in una sezione.

È inoltre possibile esportare le intestazioni nell'output PDF, utilizzando la proprietà [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Questa proprietà specifica il numero di livelli di intestazioni inclusi nella struttura del documento.

L'esempio di codice riportato di seguito mostra come esportare le intestazioni con tre livelli:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

L'output PDF di questo esempio è illustrato di seguito:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un segnalibro o la navigazione dell'intestazione possono avere aspetti diversi in vari visualizzatori PDF. Inoltre, in alcune applicazioni, i segnalibri e la navigazione dell'intestazione non sono disponibili nell'interfaccia utente.

{{% /alert %}}

## Downsampling delle immagini per ridurre le dimensioni del documento

Aspose.Words fornisce la possibilità di eseguire il downsample delle immagini al fine di ridurre la dimensione dell'output PDF, utilizzando la proprietà [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Il downsampling è abilitato per impostazione predefinita nella proprietà [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Si noti che è anche possibile impostare una risoluzione specifica nella proprietà [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) o una soglia di risoluzione nella proprietà [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). Nel secondo caso, se la risoluzione dell'immagine è inferiore al valore di soglia, il downsampling non verrà applicato.

L'esempio di codice riportato di seguito mostra come modificare la risoluzione delle immagini in un documento di output PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

La risoluzione viene calcolata in base alla dimensione reale dell'immagine sulla pagina.

## Incorporare i font nel formato Adobe PDF

Aspose.Words consente inoltre di controllare il modo in cui i font sono incorporati nei documenti PDF risultanti. I font devono essere incorporati in qualsiasi documento Adobe PDF per garantire che il documento possa essere riprodotto correttamente su qualsiasi computer (vedere ulteriori dettagli sul rendering dei font nella sezione [Uso dei caratteri TrueType ](/words/cpp/using-truetype-fonts/)). Per impostazione predefinita, Aspose.Words incorpora un sottoinsieme di font utilizzati nel documento nel PDF generato. In questo caso, solo i glifi (caratteri) utilizzati nel documento vengono salvati in PDF.

### Quando utilizzare i font completi e quando sottoinsieme

C'è un modo per specificare un'opzione per Aspose.Words per incorporare caratteri completi. Ulteriori dettagli, insieme ad alcuni vantaggi e svantaggi di ogni impostazione sono descritti nella tabella seguente.

| Modalità Embed Fonts | Vantaggio | Svantaggio |
| :- | :- | :- |
| `Full` | Utile quando si desidera modificare il PDF risultante in un secondo momento aggiungendo o modificando il testo. Tutti i font sono inclusi, quindi tutti i glifi sono presenti. | Poiché alcuni font sono grandi (diversi megabyte), incorporarli senza sottoinsieme può comportare file di output di grandi dimensioni. |
| `Subset` | Il sottoinsieme è utile se si desidera mantenere le dimensioni del file di output più piccole. | <p>L'utente non può aggiungere o modificare completamente il testo utilizzando il carattere sottoinsieme nel documento di output PDF. Questo perché non tutti i glifi del font sono presenti.</p><p>Se più PDFs vengono salvati con caratteri sottoinsiemi e assemblati insieme, il documento combinato PDF può avere un carattere contenente molti sottoinsiemi non necessari.</p> |

### Incorporare caratteri completi in PDF

La proprietà [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) consente di specificare come Aspose.Words incorpora i font in un documento di output PDF.

- Per incorporare caratteri completi nel documento di output PDF, impostare **EmbedFullFonts** su true
- Per sottoinsieme font quando si salva su PDF, impostare **EmbedFullFonts** su false

Nell'esempio seguente viene illustrato come incorporare i font completi nel documento di output PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Nell'esempio seguente viene illustrato come impostare Aspose.Words per sottoinsieme font nell'output PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello per questi esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Come controllare l'incorporamento dei font core e dei font standard Windows

I font core e i font standard Windows sono i set di font "standard", che di solito sono presenti sulla macchina di destinazione o forniti dal lettore di documenti, quindi non devono essere incorporati nell'output PDF. Non incorporando questi font, è possibile ridurre le dimensioni dei documenti renderizzati PDF e mantenere la portabilità.

Aspose.Words fornisce opzioni per scegliere come i font vengono esportati in PDF. È possibile scegliere di incorporare i font core e standard nell'output PDF o di saltare l'incorporamento e utilizzare invece i font core standard PDF o i font di sistema sulla macchina di destinazione. L'utilizzo di una di queste opzioni comporta normalmente una significativa riduzione delle dimensioni del file per i documenti PDF generati da Aspose.Words.

- Poiché queste opzioni si escludono a vicenda, è necessario sceglierne solo una alla volta.
- Quando si salva con la conformità PDF/A-1, tutti i font utilizzati devono essere incorporati nel documento PDF. Quando si salva con questa conformità, la proprietà [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) deve essere impostata su false e la proprietà [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) deve essere impostata su [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) [.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Incorporamento dei caratteri principali

L'opzione per incorporare i caratteri principali può essere abilitata o disabilitata utilizzando la proprietà `UseCoreFonts`. Quando è impostato su true, i seguenti font "True Type" più diffusi (font Base 14) non sono incorporati nel documento output PDF:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

Questi font vengono sostituiti con i corrispondenti font di tipo core 1, forniti da un lettore quando viene aperto PDF.

L'esempio fornito di seguito mostra come impostare Aspose.Words per evitare l'incorporamento dei caratteri principali e lasciare che il lettore li sostituisca con i caratteri PDF Type 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello per questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Poiché i visualizzatori PDF forniscono font di base su qualsiasi piattaforma supportata, questa opzione è utile anche quando è richiesta una maggiore portabilità dei documenti. Tuttavia, i font di base possono avere un aspetto diverso dai font di sistema.

{{% alert color="primary" %}}

Questa impostazione funziona solo per il testo di codifica ANSI (Windows-1252). La scrittura di un testo non ANSI su PDF richiederà sempre l'incorporazione dei caratteri corrispondenti.

{{% /alert %}}

### Incorporare i font di sistema

Questa opzione può essere abilitata o disabilitata utilizzando la proprietà [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Quando questa proprietà è impostata su [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), i font true type" Arial "e" Times New Roman " non vengono incorporati in un documento PDF. In questo caso, il visualizzatore client si basa sui font installati sul sistema operativo del client. Quando la proprietà **FontEmbeddingMode** è impostata su [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words non incorporare alcun tipo di carattere.

L'esempio seguente mostra come impostare Aspose.Words per saltare l'incorporamento dei font Arial e Times New Roman in un documento PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Questa modalità è molto utile quando si desidera visualizzare i documenti sulla stessa piattaforma, preservando l'aspetto esatto dei caratteri nell'output PDF.

{{% alert color="primary" %}}

Questa impostazione funziona solo per il testo di codifica ANSI (Windows-1252). La scrittura di un testo non ANSI su PDF richiede l'incorporazione del font corrispondente.

{{% /alert %}}
