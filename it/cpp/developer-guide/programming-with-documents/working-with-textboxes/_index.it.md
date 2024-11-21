---
title: Lavorare con TextBoxes in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con TextBoxes
linktitle: Lavorare con TextBoxes
description: "Introduzione alla funzionalità di caselle di testo collegate in Aspose.Words per C++."
type: docs
weight: 250
url: /it/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, la classe [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) viene utilizzata per specificare come viene visualizzato il testo all'interno di una forma. Espone una proprietà pubblica denominata **Parent** per ottenere la forma padre per la casella di testo in modo che il cliente possa trovare il [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) collegato dal **TextBox** associato.

## Creare un collegamento

La classe **TextBox** fornisce il metodo [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) per verificare se il **TextBox** può essere collegato al target **Textbox**.

Il seguente esempio di codice mostra come verificare se `TextBox` può essere collegato alla casella di testo di destinazione:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Controlla la sequenza TextBox

Esistono diversi modi per visualizzare il testo in una forma. Il [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) può essere la Testa, il Centro o la Coda di una sequenza.

L'esempio di codice seguente mostra come verificare se **TextBox** è una Testa, una coda o un centro della sequenza:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Interrompi un collegamento

Usando il metodo [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) è possibile interrompere il collegamento al successivo **TextBox**.

L'esempio di codice seguente mostra come interrompere un collegamento per un **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
