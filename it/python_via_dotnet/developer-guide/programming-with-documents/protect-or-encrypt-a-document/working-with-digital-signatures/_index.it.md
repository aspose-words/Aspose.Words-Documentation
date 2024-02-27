---
title: Lavorare con le firme digitali
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con le firme digitali
linktitle: Lavorare con le firme digitali
description: "Firma digitalmente i documenti e rileva, conta, verifica e rimuovi le firme digitali esistenti utilizzando Python."
type: docs
weight: 40
url: /it/python-net/working-with-digital-signatures/
---

Una firma digitale viene utilizzata per autenticare un documento per stabilire che il mittente del documento è chi dice di essere e che il contenuto del documento non è stato manomesso.

Aspose.Words supporta documenti con firme digitali e fornisce l'accesso ad essi consentendo di rilevare e convalidare le firme digitali su un documento e firmare un documento PDF generato con un certificato fornito. Al momento le firme digitali sono supportate su documenti DOC, OOXML e ODT. La firma dei documenti generati è supportata in formato PDF.

{{% alert color="primary" %}}

**Prova on-line**

Puoi provare questa funzionalità con il nostro [Firma online gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Le firme digitali non vengono conservate durante l'apertura e il salvataggio

Un punto importante da notare è che un documento caricato e quindi salvato utilizzando Aspose.Words perderà tutte le firme digitali firmate sul documento. Questo è previsto in quanto una firma digitale garantisce che il contenuto non sia stato modificato e inoltre autentica l'identità di chi ha firmato il documento. Questi principi verrebbero invalidati se le firme originali fossero riportate sul documento risultante.

Per questo motivo, se elabori documenti caricati su un server, ciò potrebbe potenzialmente significare che potresti corrompere un documento caricato sul tuo server in questo modo senza saperlo. Pertanto è meglio verificare la presenza di firme digitali su un documento e intraprendere le azioni appropriate se ne vengono trovate, ad esempio è possibile inviare un avviso al cliente informandolo che il documento che sta passando contiene firme digitali che andranno perse se viene elaborato. È possibile scaricare il file modello di questo esempio da [Qui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Il codice sopra utilizza il metodo [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) per rilevare se un documento contiene firme digitali senza prima caricare il documento. Ciò fornisce un modo efficiente e sicuro per verificare la presenza di firme in un documento prima di elaborarle. Quando eseguito, il metodo restituisce un oggetto [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) che fornisce la proprietà [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Questa proprietà restituisce true se il documento contiene una o più firme digitali. È importante notare che questo metodo non convalida le firme, determina solo se sono presenti. La convalida delle firme digitali è trattata nella sezione successiva.

{{% alert color="primary" %}}

Puoi anche verificare se un documento ha firme digitali dopo il caricamento controllando la proprietà `Count` della raccolta [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Firme digitali sulle macro (progetti VBA)

Non è possibile accedere o firmare le firme digitali sulle macro. Questo perché Aspose.Words non si occupa direttamente delle macro in un documento. Tuttavia, le firme digitali sulle macro vengono conservate quando si esporta nuovamente il documento in qualsiasi formato Word. Queste firme possono essere preservate sul codice VBA perché il contenuto binario delle macro non viene modificato anche se viene modificato il documento stesso.

### Accedi e verifica le firme digitali

Un documento può avere più firme digitali. È possibile accedere a tutte queste firme tramite la raccolta [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Ogni oggetto restituito è un [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) che rappresenta un'unica firma digitale appartenente al documento. Ciò fornisce membri che consentono di verificare la validità della firma.

La proprietà più importante da verificare con le firme digitali è la validità di ciascuna firma nel documento. Tutte le firme nel documento possono essere convalidate contemporaneamente chiamando la proprietà [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Ciò restituirà true se tutte le firme nel documento sono valide o se il documento non ha firme e false se almeno una firma digitale non è valida.

Ogni firma può anche essere convalidata individualmente chiamando [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Una firma può risultare non valida per diversi motivi, ad esempio il documento è stato modificato dopo la firma oppure il certificato è scaduto. Inoltre è possibile accedere anche a dettagli aggiuntivi della firma. L'esempio di codice seguente mostra come convalidare ciascuna firma in un documento e visualizzare le informazioni di base sulla firma. È possibile scaricare il file modello di questo esempio da [Qui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Firma di documenti Word

La classe [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) fornisce metodi per firmare il documento. Il metodo [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) firma il documento di origine utilizzando un dato [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) con firma digitale e scrive il documento firmato nel flusso di destinazione

L'esempio seguente mostra come firmare un documento semplice

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

L'esempio seguente mostra come firmare un documento crittografato

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Firma del documento Word con la riga della firma

È possibile firmare il documento di origine utilizzando [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) e [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) forniti con firma digitale e scrivere il documento firmato nel file di destinazione. Utilizzando la classe [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) è possibile specificare le opzioni per la firma del documento. L'esempio seguente mostra come creare una nuova riga di firma e firmare il documento

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

L'esempio seguente mostra come modificare la riga della firma esistente e firmare il documento

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Firma del documento Word utilizzando l'identificatore del provider di firma

L'esempio seguente mostra come firmare un documento Word utilizzando l'identificatore del provider di firma. Il fornitore di servizi di crittografia (CSP) è un modulo software indipendente che esegue effettivamente algoritmi di crittografia per l'autenticazione, la codifica e la crittografia. MS Office riserva il valore di {00000000-0000-0000-0000-000000000000} per il suo fornitore di firma predefinito.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Crea un nuovo documento Word con segno della riga della firma utilizzando l'identificatore del provider

L'esempio seguente mostra come creare la riga della firma e firmare il documento Word utilizzando l'identificatore del fornitore della firma.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Recuperare il valore della firma digitale

Aspose.Words offre inoltre la possibilità di recuperare il valore della firma digitale da un documento firmato digitalmente come array di byte utilizzando la proprietà [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

L'esempio di codice seguente mostra come ottenere il valore della firma digitale come array di byte da un documento:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}