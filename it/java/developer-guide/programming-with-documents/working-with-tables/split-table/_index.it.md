---
title: Dividi tabella in Java
second_title: Aspose.Words per Java
articleTitle: Dividi tabella
linktitle: Dividi tabella
description: "Dividi la tabella in Java. Come dividere una tabella in due tabelle separate Java."
type: docs
weight: 100
url: /it/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Una tabella, rappresentata nel modello a oggetti del documento Aspose.Words, è composta da righe e celle indipendenti, semplificando la suddivisione di una tabella.

Per manipolare una tabella per dividerla in due tabelle, dobbiamo solo spostare alcune delle righe dalla tabella originale a quella nuova. Per fare ciò, dobbiamo scegliere la riga con cui vogliamo dividere la tabella.

Possiamo creare due tabelle dalla tabella originale seguendo questi semplici passaggi:

1. Creare un clone della tabella senza clonare i figli per mantenere le righe spostate e inserirle dopo la tabella originale
2. A partire dalla riga specificata, spostare tutte le righe successive in questa seconda tabella

L'esempio di codice seguente mostra come dividere una tabella in due tabelle su una riga specifica:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
