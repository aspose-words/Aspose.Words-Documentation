---
title: Práce s TextBoxes v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s TextBoxes
linktitle: Práce s TextBoxes
description: "Úvod do funkce propojených textových polí v Aspose.Words pro C++."
type: docs
weight: 250
url: /cs/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

V Aspose.Words se třída [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) používá k určení způsobu zobrazení textu uvnitř obrazce. Vystavuje veřejnou vlastnost s názvem **Parent**, aby získal Nadřazený tvar textového pole, aby zákazník mohl najít propojený [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) z přidruženého **TextBox**.

## Vytvořit Odkaz

Třída **TextBox** poskytuje metodu [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/), aby zkontrolovala, zda lze **TextBox** propojit s cílem **Textbox**.

Následující příklad kódu ukazuje, jak zkontrolovat, zda lze `TextBox` propojit s cílovým textovým polem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Zkontrolujte TextBox Posloupnost

Existuje několik způsobů, jak zobrazit text ve tvaru. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) může být hlava, střed nebo ocas sekvence.

Následující příklad kódu ukazuje, jak zkontrolovat, zda **TextBox** je hlava, ocas nebo střed sekvence:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Prolomit odkaz

Pomocí metody [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) můžete přerušit odkaz na další **TextBox**.

Následující příklad kódu ukazuje, jak přerušit odkaz pro **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
