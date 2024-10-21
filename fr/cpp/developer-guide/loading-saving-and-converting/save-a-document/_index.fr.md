---
title: Enregistrer un document en C++
second_title: Aspose.Words pour C++
articleTitle: Enregistrer un Document
linktitle: Enregistrer un Document
type: docs
description: "Enregistrez un document dans n'importe quel format pris en charge à l'aide de C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /fr/cpp/save-a-document/
---

La plupart des tâches que vous devez effectuer avec Aspose.Words impliquent l'enregistrement d'un document. Pour enregistrer un document Aspose.Words fournit la méthode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) de la classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Le document peut être enregistré dans n'importe quel format de sauvegarde pris en charge par Aspose.Words. Pour la liste de tous les formats d'enregistrement pris en charge, voir l'énumération [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Enregistrer dans un fichier {#save-a-document-to-a-file}

Utilisez simplement la méthode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) avec un nom de fichier. Aspose.Words déterminera le format de sauvegarde à partir de l'extension de fichier que vous spécifiez.

L'exemple de code suivant montre comment charger et enregistrer un document dans un fichier:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Enregistrer dans un flux {#save-a-document-to-a-stream}

Passez un objet stream à la méthode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Il est nécessaire de spécifier explicitement le format de sauvegarde lors de l'enregistrement dans un flux.

L'exemple de code suivant montre comment charger et enregistrer un document dans un flux:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Enregistrer dans PCL {#save-a-document-to-pcl}

Aspose.Words prend en charge l'enregistrement d'un document en PCL (Langage de commande d'imprimante). Aspose.Words peut enregistrer des documents au format PCL 6 (PCL 6 amélioré ou PCL XL). La classe `PclSaveOptions` peut être utilisée pour spécifier des options supplémentaires lors de l'enregistrement d'un document au format PCL.

L'exemple de code suivant montre comment enregistrer un document dans PCL à l'aide des options d'enregistrement:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
