---
title: Travailler avec le document texte dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec le document texte
linktitle: Travailler avec le document texte
description: "Traitement avancé de documents TXT, listes, BiDi, en-têtes/pieds, en utilisant Java."
type: docs
weight: 430
url: /fr/java/working-with-text-document/
---

Dans cet article, nous allons apprendre quelles options peuvent être utiles pour travailler avec un document texte via Aspose.Words. Veuillez noter que ce n'est pas une liste complète des options disponibles, mais seulement un exemple de travail avec certaines d'entre elles.

## Ajouter bidirectionnel Marques

Vous pouvez utiliser le [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) propriété à spécifier si ajouter des marques bidirectionnelles avant chaque exécution BiDi lors de l'exportation en format texte simple. Aspose.Words insère le caractère Unicode 'RIGHT-TO-LEFT MARK' (U+200F) avant chaque exécution bidirectionnelle en texte. Cette option correspond à l'option "Ajouter des marques bidirectionnelles" dans la boîte de dialogue de conversion de fichiers MS Word lorsque vous exportez vers un format texte simple. Notez qu'il n'apparaît en dialogue que si l'une des langues d'édition arabe ou hébraïque est ajoutée dans MS Word.

L'exemple de code suivant montre comment utiliser `TxtSaveOptions.AddBidiMarks` propriété. La valeur par défaut de cette propriété est *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Reconnaître les éléments de la liste pendant le chargement TXT

Aspose.Words peut importer l'élément de liste d'un fichier texte sous forme de numéros de liste ou de texte simple dans son modèle d'objet de document. Les [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) propriété permet de spécifier comment les éléments de liste numérotés sont reconnus lorsqu'un document est importé du format texte simple:

* Si cette option est définie à *true*, Les espaces blancs sont également utilisés comme délimiteurs de numéros de liste: l'algorithme de reconnaissance des listes pour la numérotation de style arabe (1., 1.1.2.) utilise à la fois des espaces blancs et des symboles point (".").
* Si cette option est définie à *false*, l'algorithme de reconnaissance des listes détecte les paragraphes de la liste, lorsque les numéros de liste se terminent par des symboles de point, de droite ou de balle (tels que "•", "*", "-" ou "o").

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Poignée Espaces de guidage et de piste pendant le chargement TXT

Vous pouvez contrôler la façon de gérer les espaces de tête et de piste pendant le chargement des fichiers TXT. Les espaces de tête peuvent être taillés, conservés ou convertis en tirets et les espaces de piste peuvent être taillés ou conservés.

L'exemple de code ci-dessous montre comment couper les espaces de tête et de piste lors de l'importation du fichier TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Détecter le document Direction du texte

Aspose.Words fournit [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) biens immobiliers [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) classe pour détecter la direction du texte (RTL / LTR) dans le document. Cette propriété définit ou obtient des instructions texte de document fournies dans [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) Énumération. La valeur par défaut est de gauche à droite.

L'exemple de code suivant montre comment détecter la direction du texte du document lors de l'importation du fichier TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Exporter l'en-tête et le pied de page dans le fichier TXT de sortie

Si vous voulez exporter l'en-tête et le pied de page dans le document TXT de sortie, vous pouvez utiliser le [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode) propriété. Cette propriété spécifie la manière dont les en-têtes et les pied de page sont exportés au format texte simple.

L'exemple de code suivant montre comment exporter des en-têtes et des pied de page au format texte simple:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Liste des exportations Indication dans la sortie TXT

Aspose.Words présenté [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) classe qui permet de spécifier comment les niveaux de liste sont indentés pendant l'exportation vers un format texte simple. Tout en travaillant avec [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), des [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) propriété est fournie pour spécifier le caractère à utiliser pour les niveaux de liste d'indentation et le nombre de caractères à utiliser comme indentation par niveau de liste.

La valeur par défaut de la propriété de caractère est '\0' indiquant qu'il n'y a pas d'indentation. Pour la propriété de compte, la valeur par défaut est 0, ce qui signifie qu'il n'y a pas d'indentation.

### Utilisation du caractère de l'onglet

L'exemple de code suivant montre comment exporter les niveaux de liste en utilisant des caractères d'onglet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Utilisation du caractère spatial

L'exemple de code suivant montre comment exporter les niveaux de liste en utilisant des caractères d'espace:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Utilisation de l'identification par défaut

L'exemple de code suivant montre comment exporter les niveaux de liste en utilisant l'indentation par défaut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
