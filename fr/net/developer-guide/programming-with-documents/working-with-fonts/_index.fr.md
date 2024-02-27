---
title: Travailler avec des polices dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des polices
linktitle: Travailler avec des polices
description: "Formatage des polices en détails à l'aide de C#. Marque d'accentuation dans C#. Obtenez l’espacement des lignes de police à l’aide de C#."
type: docs
weight: 230
url: /fr/net/working-with-fonts/
---

Une police est un ensemble de caractères ayant une certaine taille, couleur et design. Aspose.Words vous permet de travailler avec des polices en utilisant l'espace de noms [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) et la classe [Font](https://reference.aspose.com/words/net/aspose.words/font/).

## Formatage de la police

Le formatage actuel de la police est représenté par l'objet **Font** renvoyé par la propriété [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/). La classe **Font** contient une grande variété de propriétés de police, reproduisant celles disponibles en Microsoft Word.

L'exemple de code suivant montre comment définir le formatage de la police:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Les propriétés de remplissage sont également disponibles pour les polices afin de définir le formatage du remplissage du texte. Cela permet de modifier, par exemple, la couleur du premier plan ou la transparence du remplissage du texte.

## Obtenir l'espacement des lignes de police

L'espacement des lignes de police est la distance verticale entre les lignes de base de deux lignes de texte consécutives. Ainsi, l’espacement des lignes inclut l’espace vide entre les lignes ainsi que la hauteur du caractère lui-même.

La propriété [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) a été introduite dans la classe **Font** pour obtenir cette valeur, comme le montre l'exemple ci-dessous:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Police EmphasisMark

Certaines langues d'Asie de l'Est utilisent une marque d'accentuation spéciale pour indiquer une emphase. La classe **Font** fournit la propriété [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) pour obtenir ou définir les valeurs d'énumération [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) à appliquer lors du formatage.

L'exemple de code suivant montre comment définir la propriété **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
