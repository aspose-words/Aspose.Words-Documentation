---
title: Convertir entre les unités de mesure en C++
second_title: Aspose.Words pour C++
articleTitle: Convertir Entre Les Unités De Mesure
linktitle: Convertir Entre Les Unités De Mesure
description: "Aspose.Words pour C++ peut vous aider à convertir entre les unités de mesure, par exemple, pouces en points et points en pouces, pixels en points, points en pixels."
type: docs
weight: 20
url: /fr/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

La plupart des propriétés d'objet fournies dans l'API Aspose.Words qui représentent certaines mesures, telles que la largeur ou la hauteur, les marges et diverses distances, acceptent des valeurs en points, où 1 pouce équivaut à 72 points. Parfois, ce n'est pas pratique et les points doivent être convertis en d'autres unités.

Aspose.Words fournit la classe [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) qui fournit des fonctions d'assistance pour convertir entre différentes unités de mesure. Il permet de convertir des pouces, des pixels et des millimètres en points, des points en pouces et en pixels, et de convertir des pixels d'une résolution à une autre.La conversion de pixels en points et vice versa peut être effectuée à des résolutions de 96 dpi (points par pouce) ou à une résolution dpi spécifiée.

La classe **ConvertUtil** est particulièrement utile lors de la définition de diverses propriétés de page car, par exemple, les pouces sont des unités de mesure plus courantes que les points.

L'exemple de code suivant montre comment spécifier les propriétés de la page en pouces:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

