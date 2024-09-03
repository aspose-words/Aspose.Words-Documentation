---
title: Come Creare a Codice a barre
second_title: Aspose.Words per .NET
articleTitle: Genera un'immagine di Codice a barre personalizzato
linktitle: Genera un'immagine di Codice a barre personalizzato
description: "Esempio di generazione della forma del codice a barre usando C#."
type: docs
weight: 350
url: /it/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Un codice a barre è una rappresentazione visiva dei dati sotto forma di linee parallele o modelli. I codici a barre vengono ampiamente utilizzati in vari settori come la vendita al dettaglio, la logistica, l'assistenza sanitaria, le banche e molti altri.

Microsoft Word consente agli utenti di incorporare codici a barre direttamente nei documenti utilizzando campi. Gli utenti possono inserire un tipo specifico di codice a barre, come un codice QR o un codice lineare, utilizzando il campo [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

In questo articolo vedremo come il campo BARCODE è implementato in Aspose.Words e in che modo Aspose.Words consente agli utenti di lavorare con documenti di Word a cui è già stato aggiunto un codice a barre.

## Tipi di barcode supportati da Aspose.Words

Aspose.Words supporta diversi tipi di codici a barre. Il tipo del codice a barre è passato come valore di stringa nella proprietà [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Poiché il lavoro con i codici a barre all'interno della funzionalità di Aspose.Words è limitato, l'utente può utilizzare qualsiasi libreria, inclusi Aspose.Barcode, o scrivere il suo rendering per lavorare con i codici a barre. Puoi saperne di più sui tipi di codici a barre [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Quando si salva in formati di Word che supportano i codici a barre, è possibile utilizzare qualsiasi tipo di codice a barre che è [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Se un tipo errato di codice a barre è stato passato, Word mostrerà un errore.

Quando si salva in altri formati, come PDF, Aspose.Words delega la resa del codice a base di barre al codice utente, quindi l'utente è limitato ai tipi di codice a barre della propria implementazione o libreria utilizzata.

## Inserisci un codice a barre in un documento o carica un documento con un codice a barre aggiunto

Aspose.Words fornisce la possibilità di:

1. Inserire programaticamente un codice a barre in un documento utilizzando i codici [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) e [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. O caricare un documento di Word con codici a barre già inseriti in esso per un ulteriore lavoro

Aspose.Words ha un'interfaccia per la generazione di codici a barre personalizzati che lo rende facile da utilizzare [Aspose.Words](https://products.aspose.com/words/net/) e [Aspose.BarCode](https://products.aspose.com/barcode/net/) insieme per rendere le immagini del codice a barre nei documenti di output. Ad esempio, è possibile creare un documento DOC, OOXML o RTF e aggiungere il campo DISPLAYBARCODE ad esso utilizzando Aspose.Words. Oppure è possibile caricare un documento DOC, OOXML o RTF con il campo DISPLAYBARCODE già esistente in esso e fornire la propria implementazione del generatore di codici a barre personalizzato.

Un tipico campo DISPLAYBARCODE ha la seguente sintassi:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Ecco un esempio di generatore di codice utilizzando Aspose.Words e Aspose. Barcode API. Questo esempio mostra come inserire immagini del codice a barre nella posizione di campo DISPLAYBARCODE in un documento di Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Puoi salvare anche il documento con il codice a barre caricato o appena inserito in formati di pagina fissi come PDF, XPS, ecc. L'esempio di codice seguente mostra come salvare un documento Word nel formato PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Per maggiori informazioni sulla conversione dei documenti da un formato a un altro vedi la sezione documentazione di [Convert a Document](/words/net/convert-a-document/).

{{% /alert %}}

{{% alert color="primary" %}}

Puoi utilizzare anche l'interfaccia [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) per convertire i codici a barre incorporati nei documenti di Word in immagini. Le immagini risultanti possono essere estratte dal documento - vedi la voce Lavorare con le Immagini per ulteriori dettagli.

{{% /alert %}}

## Specifica le opzioni del codice a barre

Quando si lavora con i codici a barre, è possibile impostare alcune proprietà aggiuntive. Aspose.Words vi fornisce la classe [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) – classe per i parametri del codice a barre da passare a BarcodeGenerator.

Aspose.Words supporta la risoluzione embedded 96 ppi per le immagini generate con [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), che limita la dimensione minima di un'immagine del codice a barre. Per ovviare a questo problema, gli sviluppatori possono inserire manualmente immagini di codici a barre con la risoluzione target in un documento Word e salvarli nel formato richiesto. Per maggiori dettagli e esempi sul lavoro con i codici a barre, si veda l'articolo [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).