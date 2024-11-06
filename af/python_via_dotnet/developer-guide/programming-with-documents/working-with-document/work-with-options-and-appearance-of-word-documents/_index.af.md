---
title: Opsies En Voorkoms Word-Dokument
second_title: Aspose.Words vir Python
articleTitle: Werk Met Opsies en Voorkoms Van Word-Dokumente
linktitle: Werk Met Opsies en Voorkoms Van Word-Dokumente
description: "Beheer die voorkoms van Word-dokumente met inagneming van die verskil tussen verskillende Microsoft Word weergawes met behulp van Python."
type: docs
weight: 40
url: /af/python-net/work-with-word-document-options-and-appearance/
---

Soms moet jy dalk die voorkoms van'n dokument verander, byvoorbeeld, stel taalvoorkeure of die aantal reëls per bladsy in.Aspose.Words bied die vermoë om te beheer hoe die dokument vertoon sal word, asook'n paar bykomende opsies. Hierdie artikel beskryf sulke moontlikhede.

## Stel Dokumentvertoonkeuses

Jy kan beheer hoe'n dokument in Microsoft Word vertoon sal word deur die [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/) klas te gebruik. U kan byvoorbeeld'n dokumentzoomwaarde instel met die [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) - eienskap, of die aansigmodus met die [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/) - eienskap.

Die volgende kode voorbeeld toon hoe om te verseker dat'n dokument vertoon word by 50% wanneer oopgemaak in Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer vir hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 skryf geen zoomfaktor na'n dokument nie en stel nie meer die verstekzoom van die waarde wat na die dokument geskryf is nie, maar dit lyk asof dit die zoomfaktor van die laaste oop dokument gebruik.

{{% /alert %}}

## Stel Bladsyvertoonkeuses

As jy die aantal karakters per reël wil stel, gebruik die [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/) eienskap. U kan ook die aantal reëls per bladsy vir'n Word-dokument instel-gebruik die [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) - eienskap om die aantal reëls per bladsy in die dokumentrooster te kry of in te stel.

{{% alert color="primary" %}}

In Microsoft Word kan u dieselfde parameters stel deur die oortjie "Dokumentrooster" in die dialoogkassie "Page Setup" te gebruik slegs wanneer asiatiese taalondersteuning geïnstalleer is.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die aantal karakters per reël en die aantal reëls per bladsy vir'n Microsoft Word dokument stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Stel Taalvoorkeure

Die vertoon van'n dokument in Microsoft Word hang af van watter tale as standaard vir hierdie dokument gestel word. As geen tale in standaard gestel word nie, neem Microsoft Word inligting uit die dialoogkassie "Set Office Language Preferences", wat byvoorbeeld gevind kan word onder "File Argentriants Options Argentrian Language" in Microsoft Word 2019.

Met Aspose.Words kan jy ook taalvoorkeure opstel deur die [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/) klas te gebruik. Let ook daarop dat vir die korrekte vertoning van jou dokument is dit nodig om die Microsoft Word weergawe wat die dokument laai proses moet ooreenstem stel – dit kan gedoen word met behulp van die [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) eiendom.

{{% alert color="primary" %}}

As jou Aspose.Words gegenereerde dokument nie lyk soos verwag nie, gaan die [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) en [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) waardes na en pas dit aan indien nodig om by die instellings vir jou Microsoft Word weergawe te pas.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe Om Japannese te voeg tot redigering tale:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

Die volgende kode voorbeeld toon hoe om russies as die standaard redigering taal stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Optimaliseer'n Dokument vir'n Spesifieke Woordweergawe

Die [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) metode laat die optimalisering van dokument inhoud, sowel as standaard Aspose.Words gedrag vir'n spesifieke weergawe van Microsoft Word. U kan hierdie metode gebruik om te voorkom dat Microsoft Word die lint "Verenigbaarheid af" vertoon wanneer die dokument gelaai word. Let daarop dat jy dalk ook die [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) eienskap op [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) of hoër moet stel.

Die volgende kode voorbeeld toon hoe om dokument inhoud te optimaliseer vir Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
