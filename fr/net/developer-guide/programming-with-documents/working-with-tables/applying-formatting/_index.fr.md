---
title: Formatage des tableaux dans C#
second_title: Aspose.Words pour .NET
articleTitle: Appliquer le formatage du tableau
linktitle: Appliquer le formatage du tableau
description: "Formatage du tableau en détails à l'aide de C#. Utilisez C# pour formater chaque partie du tableau."
type: docs
weight: 70
url: /fr/net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Chaque élément d'un tableau peut être appliqué avec un formatage différent. Par exemple, le formatage du tableau sera appliqué à l'ensemble du tableau, le formatage des lignes à des lignes particulières uniquement, le formatage des cellules à certaines cellules uniquement.

Aspose.Words fournit un API riche pour récupérer et appliquer le formatage à un tableau. Vous pouvez utiliser les nœuds [Table](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/fr/net/aspose.words.tables/rowformat/) et [CellFormat](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/) pour définir le formatage.

Dans cet article, nous expliquerons comment appliquer le formatage à différents nœuds de tableau et quels paramètres de formatage de tableau sont pris en charge par Aspose.Words.

## Appliquer le formatage à différents nœuds

Dans cette section, nous examinerons l'application du formatage à différents nœuds de table.

### Formatage au niveau du tableau

Pour appliquer une mise en forme à un tableau, vous pouvez utiliser les propriétés disponibles sur le nœud **Table** correspondant à l'aide des classes [Table](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidth/) et [TableCollection](https://reference.aspose.com/words/fr/net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Notez que le tableau doit comporter au moins une ligne avant que les propriétés du tableau puissent être appliquées. Cela signifie que lors de la construction d'un tableau avec le [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/), ce formatage doit être effectué après le premier appel à [InsertCell](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertcell/), ou après l'ajout de la première ligne au tableau, ou lorsque les nœuds sont insérés directement dans le DOM.

{{% /alert %}}

Les images ci-dessous montrent une représentation des fonctionnalités de formatage **Table** en Microsoft Word et de leurs propriétés correspondantes en Aspose.Words.

![formattin-features-table-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-net](/words/net/applying-formatting/applying-formatting-2.png)

L'exemple de code suivant montre comment appliquer une bordure de plan à un tableau:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

L'exemple de code suivant montre comment créer une table avec toutes les bordures activées (grille):

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatage au niveau des lignes

Le formatage **Au niveau de la ligne** peut être contrôlé à l'aide des classes [Row](https://reference.aspose.com/words/fr/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/fr/net/aspose.words.tables/rowformat/) et [RowCollection](https://reference.aspose.com/words/fr/net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Notez qu'un **Row** ne peut être qu'un nœud enfant d'un **Table**. En même temps, il doit y avoir au moins un **Cell** dans le **Row** pour que le formatage puisse lui être appliqué.

{{% /alert %}}

Les images ci-dessous montrent une représentation des fonctionnalités de formatage **Row** en Microsoft Word et de leurs propriétés correspondantes en Aspose.Words.

![formatting-row-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-3.png)

L'exemple de code suivant montre comment modifier le formatage des lignes du tableau:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatage au niveau des cellules

