---
title: Changer le style de tableau dans les documents Word
second_title: Aspose.Words pour .NET
articleTitle: Appliquer le style de tableau
linktitle: Appliquer le style de tableau
description: "Formatage avancé des tableaux C#. Créez un style de tableau à l'aide de C#. Appliquez le style de tableau C#."
type: docs
weight: 80
url: /fr/net/working-with-tablestyle/
timestamp: 2024-02-02-12-07-36
---

Un style de tableau définit un ensemble de mises en forme qui peuvent être facilement appliquées à un tableau. Le formatage tel que les bordures, l'ombrage, l'alignement et la police peut être défini dans un style de tableau et appliqué à de nombreux tableaux pour une apparence cohérente.

Aspose.Words prend en charge l'application d'un style de tableau à un tableau ainsi que la lecture des propriétés de n'importe quel style de tableau. Les styles de tableau sont conservés lors du chargement et de l'enregistrement des manières suivantes:

- Les styles de tableau aux formats DOCX et WordML sont conservés lors du chargement et de l'enregistrement dans ces formats
- Les styles de tableau sont conservés lors du chargement et de l'enregistrement au format DOC (mais pas dans un autre format)
- Lors de l'exportation vers d'autres formats, du rendu ou de l'impression, les styles de tableau sont étendus au formatage direct dans le tableau, de sorte que tout le formatage est préservé

## Créer un style de tableau

L'utilisateur peut créer un nouveau style et l'ajouter à la collection de styles. La méthode [Add](https://reference.aspose.com/words/fr/net/aspose.words/stylecollection/add/) est utilisée pour créer un nouveau style de tableau.

L'exemple de code suivant montre comment créer un nouveau style de tableau défini par l'utilisateur:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Copier un style de tableau existant

Si nécessaire, vous pouvez copier un style de tableau qui existe déjà dans un certain document dans votre collection de styles à l'aide de la méthode `AddCopy`.

Il est important de savoir qu'avec cette copie, les styles liés sont également copiés.

L'exemple de code suivant montre comment importer un style d'un document vers un autre document:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Appliquer un style de tableau existant

Aspose.Words fournit un [TableStyle](https://reference.aspose.com/words/fr/net/aspose.words/tablestyle/) hérité de la classe [Style](https://reference.aspose.com/words/fr/net/aspose.words/style/). **TableStyle** permet à l'utilisateur d'appliquer différentes options de style telles que l'ombrage, le remplissage, l'indentation, [CellSpacing](https://reference.aspose.com/words/fr/net/aspose.words/tablestyle/cellspacing/) et [Font](https://reference.aspose.com/words/fr/net/aspose.words/style/font/), etc.

De plus, Aspose.Words fournit la classe [StyleCollection](https://reference.aspose.com/words/fr/net/aspose.words/stylecollection/) et quelques propriétés de la classe `Table` pour spécifier le style de tableau avec lequel nous travaillerons: [Style](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/stylename/) et [StyleOptions](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/styleoptions/).

Aspose.Words fournit également une classe [ConditionalStyle](https://reference.aspose.com/words/fr/net/aspose.words/conditionalstyle/) qui représente un formatage spécial appliqué à certaines zones d'un tableau avec un style de tableau attribué, ainsi que le [ConditionalStyleCollection](https://reference.aspose.com/words/fr/net/aspose.words/conditionalstylecollection/) qui représente une collection d'objets **ConditionalStyle**. Cette collection contient un ensemble permanent d'éléments représentant un élément pour chaque valeur du type d'énumération [ConditionalStyleType](https://reference.aspose.com/words/fr/net/aspose.words/conditionalstyletype/). L'énumération **ConditionalStyleType** définit toutes les zones de tableau possibles pour lesquelles une mise en forme conditionnelle peut être définie dans un style de tableau.

Dans ce cas, la mise en forme conditionnelle peut être définie pour toutes les zones de tableau possibles définies sous le type d'énumération ConditionalStyleType.

L'exemple de code suivant montre comment définir une mise en forme conditionnelle pour la ligne d'en-tête du tableau:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

Vous pouvez également choisir les parties du tableau auxquelles appliquer des styles, telles que la première colonne, la dernière colonne, les lignes à bandes. Ils sont répertoriés dans l'énumération [TableStyleOptions](https://reference.aspose.com/words/fr/net/aspose.words.tables/tablestyleoptions/) et sont appliqués via la propriété [StyleOptions](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/styleoptions/). L'énumération **TableStyleOptions** permet une combinaison au niveau du bit de ces fonctionnalités.

L'exemple de code suivant montre comment créer une nouvelle table avec un style de table appliqué:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Les images ci-dessous montrent une représentation du **Table Styles** en Microsoft Word et de leurs propriétés correspondantes en Aspose.Words.

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## Prenez le formatage du style de tableau et appliquez-le en tant que formatage direct

Aspose.Words fournit également la méthode [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/fr/net/aspose.words/document/expandtablestylestodirectformatting/) pour prendre le formatage trouvé sur un style de tableau et l'étendre aux lignes et aux cellules du tableau en tant que formatage direct. Essayez de combiner la mise en forme avec le style de tableau et le style de cellule.

{{% alert color="primary" %}}

Cette méthode ne remplacera aucune autre mise en forme déjà appliquée au tableau via un format de ligne ou de cellule.

{{% /alert %}}

L'exemple de code suivant montre comment étendre la mise en forme des styles aux lignes et cellules du tableau en tant que mise en forme directe:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
