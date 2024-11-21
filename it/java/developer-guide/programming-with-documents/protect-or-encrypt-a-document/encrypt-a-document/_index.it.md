---
title: Crittografia di un documento in Java
second_title: Aspose.Words per Java
articleTitle: Crittografia di un documento
linktitle: Crittografia di un documento
description: "Crittografare il documento utilizzando algoritmi di crittografia appropriati per formati di documenti specifici in Java."
type: docs
weight: 20
url: /it/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

La crittografia è il processo che traduce il testo leggibile in sequenze senza significato di byte in modo che possa essere letto solo dalla persona che ha la chiave di decrittazione o il codice segreto. Questo processo svolge un ruolo importante nel garantire il contenuto. Aiuta a codificare il contenuto, verificare l'origine di un documento, dimostrare che il contenuto non è stato modificato dopo l'invio e garantire che i dati dal documento siano al sicuro.

Questo articolo spiega come Aspose.Words consente di crittografare un documento e come controllare se un documento ha crittografia o no.

## Crittografia con password

Per crittografare un documento, utilizzare il **Password** proprietà per fornire una password che funziona come chiave di crittografia. Questo modificherà il contenuto del documento e lo renderà illeggibile. Il documento crittografato richiederà di inserire questa password prima che possa essere aperta.

{{% alert color="primary" %}}

Potete trovare l'appropriato **Password** proprietà per il formato richiesto. Ogni formato di salvataggio di documento ha una classe corrispondente contenente opzioni di salvataggio per questo formato. Per esempio, il [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) proprietà nel [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) classe per DOC, o la [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) proprietà nel [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) classe per DOCX, DOCM, DOTX, DOTM, e FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Si noti che solo alcuni formati di documento supportano la crittografia. Ad esempio, RTF non supporta la crittografia.

{{% /alert %}}

La tabella seguente elenca i formati e gli algoritmi di crittografia supportati da Aspose.Words:

| Formato |  Crittografia supportata durante il caricamento |  Crittografia supportata durante il risparmio |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR crittografia40-bit RC4 EncryptionCryptoAPI Crittografia RC4 |  Crittografia RC4 (40-bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Crittografia standardECMA-376 Crittografia Agile |  Crittografia standard ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Crittografia ODF (Blowfish/AES) |  Crittografia ODF (AES256 + SHA256) |
|  PDF |  -                                                            |  Crittografia RC4 (40/128 bit) |

Il seguente esempio di codice mostra come crittografare un documento con una password:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Controllare se un documento è crittografato

In alcuni casi, si può avere un documento illeggibile e vuole essere sicuro che il documento è crittografato e non danneggiato o compresso.

Per rilevare se un documento è crittografato e se è richiesta una password, è possibile utilizzare [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) proprietà della [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) classe. Questa proprietà vi permetterà anche di eseguire alcune azioni prima di caricare un documento, ad esempio, informando un utente di fornire una password.

Il seguente esempio di codice mostra come rilevare la crittografia del documento:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Aprire un documento con o senza password

Quando abbiamo fatto in modo che un documento sia crittografato, possiamo cercare di aprire questo documento senza una password, che dovrebbe portare ad un'eccezione.

Il seguente esempio di codice mostra come provare ad aprire un documento crittografato senza una password:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Dopo aver visto che un documento crittografato non può essere aperto senza una password, possiamo cercare di aprirlo inserendo la password.

Il seguente esempio di codice mostra come provare ad aprire un documento crittografato con una password:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
