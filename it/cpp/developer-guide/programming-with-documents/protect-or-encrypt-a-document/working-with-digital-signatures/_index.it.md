---
title: Lavorare con le firme digitali in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con le firme digitali
linktitle: Lavorare con le firme digitali
description: "Firma digitalmente i documenti e rileva, conta, verifica e rimuove le firme digitali esistenti."
type: docs
weight: 160
url: /it/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Una firma digitale è un'implementazione tecnologica di firme elettroniche per firmare documenti e autenticare il firmatario per garantire che un documento non sia stato modificato da quando è stato firmato. Ogni firma digitale è unica per ogni firmatario perché segue il protocollo PKI per generare chiavi pubbliche e private. Firmare un documento digitalmente significa creare una firma utilizzando la chiave privata del firmatario in cui viene utilizzato un algoritmo matematico per crittografare l'hash generato.

Aspose.Words consente di rilevare, contare o verificare le firme digitali esistenti e di aggiungere una nuova firma al documento per individuare eventuali manomissioni. È inoltre possibile rimuovere tutte le firme digitali da un documento. Utilizzare la classe [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) per lavorare con le firme digitali.

Questo articolo spiega come fare tutto quanto sopra per convalidare l'autenticità e l'integrità di un documento digitale.

{{% alert color="primary" %}}

**Prova online**

Puoi provare questa funzionalità con il nostro [Firma online gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formati supportati

Aspose.Words consente di lavorare con le firme digitali su documenti DOC, OOXML e ODT e di firmare il documento generato in formato PDF o XPS.

## Limitazioni delle firme digitali

La tabella seguente descrive alcune limitazioni che potresti incontrare quando lavori con le firme digitali tramite Aspose.Words, oltre ad alcune opzioni alternative.

| Limitazione | Opzione alternativa |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Perdita di firme digitali su un documento dopo il caricamento e il salvataggio. Pertanto, l'elaborazione di un documento su un server può causare la perdita di tutte le firme digitali senza preavviso. | Verificare se un documento contiene firme digitali e adottare le misure appropriate se ne vengono trovate. Ad esempio, invia un avviso ai client informandoli che il documento che stanno caricando contiene firme digitali che andranno perse se viene elaborato. |
| Aspose.Words supporta l'utilizzo delle macro in un documento. Ma Aspose.Words non supporta ancora le firme digitali sulle macro. | Esportare il documento in qualsiasi formato Word e utilizzare Microsoft Word per aggiungere una firma digitale alle macro. |

## Rilevare, contare e verificare le firme digitali

Aspose.Words consente di rilevare la firma digitale in un documento utilizzando il metodo [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) e la proprietà [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Vale la pena notare che tale controllo rileverà solo il fatto della firma, ma non la sua validità.

Un documento può essere firmato più di una volta e questo può essere fatto da vari utenti. Per verificare la validità delle firme digitali, è necessario caricarle dal documento utilizzando il metodo [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) e utilizzare la proprietà [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Inoltre Aspose.Words consente di contare un insieme di tutte le firme digitali all'interno di un documento utilizzando la proprietà [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Tutto ciò fornisce un modo efficiente e sicuro per controllare un documento per le firme prima di elaborarlo.

Il seguente esempio di codice mostra come rilevare la presenza di firme digitali e verificarle:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Creare una firma digitale {#create-a-digital-signature}

Per creare una firma digitale, è necessario caricare un certificato di firma che confermi l'identità. Quando invii un documento firmato digitalmente, invii anche il certificato e la chiave pubblica.

Aspose.Words consente di creare un certificato X. 509, un certificato digitale che utilizza lo standard PKI X. 509 accettato a livello internazionale per verificare che una chiave pubblica appartenga al firmatario incluso nel certificato. Per fare ciò, utilizzare il metodo [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) all'interno della classe [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

Le sezioni successive spiegano come aggiungere una firma digitale, una riga della firma e come firmare un documento PDF generato.

### Firma un documento

Aspose.Words consente di firmare un documento DOC, DOCX o ODT digitalmente utilizzando il metodo [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) e le proprietà [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

Nell'esempio di codice riportato di seguito viene illustrato come firmare i documenti utilizzando un titolare di certificato e le opzioni di firma:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Aggiungere una riga della firma

Una linea di firma è una rappresentazione visiva di una firma digitale in un documento. Aspose.Words consente di inserire una riga della firma utilizzando il metodo [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). È anche possibile impostare i parametri per questa rappresentazione utilizzando la classe [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Ad esempio, l'immagine qui sotto mostra come possono essere visualizzate le firme valide e non valide.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Inoltre, se un documento contiene una riga della firma e nessuna firma digitale, è disponibile una funzione per chiedere all'utente di aggiungere una firma.

L'esempio di codice seguente mostra come firmare un documento con un certificato personale e una riga di firma specifica:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Firma un documento generato PDF {#sign-a-generated-pdf-document}

Aspose.Words consente di firmare e ottenere tutti i dettagli di un documento PDF utilizzando le proprietà [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

Il seguente esempio di codice mostra come firmare un PDFgenerato:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Recuperare il valore della firma digitale

Aspose.Words fornisce anche la possibilità di recuperare il valore della firma digitale da un documento con firma digitale come matrice di byte utilizzando la proprietà [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

L'esempio di codice seguente mostra come ottenere il valore della firma digitale come matrice di byte da un documento:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Rimuovere le firme digitali

Aspose.Words consente di rimuovere tutte le firme digitali da un documento firmato utilizzando il metodo [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

L'esempio di codice seguente mostra come caricare e rimuovere le firme digitali da un documento:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Si noti che non è possibile rimuovere solo una firma digitale all'interno del documento.

{{% /alert %}}
