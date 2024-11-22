---
title: Utilisez `DocumentBuilder` pour insérer des éléments de Document
second_title: Aspose.Words pour C++
articleTitle: Utilisez `DocumentBuilder` pour insérer des éléments de Document
linktitle: Utilisez `DocumentBuilder` pour insérer des éléments de Document
type: docs
description: "Insérez des éléments de document à l'aide du générateur de documents en C++."
weight: 80
url: /fr/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Le `DocumentBuilder` est utilisé pour modifier des documents. Cet article explique et décrit comment effectuer un certain nombre de tâches:

## Insertion d'une chaîne de texte

Transmettez simplement la chaîne de texte que vous devez insérer dans le document à la méthode `DocumentBuilder.Write`. La mise en forme du texte est déterminée par la propriété `Font`. Cet objet contient différents attributs de police (nom de la police, taille de la police, couleur, etc.). Certains attributs de police importants sont également représentés par des propriétés DocumentBuilder pour vous permettre d'y accéder directement. Ce sont des propriétés booléennes `Font.Bold`, `Font.Italic` et `Font.Underline`.

Notez que la mise en forme des caractères que vous définissez s'appliquera à tout le texte inséré à partir de la position actuelle dans le document.

L'exemple ci-dessous Insère du texte formaté en utilisant DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Insérer un paragraphe

 `DocumentBuilder.Writeln` insère également une chaîne de texte dans le document, mais en plus, il ajoute un saut de paragraphe. La mise en forme actuelle de la police est également spécifiée par la propriété `DocumentBuilder.Font` et la mise en forme actuelle du paragraphe est déterminée par la propriété `DocumentBuilder.ParagraphFormat`. L'exemple ci-dessous montre comment insérer un paragraphe dans le document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Insérer une table

L'algorithme de base pour créer une table en utilisant DocumentBuilder est simple:

1. Démarrez la table en utilisant `DocumentBuilder.StartTable`.
1. Insérez une cellule en utilisant `DocumentBuilder.InsertCell`. Cela démarre automatiquement une nouvelle ligne. Si nécessaire, utilisez la propriété `DocumentBuilder.CellFormat` pour spécifier le formatage des cellules.
1. Insérez le contenu de la cellule à l'aide des méthodes `DocumentBuilder`.
1. Répétez les étapes 2 et 3 jusqu'à ce que la ligne soit terminée.
1. Appelez `DocumentBuilder.EndRow` pour terminer la ligne en cours. Si nécessaire, utilisez la propriété `DocumentBuilder.RowFormat` pour spécifier le formatage des lignes.
1. Répétez les étapes 2 - 5 jusqu'à ce que le tableau soit terminé.
1. Appelez `DocumentBuilder.EndTable` pour terminer la construction de la table. Les méthodes de création de table DocumentBuilder appropriées sont décrites ci-dessous.

### Démarrer une table

Appeler `DocumentBuilder.StartTable` est la première étape de la construction d'une table. Il peut également être appelé à l'intérieur d'une cellule, auquel cas il démarre une table imbriquée. La méthode suivante à appeler est `DocumentBuilder.InsertCell`.

### Insertion d'une cellule

Après avoir appelé `DocumentBuilder->InsertCell`, une nouvelle cellule est créée et tout contenu que vous ajoutez à l'aide d'autres méthodes de la classe `DocumentBuilder` sera ajouté à la cellule actuelle. Pour démarrer une nouvelle cellule dans la même ligne, appelez à nouveau `DocumentBuilder->InsertCell`. Utilisez la propriété `DocumentBuilder.CellFormat` pour spécifier le formatage des cellules. Il renvoie un objet `CellFormat` qui représente tout le formatage d'une cellule de tableau.

### Terminer une Ligne

Appelez `DocumentBuilder.EndRow` pour terminer la ligne en cours. Si vous appelez `DocumentBuilder->InsertCell` immédiatement après cela, la table continue sur une nouvelle ligne.

