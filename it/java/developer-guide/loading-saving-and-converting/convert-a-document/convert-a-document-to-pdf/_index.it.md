---
title: Convertire un documento in PDFin Java
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in PDF
linktitle: Convertire un documento in PDF
description: "Converti un documento in Word o in qualsiasi altro formato supportato in PDF, che conserva l'aspetto originale di un documento durante il rendering su varie piattaforme utilizzando Java."
type: docs
weight: 10
url: /it/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

La capacità di convertire facilmente e in modo affidabile i documenti da un formato all'altro è una caratteristica fondamentale di Aspose.Words. Uno dei formati più popolari per la conversione è PDF-un formato a layout fisso, che conserva l'aspetto originale di un documento durante il rendering su varie piattaforme. Il termine "rendering" è usato in Aspose.Words per descrivere il processo di conversione di un documento in un formato di file impaginato o con il concetto di pagine.

## Convertire un documento Word in PDF {#convert-a-word-document-to-pdf}

La conversione da Word a PDF è un processo piuttosto complesso che richiede diverse fasi di calcolo. Aspose.Words layout engine imita il modo in cui il motore di layout di pagina di Microsoft Word funziona, rendendo i documenti di output di PDF il più vicino possibile a ciò che è possibile vedere in Microsoft Word.

Con Aspose.Words è possibile convertire in modo programmatico un documento dal formato DOC o DOCX a PDF senza utilizzare Microsoft Office. Questo articolo spiega come eseguire questa conversione.

{{% alert color="primary" %}}

Si noti che il numero di pagine in un documento influisce sul tempo di conversione.

{{% /alert %}}

### Conversione di DOCX o DOC in PDF {#converting-doc-or-docx-to-pdf}

La conversione dal formato del documento DOC o DOCX nel formato PDF in Aspose.Words è molto semplice e può essere eseguita con solo due righe di codice che:

1. Caricare il documento in un oggetto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) utilizzando uno dei relativi costruttori specificando il nome del documento con la relativa estensione di formato.
1. Richiamare uno dei metodi [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) sull'oggetto **Document** e specificare il formato di output desiderato come PDF immettendo un nome file con ".PDF " estensione.

Il seguente esempio di codice mostra come convertire un documento da DOCX a PDF utilizzando il metodo `Save`:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

A volte è necessario specificare opzioni aggiuntive, che possono influire sul risultato del salvataggio di un documento come PDF. Queste opzioni possono essere specificate usando la classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), contenente proprietà che determinano come verrà visualizzato l'output PDF.

Si noti che con la stessa tecnica, è possibile convertire qualsiasi documento in formato flow-layout in formato PDF.

{{% /alert %}}

### Converti in diversi standard PDF {#converting-to-various-pdf-standards}

Aspose.Words fornisce l'enumerazione [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) per supportare la conversione di DOC o DOCX in vari standard di formato PDF (ad esempio PDF 1.7, PDF 1.5, ecc.).

Nell'esempio di codice seguente viene illustrato come convertire un documento in PDF 1.7 utilizzando [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) con conformità a PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Converti immagini in PDF

La conversione in PDF non è limitata dai formati di documento Microsoft Word. Qualsiasi formato supportato da Aspose.Words, incluso quello creato a livello di programmazione, può anche essere convertito in PDF. Ad esempio, possiamo convertire immagini a pagina singola, come JPEG, PNG, BMP, EMF, o WMF, così come le immagini multipagina, come TIFF e GIF, a PDF.

L'esempio di codice seguente mostra come convertire le immagini JPEG e TIFF in PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Per far funzionare questo codice, è necessario aggiungere riferimenti a Aspose.Words, Java.awt.immagine, e javax.pacchetti di classe imageio per il tuo progetto.

## Riduci PDF Dimensione dell'output

Quando si salva su PDF, è possibile specificare se si desidera ottimizzare l'output. Per fare ciò, è necessario impostare il flag [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) su true, quindi verranno rimosse le tele nidificate ridondanti e le tele vuote, i glifi vicini con la stessa formattazione verranno concatenati.

Il seguente esempio di codice mostra come ottimizzare l'output:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

L'utilizzo della proprietà **OptimizeOutput** può influire sulla precisione della visualizzazione del contenuto.

{{% /alert %}}

## Vedi anche

- Articolo [Rendering](/words/java/rendering/) per ulteriori informazioni sui formati a pagina fissa e flow-layout
- Articolo [Conversione in formato a pagina fissa](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) per ulteriori informazioni sul layout di pagina
- Articolo [Specificare le opzioni di rendering durante la conversione in PDF](/words/java/specify-rendering-options-when-converting-to-pdf/) per ulteriori informazioni sull'utilizzo della classe `PdfSaveOptions`
