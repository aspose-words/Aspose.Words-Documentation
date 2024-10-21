---
title: Travailler avec des polices en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des polices
linktitle: Travailler avec des polices
description: "Formatage des polices dans les détails en utilisant C++."
type: docs
weight: 230
url: /fr/cpp/working-with-fonts/
---

Une police est un ensemble de caractères avec une certaine taille, couleur et conception. Aspose.Words vous permet de travailler avec des polices en utilisant l'espace de noms [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) et la classe [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Formatage des Polices

La mise en forme actuelle de la police est représentée par l'objet **Font** renvoyé par la propriété [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). La classe **Font** contient une grande variété de propriétés de police, répliquant celles disponibles dans Microsoft Word.

L'exemple de code suivant montre comment définir le formatage des polices:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Les propriétés de remplissage sont désormais également disponibles pour les polices afin de définir la mise en forme de remplissage du texte. Il permet de modifier, par exemple, la couleur de premier plan ou la transparence du remplissage du texte.

## Obtenir L'Interligne De La Police

L'interligne de police est la distance verticale entre les lignes de base de deux lignes de texte consécutives. Ainsi, l'interligne inclut l'espace vide entre les lignes ainsi que la hauteur du caractère lui-même.

La propriété [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) a été introduite dans la classe **Font** pour obtenir cette valeur, comme illustré dans l'exemple ci-dessous:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Police EmphasisMark

Certaines langues d'Asie de l'Est utilisent une marque d'emphase spéciale pour indiquer une emphase. La classe **Font** fournit la propriété [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) pour obtenir ou définir les valeurs d'énumération `EmphasisMark` à appliquer lors du formatage.

L'exemple de code suivant montre comment définir la propriété **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
