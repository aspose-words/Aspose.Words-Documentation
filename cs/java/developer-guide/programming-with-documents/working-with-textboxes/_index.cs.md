---
title: Práce s Linked TextBoxes v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s Linked TextBoxes
linktitle: Práce s Linked TextBoxes
description: "Úvod do připojené funkce textboxů v Aspose.Words místo Java."
type: docs
weight: 250
url: /cs/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, vá [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) třída se používá k určení, jak je text zobrazen uvnitř tvaru. Poskytuje veřejný majetek pojmenovaný jako rodič získat mateřský tvar pro textové pole, aby zákazník mohl najít propojenou [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) od propojeného **TextBox**.

## Vytvořit odkaz

The **TextBox** třída poskytuje [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) způsob kontroly, zda **TextBox** lze spojit s cílem **Textbox**.

Následující příklad kódu ukazuje, jak zkontrolovat, zda `TextBox` lze spojit s cílovým textovým polem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Zkontrolovat text Sekvence pole

Existuje několik způsobů, jak zobrazit text ve tvaru. The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) může být hlava, střední nebo ocas sekvence.

Následující příklad kódu ukazuje, jak zkontrolovat, zda **TextBox** je hlava, ocas nebo střed sekvence:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Přerušte spojení

Použití [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) metoda, kterou můžete přerušit odkaz na další **TextBox**.

Následující příklad kódu ukazuje, jak přerušit odkaz pro **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
