---
title: Werk Met Afdelings in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Afdelings
linktitle: Werk Met Afdelings
description: "Verstaan dokument afdeling konsepte en manipulasie praktyke met behulp van Java. Voeg afdeling in'n dokument Java. Verwyder afdeling Java. Kopieer afdelings tussen Dokumente."
type: docs
weight: 120
url: /af/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Soms wil jy'n dokument hê wat nie dieselfde formatering oor alle bladsye het nie. Byvoorbeeld, jy sal dalk bladsynommerformate moet verander, verskillende bladsygrootte en oriëntasie moet hê, of die eerste dokumentbladsy as voorblad moet hê sonder enige nommering. Jy kan dit met afdelings bereik.

Afdelings is vlakknope wat koptekste en voetskrifte, oriëntasie, kolomme, rande, bladsy nommer opmaak, en ander beheer.

Aspose.Words laat jou toe om afdelings te bestuur, 'n dokument in afdelings te verdeel en formateringsveranderinge aan te bring wat slegs op'n spesifieke afdeling van toepassing is. Aspose.Words stoor inligting oor afdelingformatering soos koptekste en voetskrifte, bladsyopstelling en kolominstellings in die afdelingbreek.

Hierdie artikel verduidelik hoe om met afdelings en afdelingsonderbrekings te werk.

## Watter Afdeling En Afdeling Breek Is

Dokument afdelings word verteenwoordig deur die [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) en [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) klasse. Seksie voorwerpe is onmiddellike kinders van die [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) node en kan verkry word via die [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) eiendom. Jy kan die nodes te bestuur deur die gebruik van'n paar metodes soos [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), en ander.

Afdeling breek is'n opsie wat dokument bladsye verdeel in afdelings met aanpasbare uitlegte.

## Tipes Van'n Afdeling Breek

Aspose.Words laat jou toe om dokumente te verdeel en te formateer deur verskillende afdelingsbreuke van die [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) opsomming te gebruik:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Jy kan ook die [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) opsomming gebruik om'n breek tipe wat slegs van toepassing is vir die eerste afdeling soos kies NewColumn, NewPage, EvenPage, en OddPage.

## Bestuur'n Afdeling

Aangesien'n gedeelte'n normale saamgestelde knoop is, kan die hele knoopmanipulasie API gebruik word om afdelings te manipuleer: om afdelings by te voeg, te verwyder en ander bewerkings op afdelings te doen. Jy kan meer lees oor nodes in die artikel [Aspose.Words Dokument Voorwerp Model (DOM)](/words/java/aspose-words-document-object-model/).

Aan die ander kant kan jy ook die `DocumentBuilder` API gebruik om met afdelings te werk. In hierdie artikel sal ons fokus op hierdie spesifieke manier van werk met afdelings.

## Voeg Of Verwyder'n Gedeelte Breek

Aspose.Words laat jou toe om'n afdeling in te voeg breek in teks met behulp van die [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) metode.

Die volgende kode voorbeeld toon hoe om'n afdeling breek in'n dokument in te voeg:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Gebruik die [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) metode om'n afdeling breek uit te vee. As u nie'n spesifieke afdelingsonderbreking hoef te verwyder nie en die inhoud van die afdeling uitvee, kan u die [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) - metode gebruik.

Die volgende kode voorbeeld toon hoe om afdelings breek te verwyder:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Let daarop dat'n afdeling breek inligting bevat oor die afdeling wat voor dit gaan, nie die afdeling wat daarna gaan nie. So as jy'n afdeling breek verwyder, sal die teks voor die verwyderde breek die eienskappe van die afdeling breek daarna kry. Dit kan veroorsaak dat die hele dokument landskap word, of koptekste en voetskrifte verander of heeltemal verdwyn.

{{% /alert %}}

## Skuif'n Afdeling

As jy'n afdeling van een posisie na'n ander in jou dokument wil skuif, moet jy die indeks van daardie afdeling kry. Aspose.Words laat jou toe om'n afdeling posisie van a [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) te kry. U kan die [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) eienskap gebruik om alle afdelings in u dokument te kry. Maar as jy net die eerste afdeling wil kry, kan jy die [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) eienskap gebruik.

Die volgende kode voorbeeld toon hoe om toegang tot die eerste afdeling en iterate deur die kinders van'n saamgestelde knoop:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Spesifiseer'n Afdeling Uitleg

