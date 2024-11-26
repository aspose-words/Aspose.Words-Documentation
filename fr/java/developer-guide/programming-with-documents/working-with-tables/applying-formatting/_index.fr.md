---
title: Formatage du tableau en Java
second_title: Aspose.Words pour Java
articleTitle: Appliquer La Mise En Forme Du Tableau
linktitle: Appliquer La Mise En Forme Du Tableau
description: "Mise en forme des tableaux en détails. Utiliser Java pour formater chaque partie du tableau."
type: docs
weight: 70
url: /fr/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Chaque élément d'un tableau peut être appliqué avec une mise en forme différente. Par exemple, la mise en forme du tableau sera appliquée à l'ensemble du tableau, la mise en forme des lignes uniquement à des lignes particulières, la mise en forme des cellules uniquement à certaines cellules.

Aspose.Words fournit un API riche pour récupérer et appliquer la mise en forme à une table. Vous pouvez utiliser les nœuds [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) et [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) pour définir le formatage.

Dans cet article, nous expliquerons comment appliquer la mise en forme à différents nœuds de table et quels paramètres de mise en forme de table Aspose.Words prend en charge.

## Appliquer la mise en forme à différents nœuds

Dans cette section, nous examinerons l'application de la mise en forme à divers nœuds de table.

### Formatage Au Niveau du Tableau

Pour appliquer une mise en forme à une table, vous pouvez utiliser les propriétés disponibles sur le nœud **Table** correspondant à l'aide des classes [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) et [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/).

{{% alert color="primary" %}}

Notez que la table doit avoir au moins une ligne avant que les propriétés de la table puissent être appliquées. Cela signifie que lors de la construction d'une table avec le [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), cette mise en forme doit être effectuée après le premier appel à [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), ou après l'ajout de la première ligne à la table, ou lorsque des nœuds sont insérés directement dans le DOM.

{{% /alert %}}

Les images ci-dessous montrent une représentation des entités de formatage **Table** dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

L'exemple de code suivant montre comment appliquer une bordure de contour à un tableau:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

L'exemple de code suivant montre comment créer un tableau avec toutes les bordures activées (grille):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Formatage Au Niveau des Lignes

Le formatage au niveau des lignes* * peut être contrôlé à l'aide des classes [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) et [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/).

{{% alert color="primary" %}}

Notez que a **Row** ne peut être qu'un nœud enfant de a **Table**. En même temps, il doit y avoir au moins un **Cell** dans le **Row** pour que le formatage puisse lui être appliqué.

{{% /alert %}}

Les images ci-dessous montrent une représentation des entités de formatage **Row** dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

L'exemple de code suivant montre comment modifier le formatage des lignes du tableau:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Formatage Au Niveau des Cellules

Le formatage au niveau de la cellule est contrôlé par les classes [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) et [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/).

{{% alert color="primary" %}}

Notez que a **Cell** ne peut être qu'un nœud enfant de a **Row**. En même temps, il doit y avoir au moins un [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) dans le **Cell** pour que le formatage puisse lui être appliqué.

En plus du **Paragraph**, vous pouvez également insérer un **Table** dans un **Cell**.

{{% /alert %}}

Les images ci-dessous montrent une représentation des entités de formatage **Cell** dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

L'exemple de code suivant montre comment modifier la mise en forme d'une cellule de tableau:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

L'exemple de code suivant montre comment définir la quantité d'espace (en points) à ajouter à gauche / haut / droite / bas du contenu de la cellule:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Spécification Des Hauteurs de Rangée

Le moyen le plus simple de définir la hauteur de la ligne est d'utiliser le **DocumentBuilder**. À l'aide des propriétés **RowFormat** appropriées, vous pouvez définir le paramètre de hauteur par défaut ou appliquer une hauteur différente pour chaque ligne du tableau.

Dans Aspose.Words, la hauteur des lignes du tableau est contrôlée par:

