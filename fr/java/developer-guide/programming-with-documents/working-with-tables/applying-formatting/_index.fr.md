---
title: Formatage du tableau Java
second_title: Aspose.Words pour Java
articleTitle: Appliquer le formatage de la table
linktitle: Appliquer le formatage de la table
description: "Formatage du tableau en détail. Utilisation Java pour formater chaque partie du tableau."
type: docs
weight: 70
url: /fr/java/applying-formatting/
---

Chaque élément d'un tableau peut être appliqué avec un formatage différent. Par exemple, le formatage de table sera appliqué à l'ensemble de la table, le formatage de ligne à seulement des lignes particulières, le formatage de cellule à seulement certaines cellules.

Aspose.Words fournit une riche API pour récupérer et appliquer le formatage sur une table. Vous pouvez utiliser le [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), et [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) noeuds pour définir le formatage.

Dans cet article, nous allons parler de la façon d'appliquer le formatage à différents nœuds de table et quels paramètres de formatage de table Aspose.Words soutien.

## Appliquer le formatage à différents nœuds

Dans cette section, nous examinerons l'application du formatage à divers nœuds de table.

### Formatage du niveau du tableau

Pour appliquer le formatage à une table, vous pouvez utiliser les propriétés disponibles sur le **Table** noeud utilisant le [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), et [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) les cours.

{{% alert color="primary" %}}

Notez que la table doit avoir au moins une ligne avant que les propriétés de la table puissent être appliquées. Cela signifie que lors de la construction d'une table [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), ce formatage doit être fait après le premier appel à [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), ou après l'ajout de la première ligne à la table, ou lorsque des nœuds sont insérés directement dans la table DOM.

{{% /alert %}}

Les images ci-dessous montrent une représentation de la **Table** fonctions de formatage dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

L'exemple de code suivant montre comment appliquer une bordure de contour à un tableau:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

L'exemple de code suivant montre comment construire une table avec toutes les bordures activées (grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Formatage du niveau de ligne

Le formatage au niveau de la ligne** peut être contrôlé en utilisant le [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), et [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) les cours.

{{% alert color="primary" %}}

Remarque: **Row** ne peut être qu'un nœud d'enfant d'un **Table**. Dans le même temps, il doit y avoir au moins une **Cell** dans le **Row** afin que le formatage puisse lui être appliqué.

{{% /alert %}}

Les images ci-dessous montrent une représentation de la **Row** fonctions de formatage dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

L'exemple de code suivant montre comment modifier le formatage de la ligne de tableau:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Formatage du niveau de cellule

Le formatage au niveau des cellules est contrôlé par [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), et [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) les cours.

{{% alert color="primary" %}}

Remarque: **Cell** ne peut être qu'un nœud d'enfant d'un **Row**. Dans le même temps, il doit y avoir au moins une [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) dans le **Cell** afin que le formatage puisse lui être appliqué.

En plus de **Paragraph**, vous pouvez également insérer un **Table** dans une **Cell**.

{{% /alert %}}

Les images ci-dessous montrent une représentation de la **Cell** fonctions de formatage dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

L'exemple de code suivant montre comment modifier le formatage d'une cellule de table:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

L'exemple de code suivant montre comment définir la quantité d'espace (en points) à ajouter à la gauche/en haut/à droite/en bas du contenu de la cellule:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Spécifier les hauteurs de ligne

La façon la plus simple de régler la hauteur de ligne est d'utiliser le **DocumentBuilder**. Utilisation de la méthode appropriée **RowFormat** propriétés, vous pouvez définir la hauteur par défaut ou appliquer une hauteur différente pour chaque ligne de la table.

En Aspose.Words, la hauteur de la rangée de table est contrôlée par:

