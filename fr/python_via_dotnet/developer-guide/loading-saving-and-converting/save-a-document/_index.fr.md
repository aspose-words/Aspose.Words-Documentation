---
title: Enregistrer un document dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Enregistrer un document
linktitle: Enregistrer un document
type: docs
description: "Enregistrez un document dans n'importe quel format pris en charge à l'aide de Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /fr/python-net/save-a-document/
---

La plupart des tâches que vous devez effectuer avec Aspose.Words impliquent l'enregistrement d'un document. Pour enregistrer un document, Aspose.Words fournit la méthode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) de la classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Il existe des surcharges qui permettent d'enregistrer un document dans un fichier ou un flux. Le document peut être enregistré dans n'importe quel format de sauvegarde pris en charge par Aspose.Words. Pour la liste de tous les formats de sauvegarde pris en charge, consultez l'énumération [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Enregistrer un document dans un fichier {#save-a-document-to-a-file}

Utilisez simplement la méthode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) avec un nom de fichier. Aspose.Words déterminera le format de sauvegarde à partir de l'extension de fichier que vous spécifiez.

L'exemple de code suivant montre comment charger et enregistrer un document dans un fichier:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Enregistrer un document dans un flux {#save-a-document-to-a-stream}

Transmettez un objet stream à la méthode [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Il est nécessaire de spécifier explicitement le format de sauvegarde lors de la sauvegarde dans un flux.

L'exemple de code suivant montre comment charger et enregistrer un document dans un flux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Enregistrer un document au format PCL {#save-a-document-to-pcl}

Aspose.Words prend en charge l'enregistrement d'un document en PCL (Printer Command Language). Aspose.Words peut enregistrer des documents au format PCL 6 (PCL 6 Enhanced ou PCL XL). La classe [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) peut être utilisée pour spécifier des options supplémentaires lors de l'enregistrement d'un document au format PCL.

L'exemple de code suivant montre comment enregistrer un document au format PCL à l'aide des options d'enregistrement:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

