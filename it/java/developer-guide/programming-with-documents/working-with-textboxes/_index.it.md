---
title: Lavorare con caselle di testo collegate in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con caselle di testo collegate
linktitle: Lavorare con caselle di testo collegate
description: "Introduzione alle caselle di testo collegate Aspose.Words per Java."
type: docs
weight: 250
url: /it/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, il [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) classe viene utilizzata per specificare come viene visualizzato un testo all'interno di una forma. Fornisce una proprietà pubblica chiamata Parent per ottenere la forma del genitore per la casella di testo per consentire al cliente di trovare collegato [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) da collegato **TextBox**.

## Crea un link

The **TextBox** la classe fornisce [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) metodo per verificare se il **TextBox** può essere collegato al bersaglio **Textbox**.

Il seguente esempio di codice mostra come controllare se il `TextBox` può essere collegato alla casella di testo di destinazione:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Controllare il testo Sequenza della scatola

Ci sono diversi modi per visualizzare il testo in una forma. The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) può essere la Testa, il Medio o il Tail di una sequenza.

Il seguente esempio di codice mostra come controllare se **TextBox** è una Testa, un Tail o il Medio della sequenza:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Rompere un Link

Usare il [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) metodo si può rompere il link al prossimo **TextBox**.

Il seguente esempio di codice mostra come rompere un link per un **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
