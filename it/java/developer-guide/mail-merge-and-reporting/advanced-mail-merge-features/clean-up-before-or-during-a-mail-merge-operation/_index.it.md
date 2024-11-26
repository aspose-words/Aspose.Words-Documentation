---
title: Pulizia prima o durante un'operazione Mail Merge
second_title: Aspose.Words per Java
articleTitle: Pulizia prima o durante un'operazione Mail Merge
linktitle: Pulizia prima o durante un'operazione Mail Merge
type: docs
description: "Applicare diverse opzioni di pulizia e rimozione, ad esempio eliminare i campi di unione prima di eseguire un'operazione Mail Merge o rimuovere le regioni inutilizzate durante un'operazione Mail Merge utilizzando Java."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /it/java/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words consente di applicare diverse opzioni di pulizia e rimozione, ad esempio l'eliminazione dei campi di unione prima di eseguire un'operazione Mail Merge o la rimozione delle regioni inutilizzate durante un'operazione Mail Merge. Questa sezione spiegherà come eliminare i campi uniti e come impostare un'opzione di rimozione.

## Elimina campi uniti

Quando si utilizza un modello lungo creato da qualcun altro, è possibile eliminare tutti i campi di unione già esistenti in tale modello prima di eseguire un'operazione Mail Merge. È possibile utilizzare il metodo [DeleteFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#deleteFields) se si desidera eliminare tutti i campi di unione da un documento senza eseguire un'operazione Mail Merge. Questo metodo non è influenzato dalle opzioni di rimozione della proprietà [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getCleanupOptions) e l'esecuzione rimuove solo i campi uniti, non i campi contenenti o i paragrafi vuoti.

L'esempio di codice seguente mostra come eliminare tutti i campi di unione dal modello senza eseguire un'operazione Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-DeleteFields.java" >}}

## Imposta un'opzione `Removing`

Aspose.Words consente di rimuovere campi, aree e paragrafi non integrati da un modello durante un'operazione Mail Merge utilizzando le opzioni di rimozione.

Utilizzare la proprietà **CleanupOptions** insieme all'enumerazione [MailMergeCleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) per impostare l'opzione di rimozione. Specificare gli elementi che si desidera rimuovere scegliendo le seguenti opzioni (è possibile combinare più di uno):

* Rimuovere i paragrafi vuoti
* Rimuovi le regioni inutilizzate
* Rimuovi i campi non utilizzati
* Rimuovi i campi contenenti
* Rimuovere i campi statici
* Rimuovi righe di tabella vuote

È possibile considerare un campo Unione come unmerged in una delle seguenti condizioni:

1. Se il campo Unione nell'origine dati non dispone di una colonna o di un campo di mappatura.
2. Se il campo Unione nell'origine dati contiene un campo di mappatura ma i dati sono nulli.

{{% alert color="primary" %}}

Se si uniscono dati utilizzando origini dati separate, le opzioni di rimozione verranno abilitate solo con l'ultima chiamata del metodo execute Mail Merge.

{{% /alert %}}

### Rimuovere i paragrafi vuoti

Un paragrafo che include solo campi di unione sarà vuoto quando il processo Mail Merge rimuove tutti i suoi campi di unione come non uniti. Questi paragrafi vuoti possono aggiungere spazio indesiderato e modificare l'aspetto del report generato. È possibile affrontare due situazioni con paragrafi durante un'operazione Mail Merge:

1. Il campo Mail Merge verrà unito a dati vuoti.
2. Il campo Unione non è utilizzato e verrà rimosso.

In entrambe le situazioni l'opzione **RemoveEmptyParagraphs** rimuoverà automaticamente i paragrafi vuoti dal documento. Inoltre, rimuoverà i campi Unione `TableStart` e TableEnd se il resto del paragrafo è vuoto.

Il seguente esempio di codice mostra come rimuovere i paragrafi vuoti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyParagraphs.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Rimuovi le regioni inutilizzate

Nelle versioni precedenti di Aspose.Words, le regioni vuote di Mail Merge sono state rimosse automaticamente dal documento durante l'operazione Mail Merge. Con l'ultima versione di Aspose.le parole, le regioni vuote Mail Merge rimangono dopo l'operazione Mail Merge per impostazione predefinita. Tuttavia, è possibile utilizzare l'opzione **RemoveUnusedRegions** per rimuovere le regioni Mail Merge non utilizzate durante l'operazione Mail Merge. Ad esempio, è possibile unire un documento con un'origine dati vuota che non contiene tabelle di dati che portano a aree non utilizzate nel documento.

L'esempio di codice seguente mostra come rimuovere le regioni di unione non utilizzate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnmergedRegions.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Nota**

### Rimuovi i campi non utilizzati

Aspose.Words consente di rimuovere tutti i campi Mail Merge inutilizzati assegnando il flag **RemoveUnusedFields** a **CleanupOptions**. Questa opzione rimuoverà i campi di unione che non contengono i dati corrispondenti nell'origine dati.

L'esempio di codice seguente mostra come rimuovere automaticamente i campi di unione non utilizzati da un documento durante un'operazione Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveUnusedFields.java" >}}

### Rimozione dei campi contenenti

Un campo unione può essere contenuto in un altro campo, ad esempio un campo **IF** o un campo formula. Rimuovere questo campo esterno quando il campo Unione viene unito o rimosso dal documento.

Nell'esempio di codice seguente viene illustrato come rimuovere i campi che contengono campi di unione da un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveContainingFields.java" >}}

**Nota**

### Rimuovi righe di tabella vuote

Aspose.Words consente di rimuovere righe di tabella vuote assegnando il flag **RemoveEmptyTableRows** a **CleanupOptions**. Questa opzione rimuoverà le righe di tabella che contengono campi di unione vuoti.

L'esempio di codice seguente mostra come rimuovere le righe di tabella vuote che contengono regioni Mail Merge da un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeCleanUp-RemoveEmptyTableRows.java" >}}
