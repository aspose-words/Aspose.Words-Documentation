---
title: Comment construire une table à partir d'un `DataTable` en Java
second_title: Aspose.Words pour Java
articleTitle: Construire une table à partir d'un `DataTable`
linktitle: Construire une table à partir d'un `DataTable`
description: "Exemple de tableau de remplissage du document à partir de la base de données externe Java."
type: docs
weight: 130
url: /fr/java/how-to-build-a-table-from-a-datatable/
timestamp: 2024-01-27-14-07-04
---

Souvent, votre application tire des données d'une base de données et les stocke sous la forme d'un **DataTable**. Vous pouvez facilement insérer ces données dans votre document comme nouveau tableau et appliquer rapidement le formatage à l'ensemble du tableau.

{{% alert color="primary" %}}

Notez que la façon préférée d'insérer des données d'un **DataTable** dans une table de document est en utilisant [Mail Merge avec les régions](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). La technique présentée dans cet article n'est suggérée que si vous n'êtes pas en mesure de créer un modèle approprié à l'avance pour fusionner les données, en d'autres termes, si vous avez besoin de tout pour arriver programmatiquement.

{{% /alert %}}

Utilisation Aspose.Words, Vous pouvez facilement récupérer les données d'une base de données et les stocker comme une table:

1. Créer un nouveau [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) objet sur votre [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Démarrer une nouvelle table en utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Si nous voulons insérer les noms de chacune des colonnes de notre **DataTable** comme une ligne d'en-tête puis itérer à travers chaque colonne de données et écrire les noms de colonne dans une ligne dans la table.
1. Iterate à travers chaque **DataRow** dans le **DataTable**:
   1. Itérer à travers chaque objet dans le **DataRow**.
   1. Insérer l'objet dans le document en utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). La méthode utilisée dépend du type d'objet inséré par exemple [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln()) pour le texte et [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[])) pour un tableau d'octets représentant une image.
   1. A la fin du traitement de la ligne de données, terminer également la ligne créée par le [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) en utilisant [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Une fois toutes les lignes de la **DataTable** ont été traitées terminer la table en appelant [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Enfin, nous pouvons définir le style de table souhaité en utilisant l'une des propriétés de table appropriées, comme [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) d'appliquer automatiquement le formatage à la table entière.
   Les données suivantes dans notre **DataTable** est utilisé dans cet exemple:

![build-a-table-from-a-datatable-aspose-words-java-1](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

L'exemple de code suivant montre comment exécuter l'algorithme ci-dessus dans Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

La méthode peut alors être facilement appelée en utilisant votre **DocumentBuilder** et les données.

L'exemple de code suivant montre comment importer les données d'un `DataTable` et l'insérer dans un nouveau tableau du document:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Le tableau ci-dessous est produit en exécutant le code ci-dessus.

![build-a-table-from-a-datatable-aspose-words-java-2](/words/java/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-2.png)
