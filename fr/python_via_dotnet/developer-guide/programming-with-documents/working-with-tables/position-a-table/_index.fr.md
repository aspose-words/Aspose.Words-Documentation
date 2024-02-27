---
title: Position du tableau dans Python
second_title: Aspose.Words pour Python
articleTitle: Positionner un tableau
linktitle: Positionner un tableau
description: "Spécifiez la position du tableau dans Python. Obtenez un alignement de table, obtenez et définissez la position de la table flottante à l'aide de Python."
type: docs
weight: 50
url: /fr/python-net/position-a-table/
---

Il existe des tables flottantes et des tables en ligne:

* Les **Tableaux en ligne** sont placés sur le même calque que le texte et sont placés dans un flux de texte qui entoure uniquement le tableau au-dessus et en dessous. Les tableaux en ligne apparaîtront toujours entre les paragraphes où vous les avez placés.
* Les **Tables flottantes** sont superposés au texte et la position du tableau par rapport au paragraphe est déterminée par l'ancre du tableau. De ce fait, la position du tableau flottant dans le document est affectée par les paramètres de positionnement vertical et horizontal.

Parfois, vous devez positionner un tableau dans un document d'une certaine manière. Pour ce faire, vous devez utiliser les outils d'alignement et définir les retraits entre le tableau et le texte environnant.

Dans cet article, nous discuterons des options proposées par Aspose.Words pour le positionnement.

## Spécifier la position du tableau en ligne

Vous pouvez définir la position d'un tableau en ligne à l'aide du Aspose.Words API et de la propriété [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). Ainsi, vous pouvez ajuster l'alignement du tableau par rapport à la page du document.

L'exemple de code suivant montre comment définir la position d'une table en ligne:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Obtenir l'alignement des tables flottantes

Si l'habillage du texte du tableau est défini sur **Around**, vous pouvez obtenir l'alignement horizontal et vertical du tableau à l'aide des propriétés [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) et [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

Avec **autres types d'habillage de texte**, vous pouvez obtenir l'alignement des tableaux en ligne à l'aide de la propriété [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

L'exemple de code suivant montre comment obtenir l'alignement de la table:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Obtenir la position de la table flottante

 La position d'une table flottante est déterminée à l'aide des propriétés suivantes:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – un objet pour calculer le positionnement horizontal d'une table flottante
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – un objet pour calculer le positionnement vertical d'une table flottante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – position absolue de la table flottante horizontale
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – position verticale absolue de la table flottante
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – option pour activer/désactiver le chevauchement avec d'autres objets flottants
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – alignement horizontal relatif de la table flottante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – alignement vertical relatif de la table flottante.

L'exemple de code suivant montre comment obtenir la position d'une table flottante:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Définir la position de la table flottante

Tout comme pour obtenir, vous pouvez définir la position d'une table flottante en utilisant le même Aspose.Words API.

Il est important de savoir que l’alignement et la distance horizontale et verticale sont des propriétés combinées et que l’une peut réinitialiser l’autre. Par exemple, la configuration du **RelativeHorizontalAlignment** réinitialisera le **AbsoluteHorizontalDistance** à sa valeur par défaut et vice versa. Il en va de même pour true pour la disposition verticale.

L'exemple de code suivant montre comment définir la position d'une table flottante:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Obtenir la distance entre le tableau et le texte environnant

Aspose.Words offre également la possibilité de connaître les distances entre les tableaux et les textes environnants:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – la valeur de la distance d'en haut
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – la valeur de la distance de perception
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – valeur de distance à droite
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – valeur de distance à gauche

L'exemple de code suivant montre comment obtenir la distance entre un tableau et le texte qui l'entoure:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}