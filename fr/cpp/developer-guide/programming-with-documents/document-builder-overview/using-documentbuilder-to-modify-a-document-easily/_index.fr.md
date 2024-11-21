---
title: Utiliser `DocumentBuilder` pour Modifier facilement un Document
second_title: Aspose.Words pour C++
articleTitle: Utiliser `DocumentBuilder` pour Modifier facilement un Document
linktitle: Utiliser `DocumentBuilder` pour Modifier facilement un Document
type: docs
description: "Utilisez le générateur de documents pour modifier facilement un document en C++."
weight: 190
url: /fr/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## Spécification du Formatage

### Formatage des Polices

La mise en forme actuelle de la police est représentée par un objet `Font` renvoyé par la propriété `DocumentBuilder.Font`. La classe `Font` contient une grande variété de propriétés de police possibles dans Microsoft Word. L'exemple ci-dessous montre comment définir le formatage de la police.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Formatage des Paragraphes

La mise en forme actuelle du paragraphe est représentée par un objet `ParagraphFormat` renvoyé par la propriété `DocumentBuilder.ParagraphFormat`. Cet objet encapsule diverses propriétés de mise en forme de paragraphe disponibles dans Microsoft Word. Vous pouvez facilement réinitialiser la mise en forme du paragraphe par défaut au style normal, aligné à gauche, sans indentation, sans espacement, sans bordures et sans ombrage en appelant `ParagraphFormat.ClearFormatting`. L'exemple ci-dessous montre comment définir la mise en forme des paragraphes.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Travailler avec la Typographie Asiatique

#### Ajustez automatiquement l'espace entre le texte asiatique et latin, les chiffres

Si vous concevez un modèle avec du texte est-asiatique et latin et que vous souhaitez améliorer l'apparence du modèle de formulaire en contrôlant les espaces entre les deux types de texte, vous pouvez configurer votre modèle de formulaire pour ajuster automatiquement les espaces entre ces deux types de texte. Vous pouvez utiliser les propriétés AddSpaceBetweenFarEastAndAlpha et AddSpaceBetweenFarEastAndDigit de la classe ParagraphFormat pour y parvenir.

L'exemple de code suivant montre comment utiliser les propriétés `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` et `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Modifier l'espacement et les retraits des Paragraphes asiatiques

L'exemple de code suivant montre comment modifier l'espacement et les retraits des paragraphes asiatiques.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Définir Les Options De Saut De Ligne

L'onglet Typographie asiatique de la boîte de dialogue des propriétés `Paragraph` dans MS Word a un groupe de sauts de ligne. Les options de ce groupe peuvent être définies en utilisant FarEastLineBreakControl, WordWrap, HangingPunctuation propriétés de la classe ParagraphFormat. L'exemple Below code montre comment utiliser ces propriétés.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Formatage des Cellules

Le formatage des cellules est utilisé lors de la construction d'un tableau. Il est représenté par un objet `CellFormat` renvoyé par la propriété `DocumentBuilder.CellFormat`. CellFormat encapsule diverses propriétés de cellule de tableau telles que la largeur ou l'alignement vertical. L'exemple ci-dessous montre comment créer un tableau contenant une seule cellule formatée.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Formatage des Lignes

Le formatage de ligne actuel est déterminé par un objet `RowFormat` renvoyé par la propriété `DocumentBuilder.RowFormat`. L'objet encapsule des informations sur toutes les mises en forme des lignes du tableau. L'exemple ci-dessous montre comment créer un tableau contenant une seule cellule et appliquer une mise en forme de ligne.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Formatage de Liste

Aspose.Words permet de créer facilement des listes en appliquant un formatage de liste. DocumentBuilder fournit la propriété `DocumentBuilder.ListFormat` qui renvoie un objet `ListFormat`. Cet objet a plusieurs méthodes pour commencer et terminer une liste et pour augmenter / diminuer le retrait. Il existe deux types généraux de listes dans Microsoft Word: à puces et numérotées.

- Pour démarrer une liste à puces, appelez `ListFormat.ApplyBulletDefault`.
- Pour démarrer une liste numérotée, appelez `ListFormat.ApplyNumberDefault`.

