---
title: Utilisez `DocumentBuilder` pour insérer des éléments de Document
second_title: Aspose.Words pour Java
articleTitle: Utilisez `DocumentBuilder` pour insérer des éléments de Document
linktitle: Utilisez `DocumentBuilder` pour insérer des éléments de Document
type: docs
description: "Insérez des éléments de document à l'aide du générateur de documents dans Java."
weight: 10
url: /fr/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Le [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) est utilisé pour modifier des documents. Cet article explique et décrit comment effectuer un certain nombre de tâches.

## Insertion d'une chaîne de texte

Transmettez simplement la chaîne de texte que vous devez insérer dans le document à la méthode [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)). La mise en forme du texte est déterminée par la propriété `Font`. Cet objet contient différents attributs de police (nom de la police, taille de la police, couleur, etc.). Certains attributs de police importants sont également représentés par des propriétés [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) pour vous permettre d'y accéder directement. Ce sont des propriétés booléennes [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) et [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Notez que la mise en forme des caractères que vous définissez s'appliquera à tout le texte inséré à partir de la position actuelle dans le document.

{{% /alert %}}

L'exemple de code suivant Insère du texte formaté en utilisant DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Insérer un paragraphe

DocumentBuilder.writeln insère également une chaîne de texte dans le document, mais en plus, il ajoute un saut de paragraphe. La mise en forme actuelle de la police est également spécifiée par DocumentBuilder.la propriété getFont et la mise en forme actuelle du paragraphe sont déterminées par DocumentBuilder.getParagraphFormat propriété.

L'exemple de code suivant montre comment insérer un paragraphe dans le document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Insérer une table

L'algorithme de base pour créer une table en utilisant `DocumentBuilder` est simple:

