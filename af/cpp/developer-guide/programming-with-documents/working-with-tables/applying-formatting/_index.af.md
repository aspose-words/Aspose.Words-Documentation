---
title: Tabel Formatering in C++
second_title: Aspose.Words vir C++
articleTitle: Pas Opmaak Toe
linktitle: Pas Opmaak Toe
description: "Tabel formatering in besonderhede met behulp van C++. Gebruik C++ om elke deel van die tabel te formateer."
type: docs
weight: 70
url: /af/cpp/applying-formatting/
---

Elke element van'n tabel kan met verskillende formatering toegepas word. Byvoorbeeld, tabel formatering sal toegepas word op die hele tabel, ry formatering om slegs spesifieke rye, sel formatering om slegs sekere selle.

Aspose.Words bied'n ryk API om te haal en formatering toe te pas op'n tabel. U kan die [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) en [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) nodusse gebruik om die formatering in te stel.

In hierdie artikel sal ons praat oor hoe om formatering toe te pas op verskillende tabel nodusse en watter tabel formatering instellings Aspose.Words ondersteun.

## Pas Opmaak Toe Op Verskillende Nodusse

In hierdie afdeling, sal ons kyk na die toepassing van formatering om verskeie tabel nodes.

### Tabelvlak Formatering

Om formatering toe te pas op'n tabel, kan jy die eienskappe wat beskikbaar is op die ooreenstemmende **Table** knoop gebruik met behulp van die [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/), en [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/) klasse.

{{% alert color="primary" %}}

Let daarop dat die tabel ten minste een ry moet hê voordat die tabel eienskappe toegepas kan word. Dit beteken dat wanneer'n tabel met die [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) gebou word, hierdie opmaak gedoen moet word na die eerste oproep na [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), of nadat die eerste ry by die tabel gevoeg is, of wanneer nodusse direk in die DOM ingevoeg word.

{{% /alert %}}

Die foto's hieronder toon'n voorstelling van die **Table** formatering funksies in Microsoft Word en hul ooreenstemmende eienskappe in Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Die volgende kode voorbeeld toon hoe om'n omtrek grens toe te pas op'n tabel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Die volgende kode voorbeeld toon hoe om'n tabel te bou met alle grense geaktiveer(rooster):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Ryvlak Formatering

**Ryvlak**

{{% alert color="primary" %}}

Let daarop dat a **Row** slegs'n kind-knooppunt van a **Table** kan wees. Terselfdertyd moet daar ten minste een **Cell** in die **Row** wees sodat die opmaak daarop toegepas kan word.

{{% /alert %}}

Die foto's hieronder toon'n voorstelling van die **Row** formatering funksies in Microsoft Word en hul ooreenstemmende eienskappe in Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Die volgende kode voorbeeld toon hoe om die tabel ry formatering te verander:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Selvlak Formatering

Selvlak-opmaak word beheer deur die [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/), en [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/) klasse.

{{% alert color="primary" %}}

Let daarop dat a **Cell** slegs'n kind-knooppunt van a **Row** kan wees. Terselfdertyd moet daar ten minste een [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) in die **Cell** wees sodat die opmaak daarop toegepas kan word.

Benewens die **Paragraph**, kan jy ook a **Table** in a **Cell** invoeg.

{{% /alert %}}

Die foto's hieronder toon'n voorstelling van die **Cell** formatering funksies in Microsoft Word en hul ooreenstemmende eienskappe in Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Die volgende kode voorbeeld toon hoe om die formatering van'n tabel sel te verander:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Die volgende kode voorbeeld toon hoe om die hoeveelheid ruimte (in punte) te stel om by te voeg aan die linkerkant/bo / regs/onderkant van die inhoud van die sel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Spesifiseer Ryhoogtes

Die eenvoudigste manier om die ry hoogte stel is om die **DocumentBuilder** gebruik. Deur die toepaslike **RowFormat** eienskappe te gebruik, kan jy die verstekhoogte-instelling stel of'n ander hoogte vir elke ry in die tabel toepas.

In Aspose.Words word die ryhoogte van die tabel beheer deur:

- die ryhoogte eienskap - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- die hoogte reël eienskap vir die gegewe ry - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Terselfdertyd kan'n ander hoogte vir elke ry gestel word – dit laat jou toe om die tafelinstellings wyd te beheer.

{{% alert color="primary" %}}