La puce ou le numéro et la mise en forme sont ajoutés au paragraphe actuel et à tous les autres paragraphes créés à l'aide de **DocumentBuilder** jusqu'à ce que `ListFormat.RemoveNumbers` soit appelé pour arrêter la mise en forme de la liste à puces. Dans les documents Word, les listes peuvent comporter jusqu'à neuf niveaux. La mise en forme de la liste pour chaque niveau spécifie quelle puce ou quel numéro est utilisé, le retrait à gauche,l'espace entre la puce et le texte, etc.

- Pour augmenter le niveau de liste du paragraphe actuel d'un niveau, appelez `ListFormat.ListIndent`.
- Pour diminuer le niveau de liste du paragraphe actuel d'un niveau, appelez `ListFormat.ListOutdent`.

Les méthodes modifient le niveau de la liste et appliquent les propriétés de mise en forme du nouveau niveau.

{{% alert color="primary" %}}

Vous pouvez également utiliser la propriété `ListFormat.ListLevelNumber` pour obtenir ou définir le niveau de liste du paragraphe. Les niveaux de la liste sont numérotés de 0 à 8.

{{% /alert %}}

L'exemple ci-dessous montre comment créer une liste à plusieurs niveaux.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Mise en page et Formatage des Sections

Les propriétés de mise en page et de section sont encapsulées dans l'objet `PageSetup` renvoyé par la propriété `DocumentBuilder.PageSetup`. L'objet contient tous les attributs de mise en page d'une section (marge gauche, marge inférieure, format de papier, etc.) en tant que propriétés. L'exemple ci-dessous montre comment définir des propriétés telles que la taille et l'orientation de la page pour la section en cours.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Appliquer un Style

Certains objets de mise en forme comme la police ou ParagraphFormat prennent en charge les styles. Un seul style intégré ou défini par l'utilisateur est représenté par un objet `Style` qui contient les propriétés de style correspondantes telles que le nom, le style de base, la police et la mise en forme du paragraphe du style, etc.

De plus, un objet **Style** fournit la propriété `Style.StyleIdentifier` qui renvoie un identifiant de style indépendant des paramètres régionaux représenté par une valeur d'énumération **Style.StyleIdentifier**. Le fait est que les noms des styles intégrés dans Microsoft Word sont localisés pour différentes langues. À l'aide d'un identifiant de style, vous pouvez trouver le style correct quelle que soit la langue du document. Les valeurs d'énumération correspondent aux styles intégrés de Microsoft Word tels que Normal, Titre 1, Titre 2, etc. Tous les styles définis par l'utilisateur se voient attribuer le **StyleIdentifier.User value**. L'exemple ci-dessous montre comment appliquer un style de paragraphe.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Bordures et Ombrage

Les frontières sont représentées par le BorderCollection. Il s'agit d'une collection d'objets de bordure auxquels on accède par index ou par type de bordure. Le type de bordure est représenté par l'énumération `BorderType`. Certaines valeurs de l'énumération sont applicables à plusieurs ou à un seul élément de document. Par exemple, `BorderType.Bottom` s'applique à une cellule de paragraphe ou de tableau tandis que `BorderType.DiagonalDown` spécifie la bordure diagonale dans une cellule de tableau uniquement.

La collection de bordures et chaque bordure distincte ont des attributs similaires tels que la couleur, le style de ligne, la largeur de ligne, la distance par rapport au texte et l'ombre facultative. Ils sont représentés par des propriétés du même nom. Vous pouvez obtenir différents types de bordures en combinant les valeurs des propriétés. De plus, les objets **BorderCollection** et **Border** vous permettent de réinitialiser ces valeurs par défaut en appelant la méthode `Border.ClearFormatting`. Notez que lorsque les propriétés de bordure sont réinitialisées aux valeurs par défaut, la bordure est invisible. La classe `Shading` contient des attributs d'ombrage pour les éléments du document. Vous pouvez définir la texture d'ombrage souhaitée et les couleurs appliquées à l'arrière-plan et au premier plan de l'élément.

