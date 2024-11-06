---
title: Opsies en Voorkoms Van Word-Dokumente
second_title: Aspose.Words vir Java
articleTitle: Werk Met Opsies en Voorkoms Van Word-Dokumente
linktitle: Werk Met Opsies en Voorkoms Van Word-Dokumente
description: "Beheer die voorkoms van Word-dokumente met inagneming van die verskil tussen verskillende Microsoft Word weergawes met behulp van Java."
type: docs
weight: 40
url: /af/java/work-with-word-document-options-and-appearance/
---

Soms moet jy dalk die voorkoms van'n dokument verander, byvoorbeeld, stel taalvoorkeure of die aantal reëls per bladsy in.Aspose.Words bied die vermoë om te beheer hoe die dokument vertoon sal word, asook'n paar bykomende opsies. Hierdie artikel beskryf sulke moontlikhede.

## Stel Dokumentvertoonkeuses

Jy kan beheer hoe'n dokument in Microsoft Word vertoon sal word deur die [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) klas te gebruik. U kan byvoorbeeld'n dokumentzoomwaarde instel met die [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) - eienskap, of die aansigmodus met die [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) - eienskap.

Die volgende kode voorbeeld toon hoe om te verseker dat'n dokument vertoon word by 50% wanneer oopgemaak in Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer vir hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 skryf geen zoomfaktor na'n dokument nie en stel nie meer die verstekzoom van die waarde wat na die dokument geskryf is nie, maar dit lyk asof dit die zoomfaktor van die laaste oop dokument gebruik.

{{% /alert %}}

## Stel Bladsyvertoonkeuses

As jy die aantal karakters per reël wil stel, gebruik die [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) eienskap. U kan ook die aantal reëls per bladsy vir'n Word-dokument instel-gebruik die [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) - eienskap om die aantal reëls per bladsy in die dokumentrooster te kry of in te stel.

{{% alert color="primary" %}}

In Microsoft Word kan u dieselfde parameters stel deur die oortjie "Dokumentrooster" in die dialoogkassie "Page Setup" te gebruik slegs wanneer asiatiese taalondersteuning geïnstalleer is.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die aantal karakters per reël en die aantal reëls per bladsy vir'n Microsoft Word dokument stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Stel Taalvoorkeure

Die vertoon van'n dokument in Microsoft Word hang af van watter tale as standaard vir hierdie dokument gestel word. As geen tale in standaard gestel word nie, neem Microsoft Word inligting uit die dialoogkassie "Set Office Language Preferences", wat byvoorbeeld gevind kan word onder "File Argentriants Options Argentrian Language" in Microsoft Word 2019.

Met Aspose.Words kan jy ook taalvoorkeure opstel deur die [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) klas te gebruik. Let ook daarop dat vir die korrekte vertoning van jou dokument is dit nodig om die Microsoft Word weergawe wat die dokument laai proses moet ooreenstem stel – dit kan gedoen word met behulp van die [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) eiendom.

{{% alert color="primary" %}}

As jou Aspose.Words gegenereerde dokument nie lyk soos verwag nie, gaan die **LanguagePreferences** en **MswVersion** waardes na en pas dit aan indien nodig om by die instellings vir jou Microsoft Word weergawe te pas.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe Om Japannese te voeg tot redigering tale:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Die volgende kode voorbeeld toon hoe om russies as die standaard redigering taal stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimaliseer'n Dokument vir'n Spesifieke Woordweergawe

Die [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) metode laat die optimalisering van dokument inhoud, sowel as standaard Aspose.Words gedrag vir'n spesifieke weergawe van Microsoft Word. U kan hierdie metode gebruik om te voorkom dat Microsoft Word die lint "Verenigbaarheid af" vertoon wanneer die dokument gelaai word. Let daarop dat jy dalk ook die `Compliance` eienskap op Iso29500_2008_Transitional of hoër moet stel.

Die volgende kode voorbeeld toon hoe om dokument inhoud te optimaliseer vir Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