Utilisez la propriété `DocumentBuilder.RowFormat` pour spécifier le formatage des lignes. Il renvoie un objet `RowFormat` qui représente tout le formatage d'une ligne de tableau.

### Terminer une Table

Appelez `DocumentBuilder.EndTable` pour terminer la table actuelle. Cette méthode ne doit être appelée qu'une seule fois après l'appel de `DocumentBuilder->EndRow`. Lorsqu'il est appelé, `DocumentBuilder.EndTable` déplace le curseur hors de la cellule actuelle vers une position juste après le tableau. L'exemple suivant montre comment créer un tableau formaté contenant 2 lignes et 2 colonnes.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Insertion d'une pause

Si vous souhaitez démarrer explicitement une nouvelle ligne, paragraphe, colonne, section ou page, appelez `DocumentBuilder.InsertBreak`. Transmettez à cette méthode le type de la rupture que vous devez insérer qui est représenté par l'énumération `BreakType`. L'exemple ci-dessous montre comment insérer des sauts de page dans un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Insertion d'une image

DocumentBuilder fournit plusieurs surcharges de la méthode `DocumentBuilder->InsertImage` qui vous permet d'insérer une image en ligne ou flottante. Si l'image est un métafichier EMF ou WMF, elle sera insérée dans le document au format métafichier. Toutes les autres images seront stockées au format PNG. La méthode `DocumentBuilder->InsertImage` peut utiliser des images provenant de différentes sources:

- À partir d'un fichier ou `URL` en passant un paramètre de chaîne `DocumentBuilder->InsertImage`.
- À partir d'un flux en passant un paramètre `Stream` `DocumentBuilder->InsertImage`.
- À partir d'un objet Image en passant un paramètre d'image `DocumentBuilder->InsertImage`.
- À partir d'un tableau d'octets en passant un paramètre de tableau d'octets `DocumentBuilder.InsertImage`.Pour chacune des méthodes `DocumentBuilder->InsertImage`, il existe d'autres surcharges qui vous permettent d'insérer une image avec les options suivantes:
- En ligne ou flottant à une position spécifique, par exemple, `DocumentBuilder->InsertImage`.
- Échelle de pourcentage ou taille personnalisée, par exemple, `DocumentBuilder.InsertImage`. De plus, la méthode `DocumentBuilder->InsertImage` renvoie un objet `Shape` qui vient d'être créé et inséré afin que vous puissiez modifier davantage les propriétés de la forme.

### Insertion d'une Image en ligne

Transmettez une seule chaîne représentant un fichier contenant l'image à `DocumentBuilder->InsertImage` pour insérer l'image dans le document en tant que graphique en ligne. L'exemple ci-dessous montre comment insérer une image en ligne à la position du curseur dans un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Insertion d'une image Flottante (Positionnée de manière absolue)

Cet exemple insère une image flottante à partir d'un fichier ou `URL` à une position et une taille spécifiées.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Insertion d'un signet

Pour insérer un signet dans le document, procédez comme suit:

1. Appelez `DocumentBuilder->StartBookmark` en lui passant le nom souhaité du signet.
1. Insérez le texte du signet à l'aide des méthodes DocumentBuilder.
1. Appelez `DocumentBuilder.EndBookmark` en lui passant le même nom que vous avez utilisé avec **DocumentBuilder->StartBookmark**.
1. Les signets peuvent se chevaucher et s'étendre sur n'importe quelle plage. Pour créer un signet valide, vous devez appeler à la fois `DocumentBuilder->StartBookmark` et `DocumentBuilder->EndBookmark` avec le même nom de signet.

{{% alert color="primary" %}}

Les signets mal formés ou les signets avec des noms en double seront ignorés lors de l'enregistrement du document.

{{% /alert %}}

L'exemple ci-dessous montre comment insérer un signet dans un document à l'aide d'un générateur de documents.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Insertion d'un champ `Form`

