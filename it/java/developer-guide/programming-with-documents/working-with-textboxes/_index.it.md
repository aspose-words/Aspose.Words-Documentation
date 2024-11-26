---
title: Lavorare con Linked TextBoxes in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Linked TextBoxes
linktitle: Lavorare con Linked TextBoxes
description: "Introduzione alla funzionalità caselle di testo collegate in Aspose.Words per Java."
type: docs
weight: 250
url: /it/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, la classe [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) viene utilizzata per specificare come viene visualizzato un testo all'interno di una forma. Fornisce una proprietà pubblica denominata come genitore per ottenere la forma genitore per la casella di testo per consentire al cliente di trovare linked [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) da linked **TextBox**.

## Creare un collegamento

La classe **TextBox** fornisce il metodo [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) per verificare se il **TextBox** può essere collegato al target **Textbox**.

Il seguente esempio di codice mostra come verificare se `TextBox` può essere collegato alla casella di testo di destinazione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Controlla la sequenza TextBox

Esistono diversi modi per visualizzare il testo in una forma. Il [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) può essere la Testa, il Centro o la Coda di una sequenza.

L'esempio di codice seguente mostra come verificare se **TextBox** è una Testa, una coda o un centro della sequenza:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Interrompi un collegamento

Usando il metodo [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) è possibile interrompere il collegamento al successivo **TextBox**.

L'esempio di codice seguente mostra come interrompere un collegamento per un **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
