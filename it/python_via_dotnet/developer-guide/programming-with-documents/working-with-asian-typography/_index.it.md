---
title: Tipografia asiatica in Python
second_title: Aspose.Words per Python
articleTitle: Lavorare con la tipografia asiatica
linktitle: Lavorare con la tipografia asiatica
description: "Lavora con la tipografia asiatica utilizzando Python. Regola lo spazio tra il testo asiatico e quello latino in Python."
type: docs
weight: 240
url: /it/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

La tipografia asiatica è un insieme di opzioni per i paragrafi di testo nei documenti scritti in lingue asiatiche.

Aspose.Words supporta la tipografia asiatica utilizzando la classe [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) e alcune delle sue proprietà.

## Regola automaticamente lo spazio tra testo o numeri asiatici e latini

Se stai progettando un modello con testo sia dell'Asia orientale che latino e desideri migliorare l'aspetto del modello di modulo controllando gli spazi tra entrambi i tipi di testo, puoi configurare il modello di modulo per regolare automaticamente gli spazi tra questi due tipi di testo. Per raggiungere questo obiettivo è possibile utilizzare le proprietà [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) e [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) della classe `ParagraphFormat`.

L'esempio di codice seguente mostra come utilizzare le proprietà **AddSpaceBetweenFarEastAndAlpha** e **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Imposta le opzioni di interruzione di riga

La scheda Tipografia asiatica della finestra di dialogo delle proprietà del paragrafo in Microsoft Word ha un gruppo di interruzioni di riga. Le opzioni di questo gruppo possono essere impostate utilizzando le proprietà [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) della classe **ParagraphFormat**.

L'esempio di codice seguente mostra come utilizzare queste proprietà:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
