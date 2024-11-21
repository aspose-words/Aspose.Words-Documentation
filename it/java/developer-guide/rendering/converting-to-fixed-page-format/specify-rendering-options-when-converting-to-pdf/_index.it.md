---
title: Specificare le opzioni di rendering durante la conversione in PDF
second_title: Aspose.Words per Java
articleTitle: Specificare le opzioni di rendering durante la conversione in PDF
linktitle: Specificare le opzioni di rendering durante la conversione in PDF
description: "Convertire un documento in PDF con opzioni avanzate. Utilizzare PdfSaveOptions per modificare il risultato del salvataggio di un documento in formato PDF utilizzando Java."
type: docs
weight: 20
url: /it/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Il formato PDF è un formato di pagina fissa che è molto popolare tra gli utenti e ampiamente supportato da varie applicazioni perché un documento PDF guarda lo stesso su qualsiasi dispositivo. Per questo motivo, convertire in PDF è una caratteristica importante di Aspose.Words.

PDF è un formato complesso. Sono necessarie diverse fasi di calcolo nel processo di conversione di un documento in PDF, incluso il calcolo del layout. Dal momento che queste fasi includono calcoli complessi, stanno richiedendo tempo. Inoltre, il formato PDF è piuttosto complesso da solo. Ha una specifica struttura dei file, modello grafico e incorporazione dei caratteri. Inoltre, presenta alcune funzionalità di output complesse, come tag di struttura dei documenti, crittografia, firme digitali e forme modificabili.

Aspose.Words motore di layout imita il modo in cui il Microsoft WordIl motore di layout della pagina funziona. Perciò, Aspose.Words rende i documenti di uscita PDF guardare il più vicino possibile a ciò che si può vedere in Microsoft Word. A volte è necessario specificare opzioni aggiuntive, che possono influenzare il risultato di salvare un documento nel formato PDF. Queste opzioni possono essere specificate dall'uso del [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe, contenente le proprietà che determinano come verrà visualizzata l'output PDF.

Alcuni esempi di utilizzo **PdfSaveOptions** sono forniti di seguito.

{{% alert color="primary" %}}

Attualmente, è possibile salvare in formato PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u e PDF/UA-1. Utilizzare [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) enumerazione per impostare il livello di conformità degli standard PDF. Si noti che con il formato PDF/A, una dimensione del file di uscita è più grande di una dimensione del file PDF regolare.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) e [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) sono contrassegnati come obsoleti.

Per ulteriori informazioni su PDF/A, vedere il prossimo articolo, "Learn Features of Conversion to PDF/A".

{{% /alert %}}

## Creare un PDF Documento con moduli riempibili

È anche possibile esportare moduli riempibili da un Microsoft Word documento in uscita PDF, che ha forme compilabili invece di un testo normale. Utilizzare [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) proprietà per salvare un documento come PDF con moduli compilabili.

Si noti che in contrasto con <span notrans="<span notrans=" Microsoft Word"=""></span>> il formato PDF ha un numero limitato di opzioni per i moduli modificabili, come casella di testo, casella combinata e casella di controllo. Microsoft Word ha più tipi di forme, per esempio, il raccoglitore di data del calendario. Generalmente, non è possibile imitare completamente Microsoft Word comportamento in PDF. Pertanto, in alcuni casi complessi, l'output PDF può differire da quello che vedi in Microsoft Word.

L'esempio di codice qui sotto mostra come salvare un documento come PDF con i moduli riempibili con la compressione e la qualità specificate di Jpeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Esportazione della struttura dei documenti e delle proprietà personalizzate

The [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) proprietà consente di esportare la struttura dei documenti in uscita PDF.

Le strutture di struttura logica PDF forniscono un meccanismo per incorporare informazioni, per quanto riguarda la struttura del contenuto del documento, in un file PDF. Aspose.Words conserva informazioni sulla struttura da un Microsoft Word documento, quali paragrafi, liste, tabelle, note a piè di pagina, ecc.

