---
title: Inserisci Checkboxes, Testo o Immagini durante Mail Merge
second_title: Aspose.Words per Java
articleTitle: Inserisci Checkboxes, Testo o immagini
linktitle: Inserisci Checkboxes, Testo o immagini
description: "Inserisci checkbox es o campi di input di testo durante Mail Merge usando Java. Inserire anche immagini da un database durante Mail Merge in Java."
type: docs
weight: 20
url: /it/java/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Il motore di unione prende un documento come input, cerca i campi `MERGEFIELD` e li sostituisce con i dati ottenuti dall'origine dati. In genere vengono inseriti testo normale e HTML, ma gli utenti di Aspose.Words possono anche generare un documento che gestisce scenari più insoliti per i campi Mail Merge.

La potente funzionalità Aspose.Words consente di estendere il processo Mail Merge:

- inserire checkbox es e campi modulo di immissione testo nel documento durante un mail merge
- inserire immagini da qualsiasi archivio personalizzato (file ,campi BLOB, ecc.)

## Inserisci Checkbox es e Input di testo durante Mail Merge

A volte è necessario eseguire un'operazione Mail Merge in modo che non venga sostituito il testo nel campo Unione, ma un checkbox o un campo di immissione del testo. Anche se questo non è lo scenario più comune, è molto utile per alcune attività.

La seguente schermata di un documento Word mostra un modello con campi di unione:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-1](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge_1.jpeg)

Questa schermata del documento di Word qui sotto mostra il documento già generato:

![insert-checkboxes-html-or-images-during-mail-merge-aspose-words-java-2](/words/java/insert-checkboxes-text-input-or-images-mail-merge/insert-checkboxes-html-or-images-during-mail-merge-2.png)

{{% alert color="primary" %}}

Si noti che alcuni campi sono stati sostituiti con testo normale, alcuni campi sono stati sostituiti con campi modulo checkbox e il campo `Subject` è stato sostituito con un campo di immissione del testo.

{{% /alert %}}

L'esempio di codice seguente mostra come inserire checkboxes e inserire campi di testo in un documento durante un mail merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-MailMergeFormFields.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeFormFields-HandleMergeField.java" >}}

## Inserire immagini durante Mail Merge

Quando si esegue un'operazione Mail Merge, è possibile inserire immagini dal database nel documento utilizzando campi immagine speciali Mail Merge. Il campo image Mail Merge è un campo di unione denominato Image: MyFieldName.

### Inserire immagini da un database

Durante un mail merge, quando viene rilevato un campo immagine Mail Merge in un documento, viene attivato l'evento [FieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldMergingCallback). È possibile rispondere a questo evento per restituire un nome file, un flusso o un oggetto immagine al motore Mail Merge in modo che possa essere inserito nel documento.

L'esempio di codice seguente mostra come inserire le immagini memorizzate in un campo database BLOB in un report:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageFromBlob.java" >}}

### Impostare le proprietà dell'immagine durante Mail Merge

Durante l'unione di un campo Unione immagine, a volte potrebbe essere necessario controllare varie proprietà dell'immagine, ad esempio [WrapType](https://reference.aspose.com/words/java/com.aspose.words/wraptype/).

Attualmente, usando [ImageFieldMergingArgs](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/) è possibile impostare solo le proprietà larghezza immagine o altezza, rispettivamente. Per ovviare a questo problema, Aspose.Words fornisce la proprietà [Shape](https://reference.aspose.com/words/java/com.aspose.words/imagefieldmergingargs/#getShape), che facilita il controllo completo sull'immagine inserita o su qualsiasi altra forma.

Il seguente esempio di codice mostra come impostare varie proprietà dell'immagine:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-MailMergeImageField.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeImageField-FieldMergingHandler.java" >}}

