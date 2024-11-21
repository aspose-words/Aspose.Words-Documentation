---
title: Créer ou charger un document dans C#
second_title: Aspose.Words pour .NET
articleTitle: Créer ou charger un document
linktitle: Créer ou charger un document
type: docs
url: /fr/net/create-or-load-a-document/
description: "Créez un document vierge ou chargez-le à partir d'un fichier ou d'un flux à l'aide de C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
timestamp: 2024-07-09-19-00-42
---

Presque toutes les tâches que vous souhaitez effectuer avec Aspose.Words impliquent le chargement d'un document. La classe `Document` représente un document chargé en mémoire. Le document possède plusieurs constructeurs surchargés permettant de créer un document vierge ou de le charger depuis un fichier ou un flux. Le document peut être chargé dans n'importe quel format de chargement pris en charge par Aspose.Words. Pour obtenir la liste de tous les formats de chargement pris en charge, consultez l'énumération [LoadFormat](https://reference.aspose.com/words/fr/net/aspose.words/loadformat/).

## Créer un nouveau document {#create-a-new-document}

Nous appellerons le constructeur [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/document/) sans paramètres pour créer un nouveau document vierge. Si vous souhaitez générer un document par programme, le moyen le plus simple consiste à utiliser la classe [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/) pour ajouter le contenu du document.

L'exemple de code suivant montre comment créer un document à l'aide du générateur de documents:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Notez les valeurs par défaut:

- Un document vierge contient une section avec les paramètres par défaut, un paragraphe vide et quelques styles de document. En fait, ce document est le même que le résultat de la création du "Nouveau document" dans Microsoft Word.
- Le format du papier du document est [PaperSize](https://reference.aspose.com/words/fr/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Charger un document {#load-a-document}

Pour charger un document existant dans l'un des formats [LoadFormat](https://reference.aspose.com/words/fr/net/aspose.words/loadformat/), transmettez le nom du fichier ou le flux dans l'un des constructeurs de document. Le format du document chargé est automatiquement déterminé par son extension.

### Charger à partir d'un fichier {#load-from-a-file}

Transmettez un nom de fichier sous forme de chaîne au constructeur Document pour ouvrir un document existant à partir d'un fichier.

L'exemple de code suivant montre comment ouvrir un document à partir d'un fichier:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Charger à partir d'un flux {#load-from-a-stream}

Pour ouvrir un document à partir d'un flux, transmettez simplement un objet flux contenant le document dans le constructeur Document.

L'exemple de code suivant montre comment ouvrir un document à partir d'un flux:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
