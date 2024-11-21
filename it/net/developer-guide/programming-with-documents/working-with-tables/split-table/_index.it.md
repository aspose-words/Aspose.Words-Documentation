---
title: Tabella divisa in C#
second_title: Aspose.Words per .NET
articleTitle: Tabella divisa
linktitle: Tabella divisa
description: "Tabella divisa in C#. Come dividere una tabella in due tabelle separate C#."
type: docs
weight: 100
url: /it/net/split-table/
timestamp: 2024-01-27-14-07-04
---

Una tabella, rappresentata nel Aspose.Words Document Object Model, è composta da righe e celle indipendenti, facilitando la divisione di una tabella.

Per manipolare una tabella per dividerla in due tabelle, dobbiamo solo spostare alcune righe dalla tabella originale a quella nuova. Per fare ciò, dobbiamo scegliere la riga in base alla quale vogliamo dividere la tabella.

Possiamo creare due tabelle dalla tabella originale seguendo questi semplici passaggi:

1. Crea un clone della tabella senza clonare i figli per mantenere le righe spostate e inserirle dopo la tabella originale
2. Iniziando dalla riga specificata, spostare tutte le righe successive in questa seconda tabella

L'esempio di codice seguente mostra come dividere una tabella in due tabelle su una riga specifica:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
