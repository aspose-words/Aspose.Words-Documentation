---
title: Impression d'un Document
second_title: Aspose.Words pour Java
articleTitle: Impression d'un Document par programmation ou à l'aide de Boîtes de dialogue
linktitle: Impression d'un Document par programmation ou à l'aide de Boîtes de dialogue
description: "Imprimez un document à l'aide de Java via les boîtes de dialogue Paramètres, Aperçu avant impression et Progression de l'impression."
type: docs
weight: 55
url: /fr/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

Cet article décrit comment imprimer un document de traitement de texte à l'aide de Aspose.Words API. Il montre également les méthodes d'impression d'un document avec les paramètres, l'aperçu avant impression et les boîtes de dialogue de progression d'impression.

## Impression d'un document avec des paramètres et des boîtes de dialogue d'aperçu avant impression

Lorsque vous travaillez avec des documents, il est souvent nécessaire de les imprimer sur une imprimante sélectionnée. Il est utile d'utiliser une boîte de dialogue d'aperçu avant impression pour inspecter visuellement l'apparence du document imprimé et choisir les options d'impression appropriées.

Le Aspose.Words n'a pas de boîtes de dialogue ou de formulaires intégrés mais implémente la classe [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) remplace les deux java.tta.imprimer.Imprimable et java.tta.imprimer.Pageable.

L'exemple suivant montre comment utiliser ces classes pour imprimer un document à partir de Aspose.Words via les boîtes de dialogue Aperçu avant impression et Paramètres:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Impression de Plusieurs Pages sur Une Seule feuille

Aspose.Words implémente la classe **MultipagePrintDocument**, pour affiner l'opération d'impression afin d'implémenter votre logique personnalisée en définissant la façon dont le document apparaîtra sur la page imprimée. La classe **MultipagePrintDocument** offre la possibilité d'imprimer plusieurs pages sur une seule feuille de papier.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Vous pouvez télécharger un exemple d'utilisation de la classe **MultipagePrintDocument** à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

Le résultat de cet exemple de code est illustré ci-dessous:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
