---
title: Travailler avec des polices dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des polices
linktitle: Travailler avec des polices
description: "Personnalisez les paramètres de police à l'aide de Python."
type: docs
weight: 230
url: /fr/python-net/working-with-fonts/
---

Une police est un ensemble de caractères ayant une certaine taille, couleur et design. Aspose.Words vous permet de travailler avec des polices en utilisant le module [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) et la classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Formatage de la police

Le formatage actuel de la police est représenté par l'objet **Font** renvoyé par la propriété [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). La classe **Font** contient une grande variété de propriétés de police, reproduisant celles disponibles en Microsoft Word.

L'exemple de code suivant montre comment définir le formatage de la police:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Les propriétés de remplissage sont désormais également disponibles pour les polices afin de définir le formatage de remplissage du texte. Il permet de modifier, par exemple, la couleur de premier plan ou la transparence du remplissage du texte.

## Obtenir l'espacement des lignes de police

L'espacement des lignes de police est la distance verticale entre les lignes de base de deux lignes de texte consécutives. Ainsi, l’espacement des lignes inclut l’espace vide entre les lignes ainsi que la hauteur du caractère lui-même.

La propriété [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) a été introduite dans la classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) pour obtenir cette valeur comme le montre l'exemple ci-dessous:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Police EmphasisMark

Certaines langues d'Asie de l'Est utilisent une marque d'accentuation spéciale pour indiquer une emphase. La classe **Font** fournit la propriété [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) pour obtenir ou définir les valeurs d'énumération [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) à appliquer dans le formatage.

L'exemple de code suivant montre comment définir la propriété **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
