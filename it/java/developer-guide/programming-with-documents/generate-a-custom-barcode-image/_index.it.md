---
title: Crea BarCode in Java
second_title: Aspose.Words per Java
articleTitle: Genera un'immagine BarCode personalizzata
linktitle: Genera un'immagine BarCode personalizzata
description: "Esempio di generazione di forme di codici a barre utilizzando Java."
type: docs
weight: 350
url: /it/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Un codice a barre è una rappresentazione visiva di dati sotto forma di linee parallele o modelli. I codici a barre sono ampiamente utilizzati in vari settori come la vendita al dettaglio, la logistica, l'assistenza sanitaria, le banche e molti altri.

Microsoft Word consente agli utenti di incorporare i codici a barre direttamente nei documenti utilizzando i campi. Gli utenti possono inserire un tipo specifico di codice a barre, ad esempio un codice QR o un codice a barre lineare, utilizzando [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) campo.

In questo articolo, vedremo come il campo BARCODE è implementato in Aspose.Words e come Aspose.Words consente agli utenti di lavorare con documenti Word a cui è già stato aggiunto un codice a barre.

## Tipi di codici a barre supportati da Aspose.Words

Aspose.Words supporta vari tipi di codici a barre. Il tipo di codice a barre viene passato come valore stringa nella proprietà [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Poiché il lavoro con i codici a barre all'interno della funzionalità di Aspose.Words è limitato, l'utente può utilizzare qualsiasi libreria, incluso Aspose.Barcode, o scrivere il proprio rendering per lavorare con i codici a barre. Puoi saperne di più sui tipi di codici a barre [supportato da Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Quando si salva in formati Word che supportano i codici a barre, è possibile utilizzare qualsiasi tipo di codice a barre [supportato da Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Se è stato passato un tipo di codice a barre errato, Word visualizzerà un errore.

Quando si salva in altri formati, ad esempio PDF, Aspose.Words delega il rendering del codice a barre al codice utente, in modo che l'utente sia limitato ai tipi di codice a barre della loro implementazione o libreria utilizzata.

## Inserire un codice a barre in un documento o caricare un documento con un codice a barre aggiunto

Aspose.Words fornisce la possibilità di:

1. Inserire in modo programmatico un codice a barre in un documento [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) e [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) codici di campo
2. Oppure carica un documento Word con codici a barre già inseriti in esso per ulteriori lavori

Aspose.Words ha un'interfaccia per la generazione di codici a barre personalizzati che lo rende facile da usare [Aspose.Words](https://products.aspose.com/words/java/) e [Aspose.BarCode](https://products.aspose.com/barcode/java/) insieme per rendere le immagini dei codici a barre nei documenti di output. Ad esempio, è possibile creare un documento DOC, OOXML o RTF e aggiungere un campo DISPLAYBARCODE usando Aspose.Words. Oppure puoi caricare un documento DOC, OOXML o RTF con il campo DISPLAYBARCODE già esistente e fornire la tua implementazione di generatore di codici a barre personalizzato.

Un tipico campo DISPLAYBARCODE ha la seguente sintassi:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Di seguito è riportato un generatore di codice di esempio che utilizza Aspose.Words e Aspose.BarCode APIs. Questo esempio mostra come inserire le immagini del codice a barre nella posizione del campo DISPLAYBARCODE in un documento di Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

È inoltre possibile salvare il documento con il codice a barre caricato o appena inserito in formati di pagina fissi come PDF, XPS, ecc. L'esempio di codice seguente mostra come salvare un documento Word in formato PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Per ulteriori informazioni sulla conversione di documenti da un formato a un altro, vedere [Convertire un documento](/words/java/convert-a-document/) sezione documentazione.

{{% /alert %}}

{{% alert color="primary" %}}

È inoltre possibile utilizzare l'interfaccia [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) per convertire i codici a barre incorporati nei documenti Word in immagini. Le immagini risultanti possono essere estratte dal documento-vedere l'articolo Lavorare con le immagini per i dettagli.

{{% /alert %}}

## Specificare le opzioni del codice a barre

Quando si lavora con i codici a barre, è possibile impostare alcune proprietà aggiuntive. Aspose.Words fornisce la classe [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - classe per i parametri del codice a barre da passare a BarcodeGenerator.

Aspose.Words supporta una risoluzione incorporata di 96 ppi per le immagini generate con [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), che limita la dimensione minima di un'immagine con codice a barre. Per risolvere questo problema, gli sviluppatori possono inserire manualmente le immagini del codice a barre con la risoluzione di destinazione in un documento Word e salvarle nel formato richiesto. Per ulteriori dettagli ed esempi sull'utilizzo dei codici a barre, vedere l'articolo [Leggere i codici a barre da documenti Word](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
