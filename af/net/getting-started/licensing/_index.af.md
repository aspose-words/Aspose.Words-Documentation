---
title: Lisensie en Inskrywing
second_title: Aspose.Words vir .NET
articleTitle: Lisensie en Inskrywing
linktitle: Lisensie en Inskrywing
description: "Aspose.Words vir .NET bied verskillende planne vir aankoop of bied'n Gratis Proeflopie en'n 30-Dag Tydelike Lisensie vir evaluering met Behulp van Lisensiëring en Inskrywing beleid in C#."
type: docs
weight: 55
url: /af/net/licensing/
---

Soms, om die stelsel beter te bestudeer, wil jy so vinnig as moontlik in die kode duik. Om dit makliker te maak, bied Aspose.Words verskillende planne vir aankoop of bied'n Gratis Proeflopie en'n 30-Dag Tydelike Lisensie vir evaluering.

{{% alert color="primary" %}}

Let daarop dat daar'n aantal algemene beleide en praktyke is wat u lei oor hoe om ons produkte te evalueer, behoorlik te lisensieer en te koop. Jy kan hulle vind in die [Koopbeleid en FAQ](https://purchase.aspose.com/policies/) afdeling.

{{% /alert %}}

## Gratis Proeflopie Of Tydelike Lisensie

Aspose.Words is ongelooflike sagteware wat ontwikkelaars kan probeer voordat hulle koop.

### Gratis Toets

