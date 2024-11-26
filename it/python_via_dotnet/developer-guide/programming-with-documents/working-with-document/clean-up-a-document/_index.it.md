---
title: Pulisci un documento in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Pulisci un documento
linktitle: Pulisci un documento
description: "Rimuovi le informazioni non utilizzate o duplicate per ridurre le dimensioni dell'output e i tempi di elaborazione utilizzando Python. Rimuovi stili inutilizzati, stili incorporati inutilizzati, stili duplicati o elenchi inutilizzati."
type: docs
weight: 30
url: /it/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

A volte potrebbe essere necessario rimuovere informazioni non utilizzate o duplicate per ridurre le dimensioni del documento di output e il tempo di elaborazione.

Sebbene sia possibile trovare e rimuovere manualmente i dati inutilizzati, come stili o elenchi, o informazioni duplicate, sarà molto più conveniente farlo utilizzando le funzionalità e le funzionalità fornite da Aspose.Words.

La classe [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) consente di specificare le opzioni per la pulizia dei documenti. Per rimuovere stili duplicati o semplicemente stili o elenchi inutilizzati dal documento, puoi utilizzare il metodo [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Rimuovere le informazioni inutilizzate da un documento

Puoi utilizzare le proprietà [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) e [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) per rilevare e rimuovere gli stili contrassegnati come "non utilizzati".

È possibile utilizzare la proprietà [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) per rilevare e rimuovere elenchi e definizioni di elenchi contrassegnati come "inutilizzati".

Il seguente esempio di codice mostra come rimuovere solo gli stili inutilizzati da un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Rimuovere le informazioni duplicate da un documento

Puoi anche utilizzare la proprietà [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) per sostituire tutti gli stili duplicati con quello originale e rimuovere i duplicati da un documento.

L'esempio di codice seguente mostra come rimuovere gli stili duplicati da un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
