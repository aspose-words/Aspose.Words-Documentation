---
title: Práce s textBoxy v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s textBoxy
linktitle: Práce s textBoxy
description: "Úvod do připojené funkce textboxů v Aspose.Words místo .NET."
type: docs
weight: 250
url: /cs/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, vá [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) třída se používá k určení, jak je text zobrazen uvnitř tvaru. Odhaluje veřejný majetek pojmenovaný **Parent** získat mateřský tvar textového pole tak, aby zákazník mohl najít odkazovaný [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) od přidruženého **TextBox**.

## Vytvoření spojení

• **TextBox** třída poskytuje [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) metoda pro kontrolu, zda **TextBox** lze spojit s cílem **Textbox**.

Následující příklad kódu ukazuje, jak zkontrolovat, zda `TextBox` lze spojit s cílovým textovým boxem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Zkontrolovat text Sekvence pole

Existuje několik způsobů, jak zobrazit text ve tvaru. • [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) může být hlava, střední nebo ocas sekvence.

Následující příklad kódu ukazuje, jak zkontrolovat, zda **TextBox** je hlava, ocas nebo střed sekvence:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Přerušujeme spojení

Použití [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) metoda, kterou můžete přerušit odkaz na další **TextBox**.

Následující příklad kódu ukazuje, jak přerušit odkaz pro **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
