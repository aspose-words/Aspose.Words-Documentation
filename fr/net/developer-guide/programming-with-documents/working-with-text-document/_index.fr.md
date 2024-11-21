---
title: Travailler avec un document texte dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec un document texte
linktitle: Travailler avec un document texte
description: "Traitement avancé des documents TXT, listes, BiDi, en-têtes/pieds de page, utilisant C#."
type: docs
weight: 430
url: /fr/net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Dans cet article, nous apprendrons quelles options peuvent être utiles pour travailler avec un document texte via Aspose.Words. Veuillez noter qu'il ne s'agit pas d'une liste complète des options disponibles, mais seulement d'un exemple de travail avec certaines d'entre elles.

## Ajouter des marques bidirectionnelles

Vous pouvez utiliser la propriété [AddBidiMarks](https://reference.aspose.com/words/fr/net/aspose.words.saving/txtsaveoptions/addbidimarks/) pour spécifier s'il convient d'ajouter des marques bidirectionnelles avant chaque exécution de BiDi lors de l'exportation au format texte brut. Aspose.Words insère le caractère Unicode "MARQUE DE DROITE À GAUCHE" (U+200F) avant chaque exécution bidirectionnelle dans le texte. Cette option correspond à l'option "Ajouter des marques bidirectionnelles" dans la boîte de dialogue Conversion de fichier MS Word lorsque vous exportez au format texte brut. Notez qu'il apparaît dans le dialogue uniquement si l'une des langues d'édition arabe ou hébraïque est ajoutée dans MS Word.

L'exemple de code suivant montre comment utiliser la propriété **AddBidiMarks**. La valeur par défaut de cette propriété est *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Reconnaître les éléments de la liste lors du chargement de TXT

Aspose.Words peut importer un élément de liste d'un fichier texte sous forme de numéros de liste ou de texte brut dans son modèle objet de document. La propriété [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/fr/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) permet de spécifier comment les éléments de liste numérotés sont reconnus lorsqu'un document est importé à partir du format texte brut:

* Si cette option est définie sur *true*, les espaces sont également utilisés comme délimiteurs de numéros de liste: l'algorithme de reconnaissance de liste pour la numérotation de style arabe (1., 1.1.2.) utilise à la fois les espaces et les symboles point ("").

* Si cette option est définie sur *false*, l'algorithme de reconnaissance des listes détecte les paragraphes de la liste lorsque les numéros de liste se terminent par un point, un crochet droit ou des puces (tels que "•", "*", "-" ou "o").

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Gérer les espaces de début et de fin pendant le chargement de TXT

Vous pouvez contrôler la manière de gérer les espaces de début et de fin lors du chargement du fichier TXT. Les espaces de début peuvent être coupés, conservés ou convertis en retrait et les espaces de fin peuvent être coupés ou conservés.

L'exemple de code suivant montre comment supprimer les espaces de début et de fin lors de l'importation d'un fichier TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Détecter la direction du texte du document

Aspose.Words fournit la propriété [DocumentDirection](https://reference.aspose.com/words/fr/net/aspose.words.loading/txtloadoptions/documentdirection/) dans la classe [TxtLoadOptions](https://reference.aspose.com/words/fr/net/aspose.words.loading/txtloadoptions/) pour détecter le sens du texte (RTL/LTR) dans le document. Cette propriété définit ou obtient les instructions de texte du document fournies dans l'énumération [DocumentDirection](https://reference.aspose.com/words/fr/net/aspose.words.loading/documentdirection/). La valeur par défaut est laissée à *right*.

L'exemple de code suivant montre comment détecter la direction du texte du document lors de l'importation du fichier TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Exporter l'en-tête et le pied de page dans la sortie TXT

Si vous souhaitez exporter l'en-tête et le pied de page dans le document TXT de sortie, vous pouvez utiliser la propriété [ExportHeadersFootersMode](https://reference.aspose.com/words/fr/net/aspose.words.saving/exportheadersfootersmode/). Cette propriété spécifie la manière dont les en-têtes et les pieds de page sont exportés au format texte brut.

L'exemple de code suivant montre comment exporter les en-têtes et les pieds de page au format texte brut:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Exporter l'indentation de la liste dans la sortie TXT

Aspose.Words a introduit la classe [TxtListIndentation](https://reference.aspose.com/words/fr/net/aspose.words.saving/txtlistindentation/) qui permet de spécifier comment les niveaux de liste sont indentés lors de l'exportation au format texte brut. Lorsque vous travaillez avec [TxtSaveOption](https://reference.aspose.com/words/fr/net/aspose.words.saving/txtsaveoptions/), la propriété [ListIndentation](https://reference.aspose.com/words/fr/net/aspose.words.saving/txtsaveoptions/listindentation/) est fournie pour spécifier le caractère à utiliser pour l'indentation des niveaux de liste et le nombre spécifiant le nombre de caractères à utiliser comme indentation pour un niveau de liste.

La valeur par défaut de la propriété caractère est "\0", indiquant qu'il n'y a pas d'indentation. Pour la propriété count, la valeur par défaut est 0, ce qui signifie aucune indentation.

### Utilisation du caractère de tabulation

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de caractères de tabulation:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Utiliser le caractère espace

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de caractères d'espace:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Utilisation de l'indentation par défaut

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de l'indentation par défaut:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
