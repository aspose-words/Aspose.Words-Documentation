---
title: Pulisci un documento in C#
second_title: Aspose.Words per .NET
articleTitle: Pulisci un documento
linktitle: Pulisci un documento
description: "Rimuovi le informazioni non utilizzate o duplicate per ridurre le dimensioni dell'output e i tempi di elaborazione utilizzando C#. Rimuovi stili inutilizzati, stili incorporati inutilizzati, stili duplicati o elenchi inutilizzati."
type: docs
weight: 30
url: /it/net/clean-up-a-document/
---

A volte potrebbe essere necessario rimuovere informazioni non utilizzate o duplicate per ridurre le dimensioni del documento di output e il tempo di elaborazione.

Sebbene sia possibile trovare e rimuovere manualmente i dati inutilizzati, come stili o elenchi, o informazioni duplicate, sarà molto più conveniente farlo utilizzando le funzionalità e le funzionalità fornite da Aspose.Words.

La classe [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) consente di specificare le opzioni per la pulizia dei documenti. Per rimuovere stili duplicati o semplicemente stili o elenchi inutilizzati dal documento, puoi utilizzare il metodo [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/).

## Rimuovere le informazioni inutilizzate da un documento

Puoi utilizzare le proprietà [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) e [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) per rilevare e rimuovere gli stili contrassegnati come "non utilizzati".

È possibile utilizzare la proprietà [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) per rilevare e rimuovere elenchi e definizioni di elenchi contrassegnati come "inutilizzati".

Il seguente esempio di codice mostra come rimuovere solo gli stili inutilizzati da un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Rimuovere le informazioni duplicate da un documento

Puoi anche utilizzare la proprietà [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) per sostituire tutti gli stili duplicati con quello originale e rimuovere i duplicati da un documento.

L'esempio di codice seguente mostra come rimuovere gli stili duplicati da un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