Soms wil jy hê jou dokument moet beter lyk deur kreatiewe uitlegte vir verskillende dokumentafdelings te maak. As u die tipe van die huidige afdelingrooster wil spesifiseer, kan u'n afdelinguitlegmodus kies deur die [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) - opsomming te gebruik:

- Verstek
- Rooster
- LineGrid
- SnapToChars

Die volgende kode voorbeeld toon hoe om die aantal reëls wat elke bladsy kan hê te beperk:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Redigeer'n Afdeling

As u'n nuwe afdeling by u dokument voeg, is daar geen liggaam of paragraaf wat u kan wysig nie. Aspose.Words laat jou toe om te waarborg dat'n afdeling'n liggaam met ten minste een paragraaf bevat met behulp van die [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) metode – dit sal outomaties'n Liggaam (of HeaderFooter) knoop by die dokument voeg en dan'n Paragraaf daarby voeg.

Die volgende kode voorbeeld toon hoe om'n nuwe afdeling node voor te berei met behulp van **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Voeg By Of Prepend Inhoud

As jy'n vorm wil teken of teks of prent aan die begin/einde van'n afdeling wil byvoeg, kan jy die [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) en [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) metodes van die [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) klas gebruik.

Die volgende kode voorbeeld toon hoe om inhoud van'n bestaande afdeling te voeg:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Kloon'n Afdeling

Aspose.Words laat jou toe om'n gedeelte te dupliseer deur'n volledige kopie daarvan te skep met behulp van die [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) metode.

Die volgende kode voorbeeld toon hoe om die eerste afdeling in jou dokument te kloon:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Kopieer Afdelings tussen Dokumente

In sommige gevalle kan jy groot dokumente met baie afdelings hê en jy wil die inhoud van'n afdeling van een dokument na'n ander kopieer.

Aspose.Words laat jou toe om afdelings tussen dokumente te kopieer deur die [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) metode te gebruik.

Die volgende kode voorbeeld toon hoe om afdelings tussen dokumente te kopieer:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Werk met Afdeling Kop En Voetskrif

Die basiese reëls vir die vertoon van'n koptekst of voetskrif vir elke afdeling is redelik eenvoudig:

1. As die afdeling nie sy eie koptekste/voetskrifte van'n sekere tipe het nie, word dit uit die vorige afdeling geneem.
2. Die tipe kop/voetskrif wat op die bladsy vertoon word, word beheer deur die "Different First Page" en "Different Odd & Even pages" afdeling instellings as hulle gedeaktiveer is, dan word die afdeling se eie titels geïgnoreer.

Die volgende kode voorbeeld toon hoe om 2 afdelings met verskillende koptekste te skep:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

As u die teks van koptekste en voetskrifte wil verwyder sonder om [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) voorwerpe in u dokument te verwyder, kan u die [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) - metode gebruik. Daarbenewens kan u die [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) - metode gebruik om alle vorms van koptekste en voetskrifte in u dokument te verwyder.

Die volgende kode voorbeeld toon hoe om inhoud van alle koptekste en voetskrifte in'n afdeling skoon te maak:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

Die volgende kode voorbeeld hoe om alle vorms van alle koptekste voetstukke in'n afdeling te verwyder:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Pasmaak Bladsy Eienskappe in'n Afdeling

Voordat jy'n bladsy of'n dokument druk, wil jy dalk die grootte en uitleg van'n enkele bladsy of die hele dokument aanpas en verander. Met bladsyopstelling kan u die instellings van dokumentbladsye soos kantlyne, oriëntasie en grootte verander vir die druk van verskillende eerste bladsye of onewe bladsye.

Aspose.Words laat jou toe om bladsy-en afdelingeienskappe aan te pas deur die [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) klas te gebruik.

Die volgende kode voorbeeld toon hoe om sulke eienskappe soos bladsy grootte en oriëntasie vir die huidige afdeling stel:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

Die volgende kode voorbeeld toon hoe om die bladsy eienskappe in alle afdelings te verander:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Sien Ook

- [Logiese Vlakke Van Nodusse in'n Dokument](/words/java/logical-levels-of-nodes-in-a-document/)
- [Voeg Dokumente in en Voeg By](/words/java/insert-and-append-documents/)
