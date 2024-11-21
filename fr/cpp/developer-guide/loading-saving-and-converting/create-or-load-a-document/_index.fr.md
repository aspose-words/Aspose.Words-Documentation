---
title: Créer ou charger un document en C++
second_title: Aspose.Words pour C++
articleTitle: Créer ou charger un document
linktitle: Créer ou charger un document
type: docs
description: "Créez un document vierge ou chargez-le à partir d'un fichier ou d'un flux en utilisant C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /fr/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Presque toutes les tâches que vous souhaitez effectuer avec Aspose.Words impliquent le chargement d'un document. La classe `Document` représente un document chargé en mémoire. Le document a plusieurs constructeurs surchargés vous permettant de créer un document vierge ou de le charger à partir d'un fichier ou d'un flux. Le document peut être chargé dans n'importe quel format de chargement pris en charge par Aspose.Words. Pour la liste de tous les formats de chargement pris en charge, voir l'énumération [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Créer un Nouveau Document {#create-a-new-document}

Nous appellerons le constructeur [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) sans paramètres pour créer un nouveau document vierge. Si vous souhaitez générer un document par programme, le moyen le plus simple consiste à utiliser la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) pour ajouter le contenu du document.

L'exemple de code suivant montre comment créer un document à l'aide du générateur de documents:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Notez les valeurs par défaut:

- Un document vierge contient une section avec des paramètres par défaut, un paragraphe vide, certains styles de document. En fait, ce document est le même que le résultat de la création du "Nouveau document" dans Microsoft Word.
- Le format de papier du document est [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Charger un Document

Pour charger un document existant dans l'un des formats `LoadFormat`, transmettez le nom du fichier ou le flux dans l'un des constructeurs de document. Le format du document chargé est automatiquement déterminé par son extension.

### Charger à partir d'un fichier {#load-from-a-file}

Transmettez un nom de fichier sous forme de chaîne au constructeur de document pour ouvrir un document existant à partir d'un fichier.

L'exemple de code suivant montre comment ouvrir un document à partir d'un fichier:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Chargement à partir d'un flux {#load-from-a-stream}

Pour ouvrir un document à partir d'un flux, transmettez simplement un objet de flux qui contient le document dans le constructeur de document.

L'exemple de code suivant montre comment ouvrir un document à partir d'un flux:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
