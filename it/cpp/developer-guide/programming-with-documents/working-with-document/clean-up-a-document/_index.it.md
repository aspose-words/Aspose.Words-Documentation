---
title: Pulire un documento in C++
second_title: Aspose.Words per C++
articleTitle: Pulire un documento
linktitle: Pulire un documento
description: "Rimuovere le informazioni inutilizzate o duplicate per ridurre le dimensioni di output e il tempo di elaborazione utilizzando C++. Rimuovi gli stili non utilizzati, gli stili incorporati non utilizzati, gli stili duplicati o gli elenchi non utilizzati."
type: docs
weight: 30
url: /it/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

A volte potrebbe essere necessario rimuovere le informazioni inutilizzate o duplicate per ridurre le dimensioni del documento di output e il tempo di elaborazione.

Mentre è possibile trovare e rimuovere manualmente i dati non utilizzati, come stili o elenchi, o duplicare le informazioni, sarà molto più conveniente farlo utilizzando le funzionalità e le funzionalità fornite da Aspose.Words.

La classe [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) consente di specificare le opzioni per la pulizia del documento. Per rimuovere gli stili duplicati o solo gli stili o gli elenchi non utilizzati dal documento, è possibile utilizzare il metodo [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Rimuovere le informazioni non utilizzate da un documento

È possibile utilizzare le proprietà [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) e [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) per rilevare e rimuovere gli stili contrassegnati come "inutilizzati".

È possibile utilizzare la proprietà [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) per rilevare e rimuovere elenchi e definizioni di elenchi contrassegnati come "inutilizzati".

L'esempio di codice seguente mostra come rimuovere solo gli stili non utilizzati da un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Rimuovere le informazioni duplicate da un documento

È inoltre possibile utilizzare la proprietà [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) per sostituire tutti gli stili duplicati con quello originale e rimuovere i duplicati da un documento.

L'esempio di codice seguente mostra come rimuovere gli stili duplicati da un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
