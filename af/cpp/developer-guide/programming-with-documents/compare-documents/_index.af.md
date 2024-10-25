---
title: Vergelyk Dokumente in C++
second_title: Aspose.Words vir C++
articleTitle: Vergelyk Dokumente
linktitle: Vergelyk Dokumente
type: docs
description: "Vergelyk twee dokumente in enige ondersteun formate en toon inhoud veranderinge met behulp van C++. U kan gevorderde opsies toepas wanneer u vergelyk."
weight: 60
url: /af/cpp/compare-documents/
---

Die vergelyking van dokumente is'n proses wat veranderinge tussen twee dokumente identifiseer en die veranderinge as hersienings bevat. Hierdie proses vergelyk enige twee dokumente, insluitend weergawes van een spesifieke dokument, dan sal die veranderinge tussen beide dokumente as hersienings in die eerste dokument vertoon word.

Die vergelykingsmetode word bereik deur woorde op karaktervlak of woordvlak te vergelyk. As'n woord'n verandering van ten minste een karakter bevat, sal die verskil in die resultaat vertoon word as'n verandering van die hele woord, nie'n karakter nie. Hierdie vergelykingsproses is'n gewone taak in die regs-en finansiële bedrywe.

In plaas daarvan om handmatig na verskille tussen dokumente of tussen verskillende weergawes daarvan te soek, kan jy Aspose.Words gebruik om dokumente te vergelyk en inhoudveranderings in formatering, koptekst/voetskrif, tabelle en meer te kry.

Hierdie artikel verduidelik hoe om dokumente te vergelyk en hoe om gevorderde vergelykende eienskappe te spesifiseer.

{{% alert color="primary" %}}

**Probeer online**

Jy kan twee dokumente aanlyn vergelyk deur die [Dokument vergelyking aanlyn](https://products.aspose.app/words/comparison) gereedskap.

Let daarop dat die vergelykingsmetode, wat hieronder beskryf word, in hierdie instrument gebruik word om te verseker dat gelyke resultate verkry word. U sal dus dieselfde resultate kry, selfs deur die aanlynvergelykingsinstrument te gebruik of deur die vergelykingsmetode in Aspose.Words te gebruik.

{{% /alert %}}

## Beperkings en Ondersteunde Lêerformate {#limitations-and-supported-file-formats}

Vergelyking van dokumente is'n baie komplekse kenmerk. Daar is verskillende dele van inhoudkombinasie wat ontleed moet word om alle verskille te herken. Die rede vir hierdie kompleksiteit is te wyte aan die feit dat Aspose.Words dieselfde vergelykingsresultate as die Microsoft Word vergelykingsalgoritme wil kry.

Die algemene beperking vir twee dokumente wat vergelyk word, is dat hulle nie hersienings mag hê voordat hulle die vergelykingsmetode noem nie, aangesien hierdie beperking in Microsoft Word bestaan.

{{% alert color="primary" %}}

Let daarop dat jy enige twee dokumente binne die [ondersteunde lêerformate](/words/cpp/supported-document-formats/). Jy kan dokumentvoorwerpe vergelyk en selfs jy kan daardie voorwerpe van nuuts af skep sonder om enige spesifieke formaat te hê.

{{% /alert %}}

## Vergelyk Twee Dokumente {#compare-two-documents}

Wanneer jy dokumente vergelyk, verskyn verskille van laasgenoemde dokument van eersgenoemde as hersienings van eersgenoemde. As u'n dokument verander, sal elke wysiging sy eie hersiening hê nadat u die vergelykingsmetode uitgevoer het.

Aspose.Words laat jou toe om dokumente verskille te identifiseer met behulp van die [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) metode – dit is soortgelyk aan die Microsoft Word dokument vergelyk funksie. Dit laat jou toe om dokumente of dokumentweergawes na te gaan om verskille en veranderinge te vind, insluitend formateringsaanpassings soos lettertipeveranderings, spasiëringsveranderinge, die byvoeging van woorde en paragrawe.

As gevolg van die vergelyking kan dokumente as gelyk of nie gelyk bepaal word nie. Die term "gelyke" dokumente beteken dat die vergelykingsmetode nie veranderinge as hersienings kan voorstel nie. Dit beteken dat beide dokument teks en teks formatering is dieselfde. Maar daar kan ander verskille tussen dokumente wees. Byvoorbeeld, Microsoft Word ondersteun slegs formaat hersienings vir style, en jy kan nie styl invoeging/verwydering verteenwoordig. Dokumente kan dus'n ander stel style hê, en die **Compare** metode lewer steeds geen hersienings nie.

Die volgende kode voorbeeld toon hoe om te kyk of twee dokumente is gelyk of nie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Die volgende kode voorbeeld toon hoe om eenvoudig die `Compare` metode toe te pas op twee dokumente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Spesifiseer Gevorderde Vergelykingsopsies {#specify-advanced-comparing-properties}

Daar is baie verskillende eienskappe van die [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) klas wat jy kan aansoek doen wanneer jy wil dokumente te vergelyk.

Byvoorbeeld, Aspose.Words laat jou toe om veranderinge wat tydens'n vergelykingsbewerking vir sekere soorte voorwerpe in die oorspronklike dokument gemaak is, te ignoreer. Jy kan die toepaslike eienskap vir die voorwerp tipe kies, soos [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), en ander deur hulle op "waar"te stel.

Daarbenewens bied Aspose.Words die [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) eienskap waarmee u kan spesifiseer of u veranderinge volgens karakter of woord moet opspoor.

Nog'n gemeenskaplike eienskap is'n keuse in watter dokument om vergelyking veranderinge te wys. Byvoorbeeld, die" Vergelyk dokumente dialoog boks "in Microsoft Word het die opsie" Wys veranderinge in " – dit beïnvloed ook die vergelyking resultate. Aspose.Words verskaf die [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) eienskap wat hierdie doel dien.

Die volgende kode voorbeeld toon hoe om die gevorderde vergelyking eienskappe stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
