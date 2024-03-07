---
title: Lavorare con caselle di testo in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con le caselle di testo
linktitle: Lavorare con le caselle di testo
description: "Introduzione alla funzionalità delle caselle di testo collegate in Aspose.Words per .NET."
type: docs
weight: 250
url: /it/net/working-with-textboxes/
---

In Aspose.Words, la classe [TextBox](https://reference.aspose.com/words/it/net/aspose.words.drawing/textbox/) viene utilizzata per specificare come viene visualizzato il testo all'interno di una forma. Espone una proprietà pubblica denominata **Parent** per ottenere la forma padre per la casella di testo in modo che il cliente possa trovare il [Shape](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/) collegato dal **TextBox** associato.

## Creazione di un collegamento

La classe **TextBox** fornisce il metodo [IsValidLinkTarget](https://reference.aspose.com/words/it/net/aspose.words.drawing/textbox/isvalidlinktarget/) per verificare se il **TextBox** può essere collegato all'**Textbox** di destinazione.

Il seguente esempio di codice mostra come verificare se il `TextBox` può essere collegato alla casella di testo di destinazione:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Controlla la sequenza delle caselle di testo

Esistono diversi modi per visualizzare il testo in una forma. Il [TextBox](https://reference.aspose.com/words/it/net/aspose.words.drawing/shape/textbox/) può essere la testa, il centro o la coda di una sequenza.

L'esempio di codice seguente mostra come verificare se **TextBox** è Head, Tail o Middle della sequenza:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Rompere un collegamento

Utilizzando il metodo [BreakForwardLink](https://reference.aspose.com/words/it/net/aspose.words.drawing/textbox/breakforwardlink/) è possibile interrompere il collegamento al successivo **TextBox**.

Il seguente esempio di codice mostra come interrompere un collegamento per un **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
