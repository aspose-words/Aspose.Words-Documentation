---
title: Pulire un documento in Java
second_title: Aspose.Words per Java
articleTitle: Pulisci un documento
linktitle: Pulisci un documento
description: "Rimuovere le informazioni non utilizzate o duplicate per ridurre la dimensione dell'output e il tempo di elaborazione. Rimuovere stili non utilizzati, stili incorporati non utilizzati, stili duplicati, o liste non utilizzate utilizzando Java."
type: docs
weight: 30
url: /it/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario rimuovere informazioni inutilizzate o duplicate per ridurre le dimensioni del documento di uscita e il tempo di elaborazione.

Mentre è possibile trovare e rimuovere i dati non utilizzati, come stili o liste, o duplicare le informazioni manualmente, sarà molto più conveniente farlo utilizzando funzionalità e funzionalità fornite da Aspose.Words.

The [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) classe consente di specificare le opzioni per la pulizia dei documenti. Per rimuovere stili duplicati o semplicemente stili o liste non utilizzati dal documento, è possibile utilizzare il [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) metodo.

## Rimuovi informazioni non utilizzate da un documento

È possibile utilizzare [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) e [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) proprietà per rilevare e rimuovere stili che sono contrassegnati come "non utilizzati".

È possibile utilizzare [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) proprietà per rilevare e rimuovere liste e liste definizioni che sono contrassegnate come "non utilizzate".

Il seguente esempio di codice mostra come rimuovere solo stili non utilizzati da un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Rimuovere le informazioni duplicate da un documento

È anche possibile utilizzare [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) proprietà per sostituire tutti gli stili duplicati con quello originale e rimuovere i duplicati da un documento.

Il seguente esempio di codice mostra come rimuovere gli stili duplicati da un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
