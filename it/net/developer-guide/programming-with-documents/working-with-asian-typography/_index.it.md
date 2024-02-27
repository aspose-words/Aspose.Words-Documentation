---
title: Tipografia asiatica in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con la tipografia asiatica
linktitle: Lavorare con la tipografia asiatica
description: "Lavora con la tipografia asiatica utilizzando C#. Regola lo spazio tra il testo asiatico e quello latino in C#."
type: docs
weight: 240
url: /it/net/working-with-asian-typography/
---

La tipografia asiatica è un insieme di opzioni per i paragrafi di testo nei documenti scritti in lingue asiatiche.

Aspose.Words supporta la tipografia asiatica utilizzando la classe [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) e alcune delle sue proprietà.

## Regola automaticamente lo spazio tra testo o numeri asiatici e latini

Se stai progettando un modello con testo sia dell'Asia orientale che latino e desideri migliorare l'aspetto del modello di modulo controllando gli spazi tra entrambi i tipi di testo, puoi configurare il modello di modulo per regolare automaticamente gli spazi tra questi due tipi di testo. Per raggiungere questo obiettivo è possibile utilizzare le proprietà [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) e [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) della classe `ParagraphFormat`.

L'esempio di codice seguente mostra come utilizzare le proprietà **AddSpaceBetweenFarEastAndAlpha** e **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Imposta le opzioni di interruzione di riga

La scheda Tipografia asiatica della finestra di dialogo delle proprietà del paragrafo in Microsoft Word ha un gruppo di interruzioni di riga. Le opzioni di questo gruppo possono essere impostate utilizzando le proprietà [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) della classe **ParagraphFormat**.

L'esempio di codice seguente mostra come utilizzare queste proprietà:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
