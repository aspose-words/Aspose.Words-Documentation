---
title: Utilisation d'un document texte dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec un Document Texte
linktitle: Travailler avec un Document Texte
description: "Traitement avancé des documents TXT, listes, BiDi, en-têtes / pied de page, en utilisant Java."
type: docs
weight: 430
url: /fr/java/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Dans cet article, nous allons apprendre quelles options peuvent être utiles pour travailler avec un document texte via Aspose.Words. Veuillez noter qu'il ne s'agit pas d'une liste complète des options disponibles, mais seulement d'un exemple de travail avec certaines d'entre elles.

## Ajoutez des Marques Bidirectionnelles

Vous pouvez utiliser la propriété [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) pour spécifier s'il faut ajouter des repères bidirectionnels avant chaque exécution BiDi lors de l'exportation au format texte brut. Aspose.Words insère un Caractère Unicode'RIGHT-TO-LEFT MARK' (U + 200F) avant chaque exécution bidirectionnelle dans le texte. Cette option correspond à l'option" Ajouter des repères bidirectionnels " dans la boîte de dialogue de conversion de fichier Word MS lorsque vous exportez au format Texte brut. Notez qu'il n'apparaît dans la boîte de dialogue que si l'une des langues d'édition arabe ou hébraïque est ajoutée dans MS Word.

L'exemple de code suivant montre comment utiliser la propriété `TxtSaveOptions.AddBidiMarks`. La valeur par défaut de cette propriété est *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Reconnaître Les Éléments De La Liste Lors Du Chargement TXT

Aspose.Words peut importer un élément de liste d'un fichier texte sous forme de numéros de liste ou de texte brut dans son modèle d'objet de document. La propriété [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) permet de spécifier comment les éléments de liste numérotés sont reconnus lorsqu'un document est importé à partir du format texte brut:

* Si cette option est définie sur *true*, les espaces sont également utilisés comme délimiteurs de numéros de liste: algorithme de reconnaissance de liste pour la numérotation de style arabe (1., 1.1.2.) utilise à la fois des espaces et des symboles de points (".").
* Si cette option est définie sur *false*, l'algorithme de reconnaissance des listes détecte les paragraphes de liste, lorsque les numéros de liste se terminent par un point, un crochet droit ou des symboles à puces (tels que "•", "*", "-" ou "o").

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Gérer les espaces de début et de fin lors du chargement TXT

Vous pouvez contrôler la manière de gérer les espaces de début et de fin lors du chargement des fichiers TXT. Les espaces de début pourraient être rognés, préservés ou convertis en retrait et les espaces de fin pourraient être rognés ou préservés.

L'exemple de code ci-dessous montre comment couper les espaces de début et de fin lors de l'importation du fichier TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Détecter La Direction Du Texte Du Document

Aspose.Words fournit la propriété [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) dans la classe [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) pour détecter la direction du texte (RTL / LTR) dans le document. Cette propriété définit ou obtient les directions de texte du document fournies dans l'énumération [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/). La valeur par défaut est de gauche à droite.

L'exemple de code suivant montre comment détecter la direction du texte du document lors de l'importation du fichier TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Exporter l'en-tête et le pied de page dans le fichier de sortie TXT

Si vous souhaitez exporter l'en-tête et le pied de page dans le document de sortie TXT, vous pouvez utiliser la propriété [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode). Cette propriété spécifie la manière dont les en-têtes et les pieds de page sont exportés au format texte brut.

L'exemple de code suivant montre comment exporter les en-têtes et les pieds de page au format texte brut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Exporter l'indentation de la liste dans la sortie TXT

Aspose.Words introduction de la classe [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) qui permet de spécifier comment les niveaux de liste sont mis en retrait lors de l'exportation vers un format de texte brut. Lorsque vous travaillez avec [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), la propriété [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) est fournie pour spécifier le caractère à utiliser pour l'indentation des niveaux de liste et count pour spécifier le nombre de caractères à utiliser comme indentation par niveau de liste.

La valeur par défaut de la propriété caractère est '\0' indiquant qu'il n'y a pas d'indentation. Pour la propriété count, la valeur par défaut est 0, ce qui signifie qu'il n'y a pas d'indentation.

### Utilisation Du Caractère de Tabulation

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de caractères de tabulation:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Utilisation Du Caractère Espace

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de caractères d'espacement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Utilisation De L'Indentation Par Défaut

L'exemple de code suivant montre comment exporter les niveaux de liste à l'aide de l'indentation par défaut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
