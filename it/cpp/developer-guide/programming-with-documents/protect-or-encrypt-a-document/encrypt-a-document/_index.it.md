---
title: Crittografare un documento in C++
second_title: Aspose.Words per C++
articleTitle: Crittografare un documento
linktitle: Crittografare un documento
description: "Crittografare il documento utilizzando algoritmi di crittografia appropriati per formati di documento specifici."
type: docs
weight: 20
url: /it/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

La crittografia è il processo che traduce il testo leggibile in sequenze prive di significato di byte in modo che possa essere letto solo dalla persona che ha la chiave di decrittazione o il codice segreto. Questo processo svolge un ruolo importante nel proteggere i tuoi contenuti. Aiuta a codificare il contenuto, verificare l'origine di un documento, dimostrare che il contenuto non è stato modificato dopo l'invio e garantire che i dati dal documento siano al sicuro.

Questo articolo spiega come Aspose.Words consente di crittografare un documento e come verificare se un documento dispone di crittografia o meno.

## Crittografare con password

Per crittografare un documento, utilizzare la proprietà **Password** per fornire una password che funzioni come chiave di crittografia. Ciò modificherà il contenuto del documento e lo renderà illeggibile. Il documento crittografato richiederà l'inserimento di questa password prima di poter essere aperto.

{{% alert color="primary" %}}

È possibile trovare la proprietà **Password** appropriata per il formato richiesto. Ogni formato di salvataggio del documento in [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) ha una classe corrispondente contenente le opzioni di salvataggio per questo formato. Ad esempio, la proprietà [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) nella classe [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) per DOC o la proprietà [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) nella classe [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) per DOCX, DOCM, DOTX, DOTM, e FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Si noti che solo alcuni formati di documenti supportano la crittografia. Ad esempio, RTF non supporta la crittografia.

{{% /alert %}}

La tabella seguente elenca i formati e gli algoritmi di crittografia supportati da Aspose.Words:

| Formato | Crittografia supportata durante il caricamento | Crittografia supportata durante il salvataggio |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR encryption40-bit RC4 EncryptionCrypto API RC4 Encryption | Crittografia RC4 (40-bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | Crittografia standard ECMA-376 Crittografia agile ECMA-376 | Crittografia standard ECMA-376 (AES128 + SHA1) |
| ODT, OTT | Crittografia ODF (Blowfish / AES) | Crittografia ODF (AES256 + SHA256 ) |
| PDF | Crittografia RC4 (40/128 bit) |

Il seguente esempio di codice mostra come crittografare un documento con una password:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Controlla se un documento è crittografato

In alcuni casi, si può avere un documento illeggibile e vuole essere sicuri che il documento è crittografato e non danneggiato o compresso.

Per rilevare se un documento è crittografato e se è richiesta una password, è possibile utilizzare la proprietà [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) della classe [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Questa proprietà consente anche di eseguire alcune azioni prima di caricare un documento, ad esempio, informare un utente di fornire una password.

Il seguente esempio di codice mostra come rilevare la crittografia del documento:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Aprire un documento con o senza password

Quando ci siamo assicurati che un documento sia crittografato, possiamo provare ad aprire questo documento senza una password, il che dovrebbe portare a un'eccezione.

Il seguente esempio di codice mostra come provare ad aprire un documento crittografato senza una password:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Dopo aver visto che un documento crittografato non può essere aperto senza una password, possiamo provare ad aprirlo inserendo la password.

Il seguente esempio di codice mostra come provare ad aprire un documento crittografato con una password:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
