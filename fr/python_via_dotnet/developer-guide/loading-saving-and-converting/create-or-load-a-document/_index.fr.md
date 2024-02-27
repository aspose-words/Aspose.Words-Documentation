---
title: Créer ou charger un document dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Créer ou charger un document
linktitle: Créer ou charger un document
type: docs
url: /fr/python-net/create-or-load-a-document/
description: "Créez un document vierge ou chargez-le à partir d'un fichier ou d'un flux à l'aide de Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Presque toutes les tâches que vous souhaitez effectuer avec Aspose.Words impliquent le chargement d'un document. La classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) représente un document chargé en mémoire. Le document possède plusieurs constructeurs surchargés permettant de créer un document vierge ou de le charger depuis un fichier ou un flux. Le document peut être chargé dans n'importe quel format de chargement pris en charge par Aspose.Words. Pour obtenir la liste de tous les formats de chargement pris en charge, consultez l'énumération [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Créer un nouveau document

Nous appellerons le constructeur [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sans paramètres pour créer un nouveau document vierge. Si vous souhaitez générer un document par programme, le moyen le plus simple consiste à utiliser la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) pour ajouter le contenu du document.

L'exemple de code suivant montre comment créer un document à l'aide du générateur de documents:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Notez les valeurs par défaut:

- Un document vierge contient une section avec les paramètres par défaut, un paragraphe vide et quelques styles de document. En fait, ce document est le même que le résultat de la création du "Nouveau document" dans Microsoft Word.
- Le format du papier du document est [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Charger un document

Pour charger un document existant dans l'un des formats [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), transmettez le nom du fichier ou le flux dans l'un des constructeurs [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Le format du document chargé est automatiquement déterminé par son extension.

### Charger à partir d'un fichier

Transmettez un nom de fichier sous forme de chaîne au constructeur [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) pour ouvrir un document existant à partir d'un fichier.

L'exemple de code suivant montre comment ouvrir un document à partir d'un fichier:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Charger à partir d'un flux

Pour ouvrir un document à partir d'un flux, transmettez simplement un objet flux contenant le document dans le constructeur [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

L'exemple de code suivant montre comment ouvrir un document à partir d'un flux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
