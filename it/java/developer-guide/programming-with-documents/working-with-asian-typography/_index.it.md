---
title: Tipografia asiatica in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con la tipografia asiatica
linktitle: Lavorare con la tipografia asiatica
description: "Lavora con la tipografia asiatica usando Java. Regola lo spazio tra testo asiatico e latino in Java."
type: docs
weight: 240
url: /it/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

La tipografia asiatica è un insieme di opzioni per i paragrafi di testo nei documenti scritti in lingue asiatiche.

Aspose.Words supporta la tipografia asiatica usando la classe [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) e alcune delle sue proprietà.

## Regola automaticamente lo spazio tra testo o numeri asiatici e latini

Se si sta progettando un modello con testo latino e orientale e si desidera migliorare l'aspetto del modello di modulo controllando gli spazi tra entrambi i tipi di testo, è possibile configurare il modello di modulo per regolare automaticamente gli spazi tra questi due tipi di testo. Per ottenere ciò, è possibile utilizzare le proprietà [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) e [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) della classe `ParagraphFormat`.

L'esempio di codice seguente mostra come utilizzare le proprietà **AddSpaceBetweenFarEastAndAlpha** e **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Imposta le opzioni di interruzione linea

La scheda Tipografia asiatica della finestra di dialogo Proprietà paragrafo in Microsoft Word ha un gruppo di interruzione di riga. Le opzioni di questo gruppo possono essere impostate utilizzando [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) proprietà della classe **ParagraphFormat**.

Il seguente esempio di codice mostra come utilizzare queste proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Modifica della spaziatura e dei rientri dei paragrafi asiatici

L'esempio di codice seguente mostra come modificare la spaziatura dei paragrafi asiatici e i rientri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
