---
title: Werk Met Inhoudsopgawe in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Inhoudsopgawe
linktitle: Werk Met Inhoudsopgawe
description: "Tabel Van Inhoud veld in besonderhede. Hoe om `TOC` veld te skep en te verander met C#. Voeg `TOC` C# in."
type: docs
weight: 170
url: /af/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Dikwels sal jy werk met dokumente wat'n inhoudsopgawe (TOC) bevat. Met behulp van Aspose.Words kan jy jou eie inhoudsopgawe invoeg of bestaande inhoudsopgawe heeltemal herbou in die dokument met net'n paar reëls kode. Hierdie artikel gee'n oorsig van hoe om met die inhoudsopgawe te werk en demonstreer:

- Hoe om'n splinternuwe `TOC`in te voeg
- Dateer nuwe of bestaande TOCs in die dokument op.
- Spesifiseer skakelaars om die formatering en algehele struktuur f die TOC te beheer.
- Hoe om die style en voorkoms van die inhoudsopgawe te verander.
- Hoe om'n hele `TOC` veld verwyder saam met al die inskrywings vorm die dokument.

## Voeg Inhoudsopgawe Programmaties in

Jy kan'n `TOC` (inhoudsopgawe) veld in die dokument by die huidige posisie invoeg deur die [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/) metode te skakel.

'n inhoudsopgawe in'n Word-dokument kan op verskeie maniere gebou en geformateer word met behulp van'n verskeidenheid opsies. Die veldskakelaars wat u aan die metode gee, beheer die manier waarop die tabel gebou en in u dokument vertoon word.

Die standaard skakelaars wat gebruik word in a `TOC` ingevoeg in Microsoft Word is **"\o "1-3 \h \z \u"**. Beskrywings van hierdie skakelaars sowel as'n lys van ondersteunde skakelaars kan later in die artikel gevind word. U kan die gids gebruik om die korrekte skakelaars te kry, of as u reeds'n dokument het wat die soortgelyke `TOC` bevat wat u wil hê, kan u veldkodes (*ALT+F9*) wys en die skakelaars direk vanaf die veld kopieer.

Die volgende kode voorbeeld toon hoe om'n Inhoudsopgawe veld in'n dokument in te voeg:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

Die volgende kode voorbeeld toon hoe om'n Inhoudsopgawe (TOC) in'n dokument te voeg met behulp van opskrif style as inskrywings.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Sonder die metodes wat in die voorbeeld gebruik word, wanneer jy die uitset dokument oopmaak, sal jy die `TOC` veld vind, maar sonder sigbare inhoud. Dit is omdat die `TOC` veld is ingevoeg, maar is nog nie gevul totdat dit opgedateer in die dokument. Verdere inligting hieroor word in die volgende afdeling bespreek.

{{% /alert %}}

## Opdateer Inhoudsopgawe

Aspose.Words laat jou toe om a `TOC` heeltemal op te dateer met slegs'n paar reëls kode. Dit kan gedoen word om'n nuut ingevoegde `TOC` te vul of om'n bestaande `TOC` op te dateer nadat veranderinge aan die dokument aangebring is. Die volgende twee metodes moet gebruik word om die `TOC` velde in die dokument te werk:

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

Let asseblief daarop dat hierdie twee opdateringsmetodes in daardie volgorde genoem moet word. Indien omgekeer sal die inhoudsopgawe gevul word, maar geen bladsynommers sal vertoon word nie. Enige aantal verskillende TOCs kan opgedateer word. Hierdie metodes sal outomaties alle TOCs wat in die dokument gevind word, opdateer.

Die volgende kode voorbeeld toon hoe om heeltemal te herbou `TOC` velde in die dokument deur die oproep van veld update:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

Die eerste oproep na **UpdateFields** sal die `TOC` bou, al die teks inskrywings is gevul en die `TOC` verskyn byna voltooi. Die enigste ding wat ontbreek is die bladsy nommers wat vir nou vertoon word met "?". Die tweede oproep na **UpdatePageLayout** sal die uitleg van die dokument in die geheue bou. Dit moet gedoen word om die bladsynommers van die inskrywings te versamel. Die korrekte bladsy nommers bereken uit hierdie oproep word dan in die TOC ingevoeg.

## Gebruik Skakelaars Om Inhoudsopgawe Gedrag Te Beheer

Soos met enige ander veld, kan die `TOC` veld skakelaars aanvaar wat binne die veldkode gedefinieer is wat beheer hoe die inhoudsopgawe gebou is. Sekere skakelaars word gebruik om te beheer watter inskrywings ingesluit is en op watter vlak terwyl ander gebruik word om die voorkoms van die TOC te beheer. Skakelaars kan saam gekombineer word om ingewikkelde inhoudsopgawe te maak.

