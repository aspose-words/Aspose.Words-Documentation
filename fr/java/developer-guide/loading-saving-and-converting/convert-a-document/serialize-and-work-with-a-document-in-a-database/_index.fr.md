---
title: Sérialiser et travailler avec un Document dans une base de données
second_title: Aspose.Words pour Java
articleTitle: Sérialiser et travailler avec un Document dans une base de données
linktitle: Sérialiser et travailler avec un Document dans une base de données
description: "Convertir un document en un tableau d'octets pour travailler avec ce document dans une base de données. Vous pouvez stocker et récupérer un document vers et depuis la base de données à l'aide de Java."
type: docs
weight: 40
url: /fr/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

L'une des tâches que vous devrez peut-être effectuer lorsque vous travaillez avec des documents consiste à stocker et à récupérer **Document** objets vers et depuis une base de données. Par exemple, cela serait nécessaire si vous implémentiez n'importe quel type de système de gestion de contenu. Toutes les versions précédentes des documents doivent être stockées dans le système de base de données. La possibilité de stocker des documents dans la base de données est également extrêmement utile lorsque votre application fournit un service Web.

Aspose.Words permet de convertir un document en un tableau d'octets pour un travail ultérieur avec ce document dans une base de données.

## Convertir un Document en tableau d'octets

Pour stocker un document dans une base de données ou pour préparer un document en vue de sa transmission sur le Web, il est souvent nécessaire de sérialiser le document pour obtenir un tableau d'octets.

Pour sérialiser un objet [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) dans Aspose.Words:

1. Enregistrez-le dans un **MemoryStream** en utilisant la surcharge de méthode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) de la classe **Document**.
1. Appelez la méthode **ToArray**, qui renvoie un tableau d'octets représentant le document sous forme d'octets.

Les étapes ci-dessus peuvent ensuite être inversées pour charger à nouveau les octets dans un objet **Document**.

{{% alert color="primary" %}}

Le format d'enregistrement sélectionné est important pour garantir la plus grande fidélité lors de l'enregistrement et du rechargement dans l'objet **Document**. Pour cette raison, il est suggéré d'utiliser une série de formats de fichiers OOXML.

{{% /alert %}}

L'exemple ci-dessous montre comment sérialiser un objet **Document** pour obtenir un tableau d'octets, puis comment désérialiser le tableau d'octets pour obtenir à nouveau un objet **Document**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Stocker, Lire et Supprimer un Document dans une base de données

Cette section montre comment enregistrer un document dans une base de données, puis le charger à nouveau dans un objet `Document` pour l'utiliser. Pour simplifier, le nom de fichier est la clé utilisée pour stocker et extraire des documents de la base de données. La base de données contient deux colonnes. La première colonne "FileName " est stockée sous forme de chaîne et est utilisée pour identifier les documents. La deuxième colonne "FileContent " est stockée en tant qu'objet `BLOB` qui stocke l'objet document sous forme d'octet.

L'exemple de code suivant montre comment configurer une connexion à une base de données et exécuter des commandes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

Dans cet exemple, nous utilisons la base de données MySQL pour stocker un document Aspose.Words.

{{% /alert %}}

L'exemple de code suivant montre comment enregistrer un document dans la base de données, puis relire le même document et enfin supprimer l'enregistrement contenant le document de la base de données:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Enregistrer un document dans une base de données

Pour enregistrer un document dans une base de données, convertissez ce document en un tableau d'octets, comme décrit au début de cet article. Ensuite, enregistrez ce tableau d'octets dans un champ de base de données.

L'exemple de code suivant montre comment enregistrer un document dans la base de données spécifiée:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Spécifiez commandString, qui est une expression SQL qui fait tout le travail:

- Pour enregistrer un document dans la base de données, la commande "INSERT INTO" est utilisée et une table est spécifiée avec les valeurs de deux champs d'enregistrement – FileName et FileContent. Pour éviter des paramètres supplémentaires, le nom de fichier est tiré de l'objet **Document** lui-même. La valeur du champ `FileContent` se voit attribuer des octets du flux mémoire, qui contient une représentation binaire du document stocké.
- La ligne de code restante exécute la commande qui stocke le document Aspose.Words dans la base de données.

### Récupérer un Document à partir d'une base de données

Pour extraire un document de la base de données, sélectionnez l'enregistrement qui contient les données du document sous la forme d'un tableau d'octets. Chargez ensuite le tableau d'octets de l'enregistrement dans **MemoryStream** et créez un objet **Document** qui chargera le document à partir du **MemoryStream**.

L'exemple de code suivant montre comment récupérer et renvoyer un document à partir de la base de données spécifiée en utilisant le nom de fichier comme clé pour récupérer ce document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

La commande SQL "SELECT * FROM " est utilisée pour récupérer l'enregistrement approprié en fonction du nom de fichier.

{{% /alert %}}

### Supprimer un document d'une base de données

Pour supprimer un document de la base de données, utilisez la commande SQL appropriée sans aucune manipulation sur l'objet **Document**.

L'exemple de code suivant montre comment supprimer un document de la base de données, en utilisant le nom de fichier pour récupérer l'enregistrement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
