---
title: Práce s textBoxy v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s textBoxy
linktitle: Práce s textBoxy
description: "Práce s textovými schránkami v dokumentu pomocí Python."
type: docs
weight: 250
url: /cs/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words, [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) třída se používá k určení, jak je text zobrazen uvnitř tvaru. Poskytuje veřejný majetek s názvem [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) získat mateřský tvar textového pole, aby zákazník mohl najít odkaz [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) od propojeného [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/).

## Vytvoření spojení

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) třída poskytuje [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) metoda pro kontrolu, zda [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) lze spojit s cílovým textem.

Následující příklad kódu ukazuje, jak zkontrolovat, zda `TextBox` lze spojit s cílovým textovým boxem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Zkontrolovat text Sekvence pole

Existuje několik způsobů, jak zobrazit text ve tvaru. • [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) může být hlava, střední nebo ocas sekvence.

Následující příklad kódu ukazuje, jak zkontrolovat, zda **TextBox** je hlava, ocas nebo střed sekvence:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Přerušujeme spojení

Použití [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) metoda, kterou můžete přerušit odkaz na další **TextBox**.

Následující příklad kódu ukazuje, jak přerušit odkaz pro **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
