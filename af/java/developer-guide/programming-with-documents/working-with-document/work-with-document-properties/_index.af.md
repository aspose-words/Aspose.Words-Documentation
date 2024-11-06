---
title: Werk Met Dokument Eienskappe in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Dokumenteienskappe
linktitle: Werk Met Dokumenteienskappe
description: "Aspose.Words vir Java laat die stoor van'n paar nuttige inligting oor jou dokument, soos API en Weergawe Nommer of Gemagtigde Datum, in ingeboude of persoonlike dokument eienskappe."
type: docs
weight: 10
url: /af/java/work-with-document-properties/
---

Dokument eienskappe toelaat stoor'n paar nuttige inligting oor jou dokument. Hierdie eienskappe kan in twee groepe verdeel word:

* Stelsel of ingeboude wat waardes soos dokument titel, outeur naam, dokument statistieke, en ander bevat.
* Gebruiker-gedefinieerde of persoonlike, verskaf as naam-waarde pare waar die gebruiker beide die naam en waarde kan definieer.

Dit is nuttig om te weet dat inligting oor API en Weergawe Nommer direk geskryf word om dokumente uit te voer. Byvoorbeeld, by die omskakeling van'n dokument na PDF, vul Aspose.Words die Veld "Toepassing" in met " Aspose.Words", en die veld "PDF Produsent" met "Aspose.Words vir Java YY.M. n", waar *YY.M.N* die weergawe van Aspose.Words is wat gebruik word vir omskakeling. Vir meer besonderhede, sien [Generator Of Produsent Naam Ingesluit In Uitset Dokumente](/words/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Let daarop dat u **cannot direct** Aspose.Words om hierdie inligting uit uitvoerdokumente te verander of te verwyder.

{{% /alert %}}

## Toegang Dokument Eienskappe

Om toegang tot dokument eienskappe in Aspose.Words gebruik:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) om ingeboude eienskappe te verkry.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) om persoonlike eienskappe te verkry.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Met die [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) klas kan u die naam, waarde en tipe dokumenteienskap kry. [Value]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) returns an object, but there is a set of methods allowing you to get the property value converted to a specific type. After you get to know what type the property is, you can use one of the **DocumentProperty.ToXXX** methods, such as **DocumentProperty.**[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) en **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), om die waarde van die toepaslike tipe te kry.

Die volgende kode voorbeeld toon hoe om al die ingeboude en persoonlike eienskappe in'n dokument te tel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

In Microsoft Word, kan jy toegang dokument eienskappe met behulp van die menu "File Argentia Properties".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Voeg Dokumenteienskappe by of Verwyder Dit

Jy kan nie ingeboude dokumenteienskappe byvoeg of verwyder met Aspose.Words nie. U kan slegs hul waardes verander of opdateer.

Om persoonlike dokument eienskappe met Aspose.Words by te voeg, gebruik die [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) metode, verby die nuwe eienskap naam en die waarde van die toepaslike tipe. Die metode gee terug die nuutgeskepte **DocumentProperty** voorwerp.

Om persoonlike eienskappe te verwyder, gebruik die [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) metode, gee dit die eiendom naam te verwyder, of die [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) metode om die eiendom te verwyder deur indeks. U kan ook alle eienskappe verwyder deur die [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) - metode te gebruik.

Die volgende kode voorbeeld kyk of'n persoonlike eiendom met'n gegewe naam bestaan in'n dokument en voeg'n paar meer persoonlike dokument eienskappe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n persoonlike dokument eiendom te verwyder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Dateer Ingeboude Dokumenteienskappe Op

Aspose.Words werk nie outomaties dokument eienskappe op, soos Microsoft Word met sommige eienskappe doen nie, maar bied'n metode om sommige statistiese ingeboude dokument eienskappe op te dateer. Noem die [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) metode om die volgende eienskappe te herbereken en op te dateer:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Skep'n Nuwe Pasgemaakte Eienskap Gekoppel Aan Inhoud

Aspose.Words bied die [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) metode om'n nuwe persoonlike dokument eienskap gekoppel aan inhoud te skep. Hierdie eienskap gee die nuutgeskepte eienskap voorwerp of null as die [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) is ongeldig.

Die volgende kode voorbeeld toon hoe om'n skakel na'n persoonlike eiendom te konfigureer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Kry Dokument Veranderlikes

Jy kan'n versameling van dokument veranderlikes kry met behulp van die [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) eiendom. Veranderlike name en waardes is snare.

Die volgende kode voorbeeld toon hoe om dokument veranderlikes op te tel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Verwyder Persoonlike Inligting Uit Dokument

As jy'n Word-dokument met ander mense wil deel, wil jy dalk persoonlike inligting soos outeurnaam en maatskappy verwyder. Om dit te doen gebruik die [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) eienskap om die vlag te stel wat aandui dat Microsoft Word alle gebruikersinligting van kommentaar, hersienings en dokument eienskappe sal verwyder wanneer die dokument gestoor word.

{{% alert color="primary" %}}

Die opstel van hierdie opsie verwyder nie eintlik persoonlike inligting terwyl'n dokument in Aspose.Words verwerk word nie en beïnvloed slegs die Microsoft Word gedrag.

{{% /alert %}}
