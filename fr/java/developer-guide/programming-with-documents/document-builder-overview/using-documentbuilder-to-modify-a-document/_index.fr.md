---
title: Utilisation `DocumentBuilder` pour modifier un document
second_title: Aspose.Words pour Java
articleTitle: Utilisation `DocumentBuilder` pour modifier un document
linktitle: Utilisation `DocumentBuilder` pour modifier un document
type: docs
description: "Utilisez le constructeur de documents pour modifier un document facilement dans Java."
weight: 20
url: /fr/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Spécifier le formatage

### Formatage des polices

Le formatage actuel des polices est représenté par une `Font` objet retourné par `DocumentBuilder.Font` propriété. Les `Font` classe contient une grande variété de propriétés de police possible dans Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
L'exemple de code suivant montre comment définir le formatage des polices.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formatage des cellules

Le formatage des cellules est utilisé lors de la construction d'une table. Elle est représentée par `CellFormat` objet retourné par `DocumentBuilder.CellFormat` propriété. CellFormat encapsule diverses propriétés cellulaires de table comme la largeur ou l'alignement vertical.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
L'exemple de code suivant montre comment créer une table qui contient une cellule formatée.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formatage des lignes

Le formatage actuel de la ligne est déterminé par un `RowFormat` objet retourné par le `DocumentBuilder.RowFormat` propriété. L'objet encapsule des informations sur le formatage de toutes les lignes de table.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
Lalow code exemple montre comment créer une table qui contient une cellule unique et appliquer le formatage de ligne.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formatage de la liste

Aspose.Words permet la création facile de listes en appliquant le formatage de la liste. DocumentBuilder fournit le `DocumentBuilder.ListFormat` un bien qui rend une `ListFormat` objet. Cet objet a plusieurs méthodes pour démarrer et terminer une liste et augmenter/diminuer le tiret.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Il existe deux types généraux de listes: Microsoft Word: balles et numérotées.

