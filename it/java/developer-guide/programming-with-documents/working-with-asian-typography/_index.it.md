---
title: Tipografia asiatica Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con la tipografia asiatica
linktitle: Lavorare con la tipografia asiatica
description: "Lavorare con la tipografia asiatica utilizzando Java. Regolare lo spazio tra testo asiatico e latino in Java."
type: docs
weight: 240
url: /it/java/working-with-asian-typography/
---

La tipografia asiatica è una serie di opzioni per i paragrafi di testo nei documenti scritti in lingue asiatiche.

Aspose.Words supporta la tipografia asiatica utilizzando [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) classe e alcune delle sue proprietà.

## Regola automaticamente lo spazio tra testo o numeri asiatici e latini

Se si sta progettando un modello sia con il testo orientale asiatico che latino e si desidera migliorare l'aspetto del modello di forma controllando gli spazi tra entrambi i tipi di testo, è possibile configurare il modello di modulo per regolare automaticamente gli spazi tra questi due tipi di testo. Per raggiungere questo obiettivo, è possibile utilizzare [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) e [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) proprietà della `ParagraphFormat` classe.

Il seguente esempio di codice mostra come utilizzare **AddSpaceBetweenFarEastAndAlpha** e **AddSpaceBetweenFarEastAndDigit** proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Opzioni di interruzione della linea

La scheda Tipografia Asiatica delle proprietà del paragrafo finestra di dialogo in Microsoft Word ha gruppo di rottura linea. Le opzioni di questo gruppo possono essere impostate utilizzando [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) proprietà della **ParagraphFormat** classe.

Il seguente esempio di codice mostra come utilizzare queste proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Cambiare il Paragrafo asiatico Spacing e Indents

Il seguente esempio di codice mostra come modificare la spaziatura e gli indenti del paragrafo asiatico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}