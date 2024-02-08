---
title: Comment créer une table à partir d'un `DataTable` dans C#
second_title: Aspose.Words pour .NET
articleTitle: Construire une table à partir d'un `DataTable`
linktitle: Construire une table à partir d'un `DataTable`
description: "Exemple de remplissage d'un tableau de documents à partir d'une base de données externe à l'aide de C#."
type: docs
weight: 120
url: /fr/net/how-to-build-a-table-from-a-datatable/
---

Souvent, votre application extraira des données d'une base de données et les stockera sous la forme d'un **DataTable**. Vous pouvez facilement insérer ces données dans votre document en tant que nouveau tableau et appliquer rapidement une mise en forme à l'ensemble du tableau.

{{% alert color="primary" %}}

Notez que la méthode préférée pour insérer des données d'un **DataTable** dans une table de document consiste à utiliser [Mail Merge avec régions](https://docs.aspose.com/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). La technique présentée dans cet article n'est suggérée que si vous ne parvenez pas à créer au préalable un modèle approprié avec lequel fusionner les données, en d'autres termes si vous souhaitez que tout se déroule par programme.

{{% /alert %}}

En utilisant Aspose.Words, vous pouvez facilement récupérer des données d'une base de données et les stocker sous forme de table:

1. Créez un nouvel objet **DocumentBuilder** sur votre **Document**.
1. Démarrez une nouvelle table en utilisant **DocumentBuilder**.
1. Si nous voulons insérer les noms de chacune des colonnes de notre **DataTable** comme ligne d'en-tête, parcourez chaque colonne de données et écrivez les noms de colonnes dans une ligne du tableau.
1. Parcourez chaque **DataRow** dans le **DataTable**:
   1. Parcourez chaque objet du **DataRow**.
   1. Insérez l'objet dans le document à l'aide de **DocumentBuilder**. La méthode utilisée dépend du type de l'objet inséré, par exemple **DocumentBuilder.Writeln** pour le texte et **DocumentBuilder.InsertImage** pour un tableau d'octets qui représente une image.
   1. À la fin du traitement du **DataRow**, terminez également la ligne créée par le **DocumentBuilder** en utilisant **DocumentBuilder.EndRow**.
1. Une fois que toutes les lignes du **DataTable** ont été traitées, terminez le tableau en appelant **DocumentBuilder.EndTable**.
1. Enfin, nous pouvons définir le style de tableau souhaité en utilisant l'une des propriétés de tableau appropriées telles que **Table.StyleIdentifier** pour appliquer automatiquement le formatage à l'ensemble du tableau.

La méthode **ImportTableFromDataTable** accepte un objet **DocumentBuilder**, le **DataTable** contenant les données et un indicateur qui spécifie si l'en-tête de colonne du **DataTable** est inclus en haut du tableau. Cette méthode crée un tableau à partir de ces paramètres en utilisant la position et le formatage actuels du générateur. Fournit une méthode pour importer des données à partir du `DataTable` et les insérer dans une nouvelle table à l’aide de DocumentBuilder.

Les données suivantes de notre **DataTable** sont utilisées dans cet exemple:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

L'exemple de code suivant montre comment exécuter l'algorithme ci-dessus dans Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

La méthode peut ensuite être facilement appelée en utilisant votre **DocumentBuilder** et vos données.

L'exemple de code suivant montre comment importer les données d'un `DataTable` et les insérer dans une nouvelle table du document:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
