---
title: Lavorare con caselle di testo in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con le caselle di testo
linktitle: Lavorare con le caselle di testo
description: "Lavora con le caselle di testo in un documento utilizzando Python."
type: docs
weight: 250
url: /it/python-net/working-with-textboxes/
---

In Aspose.Words, la classe [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) viene utilizzata per specificare come viene visualizzato un testo all'interno di una forma. Fornisce una proprietà pubblica denominata [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) per ottenere la forma principale della casella di testo per consentire al cliente di trovare [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) collegato da [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) collegato.

## Creazione di un collegamento

La classe [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) fornisce il metodo [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) per verificare se il [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) può essere collegato alla casella di testo di destinazione.

Il seguente esempio di codice mostra come verificare se il `TextBox` può essere collegato alla casella di testo di destinazione:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Controlla la sequenza delle caselle di testo

Esistono diversi modi per visualizzare il testo in una forma. Il [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) può essere la testa, il centro o la coda di una sequenza.

L'esempio di codice seguente mostra come verificare se **TextBox** è Head, Tail o Middle della sequenza:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Rompere un collegamento

Utilizzando il metodo [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) è possibile interrompere il collegamento al successivo **TextBox**.

Il seguente esempio di codice mostra come interrompere un collegamento per un **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