Reël opsies vir die spesifisering van die hoogte van'n voorwerp kan gestel word met behulp van die [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/) opsomming.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n tabel wat'n enkele sel bevat te skep en ry formatering toe te pas:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Spesifiseer Tabel en Sel Breedtes

'n tabel in'n Microsoft Word dokument bied verskeie verskillende maniere om die tabel en individuele selle te verander. Hierdie eienskappe laat aansienlike beheer oor die voorkoms en gedrag van die tabel toe, sodat Aspose.Words die gedrag van tabelle ondersteun, soos in Microsoft Word.

Dit is belangrik om te weet dat tabelelemente verskeie verskillende eienskappe het wat kan beïnvloed hoe die breedtes van die algehele tabel, sowel as individuele selle, bereken word:

- Voorkeurwydte op die tafel
- Voorkeur breedte op individuele selle
- Laat outofit op die tafel toe

Hierdie artikel gee besonderhede oor hoe die verskillende tabel breedte berekening eienskappe werk en hoe om volle beheer oor tabel breedte berekening te kry. Dit is
veral nuttig om te weet in sulke gevalle waar die tabelopstelling nie soos verwag verskyn nie.

{{% alert color="primary" %}}

In die meeste gevalle word die voorkeursel aanbeveel as die tabelwydte. Die voorkeur sel breedte is meer in lyn met die DOCX formaat spesifikasie sowel as die Aspose.Words model.

Die sel breedte is eintlik'n berekende waarde vir die DOCX formaat. Die werklike selbreedte kan van baie dinge afhang. Byvoorbeeld, die verandering van die bladsy rande of die voorkeur tabel breedte kan die werklike sel breedte beïnvloed.

Die voorkeur sel breedte is'n sel eienskap wat in die dokument gestoor word. Dit hang nie van enigiets af nie en verander nie wanneer jy die tabel of ander eienskappe van die sel verander nie.

{{% /alert %}}

{{% alert color="primary" %}}

Alle eienskappe en metodes wat in hierdie artikel beskryf word, hou verband met hoe tabelle in Microsoft Word werk. So in die meeste gevalle, as jy jou tabel programmaties bou, maar dit moeilik vind om die gewenste tabel te skep, kan jy eerder probeer om dit eers visueel in Microsoft Word te skep en dan eenvoudig die formateringswaardes in jou aansoek te kopieer.

{{% /alert %}}

### Hoe Om Voorkeur Breedte Te Gebruik

Die gewenste breedte van'n tabel of individuele selle word gedefinieer deur die voorkeur breedte eienskap, wat is die grootte wat'n element streef daarna om te pas. Dit wil sê, die voorkeurwydte kan vir die hele tabel of vir individuele selle gespesifiseer word. In sommige situasies is dit dalk nie moontlik om hierdie breedte presies te pas nie, maar die werklike breedte sal in die meeste gevalle naby hierdie waarde wees.

Die toepaslike voorkeur breedte tipe en waarde is ingestel met behulp van die metodes van die [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) klas:

- die [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) metode om outomatiese of "geen voorkeur breedte"spesifiseer
- die [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) metode om'n persentasie breedte spesifiseer
- die [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) metode om die breedte in punte spesifiseer

Die foto's hieronder toon'n voorstelling van die *preferred width setting features* in Microsoft Word en hul ooreenstemmende eienskappe in Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

'n voorbeeld van hoe hierdie opsies toegepas word op'n werklike tabel in'n dokument kan gesien word in die prentjie hieronder.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Voordat jy die voorkeurwydte in'n tabel kan gebruik, moet jy seker maak dat die tabel ten minste een ry bevat. Dit is omdat so'n tabel formatering in'n Microsoft Word dokument of in'n dokument geskep in Aspose.Words is gestoor in die rye van die tabel.

{{% /alert %}}

#### Spesifiseer Die Voorkeurtabel of Selwydte

In Aspose.Words word tabel-en selbreedtes ingestel met behulp van die [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) eienskap en die [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) eienskap, met opsies beskikbaar in die [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) opsomming:

- **Auto**, wat gelykstaande is aan geen voorkeur breedte stel
- **Percent**, wat pas by die element relatief tot die beskikbare ruimte in die venster of houer grootte, en herbereken die waarde wanneer die beskikbare breedte verander
- **Points**, wat ooreenstem met'n element van die gespesifiseerde breedte in punte

{{% alert color="primary" %}}

By verstek kan'n tabel beskryf word as 100% van die beskikbare ruimte op die bladsy. In hierdie geval beteken dit dat die tabel sal probeer om die ruimte tussen die linker-en regterbladmarges in te neem.

