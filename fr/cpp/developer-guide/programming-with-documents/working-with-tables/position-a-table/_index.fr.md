---
title: Position de la table en C++
second_title: Aspose.Words pour C++
articleTitle: Positionner une Table
linktitle: Positionner une Table
description: "Spécifiez la position de la table en C++. Obtenez un alignement de table, obtenez et définissez la position de la table flottante en utilisant C++."
type: docs
weight: 50
url: /fr/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Il existe des tables flottantes et des tables en ligne:

* **Inline tables** sont placés sur le même calque que le texte et sont placés dans un flux de texte qui entoure uniquement le tableau au-dessus et en dessous. Les tableaux en ligne apparaîtront toujours entre les paragraphes où vous les avez placés.
* **Floating tables** sont superposés sur le texte et la position du tableau par rapport au paragraphe est déterminée par l'ancre du tableau. Pour cette raison, la position de la table flottante dans le document est affectée par les paramètres de positionnement vertical et horizontal.

Parfois, vous devez positionner un tableau dans un document d'une certaine manière. Pour ce faire, vous devez utiliser les outils d'alignement et définir les retraits entre le tableau et le texte environnant.

Dans cet article, nous discuterons des options que Aspose.Words fournit pour le positionnement.

## Spécifier La Position De La Table En Ligne

Vous pouvez définir la position d'une table en ligne à l'aide de l'API Aspose.Words et de la propriété [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Ainsi, vous pouvez ajuster l'alignement du tableau par rapport à la page du document.

L'exemple de code suivant montre comment définir la position d'une table en ligne:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Obtenir l'Alignement de La Table Flottante

Si l'habillage du texte du tableau est défini sur **Around**, vous pouvez obtenir l'alignement horizontal et vertical du tableau à l'aide des propriétés [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) et [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Avec **other types of text wrapping**, vous pouvez obtenir un alignement de table en ligne à l'aide de la propriété [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

L'exemple de code suivant montre comment obtenir l'alignement de la table:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Obtenir La Position Flottante de La Table

 La position d'une table flottante est déterminée à l'aide des propriétés suivantes:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - un objet pour calculer le positionnement horizontal d'une table flottante
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - un objet pour calculer le positionnement vertical d'une table flottante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - position horizontale absolue de la table flottante
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - position verticale absolue de la table flottante
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - option pour activer / désactiver le chevauchement avec d'autres objets flottants
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) – alignement horizontal relatif de la table flottante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) – alignement vertical relatif de la table flottante.

L'exemple de code suivant montre comment obtenir la position d'une table flottante:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Définir La Position De La Table Flottante

Tout comme getting, vous pouvez définir la position d'une table flottante en utilisant la même API Aspose.Words.

Il est important de savoir que l'alignement et la distance horizontale et verticale sont des propriétés combinées et que l'une peut réinitialiser l'autre. Par exemple, définir le **RelativeHorizontalAlignment** réinitialisera le **AbsoluteHorizontalDistance** à sa valeur par défaut et vice versa. Il en va de même pour la disposition verticale.

L'exemple de code suivant montre comment définir la position d'une table flottante:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Obtenir la distance entre le Tableau et le texte environnant

Aspose.Words permet également de connaître les distances entre les tableaux et les textes environnants:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - la valeur de la distance d'en haut
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - la valeur de la distance de perception
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - valeur de distance à droite
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - valeur de distance à gauche

L'exemple de code suivant montre comment obtenir la distance entre une table et son texte environnant:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
