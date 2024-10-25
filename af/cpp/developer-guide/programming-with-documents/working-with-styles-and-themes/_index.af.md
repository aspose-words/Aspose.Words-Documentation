---
title: Werk Met Style in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Style
linktitle: Werk Met Style
description: "Verbeterde Microsoft Word formatering funksies, werk met style en temas met behulp van C++."
type: docs
weight: 110
url: /af/cpp/working-with-styles-and-themes/
---

Die [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) klas word gebruik om ingeboude te bestuur en gebruiker-gedefinieerde instellings toe te pas op style.

## Hoe Om Inhoud Te Onttrek Gebaseer Op Style

Op'n eenvoudige vlak kan die opname van die inhoud gebaseer op style uit'n Word-dokument nuttig wees om paragrawe en teksreekse wat met'n spesifieke styl geformateer is, te identifiseer, te lys en te tel. Byvoorbeeld, jy sal dalk spesifieke soorte inhoud in die dokument moet identifiseer, soos voorbeelde, titels, verwysings, sleutelwoorde, figuurname en gevallestudies.

Om dit'n paar stappe verder te neem, kan dit ook gebruik word om die struktuur van die dokument, gedefinieer deur die style wat dit gebruik, te benut om die dokument vir'n ander uitset, soos HTML, te hergebruik. Dit is in werklikheid hoe Die Aspose dokumentasie gebou word, wat Aspose.Words op die proef stel. 'n gereedskap gebou met behulp van Aspose.Words neem die bron Woord dokumente en verdeel hulle in onderwerpe op sekere kop vlakke. 'n XML lêer word geproduseer met behulp van Aspose.Words wat gebruik word om die navigasie boom wat jy kan sien aan die linkerkant te bou. En dan Aspose.Words omskep elke onderwerp in HTML.

Die oplossing vir die herwinning van teks geformateer met spesifieke style in'n Word dokument is tipies ekonomies en eenvoudig met behulp van Aspose.Words.

### Die Oplossing

Om te illustreer hoe maklik Aspose.Words hanteer die herwinning van inhoud gebaseer op style, kom ons kyk na'n voorbeeld. In hierdie voorbeeld, gaan ons teks geformateer met'n spesifieke paragraaf styl en'n karakter styl van'n voorbeeld Word dokument te haal. Op'n hoë vlak sal dit behels:
- Open'n Word dokument met behulp van die `Document` klas.
- Kry versamelings van alle paragrawe en alle lopies in die dokument.
- Kies slegs die vereiste paragrawe en lopies. Spesifiek, sal ons haal teks geformateer met die'opskrif 1' paragraaf styl en Die'intensiewe Klem'karakter styl van hierdie voorbeeld Word dokument.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


In hierdie voorbeelddokument is die teks geformateer met Die'opskrif 1 'paragraafstyl'insetsel Oortjie', 'vinnige Style'en'tema', en die teks geformateer met die'intensiewe klem'karakterstyl is die verskillende gevalle van blou, kursief, vet teks soos'galerye'en'algemene voorkoms'.

### Die Kode

Die implementering van'n styl-gebaseerde navraag is redelik eenvoudig in die Aspose.Words document object model, aangesien dit eenvoudig gereedskap gebruik wat reeds in plek is. Twee klasmetodes word geïmplementeer vir hierdie oplossing:# **ParagraphsByStyleName** – Hierdie metode haal'n verskeidenheid van die paragrawe in die dokument wat'n spesifieke stylnaam het.# **RunsByStyleName** – hierdie metode haal'n verskeidenheid van die lopies in die dokument wat'n spesifieke stylnaam het. Beide hierdie metodes is baie soortgelyk, die enigste verskille is die node tipes en die voorstelling van die styl inligting binne die paragraaf en run nodes. Hier is'n implementering van ParagraphsByStyleName. Hieronder voorbeeld vind al die paragrawe geformateer met die gespesifiseerde styl.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Hierdie implementering gebruik ook die `Document.GetChildNodes` metode van die `Document` klas, wat'n versameling van alle nodes met die gespesifiseerde tipe, wat in hierdie geval in alle paragrawe.

Let daarop dat die tweede parameter van die **Document.GetChildNodes** metode is ingestel op waar. Dit dwing die **Document.GetChildNodes** metode om rekursief uit alle kind nodes te kies, eerder as om slegs die onmiddellike kinders te kies.

