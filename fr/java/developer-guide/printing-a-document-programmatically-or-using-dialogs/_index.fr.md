---
title: Imprimer un document
second_title: Aspose.Words pour Java
articleTitle: Imprimer un document Programmes ou utilisation de dialogues
linktitle: Imprimer un document Programmes ou utilisation de dialogues
description: "Imprimer un document en utilisant Java via les dialogues Paramètres, Aperçu d'impression et Progrès d'impression."
type: docs
weight: 55
url: /fr/java/print-a-document-programmatically-or-using-dialogs/
---

Cet article décrit comment imprimer un document de traitement de texte en utilisant Aspose.Words API. Il montre également les méthodes d'impression d'un document avec les dialogues Paramètres, Aperçu d'impression et Progrès d'impression.

## Imprimer un document avec les paramètres et les dialogues d'impression

Lorsque vous travaillez avec des documents, il est souvent nécessaire de les imprimer sur une imprimante sélectionnée. Il est utile d'utiliser une boîte de dialogue d'aperçu d'impression pour inspecter visuellement comment le document imprimé apparaîtra et choisir les options d'impression pertinentes.

Les Aspose.Words n'a pas de dialogues ou de formulaires intégrés mais implémente le [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) La classe remplace les deux java.awt.print. Imprimable et java.awt.print. Pageable.

L'exemple suivant montre comment utiliser ces classes pour imprimer un document Aspose.Words via les dialogues d'aperçu et de paramètres d'impression:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Impression de plusieurs pages sur une feuille

Aspose.Words met en œuvre les **MultipagePrintDocument** classe, pour affiner l'opération d'impression pour implémenter votre logique personnalisée en définissant la façon dont le document apparaîtra sur la page imprimée. Les **MultipagePrintDocument** classe fournit la possibilité d'imprimer plusieurs pages sur une feuille de papier.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Vous pouvez télécharger un exemple d'utilisation de **MultipagePrintDocument** de la classe [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Le résultat de cet exemple de code est illustré ci-dessous:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
