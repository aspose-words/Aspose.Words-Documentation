---
title: Créer ou charger un document dans Java
second_title: Aspose.Words pour Java
articleTitle: Créer ou charger un document
linktitle: Créer ou charger un document
type: docs
weight: 10
url: /fr/java/create-or-load-a-document/
description: "Aspose.Words vous permet de créer un document vierge ou de le charger à partir d'un fichier ou d'un flux à l'aide de Java."
timestamp: 2024-01-27-14-07-04
---

Presque toutes les tâches que vous souhaitez effectuer avec Aspose.Words impliquent le chargement d'un document. La classe `Document` représente un document chargé en mémoire. Le document a plusieurs constructeurs surchargés vous permettant de créer un document vierge ou de le charger à partir d'un fichier ou d'un flux. Le document peut être chargé dans n'importe quel format de chargement pris en charge par Aspose.Words. Pour la liste de tous les formats de chargement pris en charge, voir l'énumération [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/).

## Créer un Nouveau Document {#create-a-new-document}

Nous appellerons le constructeur [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sans paramètres pour créer un nouveau document vierge. Si vous souhaitez générer un document par programme, le moyen le plus simple consiste à utiliser la classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) pour ajouter le contenu du document.

L'exemple de code suivant montre comment créer un document à l'aide du générateur de documents:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Notez les valeurs par défaut:

- Un document vierge contient une section avec des paramètres par défaut, un paragraphe vide, certains styles de document. En fait, ce document est le même que le résultat de la création du "Nouveau document" dans Microsoft Word.
- Le format de papier du document est [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Charger un Document

Pour charger un document existant dans l'un des formats [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/), transmettez le nom du fichier ou le flux dans l'un des constructeurs de document. Le format du document chargé est automatiquement déterminé par son extension.

### Charger à partir d'un fichier {#load-from-a-file}

Transmettez un nom de fichier sous forme de chaîne au constructeur de document pour ouvrir un document existant à partir d'un fichier.

L'exemple de code suivant montre comment ouvrir un document à partir d'un fichier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Chargement à partir d'un flux {#load-from-a-stream}

Pour ouvrir un document à partir d'un flux, transmettez simplement un objet de flux qui contient le document dans le constructeur de document.

L'exemple de code suivant montre comment ouvrir un document à partir d'un flux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