![working-with-table-of-contents-aspose-words-net](working-with-table-of-contents-1.png)


By verstek is hierdie skakelaars hierbo ingesluit wanneer'n verstek `TOC` in die dokument ingevoeg word. A `TOC` sonder skakelaars sal inhoud van die ingeboude kopstyle insluit (asof die \o-skakelaar ingestel is). Die beskikbare `TOC` skakelaars wat deur Aspose.Words ondersteun word, word hieronder gelys en hul gebruike word in detail beskryf. Hulle kan in afsonderlike afdelings verdeel word op grond van hulle tipe. Die skakelaars in die eerste afdeling definieer watter inhoud in die `TOC` ingesluit moet word en die skakelaars in die tweede afdeling beheer die voorkoms van die TOC. As'n skakelaar nie hier gelys word nie, word dit tans nie ondersteun nie. Alle skakelaars sal in toekomstige weergawes ondersteun word. Ons voeg verdere ondersteuning by elke vrystelling.

### Inskrywingsmerkskakelaars

| Skakel | Beskrywing |
| :- | :- |
| **Heading Styles** <br>* (\O Skakelaar)* | <p>Hierdie skakelaar definieer dat die `TOC` moet gebou word uit die ingeboude kop style. In Microsoft Word word dit gedefinieer deur Heading 1 – Heading 9. In Aspose.Words word hierdie style verteenwoordig deur die ooreenstemmende StyleIdentifier opsomming. Hierdie opsomming verteenwoordig'n plaaslike onafhanklike identifiseerder van'n styl, byvoorbeeld `StyleIdentifier.Heading1` verteenwoordig die Heading 1 styl. Die gebruik van hierdie, kan die formatering en eienskappe van die styl verkry word uit die Styl versameling van die dokument. Die ooreenstemmende Styl klas kan verkry word uit die `Document.Styles` versameling deur die gebruik van die geïndekseerde eienskap van tipe StyleIdentifier.</p><p>![werk-met-inhoudsopgawe-style](working-with-table-of-contents-2.png)</p><p>Enige inhoud wat met hierdie style geformateer is, is in die inhoudsopgawe ingesluit. Die vlak van die opskrif sal die ooreenstemmende hiërargiese vlak van die inskrywing in die TOC definieer. Byvoorbeeld, 'n paragraaf met Heading 1 styl sal behandel word as die eerste vlak in die `TOC` terwyl'n paragraaf met Heading 2 sal behandel word as die volgende vlak in die hiërargie en so aan.</p> |
| **Outline Levels** <br>* (\U skakelaar)* | <p>Elke paragraaf kan'n skets vlak onder Paragraaf opsies definieer.</p><p>![werk-met-inhoudsopgawe-paragraaf](working-with-table-of-contents-3.png)</p><p>Hierdie instelling bepaal watter vlak hierdie paragraaf in dokumenthiërargie behandel moet word. Dit is'n algemeen gebruikte praktyk wat gebruik word om die uitleg van'n dokument maklik te struktureer. Hierdie hiërargie kan gesien word deur Te verander na Outline View in Microsoft Word. Soortgelyk aan kopstyle, kan daar 1 – 9 sketsvlakke wees bykomend tot die "Liggaam Teks" vlak. Oorsig vlakke 1 – 9 sal verskyn in die `TOC` in die ooreenstemmende vlak van die hiërargie <br>Enige inhoud met'n sketsvlak wat in die paragraafstyl of direk op die paragraaf self gestel is, word in die TOC ingesluit. In Aspose.Words word die omtrek vlak verteenwoordig deur die `ParagraphFormat.OutlineLevel` eienskap van die Paragraaf knoop. Die omtrekvlak van'n paragraafstyl word op dieselfde manier voorgestel deur die `Style.ParagraphFormat` eienskap.</p><p>{{% alert color="primary" %}}</p><p>Let daarop dat ingeboude kopstyle soos Heading 1 'n sketsvlak verpligte stel in stylinstellings het.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>* (\T skakelaar)* | <p>Hierdie skakelaar sal toelaat dat persoonlike style gebruik word wanneer die versameling van inskrywings wat gebruik moet word in die TOC. Dit word dikwels gebruik in samewerking met die \o skakelaar om persoonlike style saam met ingeboude kopstyle in die TOC in te sluit. <br>Die parameters van die skakelaar moet binne spraakmerke ingesluit word. Baie persoonlike style kan ingesluit word, vir elke styl moet die naam gespesifiseer word gevolg deur'n komma gevolg deur die vlak wat die styl in die `TOC` as moet verskyn. Verdere style word ook deur'n komma geskei. <br>Byvoorbeeld</p><p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p><p>sal gebruik inhoud gestileer met CustomHeading1 as vlak 1 inhoud in die `TOC` en CustomHeading2 as vlak 2.</p> |
| **Use TC Fields** <br>* (\F En `\L` Skakelaars)* | <p>In ouer weergawes van Microsoft Word was die enigste manier om'n `TOC` te bou die gebruik van TC velde. Hierdie velde word verborge in die dokument ingevoeg selfs wanneer veldkodes vertoon word. Hulle sluit die teks in wat in die inskrywing vertoon moet word en die `TOC` is daaruit gebou. Hierdie funksie word nou nie baie dikwels gebruik nie, maar kan steeds nuttig wees in sommige gevalle om inskrywings in die `TOC` in te sluit wat nie ingekap is om sigbaar te wees in die dokument nie. <br>Wanneer ingevoeg hierdie velde verskyn verborge selfs wanneer veld kodes vertoon word. Hulle kan nie gesien word sonder om verborge inhoud te wys nie. Om hierdie velde Te Sien wys paragraaf formatering moet gekies word.</p><p>![werk-met-inhoudsopgawe-paragraaf-instellings](working-with-table-of-contents-4.png)</p>Hierdie velde kan in'n dokument ingevoeg word op enige posisie soos enige ander veld en word verteenwoordig deur die `FieldType.FieldTOCEntry` opsomming. <br>Die `\F` skakelaar in a `TOC` word gebruik om te spesifiseer dat TC velde as inskrywings gebruik moet word. Die skakelaar op sy eie sonder enige ekstra identifiseerder beteken dat enige TC veld in die dokument ingesluit sal word. Enige ekstra parameter, dikwels'n enkele letter, sal aandui dat slegs TC velde wat'n ooreenstemmende \f skakelaar het, in die TOC ingesluit sal word. Byvoorbeeld *</p><p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p><p>sal slegs TC velde insluit soos</p><p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p><p>Die `TOC` veld het ook'n verwante skakelaar, die "\L" skakelaar spesifiseer dat slegs TC veld met vlakke binne die gespesifiseerde reeks ingesluit is.</p><p>![todo: beeld_alt_ teks](working-with-table-of-contents-5.png)</p><p>Die `TC` velde self kan ook `{several, multiple, a few, many, numerous}` skakelaars stel. Dit is:</p><p>- *\F-hierbo Verduidelik.*</p><p>– * \L-Definieer in watter vlak in die `TOC` hierdie TC veld sal verskyn. A `TOC` wat dieselfde skakelaar gebruik sal slegs hierdie TC veld insluit as dit binne die gespesifiseerde reeks is.*</p><p>- `_\N` - die bladsynommering vir hierdie `TOC` - inskrywing word nie vertoon nie.Voorbeeld kode van hoe om TC velde in te voeg kan gevind word in die volgende afdeling.</p> |