La texture d'ombrage est définie avec une valeur d'énumération `TextureIndex` qui permet l'application de divers motifs à l'objet **Shading**. Par exemple, pour définir une couleur d'arrière-plan pour un élément de document, utilisez la valeur `TextureIndex.TextureSolid` et définissez la couleur d'ombrage de premier plan appropriée. L'exemple ci-dessous montre comment appliquer des bordures et des ombrages à un paragraphe.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Aligner sur la grille

Aspose.Words fournit deux propriétés `ParagraphFormat.SnapToGrid` et `Font.SnapToGrid` pour obtenir et définir l'accrochage des propriétés de paragraphe à la grille.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Déplacement du curseur

### Détection de la Position Actuelle du Curseur

Vous pouvez obtenir l'emplacement actuel du curseur du constructeur à tout moment. La propriété `DocumentBuilder.CurrentNode` renvoie le nœud actuellement sélectionné dans ce générateur. Le nœud est un enfant direct d'un paragraphe. Toutes les opérations d'insertion que vous effectuez à l'aide de `DocumentBuilder` seront insérées avant le `DocumentBuilder.CurrentNode`. Lorsque le paragraphe actuel est vide ou que le curseur est positionné juste avant la fin du paragraphe, `DocumentBuilder.CurrentNode` renvoie null.

En outre, vous pouvez utiliser la propriété `DocumentBuilder.CurrentParagraph`, qui obtient le paragraphe actuellement sélectionné dans ce **DocumentBuilder**. L'exemple ci-dessous montre comment accéder au nœud actuel dans un générateur de documents. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Déplacement vers n'importe quel nœud (Paragraphes et leurs enfants)

Si vous avez un nœud d'objet de document, qui est un paragraphe ou un enfant direct d'un paragraphe, vous pouvez pointer le curseur du générateur sur ce nœud. Utilisez la méthode `DocumentBuilder.MoveTo` pour effectuer cette opération. L'exemple ci-dessous montre comment déplacer la position d'un curseur vers un nœud spécifié. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Déplacement vers le début/la fin du document

Si vous devez passer au début du document, appelez `DocumentBuilder.MoveToDocumentStart`. Si vous devez vous déplacer à la fin du document, appelez `DocumentBuilder.MoveToDocumentEnd`. L'exemple ci-dessous montre comment déplacer la position du curseur au début ou à la fin d'un document. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Déplacement vers une section

Si vous travaillez avec un document qui contient plusieurs sections, vous pouvez passer à la section souhaitée à l'aide de `DocumentBuilder.MoveToSection`. Cette méthode déplace le curseur au début d'une section spécifiée et accepte l'index de la section requise. Lorsque l'index de section est supérieur ou égal à 0, il spécifie un index à partir du début du document avec 0 étant la première section. Lorsque l'index de section est inférieur à 0, il spécifie un index à partir de la fin du document avec -1 étant la dernière section. L'exemple ci-dessous montre comment déplacer la position du curseur vers la section spécifiée. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Déplacement vers un en-tête/pied de page

Lorsque vous devez placer des données dans un en-tête ou un pied de page, vous devez d'abord vous y déplacer en utilisant `DocumentBuilder.MoveToHeaderFooter`. La méthode accepte une valeur d'énumération HeaderFooterType qui identifie le type d'en-tête ou de pied de page à l'endroit où le curseur doit être déplacé. Si vous souhaitez créer des en-têtes et des pieds de page différents pour la première page, vous devez définir la propriété `PageSetup.DifferentFirstPageHeaderFooter` sur **true**. Si vous souhaitez créer des en-têtes et des pieds de page différents pour les pages paires et impaires, vous devez définir `PageSetup.OddAndEvenPagesHeaderFooter` sur **true**.

Si vous devez revenir à l'histoire principale, utilisez **DocumentBuilder.MoveToSection** pour sortir de l'en-tête ou du pied de page. L'exemple ci-dessous crée des en-têtes et des pieds de page dans un document en utilisant DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Passer à un paragraphe

