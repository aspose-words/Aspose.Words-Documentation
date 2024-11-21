---
title: Werk Met Dokumenteienskappe
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Dokumenteienskappe
linktitle: Werk Met Dokumenteienskappe
description: "Aspose.Words vir Python laat die stoor van'n paar nuttige inligting oor jou dokument, soos API en Weergawe Nommer of Gemagtigde Datum, in ingeboude of persoonlike dokument eienskappe."
type: docs
weight: 10
url: /af/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Dokument eienskappe toelaat stoor'n paar nuttige inligting oor jou dokument. Hierdie eienskappe kan in twee groepe verdeel word:

* Stelsel of ingeboude wat waardes soos dokument titel, outeur naam, dokument statistieke, en ander bevat.
* Gebruiker-gedefinieerde of persoonlike, verskaf as naam-waarde pare waar die gebruiker beide die naam en waarde kan definieer.

Dit is nuttig om te weet dat inligting oor API en Weergawe Nommer direk geskryf word om dokumente uit te voer. Byvoorbeeld, by die omskakeling van'n dokument na PDF, vul Aspose.Words die Veld "Toepassing" in met " Aspose.Words", en die veld "PDF Produsent" met "Aspose.Words vir .NET YY.M. n", waar *YY.M.N* die weergawe van Aspose.Words is wat gebruik word vir omskakeling. Vir meer besonderhede, sien [Generator Of Produsent Naam Ingesluit In Uitset Dokumente](/words/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Let daarop dat u **cannot direct** Aspose.Words om hierdie inligting uit uitvoerdokumente te verander of te verwyder.

{{% /alert %}}

## Toegang Dokument Eienskappe

Om toegang tot dokument eienskappe in Aspose.Words gebruik:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) om ingeboude eienskappe te verkry.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) om persoonlike eienskappe te verkry.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) en [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) is versamelings van [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) voorwerpe. Hierdie voorwerpe kan verkry word deur die indekser eienskap deur naam of deur indeks.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) bied ook toegang tot dokument eienskappe deur'n stel van ingevoerde eienskappe wat waardes van die toepaslike tipe terugkeer. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) stel u in staat om dokumenteienskappe by'n dokument te voeg of te verwyder.

Met die [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) klas kan u die naam, waarde en tipe dokumenteienskap kry. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) gee'n voorwerp terug, maar daar is'n stel metodes wat jou toelaat om die eiendom waarde omgeskakel na'n spesifieke tipe te kry. Nadat jy weet watter tipe die eiendom is, kan jy een van die **DocumentProperty.to_XXX** metodes, soos **DocumentProperty.\_\_str\_\_** en [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), gebruik om die waarde van die toepaslike tipe te verkry.

Die volgende kode voorbeeld toon hoe om al die ingeboude en persoonlike eienskappe in'n dokument te tel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, kan jy toegang dokument eienskappe met behulp van die menu "File Argentia Properties".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-1.png" style="width:400px"/>

## Voeg Dokumenteienskappe by of Verwyder Dit

Jy kan nie ingeboude dokumenteienskappe byvoeg of verwyder met Aspose.Words nie. U kan slegs hul waardes verander of opdateer.

Om persoonlike dokument eienskappe met Aspose.Words by te voeg, gebruik die [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) metode, verby die nuwe eienskap naam en die waarde van die toepaslike tipe. Die metode gee terug die nuutgeskepte [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) voorwerp.

Om persoonlike eienskappe te verwyder, gebruik die [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) metode, gee dit die eiendom naam te verwyder, of die [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) metode om die eiendom te verwyder deur indeks. U kan ook alle eienskappe verwyder deur die [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) - metode te gebruik.

Die volgende kode voorbeeld kyk of'n persoonlike eiendom met'n gegewe naam bestaan in'n dokument en voeg'n paar meer persoonlike dokument eienskappe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n persoonlike dokument eiendom te verwyder:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Dateer Ingeboude Dokumenteienskappe Op

Aspose.Words werk nie outomaties dokument eienskappe op, soos Microsoft Word met sommige eienskappe doen nie, maar bied'n metode om sommige statistiese ingeboude dokument eienskappe op te dateer. Noem die [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) metode om die volgende eienskappe te herbereken en op te dateer:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Skep'n Nuwe Pasgemaakte Eienskap Gekoppel Aan Inhoud

Aspose.Words bied die [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) metode om'n nuwe persoonlike dokument eienskap gekoppel aan inhoud te skep. Hierdie eienskap gee die nuutgeskepte eienskap voorwerp of null as die **link_source** is ongeldig.

Die volgende kode voorbeeld toon hoe om'n skakel na'n persoonlike eiendom te konfigureer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Kry Dokument Veranderlikes

Jy kan'n versameling van dokument veranderlikes kry met behulp van die [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) eiendom. Veranderlike name en waardes is snare.

Die volgende kode voorbeeld toon hoe om te voeg en toegang dokument veranderlikes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Verwyder Persoonlike Inligting Uit Dokument

As jy'n Word-dokument met ander mense wil deel, wil jy dalk persoonlike inligting soos outeurnaam en maatskappy verwyder. Om dit te doen gebruik die [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) eienskap om die vlag te stel wat aandui dat Microsoft Word alle gebruikersinligting van kommentaar, hersienings en dokument eienskappe sal verwyder wanneer die dokument gestoor word.

Die volgende kode voorbeeld toon hoe om persoonlike inligting te verwyder:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Die opstel van hierdie opsie verwyder nie eintlik persoonlike inligting terwyl'n dokument in Aspose.Words verwerk word nie en beïnvloed slegs die Microsoft Word gedrag.

{{% /alert %}}
