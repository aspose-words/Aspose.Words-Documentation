---
title: Utilisation `DocumentBuilder` pour insérer des éléments de document
second_title: Aspose.Words pour Java
articleTitle: Utilisation `DocumentBuilder` pour insérer des éléments de document
linktitle: Utilisation `DocumentBuilder` pour insérer des éléments de document
type: docs
description: "Insérer des éléments de document en utilisant le constructeur de document dans Java."
weight: 10
url: /fr/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Les [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) est utilisé pour modifier les documents. Cet article explique et décrit comment accomplir un certain nombre de tâches.

## Insérer une chaîne de texte

Passez simplement la chaîne de texte que vous devez insérer dans le document [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) méthode. Le formatage du texte est déterminé par le `Font` propriété. Cet objet contient différents attributs de police (nom, taille de police, couleur, etc.). Certains attributs de police importants sont également représentés par [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) propriétés pour vous permettre d'y accéder directement. Ce sont des propriétés booléennes [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), et [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Notez que le formatage des caractères que vous définissez s'appliquera à tout le texte inséré depuis la position actuelle dans le document à partir.

{{% /alert %}}

L'exemple de code suivant insère du texte formaté en utilisant DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Insérer un paragraphe

DocumentBuilder.writeln insère aussi une chaîne de texte dans le document, mais en plus, il ajoute une pause de paragraphe. Le formatage actuel des polices est également spécifié par DocumentBuilder. obtenir La propriété de police et le formatage actuel des paragraphes sont déterminés par la propriété DocumentBuilder.getParagraphFormat

L'exemple de code suivant montre comment insérer un paragraphe dans le document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Insérer un tableau

L'algorithme de base pour créer une table en utilisant `DocumentBuilder` est simple:

1. Démarrer la table en utilisant [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Insérer une cellule en utilisant [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Cela démarre automatiquement une nouvelle ligne. Si nécessaire, utiliser [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) propriété pour spécifier le formatage des cellules.
1. Insérer le contenu de la cellule en utilisant la `DocumentBuilder` méthodes.
1. Répétez les étapes 2 et 3 jusqu'à ce que la ligne soit terminée.
1. Appeler [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) pour terminer la ligne actuelle. Si nécessaire, utiliser [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) propriété pour spécifier le formatage de la ligne.
1. Répétez les étapes 2 à 5 jusqu'à ce que le tableau soit terminé.
1. Appeler [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) pour terminer le bâtiment de la table. Les méthodes appropriées de création de tableaux DocumentBuilder sont décrites ci-dessous.

### Démarrer une table

Appel à DocumentBuilder.start La table est la première étape de la construction d'une table. Il peut également être appelé à l'intérieur d'une cellule, dans ce cas, il commence une table imbriquée. La méthode suivante à appeler est DocumentBuilder.insertCell.

### Insérer une cellule

Après avoir appelé DocumentBuilder. insérer Cell, une nouvelle cellule est créée et tout contenu que vous ajoutez en utilisant d'autres méthodes de la `DocumentBuilder` la classe sera ajoutée à la cellule actuelle. Pour démarrer une nouvelle cellule dans la même ligne, appelez DocumentBuilder. insérer Encore une cellule. Utiliser DocumentBuilder.getCell Formater la propriété pour spécifier le formatage des cellules. Il retourne un [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) objet qui représente tout formatage pour une cellule de table.

### Terminer une ligne

Appelez DocumentBuilder.end Ligne pour terminer la ligne actuelle. Si vous appelez DocumentBuilder. insérer Cellule immédiatement après, puis la table continue sur une nouvelle ligne. Utiliser `DocumentBuilder.RowFormat` propriété pour spécifier le formatage de la ligne. Il retourne un [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objet qui représente tous les formats pour une ligne de table.

### Fin d'un tableau

Appelez DocumentBuilder.end Tableau pour terminer le tableau actuel. Cette méthode ne doit être appelée qu'une seule fois après DocumentBuilder. EndRow a été appelé. Lorsqu'il est appelé, DocumentBuilder.end La table déplace le curseur hors de la cellule actuelle vers une position juste après la table. L'exemple suivant montre comment construire une table formatée qui contient 2 lignes et 2 colonnes.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Insérer une pause

Si vous voulez lancer explicitement une nouvelle ligne, paragraphe, colonne, section ou page, appelez DocumentBuilder. insertBreak. Passez à cette méthode le type de la pause que vous devez insérer qui est représenté par le `BreakType` Énumération
L'exemple de code suivant montre comment insérer des casses de page dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Insérer une image

DocumentBuilder fournit plusieurs surcharges du [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) méthode qui vous permet d'insérer une image en ligne ou flottante. Si l'image est un métafichier EMF ou WMF, elle sera insérée dans le document au format métafichier. Toutes les autres images seront stockées au format PNG. Le documentBuilder.insert La méthode d'image peut utiliser des images de différentes sources:

- D'un fichier ou `URL` en passant un paramètre chaîne
- D'un ruisseau en passant `Stream` paramètre
- A partir d'un objet Image en passant un paramètre Image
- Depuis un tableau d'octets en passant un paramètre de tableau d'octets
- Oui. Et d'autres

Pour chaque document Builder. insérer Méthodes d'image, il y a d'autres surcharges qui vous permettent d'insérer une image avec les options suivantes:

- En ligne ou flottant à une position donnée
- Échelle de pourcentage ou taille personnalisée

En outre, le document Builder.insert Méthode image retourne un [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objet qui vient d'être créé et inséré pour que vous puissiez modifier davantage les propriétés de la forme.

### Insérer une image en ligne

Passez une seule chaîne représentant un fichier qui contient l'image à DocumentBuilder. insérer Image pour insérer l'image dans le document comme graphique en ligne. L'exemple de code suivant montre comment insérer une image en ligne à la position du curseur dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Insérer une image flottante (absoluement positionnée)

Cet exemple insère une image flottante depuis un fichier ou `URL` à une position et une taille spécifiées.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Insérer un signet

Pour insérer un signet dans le document, vous devez faire ce qui suit:

1. Appeler [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) en lui passant le nom souhaité du signet.
1. Insérer le texte du signet en utilisant `DocumentBuilder` méthodes.
1. Appeler [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) en lui passant le même nom que vous avez utilisé avec DocumentBuilder.startBookmark.

Les signets peuvent se chevaucher et s'étendre n'importe quelle plage. Pour créer un signet valide, vous devez appeler à la fois DocumentBuilder.startBookmark et DocumentBuilder.endBookmark avec le même nom de signet.

Les signets mal formés ou les signets avec des noms dupliqués seront ignorés lors de la sauvegarde du document.

L'exemple de code suivant montre comment insérer un signet dans un document en utilisant un constructeur de documents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Insérer un champ

Champs Microsoft Word Les documents comprennent un code de champ et un résultat de champ. Le code de champ est comme une formule et le résultat de champ est la valeur que la formule produit. Le code de champ peut également contenir des commutateurs de champ qui sont des instructions supplémentaires pour effectuer une action spécifique. Vous pouvez basculer entre l'affichage des codes de champ et les résultats dans votre document dans Microsoft Word en utilisant le raccourci clavier Alt+F9. Les codes de champ apparaissent entre les accoudoirs bouclés ( { } ).Utilisation [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) créer des champs dans le document. Vous devez spécifier un type de champ, un code de champ et une valeur de champ. Si vous n'êtes pas sûr de la syntaxe particulière du code de champ, créez le champ dans Microsoft Word d'abord et passer pour voir son code de champ
L'exemple de code suivant insère un champ de fusion dans un document en utilisant DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Insérer une `Form` Champ

Les champs de formulaire sont un cas particulier de champs Word qui permet "l'interaction" avec l'utilisateur. Formulaire des champs dans Microsoft Word inclure la boîte à texte, Combobox et la case à cocher. DocumentBuilder fournit des méthodes spéciales pour insérer chaque type de champ de formulaire dans le document: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), et [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Notez que si vous spécifiez un nom pour le champ formulaire, un signet est automatiquement créé avec le même nom.

### Insérer une entrée texte

DocumentBuilder.insertTextInput pour insérer une boîte de texte dans le document. L'exemple de code suivant montre comment insérer un champ de formulaire d'entrée de texte dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Insérer une `CheckBox`

Appelez DocumentBuilder.insert Cochez la case pour insérer une case dans le document. L'exemple de code suivant montre comment insérer un champ de formulaire à cocher dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insérer une boîte de Combo

Appelez DocumentBuilder.insertComboBox insérer une boîte combo dans le document. L'exemple de code suivant montre comment insérer un champ de formulaire de boîte combo dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Insérer un local au niveau du terrain

Les clients peuvent spécifier Localiser au niveau du terrain maintenant et peut obtenir un meilleur contrôle. Locale Les ID peuvent être associés à chaque champ à l'intérieur du DocumentBuilder. Les exemples ci-dessous illustrent comment utiliser cette option.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Insérer HTML

Vous pouvez facilement insérer une chaîne HTML qui contient un fragment HTML ou un document HTML entier dans le document Word. Passez cette chaîne au DocumentBuilder. insérer Méthode Html. Une des implémentations utiles de la méthode est de stocker une chaîne HTML dans une base de données et de l'insérer dans le document pendant Mail Merge pour obtenir le contenu formaté ajouté au lieu de le construire en utilisant différentes méthodes du constructeur de documents. L'exemple de code suivant montre les insertions HTML dans un document en utilisant DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Insérer un hyperlien

Utilisez DocumentBuilder.insertHyperlink pour insérer un hyperlien dans le document. Cette méthode accepte trois paramètres: le texte du lien à afficher dans le document, la destination du lien (URL ou un nom d'un signet dans le document), et un paramètre booléen qui devrait être true si les `URL` est un nom de signet dans le document. DocumentBuilder.insertHyperlink appelle en interne DocumentBuilder.insertField. La méthode ajoute toujours des apostrophes au début et à la fin de l'URL. Notez que vous devez spécifier le formatage de police pour l'affichage du texte de l'hyperlien explicitement en utilisant le `Font` propriété. L'exemple de code suivant insère un hyperlien dans un document en utilisant DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Insérer une table des matières

Vous pouvez insérer un `TOC` (table des matières) dans le document à la position actuelle en appelant le [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) méthode. La méthode DocumentBuilder.insertTable OfContents insérera seulement une `TOC` dans le document. Pour construire la table des matières et les afficher en fonction des numéros de page, les deux **Document.UpdateFields**la méthode doit être appelée après l'insertion du champ. L'exemple de code suivant montre comment insérer un champ Table des matières dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Insérer l'objet Ole

Si vous voulez l'appel Ole Object [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Définir le nom et l'extension du fichier lors de l'insertion de l'objet Ole

Le paquet OLE est une manière léguée et "non documentée" de stocker des objets intégrés si le gestionnaire OLE est inconnu. Début Windows des versions telles que Windows 3.1, 95 et 98 avaient un emballeur. exe application qui pourrait être utilisée pour intégrer n'importe quel type de données dans le document. Maintenant, cette demande est exclue de Windows mais MS Word et d'autres applications l'utilisent toujours pour intégrer des données si le gestionnaire OLE est manquant ou inconnu. La classe OlePackage permet d'accéder aux propriétés du paquet OLE. L'exemple de code suivant montre comment définir le nom de fichier, l'extension et le nom d'affichage du paquet OLE.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Accès aux données brutes des objets OLE

L'exemple de code suivant montre comment obtenir OLE Données brutes `OleFormat.GetRawData`() méthode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Insérer horizontalement Règle dans le document

L'exemple de code suivant montre comment insérer une forme de règle horizontale dans un document en utilisant `DocumentBuilder.InsertHorizontalRule` méthode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Travailler avec les formes

### Insertion de formes en ligne et flottantes

Vous pouvez insérer une forme en ligne avec un type et une taille spécifiés et une forme flottante avec la position, la taille et le type de texte spécifiés dans un document en utilisant `DocumentBuilder.InsertShape` méthode. Les `DocumentBuilder.InsertShape` méthode permet d'insérer la forme DML dans le modèle de document. Le document doit être enregistré dans le format, qui prend en charge les formes DML, sinon ces nœuds seront convertis en forme VML, pendant l'enregistrement du document. L'exemple de code suivant montre comment insérer ces types de formes dans le document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Créer un rectangle de coin de snip

Vous pouvez créer un rectangle d'angle en utilisant Aspose.Words. Les types de forme sont SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded OneSnipped, SingleCornerRounded, TopCornersRounded et DiagonalCornersRounded. La forme DML est créée en utilisant `DocumentBuilder.InsertShape` méthode avec ces types de forme. Ces types ne peuvent pas être utilisés pour créer des formes VML. Tentative de créer une forme en utilisant le constructeur public de la classe "Shape" soulève l'exception "NotSupportedException". L'exemple de code suivant montre comment insérer ces types de formes dans le document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Importation de formes avec Math XML comme formes dans DOM

Vous pouvez utiliser `LoadOptions.ConvertShapeToOfficeMath` propriété pour convertir les formes avec EquationXML en objets Office Math. La valeur par défaut de cette propriété correspond au comportement de MS Word, c'est-à-dire que les formes avec équation XML ne sont pas converties en objets de mathématiques Office.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