- la propriété hauteur de rangée – [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- la propriété de règle de hauteur pour la ligne donnée – [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

En même temps, une hauteur différente peut être définie pour chaque ligne, ce qui vous permet de contrôler largement les paramètres de la table.

{{% alert color="primary" %}}

Les options de règle pour spécifier la hauteur d'un objet peuvent être définies en utilisant le [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) champs.

{{% /alert %}}

L'exemple de code suivant montre comment créer une table contenant une seule cellule et appliquer le formatage de ligne:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Spécifier les largeurs de tableau et de cellule

Une table dans une Microsoft Word document fournit plusieurs façons différentes de redimensionner le tableau et les cellules individuelles. Ces propriétés permettent un contrôle considérable sur l'apparence et le comportement de la table, de sorte que Aspose.Words prend en charge le comportement des tables, comme dans Microsoft Word.

Il est important de savoir que les éléments du tableau présentent plusieurs propriétés différentes qui peuvent influer sur la façon dont les largeurs du tableau global, ainsi que les cellules individuelles, sont calculées:

- Largeur préférée sur la table
- Largeur préférée sur les cellules individuelles
- Automatisation sur la table

Cet article détaille comment les différentes propriétés de calcul de la largeur de la table fonctionnent et comment obtenir un contrôle complet sur le calcul de la largeur de la table. Voici
Il est particulièrement utile de savoir dans les cas où la présentation du tableau n'apparaît pas comme prévu.

{{% alert color="primary" %}}

Dans la plupart des cas, la cellule préférée est recommandée par rapport à la largeur de la table. La largeur de cellule préférée est plus en ligne avec la spécification de format DOCX ainsi que la Aspose.Words modèle.

La largeur des cellules est en fait une valeur calculée pour le format DOCX. La largeur réelle des cellules peut dépendre de beaucoup de choses. Par exemple, modifier les marges de la page ou la largeur de la table préférée peut affecter la largeur réelle de la cellule.

La largeur de cellule préférée est une propriété de cellule qui est stockée dans le document. Il ne dépend de rien et ne change pas lorsque vous changez la table ou d'autres propriétés de la cellule.

{{% /alert %}}

{{% alert color="primary" %}}

Toutes les propriétés et méthodes décrites dans cet article sont liées à la façon dont les tableaux fonctionnent dans Microsoft Word. Donc, dans la plupart des cas, si vous construisez votre table programmatiquement mais trouvez difficile de créer la table souhaitée, vous pouvez plutôt essayer de la créer visuellement dans Microsoft Word d'abord, puis copiez simplement les valeurs de formatage dans votre application.

{{% /alert %}}

### Comment utiliser la largeur préférée

La largeur souhaitée d'une table ou de cellules individuelles est définie par la propriété de largeur préférée, qui est la taille qu'un élément s'efforce d'adapter. Autrement dit, la largeur préférée peut être spécifiée pour toute la table ou pour chaque cellule. Dans certains cas, il peut ne pas être possible d'adapter cette largeur exactement, mais la largeur réelle sera proche de cette valeur dans la plupart des cas.

Le type de largeur et la valeur de préférence appropriés sont définis en utilisant les méthodes de la [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) classe:

- les [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) champ pour spécifier la largeur préférée
- les [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) méthode pour spécifier un pourcentage de largeur
- les [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) méthode pour spécifier la largeur en points

Les images ci-dessous montrent une représentation des caractéristiques de réglage de largeur *préféré* dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Un exemple de la façon dont ces options sont appliquées à un tableau réel dans un document peut être vu dans l'image ci-dessous.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Avant de pouvoir utiliser la largeur préférée dans une table, vous devez vous assurer que la table contient au moins une rangée. C'est parce que ce formatage de table dans un Microsoft Word ou dans un document créé dans Aspose.Words est stocké dans les lignes de la table.

{{% /alert %}}

#### Spécifiez la table ou la largeur de cellule préférée

En Aspose.Words, les largeurs de la table et de la cellule sont définies en utilisant les [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) propriété et [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) propriété, avec options disponibles dans la [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) énumération:

- Oui. **Auto**, qui est équivalent à aucun ensemble de largeur préféré
- Oui. **Percent**, qui correspond à l'élément par rapport à l'espace disponible dans la fenêtre ou la taille du conteneur, et recalcule la valeur lorsque la largeur disponible change
- Oui. **Points**, qui correspond à un élément de la largeur spécifiée en points

{{% alert color="primary" %}}

Par défaut, une table peut être décrite comme étant installée à 100% de l'espace disponible sur la page. Dans ce cas, cela signifie que la table va essayer de prendre l'espace entre les marges de gauche et de droite.

{{% /alert %}}

Utilisation [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) propriété ajustera sa largeur préférée par rapport à son conteneur: page, colonne de texte, ou cellule de table externe si c'est une table imbriquée.

L'exemple de code suivant montre comment régler automatiquement la table à 50 % de la largeur de la page:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Utilisation [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) propriété sur une cellule donnée ajustera sa largeur préférée.

L'exemple de code suivant montre comment définir les différents paramètres de largeur préférés:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Trouver le type et la valeur de largeur préféré

Vous pouvez utiliser le [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) et [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) propriétés pour trouver les détails de largeur préférés de la table ou de la cellule souhaitée.

L'exemple de code suivant montre comment récupérer le type de largeur préféré d'une cellule de table:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Comment définir Autofit

Les [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) propriété permet aux cellules d'une table de croître et de rétrécir selon un critère sélectionné. Par exemple, vous pouvez utiliser **Installation automatique à la fenêtre** option pour adapter la table à la largeur de la page, et la **Installation automatique au contenu** possibilité de permettre à chaque cellule de grandir ou de rétrécir selon son contenu.

{{% alert color="primary" %}}

En outre, **AllowAutoFit** propriété peut être utilisé en conjonction avec une largeur de cellule préférée pour formater une cellule qui correspond automatiquement à son contenu, mais a également une largeur initiale. Si nécessaire, la largeur de la cellule peut alors dépasser cette largeur.

{{% /alert %}}

Par défaut, Aspose.Words insère un nouveau tableau en utilisant **Installation automatique à la fenêtre**. Le tableau sera dimensionné en fonction de la largeur de page disponible. Pour redimensionner une table, vous pouvez appeler le [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) méthode. Cette méthode accepte [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) énumération qui spécifie quel type d'autofit est appliqué au tableau.

Il est important de savoir que la méthode autofit est en fait un raccourci qui applique différentes propriétés à la table en même temps. Ce sont des propriétés qui donnent à la table le comportement observé. Nous allons discuter de ces propriétés pour chaque option d'autofit.

L'exemple de code suivant montre comment définir une table pour rétrécir ou faire croître chaque cellule selon son contenu:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Nous utiliserons le tableau suivant pour appliquer les différents réglages d'ajustement automatique comme démonstration.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### Installation automatique de la table dans la fenêtre

Lorsque l'auto-ajustement à une fenêtre est appliqué à une table, les opérations suivantes sont effectivement effectuées dans les coulisses:

1. Les **Table.AllowAutoFit** la propriété est activée pour redimensionner automatiquement les colonnes en fonction du contenu disponible, en utilisant un **Table.PreferredWidth** Valeur de 100 %
2. **CellFormat.PreferredWidth** est retiré de toutes les cellules de table
      {{% alert color="primary" %}}
   Notez que cela est légèrement différent de la Microsoft Word comportement, où la largeur préférée de chaque cellule est définie à des valeurs appropriées en fonction de leur taille actuelle et de leur contenu. Aspose.Words ne met pas à jour la largeur préférée pour qu'ils soient juste nettoyés à la place.
      {{% /alert %}}
3. Les largeurs des colonnes sont recalculées pour le contenu actuel de la table – le résultat final est une table qui occupe toute la largeur disponible
4. La largeur des colonnes du tableau change automatiquement à mesure que l'utilisateur modifie le texte

L'exemple de code suivant montre comment auto-adapter une table à la largeur de la page:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Un exemple de la façon dont ces options sont appliquées au tableau ci-dessus peut être vu dans l'image ci-dessous.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table au contenu

Lorsque la table est adaptée automatiquement au contenu, les étapes suivantes sont en fait exécutées dans les coulisses:

1. Les **Table.AllowAutoFit** propriété est activé pour redimensionner automatiquement chaque cellule selon son contenu

2. La largeur de la table préférée est retirée de **Table.PreferredWidth**, **CellFormat.PreferredWidth** est enlevé pour chaque cellule de table
      {{% alert color="primary" %}}

   Notez que cette option autofit supprime la largeur préférée des cellules, tout comme dans Microsoft Word. Si vous voulez garder les tailles de colonne et augmenter ou diminuer les colonnes pour correspondre au contenu, vous devez définir le **Table.AllowAutoFit** propriété **True** par lui-même plutôt que d'utiliser le raccourci autofit.{{% /alert %}}

3. Les largeurs de colonnes sont recalculées pour le contenu courant de la table – le résultat final est une table où les largeurs de colonnes et la largeur de la table entière sont automatiquement redimensionnées pour s'adapter le mieux au contenu lorsque l'utilisateur modifie le texte

L'exemple de code suivant montre comment auto-adapter une table à son contenu:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Un exemple de la façon dont ces options sont appliquées au tableau ci-dessus peut être vu dans l'image ci-dessous.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Désactiver l'autofit dans la table et utiliser les largeurs de colonnes fixes

Si une table a désactivé automatiquement et que les largeurs de colonnes fixes sont utilisées à la place, les étapes suivantes sont effectuées:

1. **Table.AllowAutoFit** la propriété est désactivée de sorte que les colonnes ne croissent pas ou ne rétrécissent pas à leur contenu
2. La largeur préférée de la table entière est retirée de **Table.PreferredWidth**, **CellFormat.PreferredWidth** est retiré de toutes les cellules de table
3. Le résultat final est une table dont la largeur des colonnes est déterminée par la [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) propriété, et dont les colonnes ne sont pas automatiquement redimensionnées lorsque l'utilisateur entre le texte ou lorsque la page est redimensionnée

{{% alert color="primary" %}}

Notez que si aucune largeur n'est spécifiée pour **CellFormat.Width**, la valeur par défaut d'un pouce (72 points) est utilisée.

{{% /alert %}}

L'exemple de code suivant montre comment désactiver l'autofit et activer la largeur fixe pour le tableau spécifié:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Un exemple de la façon dont ces options sont appliquées au tableau ci-dessus peut être vu dans l'image ci-dessous.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Ordre de priorité lors du calcul de la largeur des cellules

Aspose.Words permet aux utilisateurs de définir la largeur d'une table ou d'une cellule à travers plusieurs objets, y compris [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – ses [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) propriété est la plupart du temps laissée de versions précédentes, cependant, il est toujours utile pour simplifier le réglage de la largeur de cellule.

Il est important de savoir que **CellFormat.Width** propriété fonctionne différemment en fonction de laquelle des autres propriétés de largeur existent déjà dans le tableau.

Aspose.Words utilise l'ordre suivant pour calculer la largeur des cellules:

|  Ordre |  Biens |  Désignation des marchandises |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) est déterminé |  Si **AutoFit** est activé:<br/>- la table peut dépasser la largeur préférée pour accommoder le contenu – elle ne se rétrécit généralement pas sous la largeur préférée<br/>- tout changement **CellFormat.Width** valeur est ignorée et la cellule s'adaptera à son contenu |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) d'une valeur **Points** ou **Percent** |  **CellFormat.Width** est ignoré |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) d'une valeur **Auto** |  La valeur de **CellFormat.Width** est copié et devient la largeur préférée de la cellule (en points) |

{{% alert color="primary" %}}

Les modifications apportées à la propriété de largeur ne sont pas mises à jour dans la largeur préférée et doivent plutôt être appliquées à la largeur préférée.

{{% /alert %}}

{{% alert color="primary" %}}

Lors de la création d'une mise en page fixe, spécifiez la largeur de la cellule. Une cellule sans largeur ne peut pas être enregistrée au format DOC. Les formats de documents autres que DOC, tels que DOCX, permettent, en principe, de sauvegarder des cellules sans largeur dans une présentation fixe de table.

{{% /alert %}}

## Permettre l'espacement entre les cellules

Vous pouvez obtenir ou définir n'importe quel espace supplémentaire entre les cellules de la table similaire à l'option "l'espacementell" dans Microsoft Word. Ceci peut être fait en utilisant le [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) propriété.

Un exemple de la façon dont ces options sont appliquées à un tableau réel dans un document peut être vu dans l'image ci-dessous.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

L'exemple de code suivant montre comment régler l'espacement entre les cellules:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Appliquer les frontières et l'ombrage

Les bordures et l'ombrage peuvent être appliqués soit à l'ensemble du tableau en utilisant [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) et [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), ou uniquement à des cellules spécifiques utilisant [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) et [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). En outre, les bordures de ligne peuvent être définies en utilisant [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), Toutefois, l'ombrage ne peut pas être appliqué de cette manière.

Les images ci-dessous montrent les paramètres de bordure et d'ombre dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


L'exemple de code suivant montre comment formater une table et une cellule avec différentes bordures et ombres:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}