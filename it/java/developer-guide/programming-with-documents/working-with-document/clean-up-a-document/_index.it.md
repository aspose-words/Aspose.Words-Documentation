---
title: Pulire un documento in Java
second_title: Aspose.Words per Java
articleTitle: Pulire un documento
linktitle: Pulire un documento
description: "Rimuovere le informazioni inutilizzate o duplicate per ridurre le dimensioni di output e il tempo di elaborazione. Rimuovi gli stili non utilizzati, gli stili predefiniti non utilizzati, gli stili duplicati o gli elenchi non utilizzati usando Java."
type: docs
weight: 30
url: /it/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

A volte potrebbe essere necessario rimuovere le informazioni inutilizzate o duplicate per ridurre le dimensioni del documento di output e il tempo di elaborazione.

Mentre è possibile trovare e rimuovere manualmente i dati non utilizzati, come stili o elenchi, o duplicare le informazioni, sarà molto più conveniente farlo utilizzando le funzionalità e le funzionalità fornite da Aspose.Words.

La classe [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) consente di specificare le opzioni per la pulizia del documento. Per rimuovere gli stili duplicati o solo gli stili o gli elenchi non utilizzati dal documento, è possibile utilizzare il metodo [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup).

## Rimuovere le informazioni non utilizzate da un documento

È possibile utilizzare le proprietà [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) e [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) per rilevare e rimuovere gli stili contrassegnati come "inutilizzati".

È possibile utilizzare la proprietà [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) per rilevare e rimuovere elenchi e definizioni di elenchi contrassegnati come "inutilizzati".

L'esempio di codice seguente mostra come rimuovere solo gli stili non utilizzati da un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Rimuovere le informazioni duplicate da un documento

È inoltre possibile utilizzare la proprietà [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) per sostituire tutti gli stili duplicati con quello originale e rimuovere i duplicati da un documento.

L'esempio di codice seguente mostra come rimuovere gli stili duplicati da un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
