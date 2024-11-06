---
title: Werk Met Style en Temas in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Style en Temas
linktitle: Werk Met Style en Temas
description: "Gevorderde Microsoft Word formatering funksies, werk met style en temas met behulp van C#."
type: docs
weight: 110
url: /af/net/working-with-styles-and-themes/
---

Die [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) klas word gebruik om ingeboude te bestuur en gebruiker-gedefinieerde instellings toe te pas op style.

## Toegang Tot Style

U kan'n versameling style wat in die dokument gedefinieer is, kry deur die [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) - eienskap te gebruik. Hierdie versameling bevat beide die ingeboude en gebruiker-gedefinieerde style in'n dokument. 'n besondere styl kan verkry word deur sy naam/alias, stylidentifiseerder of indeks. Die volgende kode voorbeeld demonstreer hoe om toegang tot die versameling van style wat in die dokument.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Hoe Om Inhoud Te Onttrek Gebaseer Op Style

Op'n eenvoudige vlak kan die opname van die inhoud gebaseer op style uit'n Word-dokument nuttig wees om paragrawe en teksreekse wat met'n spesifieke styl geformateer is, te identifiseer, te lys en te tel. Byvoorbeeld, jy sal dalk spesifieke soorte inhoud in die dokument moet identifiseer, soos voorbeelde, titels, verwysings, sleutelwoorde, figuurname en gevallestudies.

Om dit'n paar stappe verder te neem, kan dit ook gebruik word om die struktuur van die dokument, gedefinieer deur die style wat dit gebruik, te benut om die dokument vir'n ander uitset, soos HTML, te hergebruik. Dit is in werklikheid hoe Die Aspose dokumentasie gebou word, wat Aspose.Words op die proef stel. 'n gereedskap gebou met behulp van Aspose.Words neem die bron Woord dokumente en verdeel hulle in onderwerpe op sekere kop vlakke. 'n XML lêer word geproduseer met behulp van Aspose.Words wat gebruik word om die navigasie boom wat jy kan sien aan die linkerkant te bou. En dan Aspose.Words omskep elke onderwerp in HTML.

Die oplossing vir die herwinning van teks geformateer met spesifieke style in'n Word dokument is tipies ekonomies en eenvoudig met behulp van Aspose.Words.

### Die Oplossing

Om te illustreer hoe maklik Aspose.Words hanteer die herwinning van inhoud gebaseer op style, kom ons kyk na'n voorbeeld. In hierdie voorbeeld, gaan ons teks geformateer met'n spesifieke paragraaf styl en'n karakter styl van'n voorbeeld Woord te haal document.At 'n hoë vlak, dit sal behels:# Opening van'n Word dokument met behulp van die [Document](https://reference.aspose.com/words/net/aspose.words/document/) klas.# Kry versamelings van alle paragrawe en alle lopies in die dokument.# Kies slegs die vereiste paragrawe en lopies. Spesifiek, sal ons haal teks geformateer met die' Heading 1 'paragraaf styl en Die'intensiewe Klem'karakter styl van hierdie voorbeeld Word dokument.

![working-with-styles-and-themes-aspose-words-net](working-with-styles-and-themes-1.png)


In hierdie voorbeelddokument is die teks geformateer met die 'Heading 1' paragraafstyl'insetsel Oortjie', 'vinnige Style'en'tema', en die teks geformateer met die'intensiewe klem'karakterstyl is die verskillende gevalle van blou, kursief, vet teks soos'galerye'en'algemene voorkoms'.

### Die Kode

Die implementering van'n styl-gebaseerde navraag is redelik eenvoudig in die Aspose.Words document object model, aangesien dit eenvoudig gereedskap gebruik wat reeds in plek is.Twee klasmetodes word geïmplementeer vir hierdie oplossing: **ParagraphsByStyleName** – hierdie metode haal'n verskeidenheid van die paragrawe in die dokument wat'n spesifieke stylnaam het. **RunsByStyleName** – hierdie metode haal'n skikking van die lopies in die dokument wat'n spesifieke stylnaam het.Beide hierdie metodes is baie soortgelyk, die enigste verskille is die node tipes en die voorstelling van die styl inligting binne die paragraaf en run nodes.Hier is'n implementering van ParagraphsByStyleName: hieronder voorbeeld vind al die paragrawe geformateer met die gespesifiseerde styl.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Hierdie implementering gebruik ook die `Document.GetChildNodes` metode van die `Document` klas, wat'n versameling van alle nodes met die gespesifiseerde tipe, wat in hierdie geval in alle paragrawe.

Let daarop dat die tweede parameter van die **Document.GetChildNodes** metode is ingestel op waar. Dit dwing die **Document.GetChildNodes** metode om rekursief uit alle kind nodes te kies, eerder as om slegs die onmiddellike kinders te kies.

{{% /alert %}}

Dit is ook die moeite werd om daarop te wys dat die paragrawe-versameling nie'n onmiddellike oorhoofse koste skep nie, want paragrawe word slegs in hierdie versameling gelaai as u toegang tot items daarin kry. Dan hoef jy net deur die versameling te gaan, met die standaard foreach-operateur en paragrawe by te voeg wat die gespesifiseerde styl by die paragraphsWithStyle - skikking het. Die `Paragraph` styl naam kan gevind word in die [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) eienskap van die [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) voorwerp. Die implementering van RunsByStyleName is amper dieselfde, alhoewel ons natuurlik [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) gebruik om run nodes te haal. Die [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) eienskap van'n [Run](https://reference.aspose.com/words/net/aspose.words/run/) voorwerp word gebruik om toegang te verkry tot styl inligting in die **Run** nodes. Hieronder voorbeeld vind al die loop geformateer met die gespesifiseerde styl.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Wanneer beide navrae geïmplementeer word, al wat jy hoef te doen is om'n dokument voorwerp te slaag en spesifiseer die styl name van die inhoud wat jy wil haal: hieronder voorbeeld voer navrae en vertoon resultate. Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Eindresultaat

Wanneer alles gedoen is, loop die monster sal die volgende uitset vertoon:

![styles-and-themes-aspose-words-net](working-with-styles-and-themes-2.png)


Soos u kan sien, is dit'n baie eenvoudige voorbeeld, wat die nommer en teks van die versamelde paragrawe en lopies in die voorbeeldwoorddokument toon.

## Kopieer Alle Style van Sjabloon

Daar is gevalle waar u alle style van een dokument na'n ander wil kopieer. U kan `Document.CopyStylesFromTemplate` metode gebruik om style van die gespesifiseerde sjabloon na'n dokument te kopieer. Wanneer style van'n sjabloon na'n dokument gekopieer word, word soortgelyke name in die dokument herdefinieer om by die stylbeskrywings in die sjabloon te pas. Unieke style van die sjabloon word na die dokument gekopieer. Unieke style in die dokument bly ongeskonde. Below code voorbeeld wys hoe om style van een dokument in'n ander te kopieer.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Hoe Om Tema Eienskappe Te Manipuleer

Ons het basic API in Aspose.Words bygevoeg om toegang tot dokument tema eienskappe te verkry. Vir nou, hierdie API sluit die volgende openbare voorwerpe:

- Tema
- ThemeFonts
- ThemeColors

Hier is hoe jy tema-eienskappe kan kry:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

En hier is hoe jy tema eienskappe kan stel:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
