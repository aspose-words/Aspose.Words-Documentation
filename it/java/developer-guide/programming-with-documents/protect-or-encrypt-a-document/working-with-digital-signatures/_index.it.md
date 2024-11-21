---
title: Lavorare con le firme digitali Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con le firme digitali
linktitle: Lavorare con le firme digitali
description: "Segna digitalmente i documenti e rileva, conteggia, verifica e rimuove le firme digitali esistenti utilizzando Java."
type: docs
weight: 30
url: /it/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Una firma digitale è un'implementazione tecnologica delle firme elettroniche per firmare documenti e autenticare il firmatario per garantire che un documento non è stato modificato da quando è stato firmato. Ogni firma digitale è unica per ogni firmatore a causa del seguito del protocollo PKI per generare sia chiavi pubbliche che private. Segnare un documento significa creare una firma utilizzando la chiave privata del firmatario in cui viene utilizzato un algoritmo matematico per crittografare l'hash generato.

Aspose.Words consente di rilevare, contare o verificare le firme digitali esistenti, e aggiungere anche una nuova firma al documento per scoprire eventuali manomissioni in esso. È inoltre possibile rimuovere tutte le firme digitali da un documento. Utilizzare [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) classe per lavorare con firme digitali.

Questo articolo spiega come fare tutto quanto sopra per convalidare l'autenticità e l'integrità di un documento digitale.

{{% alert color="primary" %}}

Si noti che è possibile accedere alle firme digitali del documento solo quando si esegue il Java 6 versione e sopra.

{{% /alert %}}

{{% alert color="primary" %}}

**Prova online**

Puoi provare questa funzionalità con la nostra [Firma online gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formati supportati

Aspose.Words consente di lavorare con le firme digitali sui documenti DOC, OOXML e ODT e di firmare il documento generato in PDF o XPS formato.

## Limitazioni delle firme digitali

La tabella qui sotto descrive alcune limitazioni che si possono affrontare mentre si lavora con firme digitali attraverso Aspose.Words, così come alcune opzioni alternative.

|  Limitazioni |  Opzione alternativa |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Perdita di firme digitali su un documento dopo il caricamento e il salvataggio. Pertanto, l'elaborazione di un documento a un server può causare la perdita di tutte le firme digitali senza preavviso |  Controllare se un documento ha firme digitali e prendere l'azione appropriata se si trovano. Ad esempio, inviare un avviso ai clienti informandoli che il documento che stanno caricando contiene firme digitali che verranno perse se viene elaborato |
|  Aspose.Words supporta il lavoro con le macro in un documento. Ma Aspose.Words non supporta ancora le firme digitali sulle macro |  Esportare il documento in qualsiasi formato di Word e utilizzare Microsoft Word aggiungere una firma digitale alle macro |

## Rileva, conteggi e verifica firme digitali

Aspose.Words consente di rilevare la firma digitale in un documento utilizzando il [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) metodo e [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) proprieta'. Vale la pena notare che tale controllo rileva solo il fatto della firma, ma non la sua validità.

Un documento può essere firmato più di una volta, e questo può essere fatto da diversi utenti. Per verificare la validità delle firme digitali, è necessario caricarle dal documento utilizzando il [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) metodo e utilizzare [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) proprieta'. Anche Aspose.Words consente di contare un insieme di tutte le firme digitali all'interno di un documento utilizzando il [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) proprieta'.

Tutto questo fornisce un modo efficiente e sicuro per controllare un documento per le firme prima di elaborarlo.

Il seguente esempio di codice mostra come rilevare la presenza delle firme digitali e verificarle:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Creare una firma digitale {#create-a-digital-signature}

Per creare una firma digitale, è necessario caricare un certificato di firma che conferma l'identità. Quando invii un documento firmato digitalmente, invii anche il tuo certificato e la chiave pubblica.

Aspose.Words consente di creare il certificato X.509, un certificato digitale che utilizza lo standard X.509 PKI riconosciuto a livello internazionale per verificare che una chiave pubblica appartiene al firmatario incluso all'interno del certificato. Per fare questo, usare il [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) metodo all'interno del [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) classe.

Le sezioni successive spiegano come aggiungere una firma digitale, una linea di firma e come firmare un documento PDF generato.

### Firma un documento

Aspose.Words consente di firmare un documento DOC, DOCX o ODT digitale utilizzando [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) metodo e [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) proprietà.

Il seguente esempio di codice mostra come firmare i documenti utilizzando un titolare del certificato e le opzioni di firma:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Aggiungi una linea di firma

Una linea di firma è una rappresentazione visiva di una firma digitale in un documento. Aspose.Words consente di inserire una linea firma utilizzando la [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) metodo. È inoltre possibile impostare i parametri per questa rappresentazione utilizzando [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) classe.

Ad esempio, l'immagine qui sotto mostra come possono essere visualizzate firme valide e non valide.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Inoltre, se un documento contiene una linea di firma e nessuna firma digitale, c'è una funzione per chiedere all'utente di aggiungere una firma.

Il seguente esempio di codice mostra come firmare un documento con un certificato personale e una specifica riga di firma:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Firma un documento PDF Generato {#sign-a-generated-pdf-document}

Aspose.Words consente di firmare e ottenere tutti i dettagli di un documento PDF utilizzando [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) proprietà.

Il seguente esempio di codice mostra come firmare un PDF generato:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

L'immagine seguente dimostra che il documento PDF generato è aperto in Adobe Acrobat e la firma digitale è verificata come presente e valida.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Recuperare il valore della firma digitale

Aspose.Words fornisce anche la capacità di recuperare il valore della firma digitale da un documento firmato digitalmente come array byte utilizzando il [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) proprieta'.

Il seguente esempio di codice mostra come ottenere il valore della firma digitale come array byte da un documento:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Rimuovere le firme digitali

Aspose.Words consente di rimuovere tutte le firme digitali da un documento firmato utilizzando il [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) metodo.

Il seguente esempio di codice mostra come caricare e rimuovere le firme digitali da un documento:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Si noti che non è possibile rimuovere solo una firma digitale all'interno del documento.

{{% /alert %}}
