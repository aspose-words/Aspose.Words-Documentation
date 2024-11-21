---
title: Convertir entre les unités de mesure en Java
second_title: Aspose.Words pour Java
articleTitle: Convertir entre les unités de mesure
linktitle: Convertir entre les unités de mesure
description: "Aspose.Words pour Java peut vous aider à convertir entre les unités de mesure, par exemple, pouces en points et points en pouces, pixels en points, points en pixels."
type: docs
weight: 20
url: /fr/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

La plupart des propriétés de l'objet Aspose.Words API qui représentent certaines mesures, telles que la largeur ou la hauteur, les marges et diverses distances, acceptent des valeurs en points, où 1 pouce équivaut à 72 points. Parfois, ce n'est pas pratique et les points doivent être convertis en d'autres unités.

Aspose.Words fournit les [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) classe qui fournit des fonctions d'aide à convertir entre différentes unités de mesure. Il permet de convertir pouces, pixels et millimètres en points, points en pouces et pixels, et de convertir pixels d'une résolution à l'autre. La conversion de pixels en points et vice versa peut être effectuée à des résolutions 96 dpi (points par pouce) ou à des résolutions dpi spécifiées.

Les **ConvertUtil** classe est particulièrement utile pour définir différentes propriétés de page parce que, par exemple, pouces sont des unités de mesure plus communes que les points.

L'exemple de code suivant montre comment spécifier les propriétés de la page en pouces:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