Il seguente esempio dimostra come salvare un documento in formato PDF, mantenendo la struttura del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words consente anche di esportare documenti proprietà personalizzate in PDF, che è dimostrato dal seguente esempio:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Esportazione Estratti da Segnalibro e Rubriche in Uscita PDF

Se si desidera esportare segnalibri come contorni in uscita PDF, è possibile utilizzare il [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) proprieta'. Questa proprietà specifica il livello predefinito nel profilo del documento, a cui Microsoft Word vengono visualizzati i segnalibri. Se il documento contiene segnalibri nell'intestazione/piede del documento, è possibile impostare il [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) proprietà a [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) o [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) al fine di specificare come vengono esportati in formato PDF. I segnalibri in headers/footers non vengono esportati quando il valore di **HeaderFooterBookmarksExportMode** è [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

L'esempio di codice qui sotto mostra come esportare segnalibri dal primo intestazione/footer di una sezione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Il PDF di output di questo esempio è mostrato di seguito:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Quando **HeaderFooterBookmarksExportMode** è impostato su [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) e il documento ha intestazioni o piedini pari e dispari o un altro intestazione/footer di prima pagina, i segnalibri vengono esportati per le prime intestazioni/piedi unici in una sezione.

È inoltre possibile esportare le voci nel PDF di output, utilizzando il [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) proprieta'. Questa proprietà specifica quanti livelli di intestazioni sono inclusi nella scheda del documento.

L'esempio seguente del codice mostra come esportare le voci con tre livelli:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

L'output PDF di questo esempio è descritto di seguito:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un segnalibro o la navigazione intestata può avere diverse apparizioni in vari visualizzatori PDF. Inoltre, in alcune applicazioni, segnalibri e navigazione intestata non sono disponibili in UI.

{{% /alert %}}

## Downsampling Immagini per ridurre la dimensione del documento

Aspose.Words fornisce una capacità di downsample immagini al fine di ridurre l'output formato PDF, utilizzando il [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) proprieta'. Downsampling è abilitato per impostazione predefinita [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) proprieta'.

Si noti che è anche possibile impostare una risoluzione specifica nel [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) proprietà, o una soglia di risoluzione nella [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) proprieta'. Nel secondo caso, se la risoluzione dell'immagine è inferiore al valore di soglia, allora il downsampling non si applica.

L'esempio di codice qui sotto mostra come modificare la risoluzione delle immagini in un documento PDF di output:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

La risoluzione è calcolata in base alla dimensione reale dell'immagine nella pagina.

## Embedding Fonts in formato PDF Adobe

Aspose.Words consente inoltre di controllare come i font sono incorporati nei documenti PDF risultante. I caratteri devono essere incorporati in qualsiasi documento Adobe PDF per garantire che il documento possa essere correttamente reso su qualsiasi macchina (vedere maggiori dettagli sul rendering dei caratteri nella sezione [Usare il Vero Tipo caratteri](/words/it/java/using-truetype-fonts/)). Per impostazione predefinita, Aspose.Words incorpora un sottoinsieme di caratteri utilizzati nel documento nel PDF generato. In questo caso, solo il glyphs (caratteri) utilizzati nel documento vengono salvati in PDF.

### Quando usare i caratteri completi e quando sottomettere

C'è un modo per specificare un'opzione per Aspose.Words per incorporare font completi. Ulteriori dettagli, insieme ad alcuni vantaggi e svantaggi di ogni impostazione sono descritti nella tabella sottostante.

| Modalità caratteri incorporati |  Vantaggi | Svantaggi |
|  :-  |  :-  |  :-  |
|  `Full`  | Utile quando si desidera modificare il PDF risultante in seguito aggiungendo o modificando il testo. Tutti i font sono inclusi, quindi tutti glyphsono presenti. | Dal momento che alcuni font sono grandi (diverse megabyte), incorporandoli senza sottosetting può causare grandi file di output. |
|  `Subset`  | La sottosetting è utile se si desidera mantenere la dimensione del file di uscita più piccola. | <p>L'utente non può completamente aggiungere o modificare il testo utilizzando il carattere sottosetted nel documento PDF di output. Questo perché non tutto glyphs del carattere sono presenti.</p>

<p>Se vengono salvati più PDF con caratteri sottosette e assemblati insieme, il documento PDF combinato può avere un carattere contenente molti sottoinsiemi inutili.</p>
 |

### Embedding Full Fonts in PDF

The [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) la proprietà consente di specificare come Aspose.Words incorpora i font in un documento PDF di output.

- No. Per incorporare font completi nel documento PDF di output, impostare **EmbedFullFonts** a true
- No. Per sottoscrivere i font quando si salva in PDF, impostare **EmbedFullFonts** a false

L'esempio seguente mostra come incorporare font completi nel documento PDF di output:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

L'esempio seguente dimostra come impostare Aspose.Words per sottoscrivere i font nell'output PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template per questi esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Come controllare Embedding Nucleo Fonts e Windows Fonti standard

Font core e Windows I caratteri standard sono i "standard" set di caratteri, che di solito sono presenti sulla macchina di destinazione o forniti dal lettore di documenti, quindi non hanno bisogno di essere incorporati nel PDF di uscita. Non incorporando questi font, è possibile diminuire le dimensioni dei documenti PDF resi e mantenere la portabilità.

Aspose.Words fornisce opzioni per scegliere come i font vengono esportati in PDF. È possibile scegliere sia di incorporare core e caratteri standard nel PDF di output o di saltare incorporandoli e utilizzare caratteri PDF core standard o font di sistema sulla macchina di destinazione. Utilizzando una di queste opzioni normalmente si traduce in una significativa riduzione delle dimensioni dei file per i documenti PDF generati da Aspose.Words.

- Poiché queste opzioni sono reciprocamente esclusive, si dovrebbe scegliere solo una alla volta.
- Quando si salva con la conformità PDF/A-1, tutti i caratteri utilizzati devono essere incorporati nel documento PDF. Quando si salva questa conformità, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) la proprietà deve essere impostata false e il [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) la proprietà deve essere impostata [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Embedding Core Fonts

L'opzione per incorporare i font Core può essere abilitata o disabilitata utilizzando il [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) proprieta'. Quando è impostato su true, i seguenti caratteri "Tipo Ruo" più popolari (Base 14 caratteri) non sono incorporati nel documento PDF di output:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Questi caratteri sono sostituiti con il nucleo corrispondente font Type 1, che sono forniti da un lettore quando il PDF è aperto.

L'esempio qui sotto mostra come impostare Aspose.Words per evitare di incorporare i caratteri di base e lasciare che il lettore li sostituisca con PDF Tipo 1 caratteri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template per questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Dal momento che gli spettatori PDF forniscono font core su qualsiasi piattaforma supportata, questa opzione è anche utile quando è richiesta una maggiore portabilità dei documenti. Tuttavia, i caratteri principali possono sembrare diversi dai font di sistema.

{{% alert color="primary" %}}

Questa impostazione funziona solo per ANSI (Windows-1252) codifica testo. Scrivere un testo non ANSI in PDF richiederà sempre l'inserimento dei caratteri corrispondenti.

{{% /alert %}}

### Embedding System Fonts

Questa opzione può essere abilitata o disabilitata utilizzando [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) proprieta'. Quando questa proprietà è impostata su [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), il "Arial" e "Times New Roman" true caratteri di tipo non sono incorporati in un documento PDF. In questo caso, il visualizzatore client si basa sui font installati sul sistema operativo client. Quando **FontEmbeddingMode** la proprietà è impostata su [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words non incorporare font.

L'esempio qui sotto mostra come impostare Aspose.Words per saltare i font Arial e Times New Roman in un documento PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Questa modalità è più utile quando si desidera visualizzare i documenti sulla stessa piattaforma, mantenendo l'esatta apparizione di caratteri nel PDF di uscita.

{{% alert color="primary" %}}

Questa impostazione funziona solo per ANSI (Windows-1252) codifica testo. Scrivere un testo non ANSI in PDF richiede che il font corrispondente sia incorporato.

{{% /alert %}}
