---
title: Crea Barcode in Java
second_title: Aspose.Words per Java
articleTitle: Genera un'immagine personalizzata del codice a barre
linktitle: Genera un'immagine personalizzata del codice a barre
description: "Esempio di generazione della forma del codice a barre utilizzando Java."
type: docs
weight: 350
url: /it/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Un codice a barre è una rappresentazione visiva dei dati sotto forma di linee parallele o modelli. I codici a barre sono ampiamente utilizzati in vari settori come il commercio al dettaglio, la logistica, l'assistenza sanitaria, la banca e molti altri.

Microsoft Word permette agli utenti di incorporare direttamente i codici a barre nei documenti utilizzando campi. Gli utenti possono inserire un tipo specifico di codice a barre, come un codice QR o un codice lineare, utilizzando il campo [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

In questo articolo, vedremo come il campo BARCODE è implementato nel Aspose.Words e come Aspose.Words permette agli utenti di lavorare con documenti Word a cui un codice a barre è già stato aggiunto.

## Tipi di codice a barre supportati da Aspose.Words

Aspose.Words supporta diversi tipi di codici a barre. Il tipo di codice a barre viene passato come valore di stringa nella proprietà [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Poiché lavorare con i codici a barre all'interno della funzionalità di Aspose.Words è limitato, l'utente può utilizzare qualsiasi libreria, incluso Aspose.Barcode, o scrivere il suo rendering per lavorare con i codici a barre. Puoi saperne di più sui tipi di codici a barre [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Quando si salva in formati di Word che supportano i codici a barre, è possibile utilizzare qualsiasi tipo di codice a barre che è [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Se viene passato un tipo errato di codice a barre, Word mostrerà un errore.

Quando si salva in altri formati, come PDF, Aspose.Words delega la rappresentazione del codice a codice utente, quindi l'utente è limitato ai tipi di codice a barre della propria implementazione o libreria utilizzata.

## Inserisci un codice a barre in un documento o carica un documento con un codice a barre aggiunto

Aspose.Words fornisce la possibilità di:

1. Inserire programmaticamente un codice a barre in un documento utilizzando i codici campo [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) e [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. O caricare un documento Word con codici a barre già inseriti per un ulteriore lavoro

Aspose.Words ha un'interfaccia per la generazione di codici a barre personalizzati che rende facile usare [Aspose.Words](https://products.aspose.com/words/java/) e [Aspose.BarCode](https://products.aspose.com/barcode/java/) insieme per rendere immagini di codice a barre nei documenti di output. Ad esempio, è possibile creare un documento DOC, OOXML o RTF e aggiungere il campo DISPLAYBARCODE ad esso utilizzando Aspose.Words. Oppure è possibile caricare un documento DOC, OOXML o RTF con il campo DISPLAYBARCODE già esistente in esso e fornire la propria implementazione del generatore di codice a barre personalizzato.

Un tipico campo DISPLAYBARCODE ha la seguente sintassi:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Ecco un esempio di generatore di codice utilizzando Aspose.Words e Aspose.BarCode API. Questo esempio mostra come inserire immagini di codici a barre nella posizione del campo DISPLAYBARCODE in un documento Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Puoi anche salvare il documento con il codice a barre caricato o inserito di recente in formati fissi di pagina come PDF, XPS ecc. L'esempio di codice seguente mostra come salvare un documento Word nel formato PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Per ulteriori informazioni sulla conversione dei documenti da un formato a un altro, vedere la sezione della documentazione [Convert a Document](/words/java/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Puoi anche usare l'interfaccia [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) per convertire i codici a barre incorporati nei documenti Word in immagini. Le immagini risultanti possono essere estratte dal documento – vedi l'articolo Lavorare con le Immagini per dettagli.

{{% /alert %}}

## Specificare le opzioni del codice a barre

Quando si lavora con i codici a barre, è possibile impostare alcune proprietà aggiuntive. Aspose.Words fornisce la classe [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - classe per i parametri del codice a barre da passare a BarcodeGenerator.

Aspose.Words supporta la risoluzione incorporata di 96 ppi per le immagini generate con [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), che limita la dimensione minima di un'immagine del codice a barre. Per affrontare questo problema, gli sviluppatori possono inserire manualmente le immagini dei codici a barre con la risoluzione di destinazione in un documento Word e salvarle nel formato richiesto. Per ulteriori dettagli e esempi sul lavoro con i codici a barre, vedi l'articolo [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
