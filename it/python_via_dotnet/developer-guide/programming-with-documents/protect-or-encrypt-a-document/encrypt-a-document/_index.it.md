---
title: Crittografa un documento in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Crittografare un documento
linktitle: Crittografare un documento
description: "Crittografa il tuo documento utilizzando algoritmi di crittografia appropriati per formati di documenti specifici in Python."
type: docs
weight: 20
url: /it/python-net/encrypt-a-document/
---

La crittografia è il processo che traduce il testo leggibile in sequenze di byte prive di significato in modo che possa essere letto solo dalla persona che possiede la chiave di decrittazione o il codice segreto. Questo processo svolge un ruolo importante nella protezione dei tuoi contenuti. Aiuta a codificare il contenuto, verificare l'origine di un documento, dimostrare che il contenuto non è stato modificato dopo l'invio e garantire che i dati del documento siano al sicuro.

Questo articolo spiega come Aspose.Words ti consente di crittografare un documento e come verificare se un documento è crittografato o meno.

## Crittografa con password

Per crittografare un documento, utilizzare la proprietà **parola d'ordine** per fornire una password che funzioni come chiave di crittografia. Ciò modificherà il contenuto del documento e lo renderà illeggibile. Il documento crittografato richiederà l'immissione di questa password prima di poter essere aperto.

{{% alert color="primary" %}}

Puoi trovare la proprietà **parola d'ordine** appropriata per il formato richiesto. Ogni formato di salvataggio del documento nel modulo [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) ha una classe corrispondente contenente le opzioni di salvataggio per questo formato. Ad esempio, la proprietà [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) nella classe [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) per DOC o la proprietà [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) nella classe [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) per DOCX, DOCM, DOTX, DOTM e FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Tieni presente che solo alcuni formati di documenti supportano la crittografia. Ad esempio, RTF non supporta la crittografia.

{{% /alert %}}

La tabella seguente elenca i formati e gli algoritmi di crittografia supportati da Aspose.Words:

| Formato |  Crittografia supportata durante il caricamento |  Crittografia supportata durante il salvataggio |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  Crittografia XORCrittografia RC4 a 40 bitCryptoAPI Crittografia RC4 |  Crittografia RC4 (40 bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Crittografia standard ECMA-376Crittografia agile ECMA-376 |  Crittografia standard ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Crittografia ODF (Blowfish/AES) |  Crittografia ODF (AES256 + SHA256) |
|  PDF |                                                          |  Crittografia RC4 (40/128 bit) |

Il seguente esempio di codice mostra come crittografare un documento con una password:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## Controlla se un documento è crittografato

In alcuni casi, potresti avere un documento illeggibile e vuoi essere sicuro che sia crittografato e non danneggiato o compresso.

Per rilevare se un documento è crittografato e se è richiesta una password, è possibile utilizzare la proprietà [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) della classe [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). Questa proprietà consentirà inoltre di eseguire alcune azioni prima di caricare un documento, ad esempio informare un utente di fornire una password.

Il seguente esempio di codice mostra come rilevare la crittografia del documento:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## Apri un documento con o senza password

Dopo esserci assicurati che un documento sia crittografato, possiamo provare ad aprire questo documento senza password, il che dovrebbe portare a un'eccezione.

Il seguente esempio di codice mostra come provare ad aprire un documento crittografato senza password:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

Dopo aver visto che un documento crittografato non può essere aperto senza password, possiamo provare ad aprirlo inserendo la password.

Il seguente esempio di codice mostra come provare ad aprire un documento crittografato con una password:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
