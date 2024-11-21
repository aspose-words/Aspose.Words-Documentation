---
title: Typographie asiatique en Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec la typographie asiatique
linktitle: Travailler avec la typographie asiatique
description: "Travailler avec la typographie asiatique en utilisant Java. Ajuster l'espace entre le texte asiatique et le texte latin Java."
type: docs
weight: 240
url: /fr/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

La typographie asiatique est un ensemble d'options pour les paragraphes de texte dans les documents rédigés en langues asiatiques.

Aspose.Words prend en charge la typographie asiatique en utilisant la [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) et certaines de ses propriétés.

## Ajuster automatiquement l'espace entre le texte ou les nombres asiatiques et latins

Si vous concevez un modèle avec du texte à la fois asiatique et latin et que vous souhaitez améliorer l'apparence de votre modèle de formulaire en contrôlant les espaces entre les deux types de texte, vous pouvez configurer votre modèle de formulaire pour ajuster automatiquement les espaces entre ces deux types de texte. Pour ce faire, vous pouvez utiliser [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) et [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) propriétés des `ParagraphFormat` En cours.

L'exemple de code suivant montre comment utiliser **AddSpaceBetweenFarEastAndAlpha** et **AddSpaceBetweenFarEastAndDigit** propriétés & #160;:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Définir les options de rupture de ligne

L'onglet Typographie asiatique de la boîte de dialogue Propriétés des paragraphes dans Microsoft Word a un groupe de rupture de ligne. Les options de ce groupe peuvent être définies en utilisant le [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) propriétés des **ParagraphFormat** En cours.

L'exemple de code suivant montre comment utiliser ces propriétés:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Changer l'espacement des paragraphes asiatiques et les dents

L'exemple de code suivant montre comment modifier l'espacement et les tirets des paragraphes asiatiques:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
