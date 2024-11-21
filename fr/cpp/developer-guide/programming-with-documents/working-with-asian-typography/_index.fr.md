---
title: Typographie asiatique en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec la Typographie Asiatique
linktitle: Travailler avec la Typographie Asiatique
description: "Travaillez avec la typographie asiatique en utilisant C++. Ajustez l'espace entre le texte asiatique et latin en C++."
type: docs
weight: 240
url: /fr/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

La typographie asiatique est un ensemble d'options pour les paragraphes de texte dans les documents écrits en langues asiatiques.

Aspose.Words prend en charge la typographie asiatique en utilisant la classe [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) et certaines de ses propriétés.

## Ajuster automatiquement l'espace entre le Texte ou les Chiffres asiatiques et latins

Si vous concevez un modèle avec du texte est-asiatique et latin et que vous souhaitez améliorer l'apparence de votre modèle de formulaire en contrôlant les espaces entre les deux types de texte, vous pouvez configurer votre modèle de formulaire pour ajuster automatiquement les espaces entre ces deux types de texte. Pour ce faire, vous pouvez utiliser les propriétés [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) et [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) de la classe `ParagraphFormat`.

L'exemple de code suivant montre comment utiliser les propriétés **AddSpaceBetweenFarEastAndAlpha** et **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Définir Les Options De Saut De Ligne

L'onglet Typographie asiatique de la boîte de dialogue Propriétés du paragraphe dans Microsoft Word comporte un groupe de sauts de ligne. Les options de ce groupe peuvent être définies à l'aide de la [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) propriétés de la classe **ParagraphFormat**.

L'exemple de code suivant montre comment utiliser ces propriétés:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