{{% /alert %}}

Die gebruik van die [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) eienskap sal sy voorkeur breedte in verhouding tot sy houer aan te pas: bladsy, teks kolom, of buitenste tabel sel as dit'n geneste tabel.

Die volgende kode voorbeeld toon hoe om die tabel te stel om outomaties te pas by 50% van die bladsy breedte:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Die gebruik van die [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) eienskap op'n gegewe sel sal sy voorkeur breedte aan te pas.

Die volgende kode voorbeeld toon hoe om die verskillende voorkeur breedte instellings stel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Vind Voorkeur Wydte Tipe En Waarde

Jy kan die [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) en [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) eienskappe gebruik om die voorkeur breedte besonderhede van die verlangde tabel of sel te vind.

Die volgende kode voorbeeld toon hoe om die voorkeur breedte tipe van'n tabel sel te haal:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Hoe Om Autofit Te Stel

Die [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) eienskap laat selle in'n tabel toe om te groei en krimp volgens'n geselekteerde kriteria. U kan byvoorbeeld die **AutoFit to Window** - opsie gebruik om die tabel op die breedte van die bladsy te pas, en die **AutoFit to Content** - opsie om elke sel te laat groei of krimp volgens die inhoud daarvan.

{{% alert color="primary" %}}

Daarbenewens kan die **AllowAutoFit** eienskap gebruik word in samewerking met'n voorkeur sel breedte om'n sel wat outomaties pas by sy inhoud, maar het ook'n aanvanklike breedte te formateer. Indien nodig, kan die selbreedte dan verder as hierdie breedte groei.

{{% /alert %}}

By verstek, Aspose.Words voeg'n nuwe tabel met behulp van **AutoFit to Window**. Die tabel sal volgens die beskikbare bladsywydte gemeet word. Om'n tabel te verander, kan jy die [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/) metode noem. Hierdie metode aanvaar'n [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) opsomming wat spesifiseer watter tipe van autofit toegepas word op die tabel.

Dit is belangrik om te weet dat die autofit metode is eintlik'n kortpad wat verskillende eienskappe van toepassing op die tabel op dieselfde tyd. Dit is eienskappe wat eintlik die tabel die waargenome gedrag gee. Ons sal hierdie eienskappe vir elke autofit-opsie bespreek.

Die volgende kode voorbeeld toon hoe om'n tabel te stel om elke sel te krimp of te groei volgens sy inhoud:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit Tabel Na Venster

Wanneer outomatiese pas na'n venster op'n tafel toegepas word, word die volgende bewerkings eintlik agter die skerms uitgevoer:

1. Die **Table.AllowAutoFit** eienskap is in staat gestel om kolomme outomaties te verander om die beskikbare inhoud te pas, met behulp van'n **Table.PreferredWidth** waarde van 100%
2. **CellFormat.PreferredWidth** is verwyder uit alle tabel selle
   {{% alert color="primary" %}}
   Let daarop dat dit effens verskil van die Microsoft Word gedrag, waar elke sel se voorkeur breedte is ingestel op toepaslike waardes gebaseer op hul huidige grootte en inhoud. Aspose.Words werk nie die voorkeur breedte sodat hulle net kry skoongemaak in plaas daarvan.
   {{% /alert %}}
3. Kolombreedtes word herbereken vir die huidige tabelinhoud - die eindresultaat is'n tabel wat die hele beskikbare breedte beslaan
4. Die breedte van die kolomme in die tabel verander outomaties as die gebruiker die teks wysig

Die volgende kode voorbeeld toon hoe om'n tabel outomaties te pas by die bladsy breedte:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit Tabel Tot Inhoud

Wanneer die tabel outomaties die inhoud is, word die volgende stappe eintlik agter die skerms uitgevoer:

1. Die **Table.AllowAutoFit** eienskap word geaktiveer om elke sel outomaties te verander volgens die inhoud daarvan

2. Die voorkeur tabel breedte is verwyder uit **Table.PreferredWidth**, **CellFormat.PreferredWidth** is verwyder vir elke tabel sel
   {{% alert color="primary" %}}

   Let daarop dat hierdie autofit opsie verwyder die voorkeur breedte van selle, net soos in Microsoft Word. As jy die kolomgroottes wil behou en die kolomme wil vergroot of verminder om by die inhoud te pas, moet jy die **Table.AllowAutoFit** eienskap op **True** op sy eie stel eerder as om die autofit-kortpad te gebruik.{{% /alert %}}

