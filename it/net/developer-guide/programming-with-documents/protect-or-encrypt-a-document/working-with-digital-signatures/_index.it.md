---
title: Lavora con le firme digitali in C#
second_title: Aspose.Words per .NET
articleTitle: Lavora con le firme digitali
linktitle: Lavora con le firme digitali
description: "Firma digitalmente i documenti e rileva, conta, verifica e rimuovi le firme digitali esistenti utilizzando C#."
type: docs
weight: 40
url: /it/net/working-with-digital-signatures/
---

Una firma digitale è un'implementazione tecnologica delle firme elettroniche per firmare documenti e autenticare il firmatario per garantire che un documento non sia stato modificato da quando è stato firmato. Ogni firma digitale è unica per ciascun firmatario perché segue il protocollo PKI per generare sia chiavi pubbliche che private. Firmare digitalmente un documento significa creare una firma utilizzando la chiave privata del firmatario in cui viene utilizzato un algoritmo matematico per crittografare l'hash generato.

Aspose.Words ti consente di rilevare, contare o verificare le firme digitali esistenti e anche aggiungere una nuova firma al tuo documento per scoprire eventuali manomissioni. Puoi anche rimuovere tutte le firme digitali da un documento. Utilizza la classe [DigitalSignatureUtil](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignatureutil/) per lavorare con le firme digitali.

Questo articolo spiega come eseguire tutte le operazioni precedenti per convalidare l'autenticità e l'integrità di un documento digitale.

{{% alert color="primary" %}}

Tieni presente che puoi accedere alle firme digitali del tuo documento solo quando esegui la versione .NET Framework 2.0 e successive.

{{% /alert %}}

{{% alert color="primary" %}}

**Prova on-line**

Puoi provare questa funzionalità con il nostro [Firma online gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formati supportati

Aspose.Words ti consente di lavorare con firme digitali su documenti DOC, OOXML e ODT e di firmare il documento generato in formato PDF o XPS.

## Limitazioni delle firme digitali

La tabella seguente descrive alcune limitazioni che potresti incontrare mentre lavori con le firme digitali tramite Aspose.Words, nonché alcune opzioni alternative.

|  Limitazione |  Opzione alternativa |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Perdita delle firme digitali su un documento dopo averlo caricato e salvato. Pertanto, l'elaborazione di un documento su un server può causare la perdita di tutte le firme digitali senza preavviso |  Controlla se un documento ha firme digitali e intraprendi l'azione appropriata se ne vengono trovate. Ad esempio, invia un avviso ai clienti informandoli che il documento che stanno caricando contiene firme digitali che andranno perse se viene elaborato |
|  Aspose.Words supporta l'utilizzo delle macro in un documento. Ma Aspose.Words non supporta ancora le firme digitali sulle macro |  Esporta nuovamente il documento in qualsiasi formato Word e utilizza Microsoft Word per aggiungere una firma digitale alle macro |

## Rileva, conta e verifica le firme digitali

Aspose.Words consente di rilevare la firma digitale in un documento utilizzando il metodo [DetectFileFormat](https://reference.aspose.com/words/it/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) e la proprietà [HasDigitalSignature](https://reference.aspose.com/words/it/net/aspose.words/fileformatinfo/hasdigitalsignature/). Vale la pena notare che tale controllo rileverà solo il fatto della firma, ma non la sua validità.

Un documento può essere firmato più di una volta e ciò può essere fatto da utenti diversi. Per verificare la validità delle firme digitali è necessario caricarle dal documento utilizzando il metodo [LoadSignatures](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) e utilizzare la proprietà [IsValid](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). Inoltre Aspose.Words consente di contare un insieme di tutte le firme digitali all'interno di un documento utilizzando la proprietà [Count](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Tutto ciò fornisce un modo efficiente e sicuro per verificare la presenza di firme in un documento prima di elaborarlo.

L'esempio di codice seguente mostra come rilevare la presenza di firme digitali e verificarle:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Crea una firma digitale {#create-a-digital-signature}

Per creare una firma digitale, dovrai caricare un certificato di firma che confermi l'identità. Quando invii un documento firmato digitalmente, invii anche il certificato e la chiave pubblica.

Aspose.Words consente di creare un certificato X.509, un certificato digitale che utilizza lo standard PKI X.509 accettato a livello internazionale per verificare che una chiave pubblica appartenga al firmatario incluso nel certificato. Per fare ciò, utilizzare il metodo [Create](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/certificateholder/create/) all'interno della classe [CertificateHolder](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/certificateholder/).

Le sezioni successive spiegano come aggiungere una firma digitale, una riga della firma e come firmare un documento PDF generato.

### Firma un documento

Aspose.Words ti consente di firmare digitalmente un documento DOC, DOCX, XPS o ODT utilizzando il metodo [Sign](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) e le proprietà [SignOptions](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/signoptions/).

Il seguente esempio di codice mostra come firmare documenti utilizzando un titolare del certificato e le opzioni di firma:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Aggiungi una riga della firma

Una riga della firma è una rappresentazione visiva di una firma digitale in un documento. Aspose.Words consente di inserire una riga di firma utilizzando il metodo [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/insertsignatureline/). È inoltre possibile impostare i parametri per questa rappresentazione utilizzando la classe [SignatureLineOptions](https://reference.aspose.com/words/it/net/aspose.words/signaturelineoptions/).

Ad esempio, l'immagine seguente mostra come possono essere visualizzate le firme valide e non valide.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="disegno" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="disegno" style="width:300px"/>

Inoltre, se un documento contiene una riga per la firma e nessuna firma digitale, è disponibile una funzione per chiedere all'utente di aggiungere una firma.

Il seguente esempio di codice mostra come firmare un documento con un certificato personale e una riga di firma specifica:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Firma un documento PDF generato {#sign-a-generated-pdf-document}

Aspose.Words ti consente di firmare e ottenere tutti i dettagli di un documento PDF utilizzando le proprietà [PdfDigitalSignatureDetails](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfdigitalsignaturedetails/).

Il seguente esempio di codice mostra come firmare un PDF generato:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Recuperare il valore della firma digitale

Aspose.Words offre inoltre la possibilità di recuperare il valore della firma digitale da un documento firmato digitalmente come array di byte utilizzando la proprietà [SignatureValue](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

L'esempio di codice seguente mostra come ottenere il valore della firma digitale come array di byte da un documento:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Rimuovi le firme digitali

Aspose.Words ti consente di rimuovere tutte le firme digitali da un documento firmato utilizzando il metodo [RemoveAllSignatures](https://reference.aspose.com/words/it/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

L'esempio di codice seguente mostra come caricare e rimuovere le firme digitali da un documento:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Tieni presente che non puoi rimuovere solo una firma digitale all'interno del tuo documento.

{{% /alert %}}
