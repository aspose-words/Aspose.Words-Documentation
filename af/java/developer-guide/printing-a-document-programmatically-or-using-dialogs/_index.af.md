---
title: Druk'n Dokument
second_title: Aspose.Words vir Java
articleTitle: Druk'n Dokument Programmaties of Gebruik Dialoog
linktitle: Druk'n Dokument Programmaties of Gebruik Dialoog
description: "Druk'n dokument met Java deur Instellings, Drukvoorskou En Druk vorderingsdialoë."
type: docs
weight: 55
url: /af/java/print-a-document-programmatically-or-using-dialogs/
---

Hierdie artikel beskryf hoe om'n teksverwerkingsdokument te druk met behulp van Aspose.Words API. Dit demonstreer ook die metodes van die druk van'n dokument met Instellings, Druk Voorskou, en Druk vordering dialoog.

## Druk'n Dokument met Instellings en Druk Voorskou Dialoog

Wanneer jy met dokumente werk, moet jy dit dikwels op'n geselekteerde drukker druk. Dit is nuttig om'n drukvoorskou dialoog te gebruik om visueel te inspekteer hoe die gedrukte dokument sal verskyn en kies relevante druk opsies.

Die Aspose.Words het geen ingeboude dialoog of vorms nie, maar implementeer die [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) klas oorheers beide java.awt.druk.Drukbaar en java.awt.druk.Bladsy.

Die volgende voorbeeld toon hoe om hierdie klasse te gebruik om'n dokument van Aspose.Words te druk via Die Druk voorskou en Instellings dialoog:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Druk Verskeie Bladsye op Een Vel

Aspose.Words implementeer die **MultipagePrintDocument** klas, om die drukbewerking te verfyn om u persoonlike logika te implementeer deur die manier waarop die dokument op die gedrukte bladsy verskyn, te definieer. Die **MultipagePrintDocument** klas bied die vermoë om verskeie bladsye op een vel papier te druk.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Jy kan'n voorbeeld van die gebruik van die **MultipagePrintDocument** klas aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

Die resultaat van hierdie kode voorbeeld word hieronder getoon:

![print_several_pages_on_one_sheet_aspose_words_java](print-several-pages-on-one-sheet.png)/
