---
title: Tabella divisa in Java
second_title: Aspose.Words per Java
articleTitle: Tabella divisa
linktitle: Tabella divisa
description: "Tavolo diviso in Java. Come dividere un tavolo in due tavoli separati Java."
type: docs
weight: 100
url: /it/java/split-table/
---

Una tavola, rappresentata nella Aspose.Words Document Object Model, è costituito da righe e celle indipendenti, rendendo facile dividere una tabella.

Per manipolare un tavolo per dividerlo in due tavoli, dobbiamo solo spostare alcune delle righe dalla tabella originale a quella nuova. Per fare questo, dobbiamo scegliere la riga con la quale vogliamo dividere il tavolo.

Possiamo creare due tavoli dalla tabella originale seguendo questi semplici passaggi:

1. Creare un clone della tabella senza clonare i bambini per mantenere le righe mosse e inserirle dopo la tabella originale
2. A partire dalla riga specificata, spostare tutte le righe successive a questa seconda tabella

Il seguente esempio di codice mostra come dividere una tabella in due tabelle su una riga specifica:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
