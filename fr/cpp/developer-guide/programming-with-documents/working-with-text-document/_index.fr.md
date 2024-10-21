---
title: Travailler avec un document texte en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec un Document Texte
linktitle: Travailler avec un Document Texte
description: "Traitement avancé des documents TXT, listes, BiDi, en-têtes / pied de page, en utilisant C++."
type: docs
weight: 430
url: /fr/cpp/working-with-text-document/
---

Dans cet article, nous allons apprendre quelles options peuvent être utiles pour travailler avec un document texte via Aspose.Words. Veuillez noter qu'il ne s'agit pas d'une liste complète des options disponibles, mais seulement d'un exemple de travail avec certaines d'entre elles.

## Ajoutez des Marques Bidirectionnelles

Vous pouvez utiliser la propriété [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) pour spécifier s'il faut ajouter des repères bidirectionnels avant chaque exécution BiDi lors de l'exportation au format texte brut. Aspose.Words insère le caractère Unicode "MARQUE DE DROITE À GAUCHE" (U + 200F) avant chaque exécution bidirectionnelle dans le texte. Cette option correspond à l'option" Ajouter des repères bidirectionnels " dans la boîte de dialogue de conversion de fichier MS Word lorsque vous exportez au format Texte brut. Notez qu'il n'apparaît dans le dialogue que si l'une des langues d'édition arabe ou hébraïque est ajoutée dans MS Word.

L'exemple de code suivant montre comment utiliser la propriété **AddBidiMarks**. La valeur par défaut de cette propriété est *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Reconnaître Les Éléments De La Liste Lors Du Chargement De TXT

Aspose.Words peut importer un élément de liste d'un fichier texte sous forme de numéros de liste ou de texte brut dans son modèle d'objet de document. La propriété [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) permet de spécifier comment les éléments de liste numérotés sont reconnus lorsqu'un document est importé à partir du format texte brut:

* Si cette option est définie sur *true*, les espaces sont également utilisés comme délimiteurs de numéros de liste: algorithme de reconnaissance de liste pour la numérotation de style arabe (1., 1.1.2.) utilise à la fois des espaces et des symboles de points (".").
* Si cette option est définie sur *false*, l'algorithme de reconnaissance des listes détecte les paragraphes de liste, lorsque les numéros de liste se terminent par un point, un crochet droit ou des symboles à puces (tels que "•", "*", "-" ou "o").

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Comment gérer les espaces de début et de fin Lors du chargement de TXT

Vous pouvez contrôler la manière de gérer les espaces de début et de fin lors du chargement du fichier TXT. Les espaces de début pourraient être rognés, préservés ou convertis en retrait et les espaces de fin pourraient être rognés ou préservés.

L'exemple de code suivant montre comment couper les espaces de début et de fin lors de l'importation d'un fichier TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Exporter l'en-tête et le pied de page dans la sortie TXT

Si vous souhaitez exporter l'en-tête et le pied de page dans le document TXT de sortie, vous pouvez utiliser la propriété [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Cette propriété spécifie la manière dont les en-têtes et les pieds de page sont exportés au format texte brut.

L'exemple de code suivant montre comment exporter les en-têtes et les pieds de page au format texte brut:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Exporter l'indentation de la liste dans la sortie TXT

Aspose.Words a introduit la classe [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) qui permet de spécifier comment les niveaux de liste sont mis en retrait lors de l'exportation vers un format de texte brut. Lorsque vous travaillez avec [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), la propriété [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) est fournie pour spécifier le caractère à utiliser pour l'indentation des niveaux de liste et count pour spécifier le nombre de caractères à utiliser comme indentation par niveau de liste.

La valeur par défaut de la propriété character est '\0 ' indiquant qu'il n'y a pas d'indentation. Pour la propriété count, la valeur par défaut est 0, ce qui signifie qu'il n'y a pas d'indentation.

### Utilisation Du Caractère de Tabulation

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de caractères de tabulation:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Utilisation Du Caractère Espace

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de caractères d'espacement:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Utilisation De L'Indentation Par Défaut

L'exemple de code suivant montre comment exporter les niveaux de liste à l'aide de l'indentation par défaut:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
