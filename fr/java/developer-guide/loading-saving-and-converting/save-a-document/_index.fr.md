---
title: Enregistrer un document dans Java
second_title: Aspose.Words pour Java
articleTitle: Enregistrer un document
linktitle: Enregistrer un document
type: docs
description: "Enregistrer un document dans n'importe quel format supporté en utilisant Java."
weight: 20
url: /fr/java/save-a-document/
---

La plupart des tâches que vous devez effectuer avec Aspose.Words il faut sauvegarder un document. Pour enregistrer un document Aspose.Words fournit les [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) méthode de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) En cours. Le document peut être enregistré dans n'importe quel format de sauvegarde supporté par Aspose.Words. Pour la liste de tous les formats de sauvegarde pris en charge, voir le [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Énumération.

## Enregistrer dans un fichier {#save-a-document-to-a-file}

Utilisez simplement la [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) méthode avec un nom de fichier. Aspose.Words déterminera le format de sauvegarde à partir de l'extension de fichier que vous spécifiez.

L'exemple de code suivant montre comment charger et enregistrer un document dans un fichier:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Enregistrer dans un Stream {#save-a-document-to-a-stream}

Passer un objet stream à la [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) méthode. Il est nécessaire de spécifier explicitement le format de sauvegarde lors de l'enregistrement dans un flux.

L'exemple de code suivant montre comment charger et enregistrer un document dans un flux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Enregistrer dans PCL {#save-a-document-to-pcl}

Aspose.Words prend en charge la sauvegarde d'un document dans PCL (Printer Command Language). Aspose.Words peut enregistrer des documents au format PCL 6 (PCL 6 Enhanced ou PCL XL). Les `PclSaveOptions` classe peut être utilisé pour spécifier des options supplémentaires lors de l'enregistrement d'un document dans le format PCL.

L'exemple de code suivant montre comment enregistrer un document sur PCL en utilisant des options de sauvegarde:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