1. Démarrez la table en utilisant [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Insérez une cellule en utilisant [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Cela démarre automatiquement une nouvelle ligne. Si nécessaire, utilisez la propriété [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) pour spécifier le formatage des cellules.
1. Insérez le contenu de la cellule à l'aide des méthodes `DocumentBuilder`.
1. Répétez les étapes 2 et 3 jusqu'à ce que la rangée soit terminée.
1. Appelez [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) pour terminer la ligne en cours. Si nécessaire, utilisez la propriété [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) pour spécifier le formatage des lignes.
1. Répétez les étapes 2 à 5 jusqu'à ce que le tableau soit terminé.
1. Appelez [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) pour terminer la construction de la table. Les méthodes de création de table DocumentBuilder appropriées sont décrites ci-dessous.

### Démarrer une table

Appeler DocumentBuilder.startTable est la première étape de la construction d'une table. Il peut également être appelé à l'intérieur d'une cellule, dans ce cas, il démarre une table imbriquée. La méthode suivante à appeler est DocumentBuilder.insertCell.

### Insertion d'une cellule

Après avoir appelé DocumentBuilder.insertCell, une nouvelle cellule est créée et tout contenu que vous ajoutez à l'aide d'autres méthodes de la classe `DocumentBuilder` sera ajouté à la cellule actuelle. Pour démarrer une nouvelle cellule dans la même ligne, appelez DocumentBuilder.insertCell encore. Utilisez le DocumentBuilder.getCellFormat propriété pour spécifier le formatage des cellules. Il renvoie un objet [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) qui représente tout le formatage d'une cellule de tableau.

### Terminer une Ligne

Appelle DocumentBuilder.endRow pour terminer la ligne en cours. Si vous appelez DocumentBuilder.insertCell immédiatement après cela, la table continue sur une nouvelle ligne. Utilisez la propriété `DocumentBuilder.RowFormat` pour spécifier le formatage des lignes. Il renvoie un objet [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) qui représente tout le formatage d'une ligne de tableau.

### Terminer une Table

Appelle DocumentBuilder.endTable pour terminer la table actuelle. Cette méthode ne doit être appelée qu'une seule fois après DocumentBuilder.endRow a été appelé. Lorsqu'il est appelé, DocumentBuilder.endTable déplace le curseur hors de la cellule actuelle vers une position juste après le tableau. L'exemple suivant montre comment créer un tableau formaté contenant 2 lignes et 2 colonnes.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Insertion d'une pause

Si vous souhaitez démarrer explicitement une nouvelle ligne, paragraphe, colonne, section ou page, appelez DocumentBuilder.insertBreak. Transmettez à cette méthode le type de la rupture que vous devez insérer qui est représenté par l'énumération `BreakType`.
L'exemple de code suivant montre comment insérer des sauts de page dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Insertion d'une image

DocumentBuilder fournit plusieurs surcharges de la méthode [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) qui vous permet d'insérer une image en ligne ou flottante. Si l'image est un métafichier EMF ou WMF, elle sera insérée dans le document au format métafichier. Toutes les autres images seront stockées au format PNG. Le DocumentBuilder.insertImage la méthode peut utiliser des images provenant de différentes sources:

- À partir d'un fichier ou `URL` en passant un paramètre de chaîne
- À partir d'un flux en passant un paramètre `Stream`
- À partir d'un objet Image en passant un paramètre d'image
- À partir d'un tableau d'octets en passant un paramètre de tableau d'octets
- Et d'autres

Pour chacun des DocumentBuilder.insertImage méthodes ,il existe d'autres surcharges qui vous permettent d'insérer une image avec les options suivantes:

- En ligne ou flottant à une position spécifique
- Échelle de pourcentage ou taille personnalisée

De plus, le DocumentBuilder.la méthode insertImage renvoie un objet [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) qui vient d'être créé et inséré afin que vous puissiez modifier davantage les propriétés de la forme.

### Insertion d'une Image en ligne

Passez une seule chaîne représentant un fichier contenant l'image à DocumentBuilder.insertImage pour insérer l'image dans le document en tant que graphique en ligne. L'exemple de code suivant montre comment insérer une image en ligne à la position du curseur dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Insertion d'une image Flottante (Positionnée de manière absolue)

Cet exemple insère une image flottante à partir d'un fichier ou `URL` à une position et une taille spécifiées.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Insertion d'un signet

Pour insérer un signet dans le document, procédez comme suit:

1. Appelez [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) en lui passant le nom souhaité du signet.
1. Insérez le texte du signet à l'aide des méthodes `DocumentBuilder`.
1. Appelez [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) en lui passant le même nom que vous avez utilisé avec DocumentBuilder.startBookmark.

Les signets peuvent se chevaucher et s'étendre sur n'importe quelle plage. Pour créer un signet valide, vous devez appeler les deux DocumentBuilder.startBookmark et DocumentBuilder.endBookmark avec le même nom de signet.

Les signets mal formés ou les signets avec des noms en double seront ignorés lors de l'enregistrement du document.

L'exemple de code suivant montre comment insérer un signet dans un document à l'aide d'un générateur de documents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Insertion d'un champ

Les champs des documents Microsoft Word se composent d'un code de champ et d'un résultat de champ. Le code de champ est comme une formule et le résultat du champ est la valeur que la formule produit. Le code de champ peut également contenir des commutateurs de champ qui sont des instructions supplémentaires pour effectuer une action spécifique. Vous pouvez basculer entre l'affichage des codes de champ et des résultats dans votre document dans Microsoft Word à l'aide du raccourci clavier Alt+F9. Les codes de champ apparaissent entre accolades (`{ }`).Utilisez [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) pour créer des champs dans le document. Vous devez spécifier un type de champ, un code de champ et une valeur de champ. Si vous n'êtes pas sûr de la syntaxe du code de champ particulier, créez d'abord le champ dans Microsoft Word et basculez pour voir son code de champ.
L'exemple de code suivant insère un champ de fusion dans un document à l'aide de DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Insertion d'un champ `Form`

Les champs de formulaire sont un cas particulier de champs Word qui permet une "interaction" avec l'utilisateur. Les champs de formulaire dans Microsoft Word incluent textbox, Combobox et checkbox.DocumentBuilder fournit des méthodes spéciales pour insérer chaque type de champ de formulaire dans le document: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) et [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Notez que si vous spécifiez un nom pour le champ de formulaire, un signet est automatiquement créé avec le même nom.

### Insertion d'une saisie de texte

DocumentBuilder.insertTextInput pour insérer une zone de texte dans le document. L'exemple de code suivant montre comment insérer un champ de formulaire de saisie de texte dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Insertion d'un `CheckBox`

Appelle DocumentBuilder.insertCheckBox pour insérer un checkbox dans le document. L'exemple de code suivant montre comment insérer un champ de formulaire checkbox dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insertion d'une zone de liste déroulante

Appelle DocumentBuilder.insertComboBox pour insérer une liste déroulante dans le document. L'exemple de code suivant montre comment insérer un champ de formulaire de liste déroulante dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Insertion des paramètres régionaux au niveau du champ

Les clients peuvent désormais spécifier les paramètres régionaux au niveau du champ et obtenir un meilleur contrôle. Les identifiants de paramètres régionaux peuvent être associés à chaque champ à l'intérieur du DocumentBuilder. Les exemples ci-dessous illustrent comment utiliser cette option.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Insertion de HTML

Vous pouvez facilement insérer une chaîne HTML contenant un fragment HTML ou un document HTML entier dans le document Word. Passez simplement cette chaîne au DocumentBuilder.insertHtml méthode. L'une des implémentations utiles de la méthode consiste à stocker une chaîne HTML dans une base de données et à l'insérer dans le document pendant Mail Merge pour ajouter le contenu formaté au lieu de le créer à l'aide de diverses méthodes du générateur de documents. L'exemple de code suivant montre les insertions HTML dans un document à l'aide de DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Insertion d'un Lien hypertexte

Utilisez DocumentBuilder.insertHyperlink pour insérer un lien hypertexte dans le document. Cette méthode accepte trois paramètres: le texte du lien à afficher dans le document, la destination du lien (URL ou le nom d'un signet dans le document) et un paramètre booléen qui doit être vrai si `URL` est le nom d'un signet dans le document.DocumentBuilder.insertHyperlink appelle en interne DocumentBuilder.insertField. La méthode ajoute toujours des apostrophes au début et à la fin de URL. Notez que vous devez spécifier explicitement la mise en forme de la police pour le texte d'affichage du lien hypertexte à l'aide de la propriété `Font`. L'exemple de code suivant insère un lien hypertexte dans un document en utilisant DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Insertion d'une Table des matières

Vous pouvez insérer un champ `TOC` (table des matières) dans le document à la position actuelle en appelant la méthode [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String). Le DocumentBuilder.la méthode insertTableOfContents insérera uniquement un champ `TOC` dans le document. Afin de construire la table des matières et de les afficher en fonction des numéros de page, la méthode both **Document.UpdateFields**doit être appelée après l'insertion du champ. L'exemple de code suivant montre comment insérer un champ de Table des matières dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Insertion d'un objet Ole

Si vous voulez Ole Appel d'objet [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Définir le Nom et l'extension du fichier lors de l'insertion d'un objet Ole

Le package OLE est un moyen hérité et "non documenté" de stocker des objets incorporés si le gestionnaire OLE est inconnu. Les premières versions Windows telles que Windows 3.1, 95 et 98 avaient une application Packager.exe qui pouvait être utilisée pour intégrer n'importe quel type de données dans le document. Maintenant, cette application est exclue de Windows mais MS Word et d'autres applications l'utilisent toujours pour incorporer des données si le gestionnaire OLE est manquant ou inconnu. la classe OlePackage permet d'accéder aux propriétés OLE Package.L'exemple de code suivant montre comment définir le nom de fichier, l'extension et le nom d'affichage pour OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Accéder aux données brutes de OLE Objets

L'exemple de code suivant montre comment obtenir des données brutes d'objet OLE à l'aide de la méthode `OleFormat.GetRawData` ().

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Insérer une règle horizontale dans le Document

L'exemple de code suivant montre comment insérer une forme de règle horizontale dans un document à l'aide de la méthode `DocumentBuilder.InsertHorizontalRule`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Travailler avec des Formes

### Insertion de formes en ligne et flottantes

Vous pouvez insérer une forme en ligne avec un type et une taille spécifiés et une forme flottante avec la position, la taille et le type d'habillage de texte spécifiés dans un document à l'aide de la méthode `DocumentBuilder.InsertShape`. La méthode `DocumentBuilder.InsertShape` permet d'insérer DML forme dans le modèle de document. Le document doit être enregistré dans le format, qui prend en charge les formes DML, sinon ces nœuds seront convertis en forme VML, lors de l'enregistrement du document. L'exemple de code suivant montre comment insérer ces types de formes dans le document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Créer un Rectangle d'angle Coupé

Vous pouvez créer un rectangle d'angle en utilisant Aspose.Words. Les types de forme sont SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, et DiagonalCornersRounded. La forme DML est créée à l'aide de la méthode `DocumentBuilder.InsertShape` avec ces types de forme. Ces types ne peuvent pas être utilisés pour créer VML formes. Tenter de créer une forme en utilisant le constructeur public de la classe "Shape" déclenche l'exception" NotSupportedException". L'exemple de code suivant montre comment insérer ces types de formes dans le document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importer des formes avec Math XML en tant que formes dans DOM

Vous pouvez utiliser la propriété `LoadOptions.ConvertShapeToOfficeMath` pour convertir les formes avec EquationXML en objets mathématiques Office. La valeur par défaut de cette propriété correspond au comportement du mot MS, c'est-à-dire que les formes avec l'équation XML ne sont pas converties en objets mathématiques Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