Die evalueringsweergawe is dieselfde as die gekoopte een-die [Proef weergawe](https://releases.aspose.com/words/) word eenvoudig gelisensieer wanneer jy'n paar reëls kode byvoeg om die lisensie toe te pas.

Die Proef weergawe van Aspose.Words sonder die gespesifiseerde lisensie bied volle produk funksionaliteit, maar voeg'n evaluerende watermerk aan die bokant van die dokument by laai en stoor en beperk die maksimum dokument grootte tot'n paar honderd paragrawe.

### Tydelike Lisensie

As jy Aspose.Words wil toets sonder die beperkings van die Proefweergawe, kan jy ook'n 30-Dag Tydelike Lisensie aanvra. Vir meer besonderhede, sien die [Kry'n Tydelike Lisensie](https://purchase.aspose.com/temporary-license/) bladsy.

## Gekoopte Lisensie

Na aankoop moet u die lisensie lêer toepas of die lisensie lêer as'n ingebedde hulpbron insluit. Hierdie afdeling beskryf opsies van hoe dit gedoen kan word, en lewer ook kommentaar op sommige algemene vrae.

{{% alert color="primary" %}}

Jy moet die lisensie stel:

* slegs een keer per aansoek domein

* voordat enige ander Aspose.Words klasse gebruik word

{{% /alert %}}

{{% alert color="primary" %}}

U kan prysinligting vind oor die [Prysinligting](https://purchase.aspose.com/pricing/words/family/) bladsy.

{{% /alert %}}

### Beskerming Van U Gekoopte Lisensie

Nadat u'n lisensie gekoop het, moet u die inligting op die bladsy noukeurig lees [Beskerming Van U Gekoopte Lisensie](https://purchase.aspose.com/orders/protecting-your-license-file) om jou lisensie lêer te beskerm. Neem asseblief kennis dat hierdie bladsy slegs beskikbaar is vir besigtiging as u'n betaalde lisensie het.

### Lisensie Toepassing Opsies

Lisensies kan vanaf verskillende plekke toegepas word:

* Eksplisiete pad
* Die gids met die `Aspose.Words.dll` lêer
* Die gids wat die samestelling bevat wat `Aspose.Words.dll`genoem word
* Die gids met die inskrywing vergadering (jou `.exe`)
* 'n ingebedde hulpbron in die samestelling word `Aspose.Words.dll`genoem
* As'n Gemete Lisensie - 'n nuwe lisensie meganisme

Wanneer jy verwys `Aspose.Words.dll` in die aansoek, is die biblioteek gekopieer na jou uitset gids (tensy *Copy Local* in die eienskappe vir daardie inskrywing is ingestel op vals). Dikwels is die maklikste manier om'n lisensie te stel om die lisensie lêer in dieselfde gids as `Aspose.Words.dll` te plaas en spesifiseer net die lêernaam sonder die pad.

{{% alert color="primary" %}}

Gebruik die [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/#setlicense) metode om'n komponent te lisensieer.

Om **SetLicense** verskeie kere te bel is nie skadelik nie, dit mors net verwerker tyd.

Om [SetMeteredKey](https://reference.aspose.com/words/net/aspose.words/metered/setmeteredkey/) verskeie kere te bel is ook nie skadelik nie, maar mors net verwerker tyd en kan verbruik onbehoorlik ophoop.

{{% /alert %}}

#### Pas Lisensie Toe Met Behulp Van'n Lêer Of Stroomvoorwerp

Wanneer jy jou aansoek ontwikkel, bel **SetLicense** in jou opstartkode voordat jy Aspose.Words klasse gebruik.

##### Laai'n Lisensie vanaf'n Lêer

Met behulp van die [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) metode, kan jy probeer om die lisensie lêer in die ingebedde hulpbronne of vergadering dopgehou vir verdere gebruik te vind.

Die volgende kode voorbeeld toon hoe om'n lisensie van'n gids te inisialiseer:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-file.cs" >}}

##### Laai'n Lisensie vanaf'n Stroomvoorwerp

Die volgende kode voorbeeld toon hoe om'n lisensie van'n stroom te inisialiseer met behulp van'n ander [SetLicense](https://reference.aspose.com/words/net/aspose.words/license/setlicense/) metode:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-license-from-stream.cs" >}}

#### Sluit Die Lisensie Lêer as'n Ingebedde Hulpbron

'n netjiese manier om'n lisensie met jou aansoek te pak en seker te maak dit sal nie verlore gaan nie, is om dit as'n ingebedde hulpbron in een van die gemeentes wat Aspose.Words bel, in te sluit. Om'n lêer as'n ingebedde hulpbron in te sluit, volg hierdie stappe:

1. In Visual Studio, sluit die .lic lêer in die projek met behulp van die "**File | Add Existing Item…**" menu.
2. Kies die lêer in Die Oplossing Explorer en stel "**Build Action to Embedded Resource"** in die Eienskappe venster.
3. In jou kode, roep **SetLicense** wat net die kort naam van die hulpbron lêer slaag.

#### Aansoek Doen Metered Lisensie

Aspose.Words laat ontwikkelaars toe om'n gemete sleutel toe te pas. Dit is'n nuwe lisensie meganisme.

Die nuwe lisensiëringsmeganisme sal saam met die bestaande lisensiëringsmetode gebruik word. Die kliënte wat op grond van die gebruik van API funksies gefactureer wil word, kan die Metered Licensing gebruik.

Nadat u al die nodige stappe voltooi het om hierdie tipe lisensie te bekom, ontvang u die sleutels, nie die lisensie-lêer nie. Hierdie gemete sleutel kan toegepas word met behulp van die [Metered](https://reference.aspose.com/words/net/aspose.words/metered/) klas spesiaal vir hierdie doel ingestel.

Moenie die **SetMeteredKey** - metode gereeld bel sodat hierdie lisensiëringsmetode verbruik behoorlik ophoop en dit aan ons rapporteer nie. Net instantiate die Aspose.Words biblioteek, bel **SetMeteredKey** een keer, dan laat die biblioteek instantiated en hergebruik dit.

Die volgende kode voorbeeld toon hoe om beperkte openbare en private sleutels stel:

{{< gist "aspose-words-gists" "c762ebd027c53ed61fce5bc5ccac1ca7" "apply-metered-license.cs" >}}

Gewoonlik is dit genoeg om die meterlisensie een keer toe te pas wanneer die aansoek begin. As die meetlisensie-meganisme egter nie vir 24 ure met die Aspose-bedieners kommunikeer nie, sal Aspose.Words die gelisensieerde modus verlaat en oorskakel na die evalueringsmodus. Om so'n geval te vermy, moet jy gereeld die lisensiestatus nagaan – as Aspose.Words in evalueringsmodus verander, pas asseblief die gemete lisensie weer toe.

{{% alert color="primary" %}}

Let asseblief daarop dat u'n stabiele Internetverbinding moet hê vir die korrekte gebruik van Die Gemete lisensie, aangesien die Gemete meganisme die konstante interaksie met ons dienste vereis vir korrekte berekeninge. Vir meer besonderhede, verwys na die [Meterlisensie FAQ](https://purchase.aspose.com/faqs/licensing/metered/) afdeling.

{{% /alert %}}

### Verander Die Lisensie Lêernaam

Die lisensie lêernaam hoef nie "Aspose.Words.LIC"te wees nie. Jy kan dit na jou smaak hernoem en daardie naam gebruik wanneer jy'n lisensie in jou aansoek instel.

### "Kan nie lisensie lêernaam vind Nie" Uitsondering

Wanneer jy'n lisensie koop en aflaai, noem Die Aspose-webwerf die lisensie lêer *"Aspose.Words.LIC"*. U laai die lisensie-lêer af met u blaaier. In hierdie geval, sommige blaaiers herken die lisensie lêer as XML en voeg die .xml uitbreiding om dit, sodat die volle lêer naam op jou rekenaar word *"Aspose.Words.lic.XML"*.

Wanneer Microsoft Windows ingestel is om uitbreidings vir bekende lêertipes te verberg (ongelukkig is dit die standaard in die meeste Windows installasies), sal die lisensie lêer verskyn as *"Aspose.Words. LIC"* in Windows Explorer. Jy sal waarskynlik dink dat dit die regte lêernaam is en roep **SetLicense** verby dit *"Aspose.Words.LIC"*, maar daar is nie so'n lêer nie, vandaar die uitsondering.

Om die probleem op te los, hernoem die lêer om die onsigbare te verwyder .xml uitbreiding. Ons beveel ook aan dat jy die opsie "versteek uitbreidings" in Microsoft Windows deaktiveer.

## Gebruik Verskeie Aspose Produkte

As u verskeie Aspose-produkte in u toepassing gebruik, soos Aspose.Words en `Aspose.Cells`, is hier'n paar nuttige wenke:

* Stel die Lisensie vir Elke Aspose-produk afsonderlik in. Selfs as u'n enkele lisensie-lêer vir alle komponente het, byvoorbeeld "Aspose.Total.lic", moet u steeds **SetLicense** afsonderlik skakel vir elke Aspose-produk wat u in u aansoek gebruik.
* Gebruik Die Ten Volle Gekwalifiseerde Lisensie Klas Naam. Elke Aspose produk het'n **License** klas in sy eie naamruimte. Byvoorbeeld, Aspose.Words het [Aspose.Words.License](https://reference.aspose.com/words/net/aspose.words/license/) en `Aspose.Cells` het `Aspose.Cells`.Lisensie klas. Deur die ten volle gekwalifiseerde klasnaam te gebruik, kan u verwarring vermy oor watter lisensie op watter produk van toepassing is.
