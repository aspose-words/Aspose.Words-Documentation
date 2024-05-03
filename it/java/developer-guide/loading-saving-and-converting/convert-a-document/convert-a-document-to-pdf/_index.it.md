---
title: Convertire un documento in PDF in Java
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in PDF
linktitle: Convertire un documento in PDF
description: "Convertire un documento in Word o qualsiasi altro formato supportato in PDF, che conserva l'aspetto originale di un documento durante il suo rendering su varie piattaforme utilizzando Java."
type: docs
weight: 10
url: /it/java/convert-a-document-to-pdf/
---

La capacità di convertire facilmente e in modo affidabile documenti da un formato all'altro è una caratteristica chiave di Aspose.Words. Uno dei formati più popolari per la conversione è il PDF – un formato fisso-layout, che conserva l'aspetto originale di un documento durante il suo rendering su varie piattaforme. Il termine "rendering" viene utilizzato in Aspose.Words per descrivere il processo di conversione di un documento in un formato di file che è impaginato o ha il concetto di pagine.

## Convertire un documento di Word in PDF {#convert-a-word-document-to-pdf}

La conversione da Word a PDF è un processo piuttosto complesso che richiede diverse fasi di calcolo. Aspose.Words motore di layout imita il modo in cui il Microsoft WordIl motore di layout della pagina funziona, rendendo i documenti di uscita PDF guardare il più vicino possibile a ciò che si può vedere in Microsoft Word.

Con Aspose.Words è possibile convertire programmaticamente un documento dal formato DOC o DOCX in PDF senza utilizzare Microsoft Ufficio. Questo articolo spiega come eseguire questa conversione.

{{% alert color="primary" %}}

Si noti che il numero di pagine in un documento influisce sul tempo di conversione.

{{% /alert %}}

### Convertire DOCX o DOC in PDF {#converting-doc-or-docx-to-pdf}

Convertire dal formato documento DOC o DOCX nel formato PDF in Aspose.Words è molto facile e può essere realizzato con solo due linee di codice che:

1. Carica il tuo documento in un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) oggetto utilizzando uno dei suoi costruttori specificando il nome del documento con la sua estensione del formato.
1. Invocare uno dei [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) metodi sulla **Document** oggetto e specificare il formato di output desiderato come PDF inserendo un nome file con l’estensione ".PDF".

Il seguente esempio di codice mostra come convertire un documento da DOCX in PDF usando `Save` metodo:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

A volte è necessario specificare opzioni aggiuntive, che possono influenzare il risultato del salvataggio di un documento come PDF. Queste opzioni possono essere specificate dall'uso del [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe, contenenti proprietà che determinano come verrà visualizzata l'output PDF.

Si noti che con la stessa tecnica, è possibile convertire qualsiasi documento di formato flusso-layout in formato PDF.

{{% /alert %}}

### Convertire in PDF Standard {#converting-to-various-pdf-standards}

Aspose.Words fornisce [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)enumerazione per supportare la conversione di DOC o DOCX in vari standard di formato PDF (come PDF 1.7, PDF 1.5, ecc.).

Il seguente esempio di codice dimostra come convertire un documento in PDF 1.7 utilizzando [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) con conformità a PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Convertire Immagini in PDF

La conversione in PDF non è limitata da Microsoft Word formati di documento. Qualsiasi formato supportato da Aspose.Words, compreso programmaticamente creato, può anche essere convertito in PDF. Ad esempio, possiamo convertire immagini a singola pagina, come JPEG, PNG, BMP, EMF o WMF, così come immagini a più pagine, come TIFF e GIF, in PDF.

Il seguente esempio di codice mostra come convertire le immagini JPEG e TIFF in PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Per fare funzionare questo codice, è necessario aggiungere riferimenti a Aspose.Words, Java.awt.image, e javax. pacchetti di classe imageio al tuo progetto.

## Ridurre PDF Dimensioni di uscita

Quando si salva in PDF, è possibile specificare se si desidera ottimizzare l'output. Per fare questo, è necessario impostare il [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) da vedere true, e poi le tele nidificate ridondanti e le tele vuote saranno rimosse, vicino glyphs con la stessa formattazione sarà concatenato.

Il seguente esempio di codice mostra come ottimizzare l'output:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Usare il **OptimizeOutput** la proprietà può influenzare l'accuratezza della visualizzazione dei contenuti.

{{% /alert %}}

## Vedi anche

- L'articolo [Rendering](/words/it/java/rendering/) per maggiori informazioni sui formati a pagina fissa e flusso-layout
- L'articolo [Convertire in Formato pagina fissa](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) per maggiori informazioni sul layout della pagina
- L'articolo [Specificare le possibilità di rendering durante la conversione in PDF](/words/it/java/specify-rendering-options-when-converting-to-pdf/) per maggiori informazioni sull'utilizzo `PdfSaveOptions` classe
