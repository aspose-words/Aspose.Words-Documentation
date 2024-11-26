---
title: Typographie asiatique en Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec la Typographie Asiatique
linktitle: Travailler avec la Typographie Asiatique
description: "Travaillez avec la typographie asiatique en utilisant Java. Ajustez l'espace entre le texte asiatique et latin dans Java."
type: docs
weight: 240
url: /fr/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

La typographie asiatique est un ensemble d'options pour les paragraphes de texte dans les documents écrits en langues asiatiques.

Aspose.Words prend en charge la typographie asiatique en utilisant la classe [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) et certaines de ses propriétés.

## Ajuster automatiquement l'espace entre le Texte ou les Chiffres asiatiques et latins

Si vous concevez un modèle avec du texte est-asiatique et latin et que vous souhaitez améliorer l'apparence de votre modèle de formulaire en contrôlant les espaces entre les deux types de texte, vous pouvez configurer votre modèle de formulaire pour ajuster automatiquement les espaces entre ces deux types de texte. Pour ce faire, vous pouvez utiliser les propriétés [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) et [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) de la classe `ParagraphFormat`.

L'exemple de code suivant montre comment utiliser les propriétés **AddSpaceBetweenFarEastAndAlpha** et **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Définir Les Options De Saut De Ligne

L'onglet Typographie asiatique de la boîte de dialogue Propriétés du paragraphe dans Microsoft Word a un groupe de sauts de ligne. Les options de ce groupe peuvent être définies à l'aide de la [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) propriétés de la classe **ParagraphFormat**.

L'exemple de code suivant montre comment utiliser ces propriétés:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Modifier l'espacement et les retraits des Paragraphes asiatiques

L'exemple de code suivant montre comment modifier l'espacement et les retraits des paragraphes asiatiques:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