Le formatage au niveau des cellules est contrôlé par les classes [Cell](https://reference.aspose.com/words/fr/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/) et [CellCollection](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Notez qu'un **Cell** ne peut être qu'un nœud enfant d'un **Row**. En même temps, il doit y avoir au moins un [Paragraph](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/) dans le **Cell** pour que le formatage puisse lui être appliqué.

En plus du **Paragraph**, vous pouvez également insérer un **Table** dans un **Cell**.

{{% /alert %}}

Les images ci-dessous montrent une représentation des fonctionnalités de formatage **Cell** en Microsoft Word et de leurs propriétés correspondantes en Aspose.Words.

![formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](/words/net/applying-formatting/applying-formatting-5.png)

L'exemple de code suivant montre comment modifier le formatage d'une cellule de tableau:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

L'exemple de code suivant montre comment définir la quantité d'espace (en points) à ajouter à gauche/en haut/à droite/en bas du contenu de la cellule:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## Spécifier les hauteurs de ligne

Le moyen le plus simple de définir la hauteur des lignes consiste à utiliser le **DocumentBuilder**. À l'aide des propriétés **RowFormat** appropriées, vous pouvez définir le paramètre de hauteur par défaut ou appliquer une hauteur différente pour chaque ligne du tableau.

Dans Aspose.Words, la hauteur des lignes du tableau est contrôlée par:

- la propriété hauteur de ligne – [Height](https://reference.aspose.com/words/fr/net/aspose.words.tables/rowformat/height/)
- la propriété de la règle de hauteur pour la ligne donnée – [HeightRule](https://reference.aspose.com/words/fr/net/aspose.words.tables/rowformat/heightrule/)

Dans le même temps, une hauteur différente peut être définie pour chaque rangée – cela vous permet de contrôler largement les paramètres de la table.

{{% alert color="primary" %}}

Les options de règle pour spécifier la hauteur d'un objet peuvent être définies à l'aide de l'énumération [HeightRule](https://reference.aspose.com/words/fr/net/aspose.words/heightrule/).

{{% /alert %}}

L'exemple de code suivant montre comment créer un tableau contenant une seule cellule et appliquer la mise en forme des lignes:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## Spécifier les largeurs de tableau et de cellule

Un tableau dans un document Microsoft Word propose plusieurs manières différentes de redimensionner le tableau et les cellules individuelles. Ces propriétés permettent un contrôle considérable sur l'apparence et le comportement du tableau, de sorte que Aspose.Words prend en charge le comportement des tableaux, comme dans Microsoft Word.

Il est important de savoir que les éléments du tableau présentent plusieurs propriétés différentes qui peuvent affecter la manière dont la largeur du tableau global, ainsi que celle des cellules individuelles, est calculée:

- Largeur préférée sur la table
- Largeur préférée sur les cellules individuelles
- Autoriser l'ajustement automatique sur la table

Cet article détaille le fonctionnement des différentes propriétés de calcul de la largeur du tableau et comment obtenir un contrôle total sur le calcul de la largeur du tableau. C'est
particulièrement utile à connaître dans les cas où la disposition du tableau n'apparaît pas comme prévu.

{{% alert color="primary" %}}

Dans la plupart des cas, il est recommandé de privilégier la cellule préférée à la largeur du tableau. La largeur de cellule préférée est plus conforme à la spécification du format DOCX ainsi qu'au modèle Aspose.Words.

La largeur de cellule est en fait une valeur calculée pour le format DOCX. La largeur réelle des cellules peut dépendre de nombreux facteurs. Par exemple, la modification des marges de la page ou de la largeur préférée du tableau peut affecter la largeur réelle des cellules.

La largeur de cellule préférée est une propriété de cellule stockée dans le document. Cela ne dépend de rien et ne change pas lorsque vous modifiez le tableau ou d'autres propriétés de la cellule.

{{% /alert %}}

{{% alert color="primary" %}}

Toutes les propriétés et méthodes décrites dans cet article sont liées au fonctionnement des tables dans Microsoft Word. Ainsi, dans la plupart des cas, si vous construisez votre table par programme mais que vous avez du mal à créer la table souhaitée, vous pouvez d'abord essayer de la créer visuellement dans Microsoft Word, puis simplement copier les valeurs de formatage dans votre application.

{{% /alert %}}

### Comment utiliser la largeur préférée

La largeur souhaitée d'un tableau ou de cellules individuelles est définie via la propriété de largeur préférée, qui correspond à la taille à laquelle un élément s'efforce de s'adapter. Autrement dit, la largeur préférée peut être spécifiée pour l'ensemble du tableau ou pour des cellules individuelles. Dans certaines situations, il peut ne pas être possible d'ajuster exactement cette largeur, mais la largeur réelle sera proche de cette valeur dans la plupart des cas.

Le type et la valeur de largeur préférée appropriés sont définis à l'aide des méthodes de la classe [PreferredWidth](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidth/):

* la méthode [Auto](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidth/auto/) pour spécifier auto ou "aucune largeur préférée"
* la méthode [FromPercent](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidth/frompercent/) pour spécifier une largeur en pourcentage
* la méthode [FromPoints](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidth/frompoints/) pour préciser la largeur en points

Les images ci-dessous montrent une représentation des *fonctionnalités de réglage de largeur préférées* dans Microsoft Word et de leurs propriétés correspondantes dans Aspose.Words.

![formatting-table-properties-aspose-words-net](/words/net/applying-formatting/applying-formatting-8.png)

Un exemple de la façon dont ces options sont appliquées à un tableau réel dans un document peut être vu dans l'image ci-dessous.

![todo:image_alt_text](/words/net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Avant de pouvoir utiliser la largeur préférée dans un tableau, vous devez vous assurer que le tableau contient au moins une ligne. En effet, un tel formatage de tableau dans un document Microsoft Word ou dans un document créé en Aspose.Words est stocké dans les lignes du tableau.

{{% /alert %}}

#### Spécifiez le tableau préféré ou la largeur de cellule

Dans Aspose.Words, les largeurs des tableaux et des cellules sont définies à l'aide des propriétés [Table.PreferredWidth](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/preferredwidth/) et [CellFormat.PreferredWidth](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/preferredwidth/), avec des options disponibles dans l'énumération [PreferredWidthType](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidthtype/):

- **Auto**, ce qui équivaut à aucun ensemble de largeurs préférées
- **Percent**, qui ajuste l'élément par rapport à l'espace disponible dans la taille de la fenêtre ou du conteneur, et recalcule la valeur lorsque la largeur disponible change
- **Points**, qui correspond à un élément de la largeur spécifiée en points

{{% alert color="primary" %}}

Par défaut, un tableau peut être décrit comme étant ajusté à 100 % de l'espace disponible sur la page. Dans ce cas, cela signifie que le tableau tentera d'occuper l'espace entre les marges gauche et droite de la page.

{{% /alert %}}

L'utilisation de la propriété [Table.PreferredWidth](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/preferredwidth/) ajustera sa largeur préférée par rapport à son conteneur: page, colonne de texte ou cellule externe du tableau s'il s'agit d'un tableau imbriqué.

L'exemple de code suivant montre comment configurer le tableau pour qu'il s'ajuste automatiquement à 50 % de la largeur de la page:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

L'utilisation de la propriété [CellFormat.PreferredWidth](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/preferredwidth/) sur une cellule donnée ajustera sa largeur préférée.

L'exemple de code suivant montre comment définir les différents paramètres de largeur préférés:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### Rechercher le type et la valeur de largeur préférés

Vous pouvez utiliser les propriétés [Type](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidth/type/) et [Value](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidth/value/) pour trouver les détails de largeur préférés du tableau ou de la cellule souhaitée.

L'exemple de code suivant montre comment récupérer le type de largeur préféré d'une cellule de tableau:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Comment définir l'ajustement automatique

La propriété [AllowAutoFit](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/allowautofit/) permet aux cellules d'un tableau de s'agrandir et de se réduire selon un critère sélectionné. Par exemple, vous pouvez utiliser l'option **Ajustement automatique à la fenêtre** pour ajuster le tableau à la largeur de la page et l'option **Ajustement automatique au contenu** pour permettre à chaque cellule de s'agrandir ou de se réduire en fonction de son contenu.

{{% alert color="primary" %}}

De plus, la propriété **AllowAutoFit** peut être utilisée conjointement avec une largeur de cellule préférée pour formater une cellule qui s'adapte automatiquement à son contenu, mais qui possède également une largeur initiale. Si nécessaire, la largeur de la cellule peut alors dépasser cette largeur.

{{% /alert %}}

Par défaut, Aspose.Words insère une nouvelle table en utilisant **Ajustement automatique à la fenêtre**. Le tableau sera dimensionné en fonction de la largeur de page disponible. Pour redimensionner un tableau, vous pouvez appeler la méthode [AutoFit](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/autofit/). Cette méthode accepte une énumération [AutoFitBehavior](https://reference.aspose.com/words/fr/net/aspose.words.tables/autofitbehavior/) qui spécifie le type d'ajustement automatique appliqué à la table.

Il est important de savoir que la méthode d’ajustement automatique est en réalité un raccourci qui applique simultanément différentes propriétés au tableau. Ce sont des propriétés qui donnent réellement au tableau le comportement observé. Nous discuterons de ces propriétés pour chaque option d’ajustement automatique.

L'exemple de code suivant montre comment définir un tableau pour réduire ou agrandir chaque cellule en fonction de son contenu:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### Ajuster automatiquement le tableau à la fenêtre

Lorsque l'ajustement automatique d'une fenêtre est appliqué à une table, les opérations suivantes sont réellement effectuées en arrière-plan:

1. La propriété **Table.AllowAutoFit** est activée pour redimensionner automatiquement les colonnes pour les adapter au contenu disponible, en utilisant une valeur **Table.PreferredWidth** de 100 %
2. **CellFormat.PreferredWidth** est supprimé de toutes les cellules du tableau
      {{% alert color="primary" %}}
   Notez que ceci est légèrement différent du comportement Microsoft Word, où la largeur préférée de chaque cellule est définie sur des valeurs appropriées en fonction de leur taille et de leur contenu actuels. Aspose.Words ne met pas à jour la largeur préférée, elle est donc simplement effacée.
      {{% /alert %}}
3. Les largeurs de colonnes sont recalculées pour le contenu actuel du tableau – le résultat final est un tableau qui occupe toute la largeur disponible
4. La largeur des colonnes du tableau change automatiquement à mesure que l'utilisateur modifie le texte

L'exemple de code suivant montre comment ajuster automatiquement un tableau à la largeur de la page:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Ajuster automatiquement le tableau au contenu

Lorsque le contenu du tableau est automatiquement ajusté, les étapes suivantes sont réellement effectuées en arrière-plan:

1. La propriété **Table.AllowAutoFit** est activée pour redimensionner automatiquement chaque cellule en fonction de son contenu

2. La largeur de tableau préférée est supprimée de **Table.PreferredWidth**, **CellFormat.PreferredWidth** est supprimé pour chaque cellule du tableau
      {{% alert color="primary" %}}

   Notez que cette option d'ajustement automatique supprime la largeur préférée des cellules, tout comme dans Microsoft Word. Si vous souhaitez conserver la taille des colonnes et augmenter ou diminuer les colonnes pour les adapter au contenu, vous devez définir la propriété **Table.AllowAutoFit** sur **True** seule plutôt que d'utiliser le raccourci d'ajustement automatique.{{% /alert %}}

3. Les largeurs de colonnes sont recalculées pour le contenu actuel du tableau – le résultat final est un tableau dans lequel les largeurs de colonnes et la largeur du tableau entier sont automatiquement redimensionnées pour s'adapter au mieux au contenu lorsque l'utilisateur modifie le texte

L'exemple de code suivant montre comment ajuster automatiquement une table à son contenu:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Désactivez l'ajustement automatique dans le tableau et utilisez des largeurs de colonne fixes

Si l'ajustement automatique d'un tableau est désactivé et que des largeurs de colonnes fixes sont utilisées à la place, les étapes suivantes sont effectuées:

1. La propriété **Table.AllowAutoFit** est désactivée afin que les colonnes ne s'agrandissent pas ou ne se réduisent pas à leur contenu

2. La largeur préférée de l'ensemble du tableau est supprimée de **Table.PreferredWidth**, **CellFormat.PreferredWidth** est supprimé de toutes les cellules du tableau
3. Le résultat final est un tableau dont les largeurs de colonnes sont déterminées par la propriété [CellFormat.Width](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/width/) et dont les colonnes ne sont pas automatiquement redimensionnées lorsque l'utilisateur saisit du texte ou lorsque la page est redimensionnée

{{% alert color="primary" %}}

Notez que si aucune largeur n'est spécifiée pour **CellFormat.Width**, la valeur par défaut d'un pouce (72 points) est utilisée.

{{% /alert %}}

L'exemple de code suivant montre comment désactiver l'ajustement automatique et activer la largeur fixe pour la table spécifiée:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Ordre de priorité lors du calcul de la largeur des cellules

Aspose.Words permet aux utilisateurs de définir la largeur d'un tableau ou d'une cellule via plusieurs objets, y compris [CellFormat](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/) – sa propriété [Width](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/width/) est en grande partie héritée des versions précédentes, cependant, elle reste utile pour simplifier la définition de la largeur des cellules.

Il est important de savoir que la propriété **CellFormat.Width** fonctionne différemment selon laquelle des autres propriétés de largeur existe déjà dans le tableau.

Aspose.Words utilise l'ordre suivant pour calculer les largeurs de cellules:

|  Commande |  Propriété |  Description |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/allowautofit/) est déterminé |  Si **AutoFit** est activé:<br>- le tableau peut s'étendre au-delà de la largeur préférée pour s'adapter au contenu – il ne rétrécit généralement pas en dessous de la largeur préférée<br>- toute modification de la valeur **CellFormat.Width** est ignorée et la cellule s'adaptera à son contenu |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidthtype/) avec une valeur de **Points** ou **Percent** |  **CellFormat.Width** est ignoré |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/fr/net/aspose.words.tables/preferredwidthtype/) avec une valeur de **Auto** |  La valeur de **CellFormat.Width** est copiée et devient la largeur préférée de la cellule (en points) |

{{% alert color="primary" %}}

Toutes les modifications apportées à la propriété width ne sont pas mises à jour dans la largeur préférée et doivent plutôt être appliquées à la largeur préférée.

{{% /alert %}}

{{% alert color="primary" %}}

Lors de la création d’une disposition de tableau fixe, spécifiez la largeur des cellules. Une cellule sans largeur ne peut pas être enregistrée au format DOC. Les formats de documents autres que DOC, tels que DOCX, permettent, en principe, d'enregistrer des cellules sans largeur dans une disposition de tableau fixe.

{{% /alert %}}

## Autoriser l'espacement entre les cellules

Vous pouvez obtenir ou définir n'importe quel espace supplémentaire entre les cellules du tableau, similaire à l'option "Espacement des cellules" dans Microsoft Word. Cela peut être fait en utilisant la propriété [AllowCellSpacing](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/allowcellspacing/).

Un exemple de la façon dont ces options sont appliquées à un tableau réel dans un document peut être vu dans l'image ci-dessous.

<img src="/words/net/applying-formatting/applying-formatting-10.png" alt="formatage-espacement-entre-cellules-aspose-words-net" style="width:500px"/>

L'exemple de code suivant montre comment définir l'espacement entre les cellules:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## Appliquer des bordures et un ombrage

Les bordures et l'ombrage peuvent être appliqués soit à l'ensemble du tableau à l'aide de [Table.SetBorder](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/setborders/) et [Table.SetShading](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/setshading/), soit uniquement à des cellules spécifiques à l'aide de [CellFormat.Borders](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/borders/) et [CellFormat.Shading](https://reference.aspose.com/words/fr/net/aspose.words.tables/cellformat/shading/). De plus, les bordures de lignes peuvent être définies à l'aide de [RowFormat.Borders](https://reference.aspose.com/words/fr/net/aspose.words.tables/rowformat/borders/), mais l'ombrage ne peut pas être appliqué de cette manière.

Les images ci-dessous montrent les paramètres de bordure et d'ombre dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![formatting-border-line-aspose-words-net](/words/net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](/words/net/applying-formatting/applying-formatting-7.png)

L'exemple de code suivant montre comment formater un tableau et une cellule avec des bordures et des ombres différentes:

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}
