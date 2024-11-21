---
title: Werk Met Dokument Eienskappe in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Dokumenteienskappe
linktitle: Werk Met Dokumenteienskappe
description: "Aspose.Words vir C++ laat die stoor van'n paar nuttige inligting oor jou dokument, soos API en Weergawe Nommer of Gemagtigde Datum, in ingeboude of persoonlike dokument eienskappe."
type: docs
weight: 10
url: /af/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Dokument eienskappe toelaat stoor'n paar nuttige inligting oor jou dokument. Hierdie eienskappe kan in twee groepe verdeel word:

* Stelsel of ingeboude wat waardes soos dokument titel, outeur naam, dokument statistieke, en ander bevat.
* Gebruiker-gedefinieerde of persoonlike, verskaf as naam-waarde pare waar die gebruiker beide die naam en waarde kan definieer.

Dit is nuttig om te weet dat inligting oor API en Weergawe Nommer direk geskryf word om dokumente uit te voer. Byvoorbeeld, by die omskakeling van'n dokument na PDF, vul Aspose.Words die Veld "Toepassing" in met " Aspose.Words", en die veld "PDF Produsent" met "Aspose.Words vir C++ YY.M. n", waar *YY.M.N* die weergawe van Aspose.Words is wat gebruik word vir omskakeling. Vir meer besonderhede, sien [Generator Of Produsent Naam Ingesluit In Uitset Dokumente](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Let daarop dat u **cannot direct** Aspose.Words om hierdie inligting uit uitvoerdokumente te verander of te verwyder.

{{% /alert %}}

## Toegang Dokument Eienskappe

Om toegang tot dokument eienskappe in Aspose.Words gebruik:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) om ingeboude eienskappe te verkry.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) om persoonlike eienskappe te verkry.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Met die [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) klas kan u die naam, waarde en tipe dokumenteienskap kry. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) gee'n voorwerp terug, maar daar is'n stel metodes wat jou toelaat om die eiendom waarde omgeskakel na'n spesifieke tipe te kry. Nadat u uitgevind het watter tipe die eienskap is, kan u een van die **DocumentProperty.ToXXX** metodes, soos **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) en **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), gebruik om die waarde van die toepaslike tipe te verkry.

Die volgende kode voorbeeld toon hoe om al die ingeboude en persoonlike eienskappe in'n dokument te tel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

In Microsoft Word, kan jy toegang dokument eienskappe met behulp van die menu "File Argentia Properties".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Voeg Dokumenteienskappe by of Verwyder Dit

Jy kan nie ingeboude dokumenteienskappe byvoeg of verwyder met Aspose.Words nie. U kan slegs hul waardes verander of opdateer.

Om persoonlike dokument eienskappe met Aspose.Words by te voeg, gebruik die [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/) metode, verby die nuwe eienskap naam en die waarde van die toepaslike tipe. Die metode gee terug die nuutgeskepte **DocumentProperty** voorwerp.

Om persoonlike eienskappe te verwyder, gebruik die [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/) metode, gee dit die eiendom naam te verwyder, of die [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) metode om die eiendom te verwyder deur indeks. U kan ook alle eienskappe verwyder deur die [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/) - metode te gebruik.

Die volgende kode voorbeeld kyk of'n persoonlike eiendom met'n gegewe naam bestaan in'n dokument en voeg'n paar meer persoonlike dokument eienskappe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n persoonlike dokument eiendom te verwyder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Dateer Ingeboude Dokumenteienskappe Op

Aspose.Words werk nie outomaties dokument eienskappe op, soos Microsoft Word met sommige eienskappe doen nie, maar bied'n metode om sommige statistiese ingeboude dokument eienskappe op te dateer. Noem die [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) metode om die volgende eienskappe te herbereken en op te dateer:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Skep'n Nuwe Pasgemaakte Eienskap Gekoppel Aan Inhoud

Aspose.Words bied die [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) metode om'n nuwe persoonlike dokument eienskap gekoppel aan inhoud te skep. Hierdie eienskap gee die nuutgeskepte eienskap voorwerp of null as die [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) is ongeldig.

Die volgende kode voorbeeld toon hoe om'n skakel na'n persoonlike eiendom te konfigureer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Kry Dokument Veranderlikes

Jy kan'n versameling van dokument veranderlikes kry met behulp van die [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/) eiendom. Veranderlike name en waardes is snare.

Die volgende kode voorbeeld toon hoe om dokument veranderlikes op te tel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Verwyder Persoonlike Inligting Uit Dokument

As jy'n Word-dokument met ander mense wil deel, wil jy dalk persoonlike inligting soos outeurnaam en maatskappy verwyder. Om dit te doen gebruik die [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) eienskap om die vlag te stel wat aandui dat Microsoft Word alle gebruikersinligting van kommentaar, hersienings en dokument eienskappe sal verwyder wanneer die dokument gestoor word.

Die volgende kode voorbeeld toon hoe om persoonlike inligting te verwyder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Die opstel van hierdie opsie verwyder nie eintlik persoonlike inligting terwyl'n dokument in Aspose.Words verwerk word nie en beïnvloed slegs die Microsoft Word gedrag.

{{% /alert %}}
