---
title: Sérialiser et travailler avec un document dans une base de données
second_title: Aspose.Words pour Java
articleTitle: Sérialiser et travailler avec un document dans une base de données
linktitle: Sérialiser et travailler avec un document dans une base de données
description: "Convertir un document en un tableau d'octets pour travailler avec ce document dans une base de données. Vous pouvez stocker et récupérer un document dans la base de données en utilisant Java."
type: docs
weight: 40
url: /fr/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

L'une des tâches que vous pourriez devoir accomplir lorsque vous travaillez avec des documents est de stocker et de récupérer **Document** objets vers et depuis une base de données. Par exemple, cela serait nécessaire si vous mettiez en œuvre tout type de système de gestion du contenu. Toutes les versions antérieures des documents doivent être stockées dans le système de base de données. La possibilité de stocker des documents dans la base de données est également extrêmement utile lorsque votre application fournit un service en ligne.

Aspose.Words fournit la possibilité de convertir un document en un tableau d'octets pour les travaux ultérieurs avec ce document dans une base de données.

## Convertir un document en Byte Array

Pour stocker un document dans une base de données ou pour préparer un document à transmettre sur le Web, il est souvent nécessaire de sérialiser le document pour obtenir un tableau d'octets.

Pour sérialiser une [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objet dans Aspose.Words:

1. Enregistrez-le à une **MemoryStream** utilisant les [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) surcharge de la méthode **Document** En cours.
1. Appelez le **ToArray** méthode, qui renvoie un tableau d'octets représentant le document sous forme d'octets.

Les étapes ci-dessus peuvent alors être inversées pour charger les octets de nouveau dans un **Document** objet.

{{% alert color="primary" %}}

Le format d'enregistrement sélectionné est important pour s'assurer que la plus grande fidélité est conservée lors de l'enregistrement et du rechargement **Document** objet. Pour cette raison, il est suggéré d'utiliser une série de formats de fichiers OOXML.

{{% /alert %}}

L'exemple ci-dessous montre comment sérialiser un **Document** objet pour obtenir un tableau d'octets, puis comment déssérialiser le tableau d'octets pour obtenir un **Document** objet à nouveau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Entreposer, lire et supprimer un document dans une base de données

Cette section montre comment enregistrer un document dans une base de données, puis le charger dans une `Document` objet pour travailler avec elle. Pour plus de simplicité, le nom du fichier est la clé utilisée pour stocker et récupérer les documents dans la base de données. La base de données contient deux colonnes. La première colonne, "FileName" est stockée comme une chaîne et sert à identifier les documents. La deuxième colonne, "FileContent" `BLOB` objet qui stocke l'objet document sous forme d'octet.

L'exemple de code suivant montre comment configurer une connexion à une base de données et exécuter des commandes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

Dans cet exemple, nous utilisons la base de données MySQL Aspose.Words document.

{{% /alert %}}

L'exemple de code suivant montre comment enregistrer un document dans la base de données, puis lire le même document, et finalement supprimer l'enregistrement contenant le document de la base de données:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Enregistrer un document dans une base de données

Pour enregistrer un document dans une base de données, convertissez ce document en un tableau d'octets, comme décrit au début de cet article. Ensuite, enregistrez ce tableau d'octets dans un champ de base de données.

L'exemple de code suivant montre comment enregistrer un document dans la base de données spécifiée:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Spécifiez la commandeString, qui est une expression SQL qui effectue tout le travail:

- Oui. Pour enregistrer un document dans la base de données, on utilise la commande "INSERT INTO" et une table spécifiée avec les valeurs de deux champs d'enregistrement – FileName et FileContent. Pour éviter des paramètres supplémentaires, le nom du fichier est pris de la **Document** Object lui-même. Les `FileContent` field value est assigné octets du flux de mémoire, qui contient une représentation binaire du document stocké.
- Oui. La ligne de code restante exécute la commande qui stocke la Aspose.Words document dans la base de données.

### Récupérer un document à partir d'une base de données

Pour récupérer un document dans la base de données, sélectionnez l'enregistrement qui contient les données du document comme un tableau d'octets. Ensuite charger le tableau d'octets de l'enregistrement dans **MemoryStream** et créer un **Document** objet qui chargera le document à partir du **MemoryStream**.

L'exemple de code suivant montre comment récupérer et renvoyer un document de la base de données spécifiée en utilisant le nom de fichier comme clé pour récupérer ce document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

La commande SQL "SELECT * FROM" est utilisée pour récupérer l'enregistrement approprié basé sur le nom du fichier.

{{% /alert %}}

### Supprimer un document d'une base de données

Pour supprimer un document de la base de données, utilisez la commande SQL appropriée sans manipulation sur le **Document** objet.

L'exemple de code suivant montre comment supprimer un document de la base de données, en utilisant le nom du fichier pour récupérer l'enregistrement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
