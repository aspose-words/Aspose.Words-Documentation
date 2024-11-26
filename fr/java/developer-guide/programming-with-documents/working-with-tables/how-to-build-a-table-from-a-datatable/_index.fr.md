---
title: Comment construire une table à partir d'un DataTable dans Java
second_title: Aspose.Words pour Java
articleTitle: Construire une table à partir d'un DataTable
linktitle: Construire une table à partir d'un DataTable
description: "Exemple de remplissage d'un tableau de documents à partir d'une base de données externe à l'aide de Java."
type: docs
weight: 130
url: /fr/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Souvent, votre application extrait des données d'une base de données et les stocke sous la forme d'un **DataTable**. Vous souhaiterez peut-être insérer facilement ces données dans votre document en tant que nouveau tableau et appliquer rapidement une mise en forme à l'ensemble du tableau.

{{% alert color="primary" %}}

Notez que la meilleure façon d'insérer des données à partir d'un **DataTable** dans une table de document est d'utiliser [Mail Merge avec des régions](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). La technique présentée dans cet article n'est suggérée que si vous ne parvenez pas à créer au préalable un modèle approprié avec lequel fusionner des données, en d'autres termes, si vous avez besoin que tout se passe par programmation.

{{% /alert %}}

En utilisant Aspose.Words, vous pouvez facilement récupérer des données à partir d'une base de données et les stocker sous forme de table:

1. Créez un nouvel objet [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sur votre [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Commencez une nouvelle table en utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Si nous voulons insérer les noms de chacune des colonnes de notre **DataTable** en tant que ligne d'en-tête, parcourez chaque colonne de données et écrivez les noms des colonnes dans une ligne du tableau.
1. Parcourez chaque **DataRow** dans le **DataTable**:
   1. Parcourez chaque objet dans le **DataRow**.
   1. Insérez l'objet dans le document en utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). La méthode utilisée dépend du type de l'objet inséré, par exemple [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) pour le texte et [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) pour un tableau d'octets qui représente une image.
   1. À la fin du traitement de la ligne de données, terminez également la ligne créée par le [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) en utilisant [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Une fois que toutes les lignes du **DataTable** ont été traitées, terminez la table en appelant [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Enfin, nous pouvons définir le style de tableau souhaité à l'aide de l'une des propriétés de tableau appropriées telles que [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) pour appliquer automatiquement la mise en forme à l'ensemble du tableau.
   Les données suivantes dans notre **DataTable** sont utilisées dans cet exemple:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

L'exemple de code suivant montre comment exécuter l'algorithme ci-dessus dans Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

La méthode peut ensuite être facilement appelée en utilisant votre **DocumentBuilder** et vos données.

L'exemple de code suivant montre comment importer les données d'un `DataTable` et les insérer dans une nouvelle table du document:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Le tableau présenté dans l'image ci-dessous est produit en exécutant le code ci-dessus.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