- Pour lancer une liste, appelez [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Pour démarrer une liste numérotée, appelez [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

La puce ou le nombre et le formatage sont ajoutés au paragraphe actuel et à tous les autres paragraphes créés en utilisant **DocumentBuilder** jusqu'à [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) est appelé pour arrêter le formatage des listes par puces.

Dans les documents Word, les listes peuvent comprendre jusqu'à neuf niveaux. Le formatage de la liste pour chaque niveau indique le point ou le nombre utilisé, le tiret gauche, l'espace entre le point et le texte, etc.

- Oui. Pour augmenter le niveau de liste du paragraphe actuel d'un niveau, appeler [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Oui. Pour réduire le niveau de liste du paragraphe actuel d'un niveau, appelez [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Les méthodes changent le niveau de la liste et appliquent les propriétés de formatage du nouveau niveau.

{{% alert color="primary" %}}

Vous pouvez également utiliser le [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) propriété pour obtenir ou définir le niveau de liste pour le paragraphe. Les niveaux de la liste sont numérotés 0 à 8.

{{% /alert %}}

L'exemple de code suivant montre comment construire une liste à plusieurs niveaux.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Configuration des pages et formatage des sections

Les propriétés de configuration et de section de page sont encapsulées dans le `PageSetup` objet retourné par le `DocumentBuilder.PageSetup` propriété. L'objet contient tous les attributs de configuration de page d'une section (marge gauche, marge inférieure, taille du papier, etc.) comme propriétés.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
L'exemple de code suivant montre comment définir des propriétés telles que la taille et l'orientation de la page pour la section actuelle.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Appliquer un style

Certains objets de formatage comme les styles de support Font ou ParagraphFormat. Un style intégré ou défini par l'utilisateur est représenté par un `Style` objet qui contient les propriétés de style correspondantes comme nom, style de base, police et formatage de paragraphe du style, et ainsi de suite.

En outre, **Style** objet fournit la [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) propriété qui retourne un identifiant de style indépendant local représenté par un **Style.StyleIdentifier** valeur de dénombrement. Le point est que les noms des styles intégrés dans Microsoft Word sont localisés pour différentes langues. En utilisant un identifiant de style, vous pouvez trouver le style correct quel que soit le langage du document. Les valeurs de dénombrement correspondent à la Microsoft Word styles intégrés tels que normal , cap 1 , cap 2 etc. Tous les styles définis par l'utilisateur sont assignés **StyleIdentificateur. Valeur utilisateur**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
L'exemple de code suivant montre comment appliquer un style de paragraphe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Frontières et ombres

Les frontières sont représentées par la BorderCollection. Il s'agit d'une collection d'objets Border auxquels on accède par index ou par type de bordure. Le type de frontière est représenté par le `BorderType` Énumération. Certaines valeurs du dénombrement s'appliquent à plusieurs ou à un seul élément de document. Par exemple, `BorderType.Bottom` est applicable à un paragraphe ou à une cellule de tableau pendant `BorderType.DiagonalDown` spécifie la bordure diagonale dans une cellule de table seulement.

La collection de bordures et chaque bordure séparée ont des attributs similaires comme la couleur, le style de ligne, la largeur de ligne, la distance du texte et l'ombre optionnelle. Ils sont représentés par des propriétés du même nom. Vous pouvez atteindre différents types de bordure en combinant des valeurs de propriété. En outre, les deux **BorderCollection** et **Border** objets vous permettent de réinitialiser ces valeurs par défaut en appelant le [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) méthode. Notez que lorsque les propriétés de la bordure sont réinitialisées aux valeurs par défaut, la bordure est invisible.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
Les [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) classe contient des attributs d'ombrage pour les éléments de document. Vous pouvez définir la texture d'ombrage souhaitée et les couleurs qui sont appliquées au fond et au premier plan de l'élément.

La texture d'ombrage est définie avec un [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valeur de dénombrement qui permet l'application de différents modèles à la **Shading** objet. Par exemple, pour définir une couleur de fond pour un élément de document, utilisez le [TextureIndex.TextureSolide](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valeur et définir la couleur d'ombrage avant plan selon le besoin.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
L'exemple ci-dessous montre comment appliquer les frontières et l'ombrage à un paragraphe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap vers la grille

Aspose.Words fournit deux propriétés `ParagraphFormat.SnapToGrid` et `Font.SnapToGrid` pour obtenir et définir la propriété paragraphe snap to grid

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Déplacement du curseur

### Détecter la position actuelle du curseur

Vous pouvez obtenir où le curseur du constructeur est actuellement positionné à tout moment. Les [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) la propriété retourne le noeud qui est actuellement sélectionné dans ce constructeur. Le nœud est un enfant direct d'un paragraphe. Toutes les opérations d'insertion que vous effectuez en utilisant `DocumentBuilder` insérer avant le `DocumentBuilder.CurrentNode`. Lorsque le paragraphe actuel est vide ou que le curseur est positionné juste avant la fin du paragraphe, `DocumentBuilder.CurrentNode` retourne nul.

En outre, vous pouvez utiliser le [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) propriété, qui obtient le paragraphe qui est actuellement sélectionné dans cette **DocumentBuilder**. Lalow code exemple montre comment accéder au nœud actuel dans un constructeur de documents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Se déplacer vers n'importe quel nœud (Paragraphes et leurs enfants)

Si vous avez un noeud objet document, qui est un paragraphe ou un enfant direct d'un paragraphe, vous pouvez pointer le curseur du constructeur vers ce noeud. Utiliser [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) méthode pour effectuer ceci.
L'exemple de code suivant montre comment déplacer une position du curseur vers un noeud spécifié.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Passer au document Début/Fin

Si vous devez passer au début du document, appelez [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Si vous devez passer à la fin du document, appelez [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Déménagement dans une section

Si vous travaillez avec un document qui contient plusieurs sections, vous pouvez passer à une section souhaitée en utilisant [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Cette méthode déplace le curseur vers le début d'une section spécifiée et accepte l'index de la section requise. Lorsque l'index de section est supérieur ou égal à 0, il spécifie un index à partir du début du document avec 0 étant la première section. Lorsque l'index de section est inférieur à 0, il spécifie un index à partir de la fin du document avec -1 étant la dernière section. Lalow code exemple montre comment déplacer une position du curseur vers la section spécifiée. Vous pouvez télécharger le fichier modèle de cet exemple à partir de [ici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Déplacement vers un en-tête/un en-tête

Lorsque vous devez placer certaines données dans un en-tête ou un pied de page, vous devez d'abord vous y déplacer en utilisant [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). La méthode accepte une valeur de dénombrement HeaderFooterType qui identifie le type d'en-tête ou de pied de page à l'endroit où le curseur doit être déplacé.

Si vous voulez créer des en-têtes et des pied de page qui sont différents pour la première page, vous devez [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) propriété **true**. Si vous voulez créer des en-têtes et des pied de page qui sont différents pour des pages paires et étranges, vous devez définir [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) à **true**.

Si vous devez revenir à l'histoire principale, utilisez[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) pour sortir de l'en-tête ou du pied de page. L'exemple ci-dessous crée des en-têtes et des pied de page dans un document en utilisant DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Passage à un paragraphe

Utilisation[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) pour déplacer le curseur vers un paragraphe désiré dans la section actuelle. Vous devez passer deux paramètres à cette méthode: paragrapheIndex (l'index du paragraphe à déplacer) et caractèreIndex (l'index du caractère à l'intérieur du paragraphe).

La navigation est effectuée dans l'histoire actuelle de la section actuelle. C'est-à-dire, si vous avez déplacé le curseur dans l'en-tête primaire de la première section, alors le paragrapheIndex spécifie l'index du paragraphe dans cet en-tête de cette section.

Lorsque le paragrapheIndex est supérieur ou égal à 0, il spécifie un index à partir du début de la section avec 0 étant le premier paragraphe. Lorsque le paragrapheIndex est inférieur à 0, il spécifie un index à partir de la fin de la section avec -1 étant le dernier paragraphe. L'index des caractères ne peut actuellement être spécifié que comme 0 pour passer au début du paragraphe ou -1 pour passer à la fin du paragraphe. L'exemple de code suivant montre comment déplacer une position du curseur vers le paragraphe spécifié. Vous pouvez télécharger le fichier modèle de cet exemple à partir de [ici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Déplacement vers une cellule de table

Utilisation [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) si vous devez déplacer le curseur vers une cellule de table dans la section actuelle. Cette méthode accepte quatre paramètres:

- tableauIndex - l'index du tableau à déplacer.
- ligneIndex - l'index de la ligne dans le tableau.
- colonneIndex - l'index de la colonne dans le tableau.
- caractèreIndex - l'index du personnage dans la cellule.

La navigation est effectuée dans l'histoire actuelle de la section actuelle.

Pour les paramètres de l'indice, lorsque l'indice est supérieur ou égal à 0, il spécifie un indice dès le début avec 0 étant le premier élément. Lorsque l'indice est inférieur à 0, il spécifie un indice de la fin avec -1 étant le dernier élément.

Notez également que characterIndex ne peut actuellement spécifier 0 pour se déplacer au début de la cellule ou -1 pour se déplacer à la fin de la cellule. L'exemple de code suivant montre comment déplacer une position du curseur vers la cellule de table spécifiée. Vous pouvez télécharger le fichier modèle de cet exemple à partir de [ici](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Déplacement vers un signet

Les signets sont fréquemment utilisés pour marquer des endroits particuliers dans le document où de nouveaux éléments doivent être insérés. Pour passer à un signet, utilisez [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Cette méthode a deux surcharges. Le plus simple n'accepte que le nom du signet où le curseur doit être déplacé. L'exemple de code suivant montre comment déplacer une position de curseur vers un signet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Cette surcharge déplace le curseur vers une position juste après le début du signet avec le nom spécifié. Une autre surcharge [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) déplace le curseur vers un signet avec plus de précision. Il accepte deux paramètres de booléen supplémentaires:

- isStart détermine s'il faut déplacer le curseur au début ou à la fin du signet.
- isAfter détermine s'il faut déplacer le curseur après la position de début ou de fin du signet, ou pour déplacer le curseur avant la position de début ou de fin du signet.

L'exemple de code suivant montre comment déplacer une position de curseur juste après la fin du signet.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

L'insertion d'un nouveau texte de cette façon ne remplace pas le texte existant du signet. Notez que certains signets dans le document sont assignés à des champs de formulaire. Le passage à un tel signet et l'insertion de texte y insèrent le texte dans le code de champ du formulaire. Bien que cela n'invalide pas le champ de formulaire, le texte inséré ne sera pas visible parce qu'il devient partie intégrante du code de champ.

### Vers une `Merge` Champ

Parfois, vous pouvez avoir besoin d'effectuer un "manuel" Mail Merge utilisant `DocumentBuilder` ou remplir un champ de fusion d'une manière spéciale à l'intérieur d'un Mail Merge gestionnaire d'événements. C'est alors [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) ça pourrait être utile. La méthode accepte le nom du champ de fusion. Il déplace le curseur vers une position juste au-delà du champ de fusion spécifié et supprime le champ de fusion. L'exemple de code suivant montre comment déplacer le curseur vers une position juste au-delà du champ de fusion spécifié.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Comment convertir les unités de mesure

La plupart des propriétés de l'objet Aspose.Words API qui représente certaines mesures (largeur/hauteur, marges et distances diverses) acceptent des valeurs en points (1 pouce est égal à 72 points). Parfois, ce n'est pas pratique donc il y a `ConvertUtil` classe qui fournit des fonctions d'aide à convertir entre différentes unités de mesure. Il permet de convertir des pouces en points, des points en pouces, des pixels en points et des points en pixels. Lorsque les pixels sont convertis en points et vice versa, ils peuvent être exécutés à 96 dpi (points par pouce) ou à la résolution dpi spécifiée.

**ConvertUtil** est très utile pour définir différentes propriétés de page parce que par exemple pouces sont des unités de mesure plus habituelles que les points. L'exemple suivant montre comment configurer les propriétés de la page en pouces.

L'exemple de code suivant montre comment spécifier les propriétés de la page en pouces.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
