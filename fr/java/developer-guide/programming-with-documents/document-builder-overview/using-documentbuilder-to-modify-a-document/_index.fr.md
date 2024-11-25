---
title: Utiliser `DocumentBuilder` pour modifier un document
second_title: Aspose.Words pour Java
articleTitle: Utiliser `DocumentBuilder` pour modifier un document
linktitle: Utiliser `DocumentBuilder` pour modifier un document
type: docs
description: "Utilisez le générateur de documents pour modifier facilement un document dans Java."
weight: 20
url: /fr/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Spécification du Formatage

### Formatage des Polices

La mise en forme actuelle de la police est représentée par un objet `Font` renvoyé par la propriété `DocumentBuilder.Font`. La classe `Font` contient une grande variété de propriétés de police possibles dans Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
L'exemple de code suivant montre comment définir le formatage de la police.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formatage des Cellules

Le formatage des cellules est utilisé lors de la construction d'un tableau. Il est représenté par un objet `CellFormat` renvoyé par la propriété `DocumentBuilder.CellFormat`. CellFormat encapsule diverses propriétés de cellule de tableau telles que la largeur ou l'alignement vertical.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
L'exemple de code suivant montre comment créer un tableau contenant une seule cellule formatée.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formatage des Lignes

Le formatage de ligne actuel est déterminé par un objet `RowFormat` renvoyé par la propriété `DocumentBuilder.RowFormat`. L'objet encapsule des informations sur toutes les mises en forme des lignes du tableau.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
L'exemple below code montre comment créer un tableau contenant une seule cellule et appliquer une mise en forme de ligne.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formatage de Liste

Aspose.Words permet de créer facilement des listes en appliquant un formatage de liste. DocumentBuilder fournit la propriété `DocumentBuilder.ListFormat` qui renvoie un objet `ListFormat`. Cet objet a plusieurs méthodes pour commencer et terminer une liste et pour augmenter / diminuer le retrait.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Il existe deux types généraux de listes dans Microsoft Word: à puces et numérotées.

