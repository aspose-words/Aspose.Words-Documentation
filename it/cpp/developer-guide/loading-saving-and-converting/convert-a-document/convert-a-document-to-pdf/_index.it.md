---
title: Convertire un documento in PDF in C++
second_title: Aspose.Words per C++
articleTitle: Convertire un documento in PDF
linktitle: Convertire un documento in PDF
description: "Convertire un documento in PDF usando C++. Sono supportati vari formati di input, inclusi i formati Word, OpenOffice, Image e eBook."
type: docs
weight: 10
url: /it/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
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

1. Caricare il documento in un oggetto [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) utilizzando uno dei relativi costruttori specificando il nome del documento con la relativa estensione di formato.
1. Richiamare uno dei metodi [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) sull'oggetto **Document** e specificare il formato di output desiderato come PDF immettendo un nome file con ".PDF " estensione.

Il seguente esempio di codice mostra come convertire un documento da DOCX a PDF utilizzando il metodo `Save`:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

A volte è necessario specificare opzioni aggiuntive, che possono influire sul risultato del salvataggio di un documento come PDF. Queste opzioni possono essere specificate usando la classe [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/), contenente proprietà che determinano come verrà visualizzato l'output PDF.

Si noti che con la stessa tecnica, è possibile convertire qualsiasi documento in formato flow-layout in formato PDF.

{{% /alert %}}

### Converti in diversi standard PDF {#converting-to-various-pdf-standards}

Aspose.Words fornisce l'enumerazione [PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/) per supportare la conversione di DOC o DOCX in vari standard di formato PDF (ad esempio PDF 1.7, PDF 1.5, ecc.).

Il seguente esempio di codice mostra come convertire un documento in PDF 1.7 utilizzando [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) con conformità a PDF17:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## Converti immagini in PDF {#convert-an-image-to-pdf}

La conversione in PDF non è limitata dai formati di documento Microsoft Word. Qualsiasi formato supportato da Aspose.Words, incluso quello creato a livello di programmazione, può anche essere convertito in PDF. Ad esempio, possiamo convertire immagini a pagina singola, come JPEG, PNG, BMP, EMF o WMF, nonché immagini a più pagine, come TIFF e GIF, in PDF.

L'esempio di codice seguente mostra come convertire le immagini JPEG e TIFF in PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

Per far funzionare questo codice, è necessario aggiungere riferimenti a Aspose.Words e `System.Drawing` al progetto.

## Vedi anche

- Articolo [Rendering](/words/cpp/rendering/) per ulteriori informazioni sui formati a pagina fissa e flow-layout
- Articolo [Conversione in formato a pagina fissa](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) per ulteriori informazioni sul layout di pagina
- Articolo [Specificare le opzioni di rendering durante la conversione in PDF](/words/cpp/specify-rendering-options-when-converting-to-pdf/) per ulteriori informazioni sull'utilizzo della classe `PdfSaveOptions`