- la propriété hauteur de ligne - [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- la propriété de règle de hauteur pour la ligne donnée - [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

En même temps, une hauteur différente peut être définie pour chaque rangée – cela vous permet de contrôler largement les paramètres de la table.

{{% alert color="primary" %}}

Les options de règle pour spécifier la hauteur d'un objet peuvent être définies à l'aide des champs [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/).

{{% /alert %}}

L'exemple de code suivant montre comment créer un tableau contenant une seule cellule et appliquer une mise en forme de ligne:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Spécifiez les largeurs de Tableau et de cellule

Un tableau dans un document Microsoft Word fournit plusieurs façons différentes de redimensionner le tableau et les cellules individuelles. Ces propriétés permettent un contrôle considérable sur l'apparence et le comportement de la table, de sorte que Aspose.Words prend en charge le comportement des tables, comme dans Microsoft Word.

Il est important de savoir que les éléments de tableau présentent plusieurs propriétés différentes qui peuvent affecter la façon dont les largeurs du tableau global, ainsi que des cellules individuelles, sont calculées:

- Largeur préférée sur la table
- Largeur préférée sur les cellules individuelles
- Autoriser l'ajustement automatique sur la table

Cet article détaille le fonctionnement des différentes propriétés de calcul de la largeur de la table et comment obtenir un contrôle total sur le calcul de la largeur de la table. C'est
particulièrement utile à savoir dans les cas où la disposition du tableau n'apparaît pas comme prévu.

{{% alert color="primary" %}}

Dans la plupart des cas, la cellule préférée est recommandée par rapport à la largeur du tableau. La largeur de cellule préférée est plus conforme à la spécification du format DOCX ainsi qu'au modèle Aspose.Words.

La largeur de la cellule est en fait une valeur calculée pour le format DOCX. La largeur réelle de la cellule peut dépendre de beaucoup de choses. Par exemple, la modification des marges de la page ou de la largeur préférée du tableau peut affecter la largeur réelle de la cellule.

La largeur de cellule préférée est une propriété de cellule stockée dans le document. Cela ne dépend de rien et ne change pas lorsque vous modifiez le tableau ou d'autres propriétés de la cellule.

{{% /alert %}}

{{% alert color="primary" %}}

Toutes les propriétés et méthodes décrites dans cet article sont liées au fonctionnement des tables dans Microsoft Word. Ainsi, dans la plupart des cas, si vous construisez votre table par programme mais que vous avez du mal à créer la table souhaitée, vous pouvez plutôt essayer de la créer visuellement dans Microsoft Word d'abord, puis simplement copier les valeurs de formatage dans votre application.

{{% /alert %}}

### Comment utiliser la Largeur Préférée

La largeur souhaitée d'un tableau ou de cellules individuelles est définie par la propriété largeur préférée, qui est la taille à laquelle un élément s'efforce de s'adapter. C'est-à-dire que la largeur préférée peut être spécifiée pour l'ensemble du tableau ou pour des cellules individuelles. Dans certaines situations, il peut ne pas être possible d'ajuster exactement cette largeur, mais la largeur réelle sera proche de cette valeur dans la plupart des cas.

Le type et la valeur de largeur préférés appropriés sont définis à l'aide des méthodes de la classe [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/):

- le champ [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) pour spécifier auto ou "aucune largeur préférée"
- la méthode [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) pour spécifier une largeur en pourcentage
- la méthode [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) pour spécifier la largeur en points

Les images ci-dessous montrent une représentation des *preferred width setting features* dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Un exemple de la façon dont ces options sont appliquées à un tableau réel dans un document peut être vu dans l'image ci-dessous.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Avant de pouvoir utiliser la largeur préférée dans un tableau, vous devez vous assurer que le tableau contient au moins une ligne. En effet, une telle mise en forme de tableau dans un document Microsoft Word ou dans un document créé dans Aspose.Words est stockée dans les lignes du tableau.

{{% /alert %}}

#### Spécifiez la largeur préférée du tableau ou de la cellule

Dans Aspose.Words, les largeurs de tableau et de cellule sont définies à l'aide de la propriété [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) et de la propriété [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth), avec des options disponibles dans l'énumération [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/):

- **Auto**, ce qui équivaut à aucun jeu de largeur préféré
- **Percent**, qui adapte l'élément par rapport à l'espace disponible dans la taille de la fenêtre ou du conteneur, et recalcule la valeur lorsque la largeur disponible change
- **Points**, qui correspond à un élément de la largeur spécifiée en points

{{% alert color="primary" %}}

Par défaut, un tableau peut être décrit comme étant ajusté à 100% de l'espace disponible sur la page. Dans ce cas, cela signifie que le tableau essaiera de prendre l'espace entre les marges de page gauche et droite.

{{% /alert %}}

L'utilisation de la propriété [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) ajustera sa largeur préférée par rapport à son conteneur: page, colonne de texte ou cellule de tableau externe s'il s'agit d'un tableau imbriqué.

L'exemple de code suivant montre comment définir l'ajustement automatique du tableau à 50% de la largeur de la page:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

L'utilisation de la propriété [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) sur une cellule donnée ajustera sa largeur préférée.

L'exemple de code suivant montre comment définir les différents paramètres de largeur préférés:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Trouver le Type et la Valeur de Largeur préférés

Vous pouvez utiliser les propriétés [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) et [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) pour trouver les détails de largeur préférés de la table ou de la cellule souhaitée.

L'exemple de code suivant montre comment récupérer le type de largeur préféré d'une cellule de tableau:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Comment régler l'ajustement automatique

La propriété [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) permet aux cellules d'un tableau de croître et de rétrécir selon un critère sélectionné. Par exemple, vous pouvez utiliser l'option **AutoFit to Window** pour adapter le tableau à la largeur de la page et l'option **AutoFit to Content** pour permettre à chaque cellule de croître ou de rétrécir en fonction de son contenu.

{{% alert color="primary" %}}

De plus, la propriété **AllowAutoFit** peut être utilisée conjointement avec une largeur de cellule préférée pour formater une cellule qui s'adapte automatiquement à son contenu, mais qui a également une largeur initiale. Si nécessaire, la largeur de la cellule peut alors dépasser cette largeur.

{{% /alert %}}

Par défaut, Aspose.Words insère une nouvelle table en utilisant **AutoFit to Window**. Le tableau sera dimensionné en fonction de la largeur de page disponible. Pour redimensionner une table, vous pouvez appeler la méthode [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int). Cette méthode accepte une énumération [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) qui spécifie quel type d'ajustement automatique est appliqué à la table.

Il est important de savoir que la méthode d'ajustement automatique est en fait un raccourci qui applique différentes propriétés à la table en même temps. Ce sont des propriétés qui donnent réellement à la table le comportement observé. Nous discuterons de ces propriétés pour chaque option d'ajustement automatique.

L'exemple de code suivant montre comment définir un tableau pour réduire ou agrandir chaque cellule en fonction de son contenu:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Nous utiliserons le tableau suivant pour appliquer les différents paramètres d'ajustement automatique à titre de démonstration.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table à fenêtre

Lorsque l'ajustement automatique à une fenêtre est appliqué à une table, les opérations suivantes sont réellement effectuées en arrière-plan:

1. La propriété **Table.AllowAutoFit** est activée pour redimensionner automatiquement les colonnes en fonction du contenu disponible, en utilisant une valeur **Table.PreferredWidth** de 100%
2. **CellFormat.PreferredWidth** est supprimé de toutes les cellules du tableau
   {{% alert color="primary" %}}
   Notez que ceci est légèrement différent du comportement Microsoft Word, où la largeur préférée de chaque cellule est définie sur des valeurs appropriées en fonction de leur taille et de leur contenu actuels. Aspose.Words ne met pas à jour la largeur préférée, ils sont donc simplement effacés à la place.
   {{% /alert %}}
3. Les largeurs de colonne sont recalculées pour le contenu actuel de la table – le résultat final est une table qui occupe toute la largeur disponible
4. La largeur des colonnes du tableau change automatiquement lorsque l'utilisateur modifie le texte

L'exemple de code suivant montre comment ajuster automatiquement un tableau à la largeur de la page:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Un exemple de la façon dont ces options sont appliquées au tableau ci-dessus peut être vu dans l'image ci-dessous.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table des matières

Lorsque la table est automatiquement mise en place du contenu, les étapes suivantes sont réellement effectuées en coulisses:

1. La propriété **Table.AllowAutoFit** est activée pour redimensionner automatiquement chaque cellule en fonction de son contenu

2. La largeur préférée du tableau est supprimée de **Table.PreferredWidth**, **CellFormat.PreferredWidth** est supprimée pour chaque cellule du tableau
   {{% alert color="primary" %}}

   Notez que cette option d'ajustement automatique supprime la largeur préférée des cellules, tout comme dans Microsoft Word. Si vous souhaitez conserver la taille des colonnes et augmenter ou diminuer les colonnes pour les adapter au contenu, vous devez définir la propriété **Table.AllowAutoFit** sur **True** seule plutôt que d'utiliser le raccourci d'ajustement automatique.{{% /alert %}}

3. Les largeurs de colonne sont recalculées pour le contenu du tableau actuel – le résultat final est un tableau où les largeurs de colonne et la largeur du tableau entier sont automatiquement redimensionnées pour s'adapter au mieux au contenu lorsque l'utilisateur modifie le texte

L'exemple de code suivant montre comment ajuster automatiquement une table à son contenu:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Un exemple de la façon dont ces options sont appliquées au tableau ci-dessus peut être vu dans l'image ci-dessous.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Désactivez AutoFit dans le Tableau et Utilisez des Largeurs de colonne fixes

Si l'ajustement automatique d'une table est désactivé et que des largeurs de colonne fixes sont utilisées à la place, les étapes suivantes sont effectuées:

1. la propriété **Table.AllowAutoFit** est désactivée afin que les colonnes ne s'agrandissent pas ou ne rétrécissent pas à leur contenu
2. La largeur préférée de l'ensemble du tableau est supprimée de **Table.PreferredWidth**, **CellFormat.PreferredWidth** est supprimée de toutes les cellules du tableau
3. Le résultat final est un tableau dont la largeur des colonnes est déterminée par la propriété [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) et dont les colonnes ne sont pas automatiquement redimensionnées lorsque l'utilisateur entre du texte ou lorsque la page est redimensionnée

{{% alert color="primary" %}}

Notez que si aucune largeur n'est spécifiée pour **CellFormat.Width**, la valeur par défaut d'un pouce (72 points) est utilisée.

{{% /alert %}}

L'exemple de code suivant montre comment désactiver l'ajustement automatique et activer la largeur fixe pour la table spécifiée:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Un exemple de la façon dont ces options sont appliquées au tableau ci-dessus peut être vu dans l'image ci-dessous.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Ordre de priorité lors du Calcul de la Largeur de Cellule

Aspose.Words permet aux utilisateurs de définir la largeur d'un tableau ou d'une cellule à travers plusieurs objets, y compris [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – sa propriété [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) est principalement laissée par les versions précédentes, cependant, elle est toujours utile pour simplifier le réglage de la largeur de la cellule.

Il est important de savoir que la propriété **CellFormat.Width** fonctionne différemment selon laquelle des autres propriétés de largeur existe déjà dans la table.

Aspose.Words utilise l'ordre suivant pour calculer les largeurs de cellule:

| Commande | Propriété | Descriptif |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
|  | [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) est déterminé | Si **AutoFit** est activé:<br>- le tableau peut dépasser la largeur préférée pour s'adapter au contenu – il ne rétrécit généralement pas en dessous de la largeur préférée<br>- toute modification de la valeur **CellFormat.Width** est ignorée et la cellule s'adaptera à son contenu à la place |
|  | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) avec une valeur de **Points** ou **Percent** | **CellFormat.Width** est ignoré |
|  | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) avec une valeur de **Auto** | La valeur de **CellFormat.Width** est copiée et devient la largeur préférée de la cellule (en points) |

{{% alert color="primary" %}}

Toutes les modifications apportées à la propriété width ne sont pas mises à jour dans la largeur préférée et doivent plutôt être appliquées à la largeur préférée.

{{% /alert %}}

{{% alert color="primary" %}}

Lors de la création d'une disposition de tableau fixe, spécifiez la largeur de la cellule. Une cellule sans largeur ne peut pas être enregistrée au format DOC. Les formats de document autres que DOC, tels que DOCX, permettent, en principe, d'enregistrer des cellules sans largeur dans une disposition de tableau fixe.

{{% /alert %}}

## Autoriser L'Espacement Entre Les Cellules

Vous pouvez obtenir ou définir tout espace supplémentaire entre les cellules du tableau similaire à l'option "Espacement des cellules" dans Microsoft Word. Cela peut être fait en utilisant la propriété [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing).

Un exemple de la façon dont ces options sont appliquées à un tableau réel dans un document peut être vu dans l'image ci-dessous.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

L'exemple de code suivant montre comment définir l'espacement entre les cellules:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Appliquer des Bordures et des Ombrages

Les bordures et l'ombrage peuvent être appliqués soit à l'ensemble du tableau en utilisant [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) et [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), soit uniquement à des cellules spécifiques en utilisant [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) et [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). De plus, les bordures de ligne peuvent être définies à l'aide de [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), mais l'ombrage ne peut pas être appliqué de cette manière.

Les images ci-dessous montrent les paramètres de bordure et d'ombre dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


L'exemple de code suivant montre comment formater un tableau et une cellule avec différentes bordures et ombrages:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