- Pour démarrer une liste à puces, appelez [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Pour démarrer une liste numérotée, appelez [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

La puce ou le numéro et la mise en forme sont ajoutés au paragraphe actuel et à tous les autres paragraphes créés à l'aide de **DocumentBuilder** jusqu'à ce que [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) soit appelé pour arrêter la mise en forme de la liste à puces.

Dans les documents Word, les listes peuvent comporter jusqu'à neuf niveaux. La mise en forme de la liste pour chaque niveau spécifie quelle puce ou quel numéro est utilisé, le retrait à gauche,l'espace entre la puce et le texte, etc.

- Pour augmenter le niveau de liste du paragraphe actuel d'un niveau, appelez [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Pour diminuer le niveau de liste du paragraphe actuel d'un niveau, appelez [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Les méthodes modifient le niveau de la liste et appliquent les propriétés de mise en forme du nouveau niveau.

{{% alert color="primary" %}}

Vous pouvez également utiliser la propriété [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) pour obtenir ou définir le niveau de liste du paragraphe. Les niveaux de liste sont numérotés de 0 à 8.

{{% /alert %}}

L'exemple de code suivant montre comment créer une liste à plusieurs niveaux.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Mise en page et Formatage des Sections

Les propriétés de mise en page et de section sont encapsulées dans l'objet `PageSetup` renvoyé par la propriété `DocumentBuilder.PageSetup`. L'objet contient tous les attributs de mise en page d'une section (marge gauche, marge inférieure, format de papier, etc.) en tant que propriétés.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
L'exemple de code suivant montre comment définir des propriétés telles que la taille et l'orientation de la page pour la section en cours.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Appliquer un Style

Certains objets de mise en forme comme la police ou ParagraphFormat prennent en charge les styles. Un seul style intégré ou défini par l'utilisateur est représenté par un objet `Style` qui contient les propriétés de style correspondantes telles que le nom, le style de base, la police et la mise en forme du paragraphe du style, etc.

De plus, un objet **Style** fournit la propriété [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) qui renvoie un identifiant de style indépendant des paramètres régionaux représenté par une valeur d'énumération **Style.StyleIdentifier**. Le fait est que les noms des styles intégrés dans Microsoft Word sont localisés pour différentes langues. À l'aide d'un identifiant de style, vous pouvez trouver le style correct quelle que soit la langue du document. Les valeurs d'énumération correspondent aux styles intégrés Microsoft Word tels que Normal, Heading 1, Heading 2 etc. Tous les styles définis par l'utilisateur se voient attribuer le **StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
L'exemple de code suivant montre comment appliquer un style de paragraphe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Bordures et Ombrage

Les frontières sont représentées par le BorderCollection. Il s'agit d'une collection d'objets de bordure auxquels on accède par index ou par type de bordure. Le type de bordure est représenté par l'énumération `BorderType`. Certaines valeurs de l'énumération sont applicables à plusieurs ou à un seul élément de document. Par exemple, `BorderType.Bottom` s'applique à une cellule de paragraphe ou de tableau tandis que `BorderType.DiagonalDown` spécifie la bordure diagonale dans une cellule de tableau uniquement.

La collection de bordures et chaque bordure distincte ont des attributs similaires tels que la couleur, le style de ligne, la largeur de ligne, la distance par rapport au texte et l'ombre facultative. Ils sont représentés par des propriétés du même nom. Vous pouvez obtenir différents types de bordures en combinant les valeurs des propriétés. De plus, les objets **BorderCollection** et **Border** vous permettent de réinitialiser ces valeurs par défaut en appelant la méthode [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting). Notez que lorsque les propriétés de bordure sont réinitialisées aux valeurs par défaut, la bordure est invisible.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
La classe [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) contient des attributs d'ombrage pour les éléments du document. Vous pouvez définir la texture d'ombrage souhaitée et les couleurs appliquées à l'arrière-plan et au premier plan de l'élément.

La texture d'ombrage est définie avec un [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valeur d'énumération qui permet l'application de divers motifs à l'objet **Shading**. Par exemple, pour définir une couleur d'arrière-plan pour un élément de document, utilisez le [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) définissez la valeur et définissez la couleur d'ombrage de premier plan comme il convient.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
L'exemple ci-dessous montre comment appliquer des bordures et des ombrages à un paragraphe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Aligner sur la grille

Aspose.Words fournit deux propriétés `ParagraphFormat.SnapToGrid` et `Font.SnapToGrid` pour obtenir et définir l'accrochage des propriétés de paragraphe à la grille.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Déplacement du curseur

### Détection de la Position Actuelle du Curseur

Vous pouvez obtenir l'emplacement actuel du curseur du constructeur à tout moment. La propriété [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) renvoie le nœud actuellement sélectionné dans ce générateur. Le nœud est un enfant direct d'un paragraphe. Toutes les opérations d'insertion que vous effectuez à l'aide de `DocumentBuilder` seront insérées avant le `DocumentBuilder.CurrentNode`. Lorsque le paragraphe actuel est vide ou que le curseur est positionné juste avant la fin du paragraphe, `DocumentBuilder.CurrentNode` renvoie null.

En outre, vous pouvez utiliser la propriété [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph), qui obtient le paragraphe actuellement sélectionné dans ce **DocumentBuilder**. L'exemple below code montre comment accéder au nœud actuel dans un générateur de documents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Déplacement vers n'importe quel nœud (Paragraphes et leurs enfants)

Si vous avez un nœud d'objet de document, qui est un paragraphe ou un enfant direct d'un paragraphe, vous pouvez pointer le curseur du générateur sur ce nœud. Utilisez la méthode [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) pour effectuer cette opération.
L'exemple de code suivant montre comment déplacer la position d'un curseur vers un nœud spécifié.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Déplacement vers le début/la fin du document

Si vous devez passer au début du document, appelez [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Si vous devez vous déplacer à la fin du document, appelez [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Déplacement vers une section

Si vous travaillez avec un document qui contient plusieurs sections, vous pouvez passer à la section souhaitée à l'aide de [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Cette méthode déplace le curseur au début d'une section spécifiée et accepte l'index de la section requise. Lorsque l'index de section est supérieur ou égal à 0, il spécifie un index à partir du début du document avec 0 étant la première section. Lorsque l'index de section est inférieur à 0, il spécifie un index à partir de la fin du document avec -1 étant la dernière section. L'exemple below code montre comment déplacer la position du curseur vers la section spécifiée. Vous pouvez télécharger le fichier modèle de cet exemple à partir de [ici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Déplacement vers un en-tête/pied de page

Lorsque vous devez placer des données dans un en-tête ou un pied de page, vous devez d'abord vous y déplacer en utilisant [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).La méthode accepte une valeur d'énumération HeaderFooterType qui identifie le type d'en-tête ou de pied de page à l'endroit où le curseur doit être déplacé.

Si vous souhaitez créer des en-têtes et des pieds de page différents pour la première page, vous devez définir la propriété [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) sur **true**. Si vous souhaitez créer des en-têtes et des pieds de page différents pour les pages paires et impaires, vous devez définir [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) sur **true**.

Si vous devez revenir à l'histoire principale, utilisez[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) pour sortir de l'en-tête ou du pied de page. L'exemple ci-dessous crée des en-têtes et des pieds de page dans un document en utilisant DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Passer à un paragraphe

Utilisez[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) pour déplacer le curseur vers un paragraphe souhaité dans la section en cours. Vous devez passer deux paramètres à cette méthode: paragraphIndex (l'index du paragraphe vers lequel se déplacer) et characterIndex (l'index du caractère à l'intérieur du paragraphe).

La navigation est effectuée à l'intérieur de l'histoire actuelle de la section en cours. Autrement dit, si vous avez déplacé le curseur vers l'en-tête principal de la première section, alors paragraphIndex spécifie l'index du paragraphe à l'intérieur de cet en-tête de cette section.

Lorsque paragraphIndex est supérieur ou égal à 0, il spécifie un index à partir du début de la section avec 0 étant le premier paragraphe. Lorsque paragraphIndex est inférieur à 0, il spécifie un index à partir de la fin de la section avec -1 étant le dernier paragraphe. L'index des caractères ne peut actuellement être spécifié que comme 0 pour se déplacer vers le début du paragraphe ou -1 pour se déplacer vers la fin du paragraphe. L'exemple de code suivant montre comment déplacer la position du curseur vers le paragraphe spécifié. Vous pouvez télécharger le fichier modèle de cet exemple à partir de [ici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Déplacement vers une cellule de tableau

Utilisez [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) si vous devez déplacer le curseur sur une cellule du tableau dans la section en cours. Cette méthode accepte quatre paramètres:

- tableIndex - l'index de la table vers laquelle se déplacer.
- rowIndex - l'index de la ligne dans la table.
- columnIndex - l'index de la colonne dans la table.
- characterIndex - l'index du caractère à l'intérieur de la cellule.

La navigation est effectuée à l'intérieur de l'histoire actuelle de la section en cours.

Pour les paramètres d'index, lorsque l'index est supérieur ou égal à 0, il spécifie un index depuis le début avec 0 étant le premier élément. Lorsque l'index est inférieur à 0, il spécifie un index à partir de la fin avec -1 étant le dernier élément.

Notez également que characterIndex ne peut actuellement spécifier que 0 pour se déplacer au début de la cellule ou -1 pour se déplacer à la fin de la cellule. L'exemple de code suivant montre comment déplacer la position d'un curseur vers la cellule de tableau spécifiée. Vous pouvez télécharger le fichier modèle de cet exemple à partir de [ici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Déplacement vers un signet

Les signets sont fréquemment utilisés pour marquer des endroits particuliers dans le document où de nouveaux éléments doivent être insérés. Pour accéder à un signet, utilisez [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Cette méthode a deux surcharges. Le plus simple n'accepte rien d'autre que le nom du signet où le curseur doit être déplacé. L'exemple de code suivant montre comment déplacer la position du curseur vers un signet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Cette surcharge déplace le curseur à une position juste après le début du signet avec le nom spécifié. Une autre surcharge [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) déplace le curseur vers un signet avec une plus grande précision. Il accepte deux paramètres booléens supplémentaires:

- isStart détermine s'il faut déplacer le curseur au début ou à la fin du signet.
- isAfter détermine s'il faut déplacer le curseur après la position de début ou de fin du signet, ou déplacer le curseur avant la position de début ou de fin du signet.

L'exemple de code suivant montre comment déplacer la position du curseur juste après la fin du signet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

L'insertion d'un nouveau texte de cette manière ne remplace pas le texte existant du signet. Notez que certains signets dans le document sont affectés à des champs de formulaire. Passer à un tel signet et y insérer du texte insère le texte dans le code du champ de formulaire. Bien que cela n'invalide pas le champ de formulaire, le texte inséré ne sera pas visible car il fait partie du code du champ.

### Déplacement vers un champ `Merge`

Parfois, vous devrez peut-être effectuer un Mail Merge "manuel" en utilisant `DocumentBuilder` ou remplir un champ de fusion d'une manière spéciale dans un gestionnaire d'événements Mail Merge. C'est à ce moment que [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) pourrait être utile. La méthode accepte le nom du champ de fusion. Il déplace le curseur à une position juste au-delà du champ de fusion spécifié et supprime le champ de fusion. L'exemple de code suivant montre comment déplacer le curseur à une position juste au-delà du champ de fusion spécifié.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Comment Convertir entre les Unités de Mesure

La plupart des propriétés d'objet fournies dans Aspose.Words API qui représentent certaines mesures (largeur / hauteur, marges et différentes distances) acceptent des valeurs en points (1 pouce équivaut à 72 points). Parfois, ce n'est pas pratique, il y a donc la classe `ConvertUtil` qui fournit des fonctions d'assistance pour convertir entre différentes unités de mesure. Il permet de convertir des pouces en points, des points en pouces, des pixels en points et des points en pixels. Lorsque les pixels sont convertis en points et vice versa, cela peut être effectué à des résolutions de 96 dpi (points par pouce) ou à la résolution dpi spécifiée.

**ConvertUtil**

L'exemple de code suivant montre comment spécifier les propriétés de la page en pouces.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
