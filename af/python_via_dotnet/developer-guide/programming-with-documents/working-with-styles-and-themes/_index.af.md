---
title: Werk Met Style en Temas
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Style en Temas
linktitle: Werk Met Style en Temas
description: "Toegang tot en bestuur style en temas in'n dokument met behulp van Python."
type: docs
weight: 110
url: /af/python-net/working-with-styles-and-themes/
---

Die [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) klas word gebruik om ingeboude te bestuur en gebruiker-gedefinieerde instellings toe te pas op style.

## Toegang Tot Style

U kan'n versameling style wat in die dokument gedefinieer is, kry deur die [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) - eienskap te gebruik. Hierdie versameling bevat beide die ingeboude en gebruiker-gedefinieerde style in'n dokument. 'n besondere styl kan verkry word deur sy naam/alias, stylidentifiseerder of indeks. Die volgende kode voorbeeld demonstreer hoe om toegang tot die versameling van style wat in die dokument.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Hoe Om Inhoud Te Onttrek Gebaseer Op Style

Op'n eenvoudige vlak kan die opname van die inhoud gebaseer op style uit'n Word-dokument nuttig wees om paragrawe en teksreekse wat met'n spesifieke styl geformateer is, te identifiseer, te lys en te tel. Byvoorbeeld, jy sal dalk spesifieke soorte inhoud in die dokument moet identifiseer, soos voorbeelde, titels, verwysings, sleutelwoorde, figuurname en gevallestudies.

Om dit'n paar stappe verder te neem, kan dit ook gebruik word om die struktuur van die dokument, gedefinieer deur die style wat dit gebruik, te benut om die dokument vir'n ander uitset, soos HTML, te hergebruik. Dit is in werklikheid hoe Die Aspose dokumentasie gebou word, wat Aspose.Words op die proef stel. 'n gereedskap gebou met behulp van Aspose.Words neem die bron Woord dokumente en verdeel hulle in onderwerpe op sekere kop vlakke. 'n XML lêer word geproduseer met behulp van Aspose.Words wat gebruik word om die navigasie boom wat jy kan sien aan die linkerkant te bou. En dan Aspose.Words omskep elke onderwerp in HTML.

Die oplossing vir die herwinning van teks geformateer met spesifieke style in'n Word dokument is tipies ekonomies en eenvoudig met behulp van Aspose.Words.

### Die Oplossing

Om te illustreer hoe maklik Aspose.Words hanteer die herwinning van inhoud gebaseer op style, kom ons kyk na'n voorbeeld. In hierdie voorbeeld, gaan ons teks geformateer met'n spesifieke paragraaf styl en'n karakter styl van'n voorbeeld Word dokument te haal. Op'n hoë vlak sal dit behels:
- Open'n Word dokument met behulp van die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klas.
- Kry versamelings van alle paragrawe en alle lopies in die dokument.
- Kies slegs die vereiste paragrawe en lopies. Spesifiek, sal ons haal teks geformateer met die' Heading 1 'paragraaf styl en Die'intensiewe Klem'karakter styl van hierdie voorbeeld Word dokument.

![working-with-styles-and-themes-aspose-words-net](working-with-styles-and-themes-1.png)


In hierdie voorbeelddokument is die teks geformateer met die 'Heading 1' paragraafstyl'insetsel Oortjie', 'vinnige Style'en'tema', en die teks geformateer met die'intensiewe klem'karakterstyl is die verskillende gevalle van blou, kursief, vet teks soos'galerye'en'algemene voorkoms'.

### Die Kode

Die implementering van'n styl-gebaseerde navraag is redelik eenvoudig in die Aspose.Words document object model, aangesien dit eenvoudig gereedskap gebruik wat reeds in plek is. Twee klas metodes geïmplementeer vir hierdie oplossing:
- **paragraphs_by_style_name** - hierdie metode haal'n verskeidenheid van die paragrawe in die dokument wat'n spesifieke stylnaam het.
- **runs_by_style_name** – hierdie metode haal'n skikking van die lopies in die dokument wat'n spesifieke stylnaam het. Beide hierdie metodes is baie soortgelyk, die enigste verskille is die node tipes en die voorstelling van die styl inligting binne die paragraaf en run nodes. Hier is'n implementering van `paragraphs_by_style_name`: hieronder voorbeeld vind al die paragrawe geformateer met die gespesifiseerde styl.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Hierdie implementering gebruik ook die [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) metode van die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klas, wat'n versameling van alle nodes met die gespesifiseerde tipe, wat in hierdie geval in alle paragrawe.

Let daarop dat die tweede parameter van die [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) metode is ingestel op `True`. Dit dwing die [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) metode om rekursief uit alle kind nodes te kies, eerder as om slegs die onmiddellike kinders te kies.

{{% /alert %}}

Dit is ook die moeite werd om daarop te wys dat die paragrawe-versameling nie'n onmiddellike oorhoofse koste skep nie, want paragrawe word slegs in hierdie versameling gelaai as u toegang tot items daarin kry. Dan, al wat jy hoef te doen is om deur die versameling te gaan, met behulp van die standaard foreach operateur en voeg paragrawe wat die gespesifiseerde styl het by die paragraphs_with_style skikking. Die `Paragraph` styl naam kan gevind word in die [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) eienskap van die [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) voorwerp. Die implementering van **runs_by_style_name** is amper dieselfde, alhoewel ons natuurlik [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) gebruik om run nodes te haal. Die [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) eienskap van'n [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) voorwerp word gebruik om toegang te verkry tot styl inligting in die [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) nodes. Hieronder voorbeeld vind al die loop geformateer met die gespesifiseerde styl.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Wanneer beide navrae geïmplementeer word, al wat jy hoef te doen is om'n dokument voorwerp te slaag en spesifiseer die styl name van die inhoud wat jy wil haal: hieronder voorbeeld voer navrae en vertoon resultate. Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [hier is](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Eindresultaat

Wanneer alles gedoen is, loop die monster sal die volgende uitset vertoon:

![styles-and-themes-aspose-words-net](working-with-styles-and-themes-2.png)


Soos u kan sien, is dit'n baie eenvoudige voorbeeld, wat die nommer en teks van die versamelde paragrawe en lopies in die voorbeeldwoorddokument toon.

## Kopieer Alle Style van Sjabloon

Daar is gevalle waar u alle style van een dokument na'n ander wil kopieer. U kan [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) metode gebruik om style van die gespesifiseerde sjabloon na'n dokument te kopieer. Wanneer style van'n sjabloon na'n dokument gekopieer word, word soortgelyke name in die dokument herdefinieer om by die stylbeskrywings in die sjabloon te pas. Unieke style van die sjabloon word na die dokument gekopieer. Unieke style in die dokument bly ongeskonde. Below code voorbeeld wys hoe om style van een dokument in'n ander te kopieer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Hoe Om Tema Eienskappe Te Manipuleer

Ons het basic API in Aspose.Words bygevoeg om toegang tot dokument tema eienskappe te verkry. Vir nou, hierdie API sluit die volgende openbare voorwerpe:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Hier is hoe jy tema-eienskappe kan kry:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

En hier is hoe jy tema eienskappe kan stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
