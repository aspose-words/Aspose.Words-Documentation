---
title: Tableau Java
second_title: Aspose.Words pour Java
articleTitle: Position d'un tableau
linktitle: Position d'un tableau
description: "Indiquer la position du tableau dans Java. Obtenir un alignement de table, obtenir et définir la position de la table flottante en utilisant Java."
type: docs
weight: 50
url: /fr/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Il y a des tables flottantes et des tables en ligne:

* **Tableaux en ligne** sont placés sur le même calque que le texte et sont placés dans un flux de texte qui entoure uniquement le tableau ci-dessus et ci-dessous. Les tables en ligne apparaîtront toujours entre les paragraphes où vous les avez placés.
* **Tableaux flottants** La position du tableau par rapport au paragraphe est déterminée par l'ancrage du tableau. Pour cette raison, la position de la table flottante dans le document est affectée par les paramètres de positionnement vertical et horizontal.

Parfois, vous devez placer une table dans un document d'une certaine manière. Pour ce faire, vous devez utiliser les outils d'alignement et définir les tirets entre la table et le texte environnant.

Dans cet article, nous discuterons des options Aspose.Words fournit un positionnement.

## Spécifier la position du tableau en ligne

Vous pouvez définir la position d'une table Aspose.Words API et les [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) propriété. Ainsi, vous pouvez ajuster l'alignement du tableau par rapport à la page du document.

L'exemple de code suivant montre comment définir la position d'une table en ligne:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Obtenir l'alignement de table flottante

Si le texte de la table est réglé à **Around**, vous pouvez obtenir l'alignement horizontal et vertical de la table en utilisant le [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) et [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) propriétés.

Avec **autres types de texte d'emballage**, vous pouvez obtenir l'alignement de table en ligne **Alignment** propriété.

L'exemple de code suivant montre comment obtenir l'alignement du tableau:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Position de la table flottante

 La position d'une table flottante est déterminée en utilisant les propriétés suivantes:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – un objet pour le calcul du positionnement horizontal d'une table flottante
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – un objet pour calculer le positionnement vertical d'une table flottante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – position de la table flottante horizontale absolue
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – position de la table flottante verticale absolue
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – option pour activer/désactiver le chevauchement avec d'autres objets flottants
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – table flottante alignement horizontal relatif.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – alignement vertical relatif de la table flottante.

L'exemple de code suivant montre comment obtenir la position d'une table flottante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Position de la table flottante

Tout comme obtenir, vous pouvez définir la position d'une table flottante en utilisant la même Aspose.Words API.

Il est important de savoir que l'alignement et la distance horizontale et verticale sont des propriétés combinées et l'un peut réinitialiser l'autre. Par exemple, **RelativeHorizontalAlignment** réinitialise la **AbsoluteHorizontalDistance** à sa valeur par défaut et vice versa. La même chose est true pour la disposition verticale.

L'exemple de code suivant montre comment définir la position d'une table flottante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Obtenir la distance entre la table et le texte environnant

Aspose.Words offre également l'occasion de découvrir les distances entre les tableaux et les textes environnants:

- Oui. [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – la valeur de la distance d'en haut
- Oui. [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – la valeur de la distance de perception
- Oui. [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – valeur de distance à droite
- Oui. [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – valeur de distance à gauche

L'exemple de code suivant montre comment obtenir la distance entre une table et son texte environnant:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