3. Kolombreedtes word herbereken vir die huidige tabelinhoud – die eindresultaat is'n tabel waar die kolombreedtes en die breedte van die hele tabel outomaties verander word om die inhoud die beste te pas wanneer die gebruiker die teks wysig

Die volgende kode voorbeeld toon hoe om'n tabel outomaties te pas by sy inhoud:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Deaktiveer AutoFit In Tabel En Gebruik Vaste Kolombreedtes

As'n tabel het autofit uitgeskakel en vaste kolom breedtes gebruik word in plaas daarvan, is die volgende stappe uitgevoer:

1. **Table.AllowAutoFit** eienskap is gedeaktiveer sodat kolomme nie groei of krimp tot hul inhoud
2. Die voorkeur breedte van die hele tabel is verwyder uit **Table.PreferredWidth**, **CellFormat.PreferredWidth** is verwyder uit alle tabel selle
3. Die eindresultaat is'n tabel waarvan die kolombreedtes bepaal word deur die [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) eienskap, en waarvan die kolomme nie outomaties verander word wanneer die gebruiker teks invoer of wanneer die bladsy verander word nie

{{% alert color="primary" %}}

Let daarop dat indien geen breedte vir **CellFormat.Width** gespesifiseer word nie, die standaard waarde van een duim (72 punte) gebruik word.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om autofit deaktiveer en in staat stel vaste breedte vir die gespesifiseerde tabel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Volgorde Van Voorrang wanneer Selbreedte Bereken Word

Aspose.Words laat gebruikers toe om die breedte van'n tabel of sel deur verskeie voorwerpe te definieer, insluitend [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – sy [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) eienskap is meestal oorblyfsels van vorige weergawes, maar dit is steeds nuttig om die selbreedte te vereenvoudig.

Dit is belangrik om te weet dat die **CellFormat.Width** eienskap anders werk, afhangende van watter van die ander breedte eienskappe reeds in die tabel bestaan.

Aspose.Words gebruik die volgende volgorde vir die berekening van sel breedtes:

| Orde | Eiendom | Beskrywing |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) is bepaal | As **AutoFit** geaktiveer is:<br />- die tabel kan verby die voorkeurwydte groei om die inhoud te akkommodeer-dit krimp gewoonlik nie onder die voorkeurwydte nie<br />- enige verandering aan die **CellFormat.Width** waarde word geïgnoreer en die sel sal pas by sy inhoud in plaas daarvan |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) met'n waarde van **Points** of **Percent** | **CellFormat.Width** is geïgnoreer |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) met'n waarde van **Auto** | Die waarde van **CellFormat.Width** word gekopieer en word die sel se voorkeurwydte (in punte) |

{{% alert color="primary" %}}

Enige veranderinge aan die breedte eienskap word nie opgedateer in die voorkeur breedte en moet in plaas daarvan toegepas word op die voorkeur breedte in plaas daarvan.

{{% /alert %}}

{{% alert color="primary" %}}

Terwyl die skep van'n vaste tabel uitleg, spesifiseer die sel breedte. 'n sel sonder breedte kan nie in DOC formaat gestoor word nie. Ander dokumentformate as DOC, soos DOCX, laat in beginsel toe om selle sonder breedte in'n vaste tabelopstelling te stoor.

{{% /alert %}}

## Laat Spasiëring Tussen Selle Toe

Jy kan enige bykomende spasie tussen tabelselle kry of stel soortgelyk aan die opsie" Selspasiëring " in Microsoft Word. Dit kan gedoen word deur die [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/) eienskap te gebruik.

'n voorbeeld van hoe hierdie opsies toegepas word op'n werklike tabel in'n dokument kan gesien word in die prentjie hieronder.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Die volgende kode voorbeeld toon hoe om die afstand tussen selle stel:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Pas Grense en Skadu toe

Grens en skadu kan toegepas word op die hele tabel met behulp van [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) en [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), of slegs op spesifieke selle met behulp van [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) en [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Daarbenewens kan ry grense gestel word met behulp van [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), maar skadu kan nie op hierdie manier toegepas word nie.

Die foto's hieronder toon die grens-en skadu-instellings in Microsoft Word en hul ooreenstemmende eienskappe in Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Die volgende kode voorbeeld toon hoe om'n tabel en sel met verskillende grense en skakerings te formateer:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}