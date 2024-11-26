---
title: Werk Met Afdelings in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Afdelings
linktitle: Werk Met Afdelings
description: "Verstaan dokument afdeling konsepte en manipulasie praktyke met behulp van C#. Voeg afdeling in'n dokument C#. Verwyder afdeling C#. Kopieer afdelings tussen Dokumente."
type: docs
weight: 120
url: /af/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

Soms wil jy'n dokument hê wat nie dieselfde formatering oor alle bladsye het nie. Byvoorbeeld, jy sal dalk bladsynommerformate moet verander, verskillende bladsygrootte en oriëntasie moet hê, of die eerste dokumentbladsy as voorblad moet hê sonder enige nommering. Jy kan dit met afdelings bereik.

Afdelings is vlakknope wat koptekste en voetskrifte, oriëntasie, kolomme, rande, bladsy nommer opmaak, en ander beheer.

Aspose.Words laat jou toe om afdelings te bestuur, 'n dokument in afdelings te verdeel en formateringsveranderinge aan te bring wat slegs op'n spesifieke afdeling van toepassing is. Aspose.Words stoor inligting oor afdelingformatering soos koptekste en voetskrifte, bladsyopstelling en kolominstellings in die afdelingbreek.

Hierdie artikel verduidelik hoe om met afdelings en afdelingsonderbrekings te werk.

## Watter Afdeling En Afdeling Breek Is

