---
title: Sérialiser un document dans une base de données
second_title: Aspose.Words pour .NET
articleTitle: Sérialiser et travailler avec un document dans une base de données
linktitle: Sérialiser et travailler avec un document dans une base de données
description: "Convertissez un document en tableau d'octets pour travailler avec ce document dans une base de données à l'aide de C#. Vous pouvez stocker et récupérer un document vers et depuis la base de données."
type: docs
weight: 10
url: /fr/net/serialize-and-work-with-a-document-in-a-database/
---

L'une des tâches que vous devrez peut-être effectuer lorsque vous travaillez avec des documents consiste à stocker et à récupérer des objets **Document** vers et depuis une base de données. Par exemple, cela serait nécessaire si vous mettiez en œuvre tout type de système de gestion de contenu. Toutes les versions précédentes des documents doivent être stockées dans le système de base de données. La possibilité de stocker des documents dans la base de données est également extrêmement utile lorsque votre application fournit un service Web.

Aspose.Words offre la possibilité de convertir un document en tableau d'octets pour un travail ultérieur avec ce document dans une base de données.

## Convertir un document en tableau d'octets

Pour stocker un document dans une base de données ou pour préparer un document à transmettre sur le Web, il est souvent nécessaire de sérialiser le document pour obtenir un tableau d'octets.

Pour sérialiser un objet [Document](https://reference.aspose.com/words/net/aspose.words/document/) dans Aspose.Words:

1. Enregistrez-le dans un **MemoryStream** en utilisant la surcharge de méthode [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) de la classe **Document**.
1. Appelez la méthode **ToArray**, qui renvoie un tableau d'octets représentant le document sous forme d'octets.

Les étapes ci-dessus peuvent alors être inversées pour charger à nouveau les octets dans un objet **Document**.

{{% alert color="primary" %}}

Le format de sauvegarde sélectionné est important pour garantir que la plus haute fidélité soit conservée lors de la sauvegarde et du rechargement dans l'objet **Document**. Pour cette raison, il est suggéré d'utiliser une série de formats de fichiers OOXML.

{{% /alert %}}

L'exemple ci-dessous montre comment sérialiser un objet **Document** pour obtenir un tableau d'octets, puis comment désérialiser le tableau d'octets pour obtenir à nouveau un objet **Document**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Stocker, lire et supprimer un document dans une base de données

Cette section montre comment enregistrer un document dans une base de données, puis le charger à nouveau dans un objet `Document` pour pouvoir l'utiliser. Par souci de simplicité, le nom du fichier est la clé utilisée pour stocker et récupérer les documents de la base de données. La base de données contient deux colonnes. La première colonne "FileName" est stockée sous forme de chaîne et est utilisée pour identifier les documents. La deuxième colonne "FileContent" est stockée en tant qu'objet `BLOB` qui stocke l'objet document sous forme d'octets.

L'exemple de code suivant montre comment configurer une connexion à une base de données et exécuter des commandes:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

Dans cet exemple, nous utilisons la base de données Microsoft Access .mdb pour stocker un document Aspose.Words.

{{% /alert %}}

L'exemple de code suivant montre comment enregistrer un document dans la base de données, puis relire le même document et enfin supprimer l'enregistrement contenant le document de la base de données:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Enregistrer un document dans une base de données

Pour enregistrer un document dans une base de données, convertissez ce document en un tableau d'octets, comme décrit au début de cet article. Ensuite, enregistrez ce tableau d'octets dans un champ de base de données.

L'exemple de code suivant montre comment enregistrer un document dans la base de données spécifiée:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Spécifiez commandString, qui est une expression SQL qui fait tout le travail:

- Pour enregistrer un document dans la base de données, la commande "INSERT INTO" est utilisée et une table spécifiée avec les valeurs de deux champs d'enregistrement – FileName et FileContent. Pour éviter des paramètres supplémentaires, le nom du fichier est extrait de l'objet **Document** lui-même. La valeur du champ `FileContent` se voit attribuer des octets du flux mémoire, qui contient une représentation binaire du document stocké.
- La ligne de code restante exécute la commande qui stocke le document Aspose.Words dans la base de données.

### Récupérer un document d'une base de données

Pour récupérer un document de la base de données, sélectionnez l'enregistrement qui contient les données du document sous forme de tableau d'octets. Chargez ensuite le tableau d'octets de l'enregistrement dans **MemoryStream** et créez un objet **Document** qui chargera le document à partir du **MemoryStream**.

L'exemple de code suivant montre comment récupérer et renvoyer un document à partir de la base de données spécifiée en utilisant le nom de fichier comme clé pour récupérer ce document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

La commande SQL "SELECT * FROM" est utilisée pour récupérer l'enregistrement approprié en fonction du nom de fichier.

{{% /alert %}}

### Supprimer un document d'une base de données

Pour supprimer un document de la base de données, utilisez la commande SQL appropriée sans aucune manipulation sur l'objet **Document**.

L'exemple de code suivant montre comment supprimer un document de la base de données, en utilisant le nom du fichier pour récupérer l'enregistrement:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
