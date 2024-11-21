---
title: Asijská typografie Java
second_title: Aspose.Words místo Java
articleTitle: Práce s asijskou typografií
linktitle: Práce s asijskou typografií
description: "Práce s asijskou typografií pomocí Java. Nastavte prostor mezi asijským a latinským textem v Java."
type: docs
weight: 240
url: /cs/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

Asijská typografie je soubor možností pro textové odstavce v dokumentech napsaných v asijských jazycích.

Aspose.Words podporuje asijskou typografii pomocí [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) třída a některé její vlastnosti.

## Automaticky upravit prostor mezi asijským a latinským textem nebo čísly

Pokud navrhujete šablonu s východoasijským i latinským textem a chcete zlepšit vzhled vaší šablony formuláře ovládáním mezer mezi oběma typy textu, můžete nakonfigurovat šablonu formuláře tak, aby se automaticky upravily mezery mezi těmito dvěma typy textu. K dosažení tohoto cíle můžete použít [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) a [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) vlastnosti `ParagraphFormat` třída.

Následující příklad kódu ukazuje, jak používat **AddSpaceBetweenFarEastAndAlpha** a **AddSpaceBetweenFarEastAndDigit** vlastnosti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Nastavit možnosti přerušení řádku

Záložka asijské typografie v dialogovém okně vlastností odstavce Microsoft Word má line break skupina. Možnosti této skupiny lze nastavit pomocí [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) vlastnosti **ParagraphFormat** třída.

Následující příklad kódu ukazuje, jak používat tyto vlastnosti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Změnit asijské odstavce Spaceing a odsazení

Následující příklad kódu ukazuje, jak změnit asijský odstavec rozestup a odrážky:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
