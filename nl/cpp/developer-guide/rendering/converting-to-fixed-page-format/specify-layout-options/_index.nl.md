---
title: Opmaakopties opgeven in C++
second_title: Aspose.Words voor C++
articleTitle: Opmaakopties Opgeven
linktitle: Opmaakopties Opgeven
description: "Geef lay-outopties op voor verschillende documentlay-outs."
type: docs
weight: 20
url: /nl/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Met Aspose.Words kunt u uitvoerdocumenten met verschillende lay-outs maken, afhankelijk van de parameters die zijn opgegeven in de eigenschap [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) van de **Document**. Deze eigenschap lijkt op sommige van de menu-opties voor de gebruikersinterface Microsoft Word die in dit artikel worden beschreven.

Voor een volledige lijst met parameters, zoals [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) om paginanummers te berekenen in een doorlopende sectie die de paginanummering opnieuw opstart, of [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) om de compatibiliteitsoptie 'printerstatistieken gebruiken om documenten in te delen' te negeren, raadpleegt u de pagina [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) klasse.

## Opmaakmarkeringen

Aspose.Words maakt het mogelijk om opmaakmarkeringen te beheren met behulp van de volgende eigenschappen:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) – een `Boolean` waarde, die aangeeft of de verborgen tekst wordt weergegeven.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) – een `Boolean` waarde, die aangeeft of alineamarkeertekens worden weergegeven.

De pagina in het onderstaande voorbeeld bevat drie paragrafen. De tweede is verborgen. Een gebruiker kan de optie **ShowHiddenText** wijzigen om deze verborgen tekst op de pagina weer te geven. Elke alinea heeft ook een alinea-markering aan het einde. Het alineamerk is meestal niet zichtbaar tenzij de eigenschap **ShowParagraphMarks** is ingesteld om het weer te geven.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

In Microsoft Word worden deze parameters als volgt ingesteld met behulp van het dialoogvenster "Bestand → Opties → Weergave":

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Opmerkingen en herzieningen

Met Aspose.Words kunt u documentopmerkingen weergeven die er hetzelfde uitzien als in Microsoft Word. Als u wilt opgeven of opmerkingen worden weergegeven, gebruikt u de eigenschap [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

In Microsoft Word wordt deze parameter ingesteld met behulp van het dialoogvenster "Opties voor Wijzigingen bijhouden", zoals hieronder weergegeven:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Met Aspose.Words kunt u ook revisies in een document weergeven. Gebruik de eigenschap [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) van de klasse **LayoutOptions** om te bepalen of de documentherzieningen worden weergegeven. Om hun uiterlijk te controleren (herziening van de kleur van de markering, herziening van de kleur van de balk, enz.).), gebruik de klasse [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

U kunt revisies ook laten weergeven als commentaar op de inhoud. Gebruik hiervoor de eigenschap [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) en de waarde [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

Het volgende codevoorbeeld laat zien hoe u revisies kunt aanpassen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

De afbeelding hieronder laat zien hoe Aspose.Words opmerkingen en de revisies verwijderen:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Tekstvormer voor geavanceerde typografie Rendering

Met de eigenschap [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) kunt u de functionaliteit voor het vormgeven van tekst instellen, evenals de ondersteuning voor `OpenType` - functies.

Gebruik tekstvorming voor documentverwerking in de volgende hoofdgevallen:

- Een document maakt gebruik van Kerning, Cijfervorming, Cijfervormen of ligaturen.
- Een document gebruikt complexe schriften, zoals Arabisch, Khmer, Thais, enz.

{{% alert color="primary" %}}

Tekst vormgeven wordt alleen ingeschakeld bij het exporteren van een document naar PDF of XPS.

{{% /alert %}}
