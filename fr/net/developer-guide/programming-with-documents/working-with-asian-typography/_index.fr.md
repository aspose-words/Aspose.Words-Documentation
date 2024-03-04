---
title: Typographie asiatique en C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec la typographie asiatique
linktitle: Travailler avec la typographie asiatique
description: "Travaillez avec la typographie asiatique en utilisant C#. Ajustez l'espace entre le texte asiatique et latin dans C#."
type: docs
weight: 240
url: /fr/net/working-with-asian-typography/
---

La typographie asiatique est un ensemble d'options pour les paragraphes de texte dans les documents rédigés en langues asiatiques.

Aspose.Words prend en charge la typographie asiatique en utilisant la classe [ParagraphFormat](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/) et certaines de ses propriétés.

## Ajuster automatiquement l'espace entre le texte ou les chiffres asiatiques et latins

Si vous concevez un modèle avec du texte d'Asie de l'Est et du texte latin et que vous souhaitez améliorer l'apparence de votre modèle de formulaire en contrôlant les espaces entre les deux types de texte, vous pouvez configurer votre modèle de formulaire pour ajuster automatiquement les espaces entre ces deux types de texte.. Pour y parvenir, vous pouvez utiliser les propriétés [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) et [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) de la classe `ParagraphFormat`.

L'exemple de code suivant montre comment utiliser les propriétés **AddSpaceBetweenFarEastAndAlpha** et **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Définir les options de saut de ligne

L'onglet Typographie asiatique de la boîte de dialogue des propriétés de paragraphe dans Microsoft Word comporte un groupe de sauts de ligne. Les options de ce groupe peuvent être définies à l'aide des propriétés [FarEastLineBreakControl](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/hangingpunctuation/) de la classe **ParagraphFormat**.

L'exemple de code suivant montre comment utiliser ces propriétés:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
