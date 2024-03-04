---
title: Crittografa un documento in C#
second_title: Aspose.Words per .NET
articleTitle: Crittografare un documento
linktitle: Crittografare un documento
description: "Crittografa il tuo documento utilizzando algoritmi di crittografia appropriati per formati di documenti specifici in C#."
type: docs
weight: 20
url: /it/net/encrypt-a-document/
---

La crittografia è il processo che traduce il testo leggibile in sequenze di byte prive di significato in modo che possa essere letto solo dalla persona che possiede la chiave di decrittazione o il codice segreto. Questo processo svolge un ruolo importante nella protezione dei tuoi contenuti. Aiuta a codificare il contenuto, verificare l'origine di un documento, dimostrare che il contenuto non è stato modificato dopo l'invio e garantire che i dati del documento siano al sicuro.

Questo articolo spiega come Aspose.Words ti consente di crittografare un documento e come verificare se un documento è crittografato o meno.

## Crittografa con password

Per crittografare un documento, utilizzare la proprietà **Password** per fornire una password che funzioni come chiave di crittografia. Ciò modificherà il contenuto del documento e lo renderà illeggibile. Il documento crittografato richiederà l'immissione di questa password prima di poter essere aperto.

{{% alert color="primary" %}}

Puoi trovare la proprietà **Password** appropriata per il formato richiesto. Ogni formato di salvataggio del documento nell'[Salvataggio dello spazio dei nomi](https://reference.aspose.com/words/it/net/aspose.words.saving/) ha una classe corrispondente contenente le opzioni di salvataggio per questo formato. Ad esempio, la proprietà [Password](https://reference.aspose.com/words/it/net/aspose.words.saving/docsaveoptions/password/) nella classe [DocSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/docsaveoptions/) per DOC o la proprietà [Password](https://reference.aspose.com/words/it/net/aspose.words.saving/ooxmlsaveoptions/password/) nella classe [OoxmlSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/ooxmlsaveoptions/) per DOCX, DOCM, DOTX, DOTM e FlatOpc.

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
|  PDF |  -                                                            |  Crittografia RC4 (40/128 bit) |

Il seguente esempio di codice mostra come crittografare un documento con una password:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Controlla se un documento è crittografato

In alcuni casi, potresti avere un documento illeggibile e vuoi essere sicuro che sia crittografato e non danneggiato o compresso.

Per rilevare se un documento è crittografato e se è richiesta una password, è possibile utilizzare la proprietà [IsEncrypted](https://reference.aspose.com/words/it/net/aspose.words/fileformatinfo/isencrypted/) della classe [FileFormatInfo](https://reference.aspose.com/words/it/net/aspose.words/fileformatinfo/). Questa proprietà consentirà inoltre di eseguire alcune azioni prima di caricare un documento, ad esempio informare un utente di fornire una password.

Il seguente esempio di codice mostra come rilevare la crittografia del documento:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Apri un documento con o senza password

Dopo esserci assicurati che un documento sia crittografato, possiamo provare ad aprire questo documento senza password, il che dovrebbe portare a un'eccezione.

Il seguente esempio di codice mostra come provare ad aprire un documento crittografato senza password:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Dopo aver visto che un documento crittografato non può essere aperto senza password, possiamo provare ad aprirlo inserendo la password.

Il seguente esempio di codice mostra come provare ad aprire un documento crittografato con una password:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
