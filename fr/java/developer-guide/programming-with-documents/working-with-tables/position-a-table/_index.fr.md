---
title: Position de la table dans Java
second_title: Aspose.Words pour Java
articleTitle: Positionner une Table
linktitle: Positionner une Table
description: "Spécifiez la position de la table dans Java. Obtenez un alignement de table, obtenez et définissez la position flottante de la table en utilisant Java."
type: docs
weight: 50
url: /fr/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Il existe des tables flottantes et des tables en ligne:

* **Inline tables** sont placés sur le même calque que le texte et sont placés dans un flux de texte qui entoure uniquement le tableau au-dessus et en dessous. Les tableaux en ligne apparaîtront toujours entre les paragraphes où vous les avez placés.
* **Floating tables** sont superposés sur le texte et la position du tableau par rapport au paragraphe est déterminée par l'ancre du tableau. Pour cette raison, la position de la table flottante dans le document est affectée par les paramètres de positionnement vertical et horizontal.

Parfois, vous devez positionner un tableau dans un document d'une certaine manière. Pour ce faire, vous devez utiliser les outils d'alignement et définir les retraits entre le tableau et le texte environnant.

Dans cet article, nous discuterons des options que Aspose.Words fournit pour le positionnement.

## Spécifier La Position De La Table En Ligne

Vous pouvez définir la position d'une table en ligne à l'aide des propriétés Aspose.Words API et [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment). Ainsi, vous pouvez ajuster l'alignement du tableau par rapport à la page du document.

L'exemple de code suivant montre comment définir la position d'une table en ligne:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Obtenir l'Alignement de La Table Flottante

Si l'habillage du texte du tableau est défini sur **Around**, vous pouvez obtenir l'alignement horizontal et vertical du tableau à l'aide des propriétés [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) et [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment).

Avec **other types of text wrapping**, vous pouvez obtenir un alignement de table en ligne à l'aide de la propriété **Alignment**.

L'exemple de code suivant montre comment obtenir l'alignement de la table:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Obtenir La Position Flottante de La Table

 La position d'une table flottante est déterminée à l'aide des propriétés suivantes:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - un objet pour calculer le positionnement horizontal d'une table flottante
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - un objet pour calculer le positionnement vertical d'une table flottante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - position horizontale absolue de la table flottante
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - position verticale absolue de la table flottante
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - option pour activer / désactiver le chevauchement avec d'autres objets flottants
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – alignement horizontal relatif de la table flottante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – alignement vertical relatif de la table flottante.

L'exemple de code suivant montre comment obtenir la position d'une table flottante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Définir La Position De La Table Flottante

Tout comme getting, vous pouvez définir la position d'une table flottante en utilisant le même Aspose.Words API.

Il est important de savoir que l'alignement et la distance horizontale et verticale sont des propriétés combinées et que l'une peut réinitialiser l'autre. Par exemple, définir le **RelativeHorizontalAlignment** réinitialisera le **AbsoluteHorizontalDistance** à sa valeur par défaut et vice versa. Il en va de même pour la disposition verticale.

L'exemple de code suivant montre comment définir la position d'une table flottante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Obtenir la distance entre le Tableau et le texte environnant

Aspose.Words permet également de connaître les distances entre les tableaux et les textes environnants:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - la valeur de la distance d'en haut
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - la valeur de la distance de perception
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - valeur de distance à droite
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - valeur de distance à gauche

L'exemple de code suivant montre comment obtenir la distance entre une table et son texte environnant:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
