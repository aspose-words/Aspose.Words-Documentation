---
title: Navigasie Met Wyser in Java
second_title: Aspose.Words vir Java
articleTitle: Navigasie Met Wyser
linktitle: Navigasie Met Wyser
description: "Navigeer tussen verskillende nodusse binne'n dokument, soos'n paragraaf, boekmerk, of'n spesifieke karakter met behulp van Java."
type: docs
weight: 5
url: /af/java/navigation-with-cursor/
---

Terwyl jy met'n dokument werk, selfs al is dit'n kort of lang een, sal jy deur jou dokument moet navigeer. Navigasie met'n virtuele wyser verteenwoordig die vermoë om tussen verskillende nodusse in'n dokument te navigeer.

Binne'n kort dokument is dit eenvoudig om in'n dokument rond te beweeg, aangesien u die invoegpunt kan skuif, selfs deur die pyltjie-sleutels van die sleutelbord te gebruik of deur op die muis te klik om die invoegpunt te vind waar u wil. Maar sodra jy'n groot dokument het wat baie bladsye het, sal hierdie basiese tegnieke onvoldoende wees.

Hierdie artikel verduidelik hoe om in'n dokument rond te beweeg en met'n virtuele wyser na verskillende dele daarvan te navigeer.

## Bespeur Huidige Wyser Posisie

Voordat u die proses van navigasie deur u dokument begin, moet u die nodus kry wat tans gekies is. Jy kan die presiese posisie van die wyser by'n geselekteerde knoop kry deur die [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) eienskap te gebruik. Daarbenewens, in plaas van om die huidige nodus te kry, kan jy die huidiglik geselekteerde paragraaf of die huidiglik geselekteerde afdeling kry deur die [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) en [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) eienskappe te gebruik.

Enige insetselbewerkings wat u met die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) uitvoer, sal voor die [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode) ingevoeg word. Wanneer die huidige paragraaf leeg is of die wyser net voor die einde van die paragraaf geplaas word, gee die **CurrentNode** null terug.

## Navigasie Metodes in'n Dokument

Wanneer jy teks redigeer, is dit belangrik om te weet hoe om jou dokument te navigeer en waar presies om daarin te beweeg. Aspose.Words laat jou toe om in'n dokument rond te beweeg en na sy verskillende afdelings en dele te navigeer – dit is soortgelyk aan die funksionaliteit van die Navigasiepaneel in Microsoft Word om na'n bladsy of opskrif in'n Word-dokument te gaan sonder om te blaai.

Die belangrikste metode is om die wyserposisie na'n spesifieke knoop in jou dokument te kan skuif, jy kan dit bereik deur die [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) metode te gebruik.

Die volgende kode voorbeeld toon hoe om die **DocumentBuilder** te skuif na verskillende nodes in'n dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Maar behalwe die basiese **MoveTo** metode, is daar meer spesifieke.

### Navigeer Na Begin of Einde Van'n Dokument

Jy kan na die begin of einde van jou dokument gaan deur die [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) en [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) metodes te gebruik.

Die volgende kode voorbeeld toon hoe om die wyser posisie te skuif na die begin of die einde van'n dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigeer Met Boekmerke

Jy kan'n plek merk wat jy wil vind en maklik weer daarheen beweeg. Jy kan soveel boekmerke in jou dokument invoeg as wat jy wil, en dan daardeur navigeer deur die boekmerke met unieke name te identifiseer. U kan na'n boekmerk beweeg deur die [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) - metode te gebruik.

Die volgende kode voorbeelde toon hoe om'n wyser posisie te skuif na'n boekmerk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navigeer Na Tabel Selle

Jy kan na'n tabel sel beweeg deur die [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) metode te gebruik. Hierdie metode sal jou in staat stel om jou wyser in enige sel in'n spesifieke tabel te navigeer. Daarbenewens kan u'n indeks spesifiseer om die wyser na enige posisie of gespesifiseerde karakter in'n sel binne die **MoveToCell** - metode te skuif.

Die volgende kode voorbeeld toon hoe om'n wyser posisie te skuif na'n gespesifiseerde tabel sel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navigeer na'n Veld

U kan na'n spesifieke veld in u dokument beweeg deur die [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) - metode te gebruik. Daarbenewens kan jy na'n spesifieke samesmeltingsveld beweeg deur die [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) - metode te gebruik.

Die volgende kode voorbeeld toon hoe om die dokument bouer wyser te skuif na'n spesifieke veld:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigeer na'n Koptekst of Voetskrif

U kan na die begin van'n koptekst of voetskrif beweeg deur die [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) - metode te gebruik.

Die volgende kode voorbeeld toon hoe om dokument bouer wyser te skuif na'n dokument kop of voetskrif:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigeer na'n Afdeling of Paragraaf

Jy kan na'n spesifieke afdeling of paragraaf beweeg deur die [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) of [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) metodes te gebruik. Daarbenewens kan u'n indeks spesifiseer om die wyser na enige posisie of'n gespesifiseerde karakter in'n paragraaf binne die **MoveToParagraph** - metode te skuif.

Die volgende kode voorbeeld toon hoe om te beweeg na'n spesifieke afdeling en'n spesifieke paragraaf in'n dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
