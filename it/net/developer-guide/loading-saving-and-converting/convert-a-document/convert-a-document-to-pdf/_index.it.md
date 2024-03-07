---
title: Converti Word in PDF in C#
second_title: Aspose.Words per .NET
articleTitle: Converti un documento in PDF
linktitle: Converti un documento in PDF
description: "Converti un documento in PDF utilizzando C#. Converti DOCX in PDF C#. Sono supportati vari formati di input, inclusi i formati Word, OpenOffice, Image ed eBook."
type: docs
weight: 10
url: /it/net/convert-a-document-to-pdf/
---

La capacità di convertire facilmente e in modo affidabile documenti da un formato all'altro è una caratteristica chiave di Aspose.Words. Uno dei formati più popolari per la conversione è PDF, un formato a layout fisso, che preserva l'aspetto originale di un documento durante il rendering su varie piattaforme. Il termine "rendering" viene utilizzato in Aspose.Words per descrivere il processo di conversione di un documento in un formato di file impaginato o con il concetto di pagine.

## Converti un documento Word in PDF

La conversione da Word a PDF è un processo piuttosto complesso che richiede diverse fasi di calcolo. Il motore di layout Aspose.Words imita il modo in cui funziona il motore di layout di pagina di Microsoft Word, rendendo i documenti di output PDF il più vicino possibile a ciò che puoi vedere in Microsoft Word.

Con Aspose.Words puoi convertire a livello di codice un documento dai formati Word, come DOC o DOCX, in PDF senza utilizzare Microsoft Office. Questo articolo spiega come eseguire questa conversione.

{{% alert color="primary" %}}

Tieni presente che il numero di pagine di un documento influisce sul tempo di conversione.

{{% /alert %}}

### Converti DOCX o DOC in PDF

La conversione dal formato documento DOC o DOCX al formato PDF in Aspose.Words è molto semplice e può essere eseguita con sole due righe di codice che:

1. Carica il tuo documento in un oggetto [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) utilizzando uno dei suoi costruttori specificando il nome del documento con la sua estensione di formato.
1. Richiamare uno dei metodi [Document.Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/#save/) sull'oggetto **Document** e specificare il formato di output desiderato come PDF inserendo un nome file con estensione ".PDF".

Il seguente esempio di codice mostra come convertire un documento da DOCX in PDF utilizzando il metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/):

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

A volte è necessario specificare opzioni aggiuntive, che possono influenzare il risultato del salvataggio di un documento come PDF. Queste opzioni possono essere specificate utilizzando la classe [PdfSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/), contenente proprietà che determinano come verrà visualizzato l'output PDF.

Tieni presente che con la stessa tecnica puoi convertire qualsiasi documento in formato layout di flusso in formato PDF.

{{% /alert %}}

### Converti in diversi standard PDF

Aspose.Words fornisce l'enumerazione [PdfCompliace](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfcompliance/) per supportare la conversione di DOC o DOCX in vari standard di formato PDF (come PDF 1.7, PDF 1.5, ecc.).

Il seguente esempio di codice dimostra come convertire un documento in PDF 1.7 utilizzando [PdfSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/) con conformità a PDF17:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## Converti immagini in PDF

La conversione in PDF non è limitata dai formati di documento Microsoft Word. Qualsiasi formato supportato da Aspose.Words, incluso quello creato a livello di codice, può anche essere convertito in PDF. Ad esempio, possiamo convertire in PDF immagini a pagina singola, come JPEG, PNG, BMP, EMF o WMF, nonché immagini a più pagine, come TIFF e GIF.

Il seguente esempio di codice mostra come convertire immagini JPEG e TIFF in PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

Per far funzionare questo codice, devi aggiungere riferimenti a Aspose.Words e `System.Drawing` al tuo progetto.

## Riduci le dimensioni di output del PDF

Quando si salva in PDF, è possibile specificare se si desidera ottimizzare l'output. Per fare ciò, è necessario impostare il flag [OptimizeOutput](https://reference.aspose.com/words/it/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) su true, quindi le tele nidificate ridondanti e le tele vuote verranno rimosse, gli glyph vicini con la stessa formattazione verranno concatenati.

L'esempio di codice seguente mostra come ottimizzare l'output:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

L'utilizzo della proprietà **OptimizeOutput** può influire sulla precisione della visualizzazione del contenuto.

{{% /alert %}}

## Guarda anche

- L'articolo [Rendering](/words/it/net/rendering/) per maggiori informazioni sui formati a pagina fissa e con layout a flusso
- L'articolo [Conversione nel formato a pagina fissa](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) per maggiori informazioni sull'impaginazione
- L'articolo [Specifica le opzioni di rendering durante la conversione in PDF](/words/it/net/specify-rendering-options-when-converting-to-pdf/) per maggiori informazioni sull'utilizzo della classe `PdfSaveOptions`
- L'articolo [Scopri le funzionalità della conversione in PDF/A e PDF/UA](/words/it/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) che descrive quale standard PDF e il relativo ISO per gli standard PDF supportano Aspose.Words
- L'articolo [Quale standard PDF è meglio scegliere](/words/it/net/which-pdf-standard-is-better-to-choose/) per determinare quali standard PDF hanno senso per quali casi

- L'articolo [Lavorare con PDF/A o PDF/UA](/words/it/net/working-with-pdfa-or-pdfua/) descrive i requisiti per il contenuto del documento nei formati PDF/A e PDF/UA – principalmente i requisiti per la struttura e i caratteri

- L'articolo [Avvisi sui problemi di accessibilità durante il salvataggio in PDF/A e PDF/UA](/words/it/net/warnings-when-saving-to-pdfa-and-pdfua/) descrive quali requisiti di accessibilità dei contenuti impongono PDF/A e PDF/UA
