---
title: Convertir entre les unités de mesure dans C#
second_title: Aspose.Words pour .NET
articleTitle: Convertir entre les unités de mesure
linktitle: Convertir entre les unités de mesure
description: "Aspose.Words pour .NET peut vous aider à convertir entre des unités de mesure, par exemple des pouces en points et des points en pouces, des pixels en points, des points en pixels à l'aide de C#."
type: docs
weight: 20
url: /fr/net/convert-between-measurement-units/
---

La plupart des propriétés d'objet fournies dans le Aspose.Words API qui représentent certaines mesures, telles que la largeur ou la hauteur, les marges et diverses distances, acceptent des valeurs en points, où 1 pouce équivaut à 72 points. Parfois, cela n’est pas pratique et les points doivent être convertis en d’autres unités.

Aspose.Words fournit la classe [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) qui fournit des fonctions d'assistance pour convertir entre différentes unités de mesure. Il permet de convertir:

- pouces, pixels et millimètres en points
- pointe vers les pouces et les pixels
- pixels d'une résolution à une autre

La conversion de pixels en points et vice versa peut être effectuée à des résolutions de 96 dpi (points par pouce) ou à une résolution dpi spécifiée.

La classe **ConvertUtil** est particulièrement utile lors de la définition de diverses propriétés de page car, par exemple, les pouces sont des unités de mesure plus courantes que les points.

L'exemple de code suivant montre comment spécifier les propriétés de page en pouces:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
