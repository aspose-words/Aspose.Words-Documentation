---
title: Enregistrer un document dans Java
second_title: Aspose.Words pour Java
articleTitle: Enregistrer un Document
linktitle: Enregistrer un Document
type: docs
description: "Enregistrez un document dans n'importe quel format pris en charge à l'aide de Java."
weight: 20
url: /fr/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

La plupart des tâches que vous devez effectuer avec Aspose.Words impliquent l'enregistrement d'un document. Pour enregistrer un document Aspose.Words fournit la méthode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) de la classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Le document peut être enregistré dans n'importe quel format de sauvegarde pris en charge par Aspose.Words. Pour la liste de tous les formats d'enregistrement pris en charge, voir l'énumération [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Enregistrer dans un fichier {#save-a-document-to-a-file}

Utilisez simplement la méthode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) avec un nom de fichier. Aspose.Words déterminera le format de sauvegarde à partir de l'extension de fichier que vous spécifiez.

L'exemple de code suivant montre comment charger et enregistrer un document dans un fichier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Enregistrer dans un flux {#save-a-document-to-a-stream}

Passez un objet stream à la méthode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Il est nécessaire de spécifier explicitement le format de sauvegarde lors de l'enregistrement dans un flux.

L'exemple de code suivant montre comment charger et enregistrer un document dans un flux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Enregistrer dans PCL {#save-a-document-to-pcl}

Aspose.Words prend en charge l'enregistrement d'un document dans PCL (Langage de commande d'imprimante). Aspose.Words peut enregistrer des documents au format PCL 6 (PCL 6 amélioré ou PCL XL). La classe `PclSaveOptions` peut être utilisée pour spécifier des options supplémentaires lors de l'enregistrement d'un document au format PCL.

L'exemple de code suivant montre comment enregistrer un document sur PCL à l'aide des options d'enregistrement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