Les champs de formulaire sont un cas particulier de champs Word qui permet une "interaction" avec l'utilisateur. Les champs de formulaire dans Microsoft Word incluent une zone de texte, une zone de liste déroulante et une case à cocher.DocumentBuilder fournit des méthodes spéciales pour insérer chaque type de champ de formulaire dans le document: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` et `DocumentBuilder.InsertComboBox`. Notez que si vous spécifiez un nom pour le champ de formulaire, un signet est automatiquement créé avec le même nom.

### Insertion d'une saisie de texte

 `DocumentBuilder.InsertTextInput` pour insérer une zone de texte dans le document. L'exemple ci-dessous montre comment insérer un champ de formulaire de saisie de texte dans un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Insertion d'une case à cocher

Appelez `DocumentBuilder.InsertCheckBox` pour insérer une case à cocher dans le document. L'exemple ci-dessous montre comment insérer un champ de formulaire de case à cocher dans un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Insertion d'une zone de liste déroulante

Appelez `DocumentBuilder.InsertComboBox` pour insérer une liste déroulante dans le document. L'exemple ci-dessous montre comment insérer un champ de formulaire de liste déroulante dans un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Insertion des paramètres régionaux au niveau du champ

Les clients peuvent désormais spécifier les paramètres régionaux au niveau du champ et obtenir un meilleur contrôle. Les identifiants de paramètres régionaux peuvent être associés à chaque champ à l'intérieur du DocumentBuilder. Les exemples ci-dessous illustrent comment utiliser cette option.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Insertion d'un Lien hypertexte

Utilisez `DocumentBuilder.InsertHyperlink` pour insérer un lien hypertexte dans le document. Cette méthode accepte trois paramètres: le texte du lien à afficher dans le document, la destination du lien (URL ou nom d'un signet dans le document) et un paramètre booléen qui doit être vrai si `URL` est le nom d'un signet dans le document.DocumentBuilder.InsertHyperlink appelle en interne `DocumentBuilder.InsertField`.La méthode ajoute toujours des apostrophes au début et à la fin de l'URL. Notez que vous devez spécifier explicitement la mise en forme de la police pour le texte d'affichage du lien hypertexte à l'aide de la propriété `Font`. L'exemple ci-dessous insère un lien hypertexte dans un document en utilisant DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Insertion d'un Objet Ole

Si vous voulez un objet Ole, appelez `DocumentBuilder.InsertOleObject`. Passez à cette méthode le `ProgId` explicitement avec d'autres paramètres. L'exemple ci-dessous montre comment insérer un objet Ole dans un document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Définir le Nom et l'extension du fichier lors de l'insertion d'un objet Ole

Le package OLE est un moyen hérité et "non documenté" de stocker un objet incorporé si le gestionnaire OLE est inconnu. Les premières versions Windows telles que Windows 3.1, 95 et 98 avaient un Packager.application exe qui pourrait être utilisée pour intégrer tout type de données dans le document. Maintenant, cette application est exclue de Windows mais MS Word et d'autres applications l'utilisent toujours pour incorporer des données si le gestionnaire OLE est manquant ou inconnu. la classe OlePackage permet d'accéder aux propriétés du package OLE. L'exemple ci-dessous montre comment définir le nom de fichier, l'extension et le nom d'affichage du package OLE.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Insertion de code HTML

Vous pouvez facilement insérer une chaîne HTML contenant un fragment HTML ou un document HTML entier dans le document Word. Passez simplement cette chaîne à la méthode `DocumentBuilder->InsertHtml`. L'une des implémentations utiles de la méthode consiste à stocker une chaîne HTML dans une base de données et à l'insérer dans le document pendant Mail Merge pour ajouter le contenu formaté au lieu de le créer à l'aide de diverses méthodes du générateur de documents. L'exemple ci-dessous montre les insertions HTML dans un document à l'aide de DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Insérer une règle horizontale dans le Document

L'exemple Below code montre comment insérer une forme de règle horizontale dans un document à l'aide de la méthode `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