Dokument afdelings word verteenwoordig deur die [Section](https://reference.aspose.com/words/net/aspose.words/section/) en [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection) klasse. Seksie voorwerpe is onmiddellike kinders van die [Document](https://reference.aspose.com/words/net/aspose.words/document/) node en kan verkry word via die [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections) eiendom. Jy kan die nodes te bestuur deur die gebruik van'n paar metodes soos [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/), en ander.

Afdeling breek is'n opsie wat dokument bladsye verdeel in afdelings met aanpasbare uitlegte.

## Tipes Van'n Afdeling Breek

Aspose.Words laat jou toe om dokumente te verdeel en te formateer deur verskillende afdelingsbreuke van die [BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/) opsomming te gebruik:

* SectionBreakContinuous
* SectionBreakNewColumn
* SectionBreakNewPage
* SectionBreakEvenPage
* SectionBreakOddPage

Jy kan ook die [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) opsomming gebruik om'n breek tipe wat slegs van toepassing is vir die eerste afdeling soos kies NewColumn, NewPage, EvenPage, en OddPage.

## Bestuur'n Afdeling

Aangesien'n gedeelte'n normale saamgestelde knoop is, kan die hele knoopmanipulasie API gebruik word om afdelings te manipuleer: om afdelings by te voeg, te verwyder en ander bewerkings op afdelings te doen. Jy kan meer lees oor nodes in die artikel [Aspose.Words Dokument Voorwerp Model (DOM)](/words/net/aspose-words-document-object-model/).

Aan die ander kant kan jy ook die `DocumentBuilder` API gebruik om met afdelings te werk. In hierdie artikel sal ons fokus op hierdie spesifieke manier van werk met afdelings.

## Voeg Of Verwyder'n Gedeelte Breek

Aspose.Words laat jou toe om'n afdeling in te voeg breek in teks met behulp van die [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) metode.

Die volgende kode voorbeeld toon hoe om'n afdeling breek in'n dokument in te voeg:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Gebruik die [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) metode om'n afdeling breek uit te vee. As u nie'n spesifieke afdelingsonderbreking hoef te verwyder nie en die inhoud van die afdeling uitvee, kan u die [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/) - metode gebruik.

Die volgende kode voorbeeld toon hoe om afdelings breek te verwyder:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Let daarop dat'n afdeling breek inligting bevat oor die afdeling wat voor dit gaan, nie die afdeling wat daarna gaan nie. So as jy'n afdeling breek verwyder, sal die teks voor die verwyderde breek die eienskappe van die afdeling breek daarna kry. Dit kan veroorsaak dat die hele dokument landskap word, of koptekste en voetskrifte verander of heeltemal verdwyn.

{{% /alert %}}

## Skuif'n Afdeling

As jy'n afdeling van een posisie na'n ander in jou dokument wil skuif, moet jy die indeks van daardie afdeling kry. Aspose.Words laat jou toe om'n afdeling posisie van a [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) te kry deur die [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item) eienskap te gebruik. U kan die [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) eienskap gebruik om alle afdelings in u dokument te kry. Maar as jy net die eerste afdeling wil kry, kan jy die [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) eienskap gebruik.

Die volgende kode voorbeeld toon hoe om toegang tot die eerste afdeling en iterate deur die kinders van'n saamgestelde knoop:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Spesifiseer'n Afdeling Uitleg

Soms wil jy hê jou dokument moet beter lyk deur kreatiewe uitlegte vir verskillende dokumentafdelings te maak. As u die tipe van die huidige afdelingrooster wil spesifiseer, kan u'n afdelinguitlegmodus kies deur die [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/) - opsomming te gebruik:

* Verstek
* Rooster
* LineGrid
* SnapToChars

Die volgende kode voorbeeld toon hoe om die aantal reëls wat elke bladsy kan hê te beperk:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Redigeer'n Afdeling

As u'n nuwe afdeling by u dokument voeg, is daar geen liggaam of paragraaf wat u kan wysig nie. Aspose.Words laat jou toe om te waarborg dat'n afdeling'n liggaam met ten minste een paragraaf bevat met behulp van die [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) metode – dit sal outomaties'n Liggaam (of HeaderFooter) knoop by die dokument voeg en dan'n Paragraaf daarby voeg.

Die volgende kode voorbeeld toon hoe om'n nuwe afdeling node voor te berei met behulp van **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Voeg By Of Prepend Inhoud

As jy'n vorm wil teken of teks of prent aan die begin/einde van'n afdeling wil byvoeg, kan jy die [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) en [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) metodes van die [Section](https://reference.aspose.com/words/net/aspose.words/section/) klas gebruik.

Die volgende kode voorbeeld toon hoe om inhoud van'n bestaande afdeling te voeg:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Kloon'n Afdeling

Aspose.Words laat jou toe om'n gedeelte te dupliseer deur'n volledige kopie daarvan te skep met behulp van die [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/) metode.

Die volgende kode voorbeeld toon hoe om die eerste afdeling in jou dokument te kloon:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Kopieer Afdelings tussen Dokumente

In sommige gevalle kan jy groot dokumente met baie afdelings hê en jy wil die inhoud van'n afdeling van een dokument na'n ander kopieer.

Aspose.Words laat jou toe om afdelings tussen dokumente te kopieer deur die [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) metode te gebruik.

Die volgende kode voorbeeld toon hoe om afdelings tussen dokumente te kopieer:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Werk met Afdeling Kop En Voetskrif

Die basiese reëls vir die vertoon van'n koptekst of voetskrif vir elke afdeling is redelik eenvoudig:

1. As die afdeling nie sy eie koptekste/voetskrifte van'n sekere tipe het nie, word dit uit die vorige afdeling geneem.
2. Die tipe kop/voetskrif wat op die bladsy vertoon word, word beheer deur die "Different First Page" en "Different Odd & Even pages" afdeling instellings as hulle gedeaktiveer is, dan word die afdeling se eie titels geïgnoreer.

Die volgende kode voorbeeld toon hoe om 2 afdelings met verskillende koptekste te skep:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

As u die teks van koptekste en voetskrifte wil verwyder sonder om [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) voorwerpe in u dokument te verwyder, kan u die [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) - metode gebruik. Daarbenewens kan u die [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) - metode gebruik om alle vorms van koptekste en voetskrifte in u dokument te verwyder.

Die volgende kode voorbeeld toon hoe om inhoud van alle koptekste en voetskrifte in'n afdeling skoon te maak:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

Die volgende kode voorbeeld hoe om alle vorms van alle koptekste voetstukke in'n afdeling te verwyder:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Pasmaak Bladsy Eienskappe in'n Afdeling

Voordat jy'n bladsy of'n dokument druk, wil jy dalk die grootte en uitleg van'n enkele bladsy of die hele dokument aanpas en verander. Met bladsyopstelling kan u die instellings van dokumentbladsye soos kantlyne, oriëntasie en grootte verander vir die druk van verskillende eerste bladsye of onewe bladsye.

Aspose.Words laat jou toe om bladsy-en afdelingeienskappe aan te pas deur die [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) klas te gebruik.

Die volgende kode voorbeeld toon hoe om sulke eienskappe soos bladsy grootte en oriëntasie vir die huidige afdeling stel:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

Die volgende kode voorbeeld toon hoe om die bladsy eienskappe in alle afdelings te verander:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Sien Ook

* [Logiese Vlakke Van Nodusse in'n Dokument](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Voeg Dokumente in en Voeg By](/words/net/insert-and-append-documents/)

