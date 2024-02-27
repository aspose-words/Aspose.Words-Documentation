---
title: Tabella divisa in Python
second_title: Aspose.Words per Python
articleTitle: Tabella divisa
linktitle: Tabella divisa
description: "Tabella divisa in Python. Come dividere una tabella in due tabelle separate Python."
type: docs
weight: 100
url: /it/python-net/split-table/
---

Una tabella, rappresentata nel Aspose.Words Document Object Model, è composta da righe e celle indipendenti, facilitando la divisione di una tabella.

Per manipolare una tabella per dividerla in due tabelle, dobbiamo solo spostare alcune righe dalla tabella originale a quella nuova. Per fare ciò, dobbiamo scegliere la riga in base alla quale vogliamo dividere la tabella.

Possiamo creare due tabelle dalla tabella originale seguendo questi semplici passaggi:

1. Crea un clone della tabella senza clonare i figli per mantenere le righe spostate e inserirle dopo la tabella originale
2. Iniziando dalla riga specificata, spostare tutte le righe successive in questa seconda tabella

L'esempio di codice seguente mostra come dividere una tabella in due tabelle su una riga specifica:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
