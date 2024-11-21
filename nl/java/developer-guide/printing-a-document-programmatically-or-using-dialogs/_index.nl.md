---
title: Een document afdrukken
second_title: Aspose.Words voor Java
articleTitle: Een document afdrukken Programmatisch of dialoogvensters gebruiken
linktitle: Een document afdrukken Programmatisch of dialoogvensters gebruiken
description: "Een document afdrukken met Java via Instellingen, Afdrukvoorbeeld, en Print voortgangsdialoogvensters."
type: docs
weight: 55
url: /nl/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

Dit artikel beschrijft hoe een tekstverwerkingsdocument af te drukken met behulp van Aspose.Words API. Het toont ook de methoden voor het afdrukken van een document met Instellingen, Afdrukvoorbeeld, en Print voortgangsdialoogvensters.

## Een document afdrukken met instellingen en afdrukvoorbeelddialoog

Bij het werken met documenten is het vaak nodig om ze af te drukken naar een geselecteerde printer. Het is handig om een afdrukvoorbeelddialoog te gebruiken om visueel te controleren hoe het afgedrukte document verschijnt en relevante afdrukopties te kiezen.

De Aspose.Words heeft geen ingebouwde dialoogvensters of formulieren, maar implementeert de [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) klasse overschrijft beide java.awt.print. Afdrukbare en java.wt.print. Opeistbaar.

Het volgende voorbeeld laat zien hoe je deze klassen gebruikt om een document af te drukken van Aspose.Words via de Afdrukvoorbeelden en Instellingen dialoogvensters:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Meerdere pagina's op één blad afdrukken

Aspose.Words voert de **MultipagePrintDocument** klasse, om de afdrukbewerking te verfijnen om uw aangepaste logica te implementeren door te definiëren hoe het document zal verschijnen op de afgedrukte pagina. De **MultipagePrintDocument** klasse biedt de mogelijkheid om meerdere pagina's af te drukken op één blad papier.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

U kunt een voorbeeld van het gebruik van de **MultipagePrintDocument** klasse van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Het resultaat van dit codevoorbeeld is hieronder weergegeven:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
