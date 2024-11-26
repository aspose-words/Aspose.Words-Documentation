---
title: Opmaakopties opgeven in C#
second_title: Aspose.Words voor .NET
articleTitle: Opmaakopties specificeren
linktitle: Opmaakopties specificeren
description: "Opmaak opgeven Opties voor verschillende documentindelingen C#."
type: docs
weight: 10
url: /nl/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words kunt u uitvoerdocumenten maken met verschillende lay-outs, afhankelijk van de parameters gespecificeerd in eigenschappen van de [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) Klasse. Sommige van deze eigenschappen lijken op enkele van de Microsoft Word user interface menu opties

Voor een volledige lijst van parameters zoals [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) het berekenen van paginanummers in een continue sectie die paginanummering herstart, of [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) om de "Use printer metrics to lay out document" compatibiliteitsoptie te negeren, zie de [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) Klas pagina.

## Opmaakmarkeringen

Aspose.Words maakt het mogelijk om opmaakmerken te beheren met behulp van de volgende eigenschappen:

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) Een `Boolean` waarde, die aangeeft of de verborgen tekst is weergegeven.
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) Een `Boolean` waarde, die aangeeft of alineatekentekens worden weergegeven.

De pagina in het voorbeeld hieronder bevat drie alinea's. De tweede is verborgen. Een gebruiker kan de **ShowHiddenText** optie om deze verborgen tekst weer te geven op de pagina. Ook heeft elke alinea aan het eind een alineateken. Het alineateken is gewoonlijk niet zichtbaar tenzij de **ShowParagraphMarks** eigenschap is ingesteld om het te renderen.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, deze parameters zijn ingesteld met behulp van het dialoogvenster "Bestand → Opties → Display" als volgt:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Opmerkingen en herzieningen

Met Aspose.Words, kunt u document opmerkingen die er hetzelfde als in Microsoft Word. Gebruik de [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) eigendom.

In Microsoft Word, deze parameter is ingesteld met behulp van het dialoogvenster "Track Changes Options," zoals hieronder getoond:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Ook, Aspose.Words Hiermee kunt u revisies weergeven in een document. Gebruik de [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) eigendom van de **LayoutOptions** klasse om te bepalen of de revisies van documenten worden weergegeven. Om hun uiterlijk te controleren (revisie markeren kleur, revisie staaf kleur, enz.), gebruik de [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) Klasse.

U kunt ook revisies laten weergeven als commentaar op de inhoud. Gebruik hiervoor de [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) eigendom en [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) waarde.

Het volgende voorbeeld van code laat zien hoe revisies worden aangepast:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

De afbeelding hieronder laat zien hoe Aspose.Words geeft opmerkingen en de herzieningen verwijderen:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Tekst Shaper voor geavanceerde typografie renderen

De [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) eigenschap kunt u de tekst vormgeven functionaliteit, evenals de `OpenType` beschikt over ondersteuning.

Gebruik tekstvorming voor documentverwerking in de volgende hoofdgevallen:

- Een document gebruikt Kerning, Numeral Shaping, Numeral Forms, of Ligaturen.
- Een document maakt gebruik van Complex Scripts, zoals Arabisch, Khmer, Thai, enz.

{{% alert color="primary" %}}

Tekstvorming wordt alleen ingeschakeld bij het exporteren van een document naar PDF of XPS.

{{% /alert %}}
