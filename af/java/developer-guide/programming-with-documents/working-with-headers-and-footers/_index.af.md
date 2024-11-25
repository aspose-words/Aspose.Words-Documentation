---
title: Werk met Opskrifte en Voetskrifte in Java
second_title: Aspose.Words vir Java
articleTitle: Werk met Kop-en Voetstukke
linktitle: Werk met Kop-en Voetstukke
description: "Hoe om koptekste en voetskrifte te manipuleer met behulp van Java."
type: docs
weight: 150
url: /af/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words laat gebruikers toe om met kop-en voetskrifte in'n dokument te werk. 'n koptekst is teks wat bo-aan'n bladsy geplaas word, en'n voetskrif is teks onderaan'n bladsy. Hierdie gebiede word gewoonlik gebruik om inligting in te voeg wat op al of sommige bladsye van die dokument herhaal moet word, soos bladsynommers, skeppingsdatum, maatskappy-inligting, ensovoorts.

## Skep Opskrifte of Voetskrifte met DocumentBuilder

As jy'n dokument kop of voetskrif programmaties wil byvoeg, is die maklikste manier om die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klas te gebruik om dit te doen.

Die volgende kode voorbeeld toon hoe om'n kop en voetskrif vir dokument bladsye voeg:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Spesifiseer Kop-Of Voetskrifopsies

As u'n koptekst of voettekst by'n dokument voeg, kan u'n paar gevorderde eienskappe instel. Aspose.Words bied gebruikers die [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) en [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) klasse, sowel as [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) opsomming wat jou meer beheer oor die kop-en voetskrif aanpassing proses gee.

### Spesifiseer Kop-of Voetskriftipe

U kan drie verskillende kopteksttipes en drie verskillende voetteksttipes vir een dokument spesifiseer:

1. Kop en/of voetskrif vir die eerste bladsy
2. Kop en / of voetskrif vir ewe bladsye
3. Kop en / of voetskrif vir onewe bladsye

Die volgende kode voorbeeld toon hoe om'n kop vir onewe dokument bladsye voeg:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### Spesifiseer Of Verskillende Opskrifte Of Voetskrifte Vir Die Eerste Bladsy Vertoon moet Word

Soos hierbo gesê, kan jy ook'n ander koptekst of voettekst vir die eerste bladsy stel. Om dit te doen, moet jy die [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) vlag op `true` stel en dan die **HeaderFirst** of **FooterFirst** waarde spesifiseer.

Die volgende kode voorbeeld toon hoe om die kop vir die eerste bladsy net stel:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### Spesifiseer Of Verskillende Opskrifte Of Voetskrifte Vir Onewe Of Ewe Bladsye Vertoon moet Word

 Vervolgens wil u verskillende opskrifte of voetskrifte vir onewe en egalige bladsye in'n dokument stel. Om dit te doen, moet jy die [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) vlag op `true` stel en dan die waardes **HeaderPrimary** en **HeaderEven**, of **FooterPrimary** en **FooterEven** spesifiseer.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### Voeg'n Absoluut Geposisioneer Beeld in Die Kop

Om'n beeld in'n koptekst of voetskrif te plaas, gebruik die **HeaderPrimary** kopteksttipe of die **FooterPrimary** voetteksttipe en die [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) metode.

Die volgende kode voorbeeld toon hoe om'n beeld te voeg tot'n kop:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Stel Lettertipe En Paragraafeienskappe vir Koptekst Of Voettekst

Met Aspose.Words kan u die lettertipe-en paragraafeienskappe stel, die **HeaderPrimary** - kopteksttipe of die **FooterPrimary** - voetskriftipe gebruik, asook metodes en eienskappe om met die lettertipes en paragrawe wat u vir die dokumentliggaam gebruik, te werk.

Die volgende kode voorbeeld toon hoe om Die teks in Die kop Te Stel Om Arial, vet, grootte 14, en middel uitlijning:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Voeg Bladsynommers in Die Koptekst of Voetskrif in

Indien nodig, kan jy bladsynommers by die koptekst of voettekst voeg. Om dit te doen, gebruik die **HeaderPrimary** koptekst tipe of die **FooterPrimary** voetskrif tipe en die [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) metode om die vereiste veld by te voeg.

Die volgende kode voorbeeld toon hoe om bladsy nommers by te voeg tot die voetskrif aan die regterkant:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Gebruik Koptekste Of Voetskrifte Wat In Die Vorige Afdeling Omskryf Is

As jy die koptekst of voettekst van die vorige afdeling moet kopieer, kan jy dit ook doen.

Die volgende kode voorbeeld toon hoe om die kop of voetskrif van die vorige afdeling kopieer:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### Verseker koptekst of Voetskrif voorkoms wanneer Verskillende Bladsy Oriëntasies En Bladsy Grootte Gebruik Word

Aspose.Words laat jou toe om die voorkoms van'n kop of voetskrif te verskaf wanneer jy verskillende oriëntasies en bladsygroottes gebruik.

Die volgende voorbeeld toon hoe om dit te doen:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## Hoe Om Slegs Opskrifte Of Slegs Voetstukke Te Verwyder

Elke afdeling in'n dokument kan tot drie koptekste en tot drie voettekste hê (vir eerste, ewekansige en onewe bladsye). As u alle koptekste of alle voetskrifte in'n dokument wil verwyder, moet u deur al die afdelings loop en elke ooreenstemmende kopknoop of voetskrifknoop verwyder.

Die volgende kode voorbeeld toon hoe om al die voetstukke van alle afdelings te verwyder, maar laat koptekste ongeskonde. U kan slegs opskrifte op'n soortgelyke manier verwyder:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}