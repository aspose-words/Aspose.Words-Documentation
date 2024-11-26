---
title: Inserisci Checkboxes, Testo o Immagini durante Mail Merge
second_title: Aspose.Words per .NET
articleTitle: Inserisci Checkboxes, Testo o immagini
linktitle: Inserisci Checkboxes, Testo o immagini
description: "Inserisci checkbox es o campi di input di testo durante Mail Merge usando C#. Inserire anche immagini da un database durante Mail Merge in C#."
type: docs
weight: 40
url: /it/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Il motore di unione prende un documento come input, cerca i campi `MERGEFIELD` e li sostituisce con i dati ottenuti dall'origine dati. In genere vengono inseriti testo normale e HTML, ma gli utenti di Aspose.Words possono anche generare un documento che gestisce scenari più insoliti per i campi Mail Merge.

La potente funzionalità Aspose.Words consente di estendere il processo Mail Merge:

- inserire checkbox es e campi modulo di immissione testo nel documento durante un mail merge
- inserire immagini da qualsiasi archivio personalizzato (file ,campi BLOB, ecc.)

## Inserisci Checkbox es e Input di testo durante Mail Merge

A volte è necessario eseguire un'operazione Mail Merge in modo che non venga sostituito il testo nel campo Unione, ma un checkbox o un campo di immissione del testo. Anche se questo non è lo scenario più comune, è molto utile per alcune attività.

La seguente schermata di un documento Word mostra un modello con campi di unione:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Questa schermata del documento Word qui sotto mostra il documento già generato:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Si noti che alcuni campi sono stati sostituiti con testo normale, alcuni campi sono stati sostituiti con campi modulo checkbox e il campo `Subject` è stato sostituito con un campo di immissione del testo.

{{% /alert %}}

L'esempio di codice seguente mostra come inserire checkboxes e inserire campi di testo in un documento durante un mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Inserire immagini durante Mail Merge

Quando si esegue un'operazione Mail Merge, è possibile inserire immagini dal database nel documento utilizzando campi immagine speciali Mail Merge. Il campo image Mail Merge è un campo di unione denominato Image: MyFieldName.

### Inserire immagini da un database

Durante un mail merge, quando viene rilevato un campo immagine Mail Merge in un documento, viene attivato l'evento [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/). È possibile rispondere a questo evento per restituire un nome file, un flusso o un oggetto immagine al motore Mail Merge in modo che possa essere inserito nel documento.

L'esempio di codice seguente mostra come inserire le immagini memorizzate in un campo database BLOB in un report:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Impostare le proprietà dell'immagine durante Mail Merge

Durante l'unione di un campo Unione immagine, a volte potrebbe essere necessario controllare varie proprietà dell'immagine, ad esempio [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Attualmente, usando [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/) è possibile impostare solo le proprietà larghezza immagine o altezza, rispettivamente. Per ovviare a questo problema, Aspose.Words fornisce la proprietà [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), che facilita il controllo completo sull'immagine inserita o su qualsiasi altra forma.

Il seguente esempio di codice mostra come impostare varie proprietà dell'immagine:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
