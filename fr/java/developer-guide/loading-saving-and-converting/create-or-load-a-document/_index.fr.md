---
title: Créer ou charger un document dans Java
second_title: Aspose.Words pour Java
articleTitle: Créer ou charger un document
linktitle: Créer ou charger un document
type: docs
weight: 10
url: /fr/java/create-or-load-a-document/
description: "Aspose.Words vous permet de créer un document vide ou de le charger à partir d'un fichier ou d'un flux en utilisant Java."
---

Presque n'importe quelle tâche que vous voulez effectuer avec Aspose.Words implique de charger un document. Les `Document` classe représente un document chargé dans la mémoire. Le document a plusieurs constructeurs surchargés vous permettant de créer un document vide ou de le charger à partir d'un fichier ou d'un flux. Le document peut être chargé dans n'importe quel format de charge supporté par Aspose.Words. Pour la liste de tous les formats de chargement pris en charge, voir la [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Énumération.

## Créer un nouveau document {#create-a-new-document}

Nous appellerons [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) constructeur sans paramètres pour créer un nouveau document vide. Si vous voulez générer un document programmatiquement, la façon la plus simple est d'utiliser le [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) classe pour ajouter le contenu du document.

L'exemple de code suivant montre comment créer un document en utilisant le constructeur de document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Notez les valeurs par défaut:

- Un document vierge contient une section avec des paramètres par défaut, un paragraphe vide, certains styles de document. En fait, ce document est le même que le résultat de la création du nouveau document Microsoft Word.
- Oui. La taille du document papier est [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Charger un document

Pour charger un document existant dans l'un des [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) les formats, passez le nom du fichier ou le flux dans l'un des constructeurs de documents. Le format du document chargé est automatiquement déterminé par son extension.

### Charger à partir d'un fichier {#load-from-a-file}

Passez un nom de fichier comme chaîne au constructeur de document pour ouvrir un document existant à partir d'un fichier.

L'exemple de code suivant montre comment ouvrir un document depuis un fichier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Charger depuis un flux {#load-from-a-stream}

Pour ouvrir un document à partir d'un flux, passez simplement un objet de flux qui contient le document dans le constructeur du document.

L'exemple de code suivant montre comment ouvrir un document à partir d'un flux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