{{% /alert %}}

Dit is ook die moeite werd om daarop te wys dat die paragrawe-versameling nie'n onmiddellike oorhoofse koste skep nie, want paragrawe word slegs in hierdie versameling gelaai as u toegang tot items daarin kry. Dan, al wat jy hoef te doen is om te gaan deur die versameling, met behulp van die standaard vir elke operateur en voeg paragrawe wat die gespesifiseerde styl het om die paragraphsWithStyle skikking. Die `Paragraph` styl naam kan gevind word in die Styl. Naam eienskap van die `Paragraph.ParagraphFormat` voorwerp. Die implementering van RunsByStyleName is amper dieselfde, alhoewel ons natuurlik `NodeType.Run` gebruik om run nodes te haal. Die `Font.Style` eienskap van'n `Run` voorwerp word gebruik om toegang te verkry tot styl inligting in die **Run** nodes. Die below code voorbeeld vind alle loop geformateer met die gespesifiseerde styl.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Wanneer beide navrae geïmplementeer word, al wat jy hoef te doen is om'n dokument voorwerp te slaag en spesifiseer die styl name van die inhoud wat jy wil haal: hieronder voorbeeld voer navrae en vertoon resultate. Jy kan die sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Eindresultaat

Wanneer alles gedoen is, loop die monster sal die volgende uitset vertoon:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Soos u kan sien, is dit'n baie eenvoudige voorbeeld, wat die nommer en teks van die versamelde paragrawe en lopies in die voorbeeldwoorddokument toon.

## Hoe Om In Te Voeg en Te Werk met Die Inhoudsopgawe Veld

Dikwels sal jy werk met dokumente wat'n inhoudsopgawe (TOC) bevat. Met behulp van Aspose.Words kan jy jou eie inhoudsopgawe invoeg of die bestaande inhoudsopgawe heeltemal herbou in die dokument met net'n paar reëls kode. Hierdie artikel gee'n oorsig van hoe om met die inhoudsopgawe te werk en demonstreer:

- Hoe om'n splinternuwe `TOC`in te voeg
- Dateer nuwe of bestaande TOCs in die dokument op.
- Spesifiseer skakelaars om die formatering en algehele struktuur f die TOC te beheer.
- Hoe om die style en voorkoms van die inhoudsopgawe te verander.
- Hoe om'n hele `TOC` veld verwyder saam met al die inskrywings van die dokument.

### Voeg By TC Velde

Dikwels word'n spesifieke reël teks vir die `TOC` aangedui en word dit met'n `TC` veld gemerk. Die maklike manier om dit in MS Word te doen, is om die teks uit te lig en *ALT+SHIFT+O* te druk. Dit skep outomaties'n `TC` veld met behulp van die geselekteerde teks. Dieselfde tegniek kan deur middel van kode bereik word. Die kode hieronder sal teks vind wat ooreenstem met die insette en voeg'n `TC` veld in dieselfde posisie as die teks. Die kode is gebaseer op dieselfde tegniek wat in die artikel gebruik word. Hieronder voorbeeld toon hoe om te vind en voeg'n `TC` veld by die teks in'n dokument.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Verander'n Inhoudsopgawe

#### Verander Die Formatering Van Style

Die opmaak van inskrywings in die `TOC` gebruik nie die oorspronklike style van die gemerkte inskrywings nie, maar elke vlak word geformateer met behulp van'n ekwivalente `TOC` styl. Byvoorbeeld, die eerste vlak in die `TOC` is geformateer met die **TOC1** styl, die tweede vlak geformateer met die **TOC2** styl en so aan. Dit beteken dat om die voorkoms van die `TOC` te verander, hierdie style aangepas moet word. In Aspose.Words word hierdie style verteenwoordig deur die plaaslike onafhanklike `StyleIdentifier.TOC1` tot `StyleIdentifier.TOC9` en kan verkry word uit die `Document.Styles` versameling met behulp van hierdie identifiseerders. Sodra die toepaslike styl van die dokument is verkry die formatering vir hierdie styl kan verander word. Enige veranderinge aan hierdie style sal outomaties weerspieël word op die TOCs in die dokument. Die below code voorbeeld verander'n formatering eienskap wat gebruik word in die eerste vlak `TOC` styl.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Dit is ook nuttig om daarop te let dat enige direkte opmaak van'n paragraaf (gedefinieer op die paragraaf self en nie in die styl) gemerk om ingesluit te word die `TOC` sal oorgeskryf word in die inskrywing in die TOC. Byvoorbeeld, as die Opskrif 1 styl gebruik word om inhoud vir die `TOC` te merk en hierdie styl Het Vet formatering terwyl die paragraaf het ook kursiwiteit formatering direk toegepas op dit. Die gevolglike `TOC` inskrywing sal nie vet wees nie, aangesien dit deel is van stylformatering, maar dit sal kursief wees, aangesien dit direk op die paragraaf geformateer is. U kan ook die opmaak van die skeiers wat tussen elke inskrywing en die bladsynommer gebruik word, beheer. By verstek is dit'n gestrekte lyn wat versprei word oor die bladsy nommering met behulp van'n oortjie karakter en'n regter oortjie stop gevoer naby die regter rand.