Utilisez `DocumentBuilder.MoveToParagraph` pour déplacer le curseur vers un paragraphe souhaité dans la section en cours. Vous devez passer deux paramètres à cette méthode: paragraphIndex (l'index du paragraphe vers lequel se déplacer) et characterIndex (l'index du caractère à l'intérieur du paragraphe).

La navigation est effectuée à l'intérieur de l'histoire actuelle de la section en cours. Autrement dit, si vous avez déplacé le curseur vers l'en-tête principal de la première section, alors paragraphIndex spécifie l'index du paragraphe à l'intérieur de cet en-tête de cette section.

Lorsque paragraphIndex est supérieur ou égal à 0, il spécifie un index à partir du début de la section avec 0 étant le premier paragraphe. Lorsque paragraphIndex est inférieur à 0, il spécifie un index à partir de la fin de la section avec -1 étant le dernier paragraphe.

L'index des caractères ne peut actuellement être spécifié que comme 0 pour se déplacer au début du paragraphe ou -1 pour se déplacer à la fin du paragraphe. L'exemple ci-dessous montre comment déplacer la position du curseur vers le paragraphe spécifié. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Déplacement vers une cellule de tableau

Utilisez `DocumentBuilder.MoveToCell` si vous devez déplacer le curseur sur une cellule du tableau dans la section en cours. Cette méthode accepte quatre paramètres:

- tableIndex - l'index de la table vers laquelle se déplacer.
- rowIndex - l'index de la ligne dans la table.
- columnIndex - l'index de la colonne dans la table.
- characterIndex - l'index du caractère à l'intérieur de la cellule.

La navigation est effectuée à l'intérieur de l'histoire actuelle de la section en cours. Pour les paramètres d'index, lorsque index est supérieur ou égal à 0, il spécifie un index depuis le début avec 0 étant le premier élément. Lorsque index est inférieur à 0, il spécifie un index à partir de la fin avec -1 étant le dernier élément.

Notez également que characterIndex ne peut actuellement spécifier que 0 pour se déplacer au début de la cellule ou -1 pour se déplacer à la fin de la cellule. L'exemple ci-dessous montre comment déplacer la position du curseur vers la cellule de tableau spécifiée. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Déplacement vers un signet

Les signets sont fréquemment utilisés pour marquer des endroits particuliers dans le document où de nouveaux éléments doivent être insérés. Pour accéder à un signet, utilisez `DocumentBuilder.MoveToBookmark`. Cette méthode a deux surcharges. Le plus simple n'accepte rien d'autre que le nom du signet où le curseur doit être déplacé. L'exemple ci-dessous montre comment déplacer la position du curseur vers un signet. Vous pouvez télécharger le fichier modèle de cet exemple à partir d'ici.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Cette surcharge déplace le curseur à une position juste après le début du signet avec le nom spécifié. Une autre surcharge `DocumentBuilder.MoveToBookmark` déplace le curseur vers un signet avec une plus grande précision. Il accepte deux paramètres booléens supplémentaires:

- isStart détermine s'il faut déplacer le curseur au début ou à la fin du signet.
- isAfter détermine s'il faut déplacer le curseur après la position de début ou de fin du signet, ou déplacer le curseur avant la position de début ou de fin du signet.

L'exemple ci-dessous montre comment déplacer la position du curseur juste après la fin du signet.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

La comparaison pour les deux méthodes n'est pas sensible à la casse.

L'insertion d'un nouveau texte de cette manière ne remplace pas le texte existant du signet. Notez que certains signets dans le document sont affectés à des champs de formulaire. Passer à un tel signet et y insérer du texte insère le texte dans le code du champ de formulaire. Bien que cela n'invalide pas le champ de formulaire, le texte inséré ne sera pas visible car il fait partie du code du champ.

## Comment Convertir entre les Unités de Mesure

La plupart des propriétés d'objet fournies dans l'API Aspose.Words qui représentent certaines mesures (largeur / hauteur, marges et différentes distances) acceptent des valeurs en points (1 pouce équivaut à 72 points). Parfois, ce n'est pas pratique, il y a donc la classe `ConvertUtil` qui fournit des fonctions d'assistance pour convertir entre différentes unités de mesure. Il permet de convertir des pouces en points, des points en pouces, des pixels en points et des points en pixels. Lorsque les pixels sont convertis en points et vice versa, cela peut être effectué à des résolutions de 96 dpi (points par pouce) ou à la résolution dpi spécifiée.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
