---
title: Navigasie Met Wyser in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Navigasie Met Wyser
linktitle: Navigasie Met Wyser
description: "Navigeer tussen verskillende nodusse binne'n dokument soos'n paragraaf, boekmerk of'n spesifieke karakter met behulp van Python."
type: docs
weight: 10
url: /af/python-net/navigation-with-cursor/
---

Terwyl jy met'n dokument werk, selfs al is dit'n kort of lang een, sal jy deur jou dokument moet navigeer. Navigasie met'n virtuele wyser verteenwoordig die vermoë om tussen verskillende nodusse in'n dokument te navigeer.

Binne'n kort dokument is dit eenvoudig om in'n dokument rond te beweeg, aangesien u die invoegpunt kan skuif, selfs deur die pyltjie-sleutels van die sleutelbord te gebruik of deur op die muis te klik om die invoegpunt te vind waar u wil. Maar sodra jy'n groot dokument het wat baie bladsye het, sal hierdie basiese tegnieke onvoldoende wees.

Hierdie artikel verduidelik hoe om in'n dokument rond te beweeg en met'n virtuele wyser na verskillende dele daarvan te navigeer.

## Bespeur Huidige Wyser Posisie

Voordat u die proses van navigasie deur u dokument begin, moet u die nodus kry wat tans gekies is. Jy kan die presiese posisie van die wyser by'n geselekteerde knoop kry deur die [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) eienskap te gebruik. Daarbenewens, in plaas van om die huidige nodus te kry, kan jy die huidiglik geselekteerde paragraaf of die huidiglik geselekteerde afdeling kry deur die [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) en [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) eienskappe te gebruik.

Enige insetselbewerkings wat u met die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) uitvoer, sal voor die [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) ingevoeg word. Wanneer die huidige paragraaf leeg is of die wyser net voor die einde van die paragraaf geplaas word, gee die [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) Geen Terug nie.

## Navigasie Metodes in'n Dokument

Wanneer jy teks redigeer, is dit belangrik om te weet hoe om jou dokument te navigeer en waar presies om daarin te beweeg. Aspose.Words laat jou toe om in'n dokument rond te beweeg en na sy verskillende afdelings en dele te navigeer – dit is soortgelyk aan die funksionaliteit van die Navigasiepaneel in Microsoft Word om na'n bladsy of opskrif in'n Word-dokument te gaan sonder om te blaai.

Die belangrikste metode is om die wyserposisie na'n spesifieke knoop in jou dokument te kan skuif, jy kan dit bereik deur die [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) metode te gebruik.

Die volgende kode voorbeeld toon hoe om die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) te skuif na verskillende nodes in'n dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Maar behalwe die basiese [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) metode, is daar meer spesifieke.

### Navigeer Na Begin of Einde Van'n Dokument

Jy kan na die begin of einde van jou dokument gaan deur die [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) en [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) metodes te gebruik.

Die volgende kode voorbeeld toon hoe om die wyser posisie te skuif na die begin of die einde van'n dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navigeer Met Boekmerke

Jy kan'n plek merk wat jy wil vind en maklik weer daarheen beweeg. Jy kan soveel boekmerke in jou dokument invoeg as wat jy wil, en dan daardeur navigeer deur die boekmerke met unieke name te identifiseer. U kan na'n boekmerk beweeg deur die [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) - metode te gebruik.

Die volgende kode voorbeelde toon hoe om'n wyser posisie te skuif na'n boekmerk:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Navigeer Na Tabel Selle

Jy kan na'n tabel sel beweeg deur die [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) metode te gebruik. Hierdie metode sal jou in staat stel om jou wyser in enige sel in'n spesifieke tabel te navigeer. Daarbenewens kan u'n indeks spesifiseer om die wyser na enige posisie of gespesifiseerde karakter in'n sel binne die [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) - metode te skuif.

Die volgende kode voorbeeld toon hoe om'n wyser posisie te skuif na'n gespesifiseerde tabel sel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Navigeer na'n Veld

U kan na'n spesifieke veld in u dokument beweeg deur die [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) - metode te gebruik. Daarbenewens kan jy na'n spesifieke samesmeltingsveld beweeg deur die [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) - metode te gebruik.

Die volgende kode voorbeeld toon hoe om die dokument bouer wyser te skuif na'n spesifieke veld:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Navigeer na'n Koptekst of Voetskrif

U kan na die begin van'n koptekst of voetskrif beweeg deur die [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) - metode te gebruik.

Die volgende kode voorbeeld toon hoe om dokument bouer wyser te skuif na'n dokument kop of voetskrif:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navigeer na'n Afdeling of Paragraaf

Jy kan na'n spesifieke afdeling of paragraaf beweeg deur die [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) of [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) metodes te gebruik. Daarbenewens kan u'n indeks spesifiseer om die wyser na enige posisie of'n gespesifiseerde karakter in'n paragraaf binne die [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) - metode te skuif.

Die volgende kode voorbeeld toon hoe om te beweeg na'n spesifieke afdeling en'n spesifieke paragraaf in'n dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}