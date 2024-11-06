---
title: Werk met Opskrifte en Voetskrifte in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk met Kop-en Voetstukke
linktitle: Werk met Kop-en Voetstukke
description: "Hoe om koptekste en voetskrifte te manipuleer met behulp van C#. Skep opskrifte en voetskrifte C#. Verwyder koptekste of voetskrifte C#."
type: docs
weight: 150
url: /af/net/working-with-headers-and-footers/
---

Aspose.Words laat gebruikers toe om met kop-en voetskrifte in'n dokument te werk. 'n koptekst is teks wat bo-aan'n bladsy geplaas word, en'n voetskrif is teks onderaan'n bladsy. Hierdie gebiede word gewoonlik gebruik om inligting in te voeg wat op al of sommige bladsye van die dokument herhaal moet word, soos bladsynommers, skeppingsdatum, maatskappy-inligting, ensovoorts.

## Skep Opskrifte of Voetskrifte met DocumentBuilder

As jy'n dokument kop of voetskrif programmaties wil byvoeg, is die maklikste manier om die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klas te gebruik om dit te doen.

Die volgende kode voorbeeld toon hoe om'n kop en voetskrif vir dokument bladsye voeg:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## Spesifiseer Kop-Of Voetskrifopsies

As u'n koptekst of voettekst by'n dokument voeg, kan u'n paar gevorderde eienskappe instel. Aspose.Words bied gebruikers die [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) en [HeaderFooterCollection](https://reference.aspose.com/words/net/aspose.words/headerfootercollection/) klasse, sowel as [HeaderFooterType](https://reference.aspose.com/words/net/aspose.words/headerfootertype/) opsomming wat jou meer beheer oor die kop-en voetskrif aanpassing proses gee.

### Spesifiseer Kop-of Voetskriftipe

U kan drie verskillende kopteksttipes en drie verskillende voetteksttipes vir een dokument spesifiseer:
1. Kop en/of voetskrif vir die eerste bladsy
2. Kop en / of voetskrif vir ewe bladsye
3. Kop en / of voetskrif vir onewe bladsye

Die volgende kode voorbeeld toon hoe om'n kop vir onewe dokument bladsye voeg:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### Spesifiseer Of Verskillende Opskrifte Of Voetskrifte Vir Die Eerste Bladsy Vertoon moet Word

Soos hierbo gesê, kan jy ook'n ander koptekst of voettekst vir die eerste bladsy stel. Om dit te doen, moet jy die [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) vlag op `true` stel en dan die **HeaderFirst** of **FooterFirst** waarde spesifiseer.

Die volgende kode voorbeeld toon hoe om die kop vir die eerste bladsy net stel:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### Spesifiseer Of Verskillende Opskrifte Of Voetskrifte Vir Onewe Of Ewe Bladsye Vertoon moet Word

 Vervolgens wil u verskillende opskrifte of voetskrifte vir onewe en egalige bladsye in'n dokument stel. Om dit te doen, moet jy die [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) vlag op `true` stel en dan die waardes **HeaderPrimary** en **HeaderEven**, of **FooterPrimary** en **FooterEven** spesifiseer.

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### Voeg'n Absoluut Geposisioneer Beeld in Die Kop

Om'n beeld in'n koptekst of voetskrif te plaas, gebruik die **HeaderPrimary** kopteksttipe of die **FooterPrimary** voetteksttipe en die [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) metode.

Die volgende kode voorbeeld toon hoe om'n beeld te voeg tot'n kop:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### Stel Lettertipe En Paragraafeienskappe vir Koptekst Of Voettekst

Met Aspose.Words kan u die lettertipe-en paragraafeienskappe stel, die **HeaderPrimary** - kopteksttipe of die **FooterPrimary** - voetskriftipe gebruik, asook metodes en eienskappe om met die lettertipes en paragrawe wat u vir die dokumentliggaam gebruik, te werk.

Die volgende kode voorbeeld toon hoe om Die teks in Die kop Te Stel Om Arial, vet, grootte 14, en middel uitlijning:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### Voeg Bladsynommers in Die Koptekst of Voetskrif in

Indien nodig, kan jy bladsynommers by die koptekst of voettekst voeg. Om dit te doen, gebruik die **HeaderPrimary** koptekst tipe of die **FooterPrimary** voetskrif tipe en die [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) metode om die vereiste veld by te voeg.

Die volgende kode voorbeeld toon hoe om bladsy nommers by te voeg tot die voetskrif aan die regterkant:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### Gebruik Koptekste Of Voetskrifte Wat In Die Vorige Afdeling Omskryf Is

As jy die koptekst of voettekst van die vorige afdeling moet kopieer, kan jy dit ook doen.

Die volgende kode voorbeeld toon hoe om die kop of voetskrif van die vorige afdeling kopieer:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### Verseker koptekst of Voetskrif voorkoms wanneer Verskillende Bladsy Oriëntasies En Bladsy Grootte Gebruik Word

Aspose.Words laat jou toe om die voorkoms van'n kop of voetskrif te verskaf wanneer jy verskillende oriëntasies en bladsygroottes gebruik.

Die volgende voorbeeld toon hoe om dit te doen:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## Hoe Om Slegs Opskrifte Of Slegs Voetstukke Te Verwyder

Elke afdeling in'n dokument kan tot drie koptekste en tot drie voettekste hê (vir eerste, ewekansige en onewe bladsye). As u alle koptekste of alle voetskrifte in'n dokument wil verwyder, moet u deur al die afdelings loop en elke ooreenstemmende kopknoop of voetskrifknoop verwyder.

Die volgende kode voorbeeld toon hoe om al die voetstukke van alle afdelings te verwyder, maar laat koptekste ongeskonde. U kan slegs opskrifte op'n soortgelyke manier verwyder:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}