Deur die `Style` klas te gebruik wat verkry is vir die spesifieke `TOC` vlak wat jy wil verander, kan jy ook verander hoe dit in die dokument verskyn. Om te verander hoe dit lyk eerste `Style.ParagraphFormat` moet geroep word om die paragraaf formatering vir die styl te haal. Hieruit kan die oortjie stop verkry word deur `ParagraphFormat.TabStops` te bel en die toepaslike oortjie stop verander. Met dieselfde tegniek kan die oortjie self verskuif of heeltemal verwyder word. Die below code voorbeeld toon hoe om die posisie van die regter oortjie stop in `TOC` verwante paragrawe te verander. Jy kan die sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Verwyder'n Inhoudsopgawe uit Die Dokument

'n inhoudsopgawe kan uit die dokument verwyder word deur al die nodusse wat tussen die `FieldStart` en FieldEnd node van die `TOC` veld gevind word, te verwyder. Die kode hieronder toon dit. Die verwydering van die `TOC` veld is eenvoudiger as'n normale veld, aangesien ons nie geneste velde byhou nie. In plaas daarvan, ons kyk na die `FieldEnd` node is van tipe `FieldType.FieldTOC` wat beteken dat ons die einde van die huidige TOC teëgekom het. Hierdie tegniek kan in hierdie geval gebruik word sonder om bekommerd te wees oor enige geneste velde, aangesien ons kan aanvaar dat enige behoorlik gevormde dokument geen ten volle geneste `TOC` veld binne'n ander `TOC` veld sal hê nie. Eerstens word die `FieldStart` nodusse van elke `TOC` versamel en gestoor. Die gespesifiseerde `TOC` word dan opgesom sodat alle nodusse binne die veld besoek en gestoor word. Die nodusse word dan uit die dokument verwyder. Die below code voorbeeld demonstreer hoe om'n gespesifiseerde `TOC` uit'n dokument te verwyder. Jy kan die sjabloon lêer van hierdie voorbeeld van hier af te laai.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Voeg Stylskeier in Om Verskillende Paragraafstyle Te Plaas

Die styl skeiding kan bygevoeg word aan die einde van'n paragraaf met behulp van die Ctrl + Alt + Enter Sleutelbord Kortpad in MS Woord. Hierdie funksie laat twee verskillende paragraafstyle toe wat in een logiese gedrukte paragraaf gebruik word. As jy'n teks van die begin van'n spesifieke opskrif wil hê om in'n Inhoudsopgawe te verskyn, maar nie die hele opskrif in die Inhoudsopgawe wil hê nie, kan jy hierdie funksie gebruik. Die below code voorbeeld toon hoe om'n styl skeier in te voeg om verskillende paragraaf style te plaas.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Kopieer Alle Style van Sjabloon

Daar is gevalle waar u alle style van een dokument na'n ander wil kopieer. U kan die `Document.CopyStylesFromTemplate` - metode gebruik om style van die gespesifiseerde sjabloon na'n dokument te kopieer. Wanneer style van'n sjabloon na'n dokument gekopieer word, word soortgelyke name in die dokument herdefinieer om by die stylbeskrywings in die sjabloon te pas. Unieke style van die sjabloon word na die dokument gekopieer. Unieke style in die dokument bly ongeskonde. Die below code voorbeeld wys hoe om style van een dokument in'n ander te kopieer.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
