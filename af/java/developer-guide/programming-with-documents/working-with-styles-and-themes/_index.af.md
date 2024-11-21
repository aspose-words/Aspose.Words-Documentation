---
title: Werk Met Style en Temas
second_title: Aspose.Words vir Java
articleTitle: Werk Met Style en Temas
linktitle: Werk Met Style en Temas
description: "Verbeterde Microsoft Word formatering funksies, werk met style en temas met behulp van Java."
type: docs
weight: 110
url: /af/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

Die [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) klas word gebruik om ingeboude te bestuur en gebruiker-gedefinieerde instellings toe te pas op style.

## Hoe Om Inhoud Te Onttrek Gebaseer Op Style

Op'n eenvoudige vlak kan die opname van die inhoud gebaseer op style uit'n Word-dokument nuttig wees om paragrawe en teksreekse wat met'n spesifieke styl geformateer is, te identifiseer, te lys en te tel. Byvoorbeeld, jy sal dalk spesifieke soorte inhoud in die dokument moet identifiseer, soos voorbeelde, titels, verwysings, sleutelwoorde, figuurname en gevallestudies.

Om dit'n paar stappe verder te neem, kan dit ook gebruik word om die struktuur van die dokument, gedefinieer deur die style wat dit gebruik, te benut om die dokument vir'n ander uitset, soos HTML, te hergebruik. Dit is in werklikheid hoe Die Aspose dokumentasie gebou word, wat Aspose.Words op die proef stel. 'n gereedskap gebou met behulp van Aspose.Words neem die bron Woord dokumente en verdeel hulle in onderwerpe op sekere kop vlakke. 'n XML lêer word geproduseer met behulp van Aspose.Words wat gebruik word om die navigasie boom wat jy kan sien aan die linkerkant te bou. En dan Aspose.Words omskep elke onderwerp in HTML. Die oplossing vir die herwinning van teks geformateer met spesifieke style in'n Word dokument is tipies ekonomies en eenvoudig met behulp van Aspose.Words.

Om te illustreer hoe maklik Aspose.Words hanteer die herwinning van inhoud gebaseer op style, kom ons kyk na'n voorbeeld. In hierdie voorbeeld, gaan ons teks geformateer met'n spesifieke paragraaf styl en'n karakter styl van'n voorbeeld Word dokument te haal.

Op'n hoë vlak sal dit behels:

1. Open'n Word dokument met behulp van die [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) klas.
1. Kry versamelings van alle paragrawe en alle lopies in die dokument.
1. Kies slegs die vereiste paragrawe en lopies.

Spesifiek, sal ons haal teks geformateer met die' Heading 1 'paragraaf styl en Die'intensiewe Klem'karakter styl van hierdie voorbeeld Word dokument.

![working-with-styles-aspose-words-java-1](working-with-styles-1.png)

In hierdie voorbeelddokument is die teks geformateer met die 'Heading 1' paragraafstyl'insetsel Oortjie', 'vinnige Style'en'tema', en die teks geformateer met die'intensiewe klem'karakterstyl is die verskillende gevalle van blou, kursief, vet teks soos'galerye'en'algemene voorkoms'.

Die implementering van'n styl-gebaseerde navraag is redelik eenvoudig in die Aspose.Words document object model, aangesien dit eenvoudig gereedskap gebruik wat reeds in plek is. Twee klas metodes geïmplementeer vir hierdie oplossing:

1. **ParagraphsByStyleName** - hierdie metode haal'n verskeidenheid van die paragrawe in die dokument wat'n spesifieke stylnaam het.
1. **RunsByStyleName** - hierdie metode haal'n skikking van die lopies in die dokument wat'n spesifieke stylnaam het.

Beide hierdie metodes is baie soortgelyk, die enigste verskille is die node tipes en die voorstelling van die styl inligting binne die paragraaf en run nodes. Hier is'n implementering van ParagraphsByStyleName wat in die kode voorbeeld hieronder gegee word om al die paragrawe geformateer met die gespesifiseerde styl te vind.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Hierdie implementering gebruik ook die [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metode van die `Document` klas, wat'n versameling van alle onmiddellike kind nodes terugkeer.

Dit is ook die moeite werd om daarop te wys dat die paragrawe-versameling nie'n onmiddellike oorhoofse koste skep nie, want paragrawe word slegs in hierdie versameling gelaai as u toegang tot items daarin kry.Dan hoef jy net deur die versameling te gaan, met die standaard foreach-operateur en paragrawe by te voeg wat die gespesifiseerde styl by die paragraphsWithStyle - skikking het. Die `Paragraph` styl naam kan gevind word in die [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) eienskap van die [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) voorwerp.

Die implementering van RunsByStyleName is amper dieselfde, alhoewel ons natuurlik `NodeType.Run` gebruik om run nodes te haal. Die [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) eienskap van'n [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) voorwerp word gebruik om toegang te verkry tot styl inligting in die **Run** nodes.

Die volgende kode voorbeeld vind al loop geformateer met die gespesifiseerde styl.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Wanneer beide navrae geïmplementeer, al wat jy hoef te doen is om'n dokument voorwerp slaag en spesifiseer die styl name van die inhoud wat jy wil om te haal:

{{% /alert %}}

Die volgende kode voorbeeld loop navrae en vertoon resultate.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Wanneer alles gedoen is, loop die monster sal die volgende uitset vertoon:

![working-with-styles-aspose-words-java-2](working-with-styles-2.png)

Soos u kan sien, is dit'n baie eenvoudige voorbeeld, wat die nommer en teks van die versamelde paragrawe en lopies in die voorbeeldwoorddokument toon.

## Voeg Stylskeier in Om Verskillende Paragraafstyle Te Plaas

Die styl skeiding kan bygevoeg word aan die einde van'n paragraaf met behulp van die Ctrl + Alt + Enter Sleutelbord Kortpad in MS Woord. Hierdie funksie laat twee verskillende paragraafstyle toe wat in een logiese gedrukte paragraaf gebruik word. As jy wil hê dat'n teks van die begin van'n spesifieke opskrif in'n Inhoudsopgawe moet verskyn, maar nie die hele opskrif in die Inhoudsopgawe wil hê nie, kan jy hierdie funksie gebruik.

Die volgende kode voorbeeld toon hoe om'n styl skeier in te voeg om verskillende paragraaf style te plaas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Kopieer Alle Style van Sjabloon

Daar is gevalle waar u alle style van een dokument na'n ander wil kopieer. U kan die `Document.CopyStylesFromTemplate` - metode gebruik om style van die gespesifiseerde sjabloon na'n dokument te kopieer. Wanneer style van'n sjabloon na'n dokument gekopieer word, word soortgelyke name in die dokument herdefinieer om by die stylbeskrywings in die sjabloon te pas. Unieke style van die sjabloon word na die dokument gekopieer. Unieke style in die dokument bly ongeskonde.

Die volgende kode voorbeeld toon hoe om style van een dokument in'n ander te kopieer.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Hoe Om Tema Eienskappe Te Manipuleer

Ons het basic API in Aspose.Words bygevoeg om toegang tot dokument tema eienskappe te verkry. Vir nou, hierdie API sluit die volgende openbare voorwerpe:

- Tema
- ThemeFonts
- ThemeColors

Hier is hoe jy tema-eienskappe kan kry:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

En hier is hoe jy tema eienskappe kan stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
