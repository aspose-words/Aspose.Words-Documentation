---
title: Tipografia asiatica in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con la tipografia asiatica
linktitle: Lavorare con la tipografia asiatica
description: "Lavorare con la tipografia asiatica utilizzando C++. Regola lo spazio tra testo asiatico e latino in C++."
type: docs
weight: 240
url: /it/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

La tipografia asiatica è un insieme di opzioni per i paragrafi di testo nei documenti scritti in lingue asiatiche.

Aspose.Words supporta la tipografia asiatica usando la classe [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) e alcune delle sue proprietà.

## Regola automaticamente lo spazio tra testo o numeri asiatici e latini

Se si sta progettando un modello con testo latino e orientale e si desidera migliorare l'aspetto del modello di modulo controllando gli spazi tra entrambi i tipi di testo, è possibile configurare il modello di modulo per regolare automaticamente gli spazi tra questi due tipi di testo. Per ottenere ciò, è possibile utilizzare le proprietà [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) e [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) della classe `ParagraphFormat`.

L'esempio di codice seguente mostra come utilizzare le proprietà **AddSpaceBetweenFarEastAndAlpha** e **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Imposta le opzioni di interruzione linea

La scheda Tipografia asiatica della finestra di dialogo Proprietà paragrafo in Microsoft Word ha un gruppo di interruzione di riga. Le opzioni di questo gruppo possono essere impostate utilizzando [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) proprietà della classe **ParagraphFormat**.

Il seguente esempio di codice mostra come utilizzare queste proprietà:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