### Voorkomsverwante Skakelaars

| Skakel | Beskrywing |
| :- | :- |
| **Omit Page Numbers** <br>* (\N Skakelaar)* | <p>Hierdie skakelaar word gebruik om bladsy nommers vir sekere vlakke van die TOC te verberg. Byvoorbeeld, jy kan definieer</p><p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p><p>en die bladsynommers op die inskrywings van vlakke 3 en vier sal saam met die leierpunte (indien daar enige is) weggesteek word. Om slegs een vlak te spesifiseer, moet'n reeks steeds gebruik word, byvoorbeeld "1-1" sal bladsy nommers slegs vir die eerste vlak uitsluit. <br>Die verskaffing van geen vlak reeks sal bladsy nommers vir alle vlakke in die TOC weglaat. Dit is nuttig om te stel wanneer'n dokument na HTML of soortgelyke formaat uitgevoer word. Dit is omdat HTML gebaseerde formate nie enige bladsy konsep het nie en dus nie enige bladsy nommering nodig het nie.</p><p>![todo: beeld_alt_ teks](working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks** <br>* (\H Skakelaar)* | <p>Hierdie skakelaar spesifiseer dat `TOC` inskrywings as hiperskakels ingevoeg word. Wanneer'n dokument in Microsoft Word besigtig word, sal hierdie inskrywings steeds as normale teks binne die `TOC` verskyn, maar is hiperskakel en kan dus gebruik word om na die posisie van die oorspronklike inskrywing in die dokument te navigeer deur *Ctrl + Left Click* in Microsoft Word te gebruik. Wanneer hierdie skakelaar ingesluit word, word hierdie skakels ook in ander formate bewaar. Byvoorbeeld in HTML gebaseer formate insluitend EPUB en weergegee formate soos PDF en XPS dit sal uitgevoer word as werk skakels. <br>Sonder hierdie skakelaar stel die `TOC` in al hierdie uitsette sal uitgevoer word as gewone teks en sal nie hierdie gedrag te demonstreer. As'n dokument in MS Word oopgemaak word, sal die teks van die inskrywings ook nie op hierdie manier geklik kan word nie, maar die bladsynommers kan steeds gebruik word om na die oorspronklike inskrywing te navigeer.</p><p>![werk-met-inhoudsopgawe-titels](working-with-table-of-contents-7.png)</p> |
| **Set Separator Character** <br>* (\P Skakelaar)* | <p>Hierdie skakelaar laat toe dat die inhoud wat die titel van die inskrywing en bladsy-nommering skei, maklik in die TOC verander kan word. Die skeiding wat gebruik moet word, moet na hierdie skakelaar gespesifiseer word en in spraakmerke ingesluit word. <br>In teenstelling met wat in Kantoordokumentasie gedokumenteer is, kan slegs een karakter gebruik word in plaas van tot vyf. Dit geld vir beide MS Woord En Aspose.Words. <br>Die gebruik van hierdie skakelaar word nie aanbeveel nie, aangesien dit nie veel beheer oor wat dit gebruik het om inskrywings en bladsynommers in die TOC te skei, moontlik maak nie. In plaas daarvan word dit aanbeveel om die toepaslike `TOC` styl soos `StyleIdentifier.TOC1` te wysig en van daar af die leier styl te wysig met toegang tot spesifieke lettertipe lede ens. Verdere besonderhede oor hoe om dit te doen, kan later in die artikel gevind word.</p><p>![werk-met-inhoudsopgawe-toc](working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries** <br>* (\W Skakelaar)* | <p>Die gebruik van hierdie skakelaar sal spesifiseer dat enige inskrywings wat'n oortjie karakter het, byvoorbeeld'n kop wat'n oortjie aan die einde van die lyn het, as'n behoorlike oortjie karakter behou sal word wanneer die TOC gevul word. Dit beteken dat die funksie van die oortjie karakter sal teenwoordig wees in die `TOC` en kan gebruik word om die inskrywing te formateer. Byvoorbeeld, sekere inskrywings kan tab stop en tab karakters gebruik om die teks eweredig uit te spasie. Solank die ooreenstemmende `TOC` vlak definieer die ekwivalente blad stop dan die gegenereerde `TOC` inskrywings sal verskyn met soortgelyke afstand. <br><br>In dieselfde situasie as hierdie skakelaar nie gedefinieer is nie, sal die oortjie karakters omgeskakel word na witruimte ekwivalent as nie-werkende oortjies. Die uitset sal dan nie soos verwag verskyn nie.</p><p>![werk-met-inhoudsopgawe-aspose](working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries** <br>* (\X Skakelaar)* | <p>Soortgelyk aan die skakelaar hierbo, spesifiseer hierdie skakelaar dat opskrifte wat oor verskeie lyne strek (met nuwe reëlkarakters nie afsonderlike paragrawe nie) bewaar sal word soos in die gegenereerde TOC. Byvoorbeeld, 'n kop wat oor verskeie lyne versprei moet word, kan die nuwe lynkarakter (Ctrl + Enter of `ControlChar.LineBreak`) gebruik om inhoud oor verskillende lyne te skei. Met hierdie skakelaar gespesifiseer, sal die inskrywing in die `TOC` hierdie nuwe reël karakters behou soos hieronder getoon. <br><br>In hierdie situasie as die skakelaar nie gedefinieer is nie, word die nuwe reëlkarakters omgeskakel na'n enkele wit spasie.</p><p>![werk-met-inhoudsopgawe-aspose-woorde](working-with-table-of-contents-10.png)</p> |

## Voeg By TC Velde

Jy kan'n nuwe TC veld by die huidige posisie van die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) invoeg deur die [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) metode te noem en die veldnaam as "TC" te spesifiseer saam met enige skakelaars wat nodig is.

Die volgende kode voorbeeld toon hoe om'n `TC` veld in die dokument te voeg met behulp van **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

Dikwels word'n spesifieke reël teks vir die `TOC` aangedui en word dit met'n `TC` veld gemerk. Die maklike manier om dit te doen in Microsoft Word is om die teks uit te lig en *ALT+SHIFT+O* te druk. Dit skep outomaties'n `TC` veld met behulp van die geselekteerde teks. Dieselfde tegniek kan deur middel van kode bereik word. Die kode hieronder sal teks vind wat ooreenstem met die insette en voeg'n `TC` veld in dieselfde posisie met die teks. Die kode is gebaseer op dieselfde tegniek wat in die artikel gebruik word.

Die volgende kode voorbeeld toon hoe om te vind en voeg'n `TC` veld by teks in'n dokument:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Verander Inhoudsopgawe

Die opmaak van inskrywings in die `TOC` gebruik nie die oorspronklike style van die gemerkte inskrywings nie, maar elke vlak word geformateer met behulp van'n ekwivalente `TOC` styl. Byvoorbeeld die eerste vlak in die `TOC` is geformateer met die **TOC1** styl, die tweede vlak geformateer met die **TOC2** styl en so aan. Dit beteken dat om die voorkoms van die `TOC` te verander, hierdie style aangepas moet word. In Aspose.Words word hierdie style verteenwoordig deur die plaaslike onafhanklike `StyleIdentifier.TOC1` tot `StyleIdentifier.TOC9` en kan verkry word uit die [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) versameling met behulp van hierdie identifiseerders.

Sodra die toepaslike styl van die dokument is verkry die formatering vir hierdie styl kan verander word. Enige veranderinge aan hierdie style sal outomaties weerspieël word op die TOCs in die dokument.

Die volgende kode voorbeeld verander'n formatering eienskap gebruik in die eerste vlak `TOC` styl:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Dit is ook nuttig om daarop te let dat enige direkte opmaak van'n paragraaf (gedefinieer op die paragraaf self en nie in die styl) gemerk om ingesluit te word die `TOC` sal oorgeskryf word in die inskrywing in die TOC. Byvoorbeeld as die Heading 1 styl gebruik word om inhoud vir die `TOC` te merk en hierdie styl Het Vet formatering terwyl die paragraaf ook kursiwiteit formatering direk daarop toegepas. Die gevolglike `TOC` inskrywing sal nie vet wees nie, aangesien dit deel is van stylformatering, maar dit sal kursief wees, aangesien dit direk op die paragraaf geformateer is.

U kan ook die opmaak van die skeiers wat tussen elke inskrywing en bladsynommer gebruik word, beheer. By verstek is dit'n gestrekte lyn wat versprei word oor die bladsy nommering met behulp van'n oortjie karakter en'n regter oortjie stop gevoer naby aan die regter rand.

Deur die [Style](https://reference.aspose.com/words/net/aspose.words/style/) klas te gebruik wat verkry is vir die spesifieke `TOC` vlak wat jy wil verander, kan jy ook verander hoe dit in die dokument verskyn. Om te verander hoe dit verskyn eerste [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) moet geroep word om die paragraaf formatering vir die styl te haal. Hieruit kan die oortjie stop verkry word deur [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) te bel en die toepaslike oortjie stop verander. Met dieselfde tegniek kan die oortjie self saam geskuif of verwyder word.

Die volgende kode voorbeeld toon hoe om die posisie van die regter blad stop in `TOC` verwante paragrawe te verander:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Verwyder Inhoudsopgawe van Die Dokument

'n inhoudsopgawe kan uit die dokument verwyder word deur al die nodusse wat tussen die `FieldStart` en FieldEnd node van die `TOC` veld gevind word, te verwyder. Die kode hieronder toon dit. Die verwydering van die `TOC` veld is eenvoudiger as'n normale veld, aangesien ons nie geneste velde byhou nie. In plaas daarvan kyk ons na die [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) knoop is van tipe [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) wat beteken dat ons die einde van die huidige TOC teëgekom het. Hierdie tegniek kan in hierdie geval gebruik word sonder om bekommerd te wees oor enige geneste velde, aangesien ons kan aanvaar dat enige behoorlik gevormde dokument geen ten volle geneste `TOC` veld binne'n ander `TOC` veld sal hê nie.

Eerstens word die [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) nodusse van elke `TOC` versamel en gestoor. Die gespesifiseerde `TOC` word dan opgesom sodat alle nodusse binne die veld besoek en gestoor word. Die nodusse word dan uit die dokument verwyder.

Die volgende kode voorbeeld toon hoe om'n gespesifiseerde `TOC` van'n dokument te verwyder:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Uittreksel Inhoudsopgawe

As jy'n inhoudsopgawe uit enige Word-dokument wil onttrek, kan die volgende kodesample gebruik word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
