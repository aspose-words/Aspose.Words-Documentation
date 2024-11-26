---
title: Opmaakopties opgeven in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Opmaakopties specificeren
linktitle: Opmaakopties specificeren
description: "Opmaak opgeven Opties voor verschillende documentindelingen Python."
type: docs
weight: 10
url: /nl/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words kunt u uitvoerdocumenten maken met verschillende lay-outs, afhankelijk van de parameters gespecificeerd in eigenschappen van de [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) Klasse. Sommige van deze eigenschappen lijken op enkele van de Microsoft Word user interface menu opties

Voor een volledige lijst van parameters zoals [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) het berekenen van paginanummers in een continue sectie die paginanummering herstart, of [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) om de "Use printer metrics to lay out document" compatibiliteitsoptie te negeren, zie de [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) Klas pagina.

## Opmaakmarkeringen

Aspose.Words maakt het mogelijk om opmaakmerken te beheren met behulp van de volgende eigenschappen:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) Een `Boolean` waarde, die aangeeft of de verborgen tekst is weergegeven.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) Een `Boolean` waarde, die aangeeft of alineatekentekens worden weergegeven.

De pagina in het voorbeeld hieronder bevat drie alinea's. De tweede is verborgen. Een gebruiker kan de [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) optie om deze verborgen tekst weer te geven op de pagina. Ook heeft elke alinea aan het eind een alineateken. Het alineateken is gewoonlijk niet zichtbaar tenzij de [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) eigenschap is ingesteld om het te renderen.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, deze parameters zijn ingesteld met behulp van het dialoogvenster "Bestand → Opties → Display" als volgt:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Opmerkingen en herzieningen

Met Aspose.Words, kunt u document opmerkingen die er hetzelfde als in Microsoft Word. Gebruik de [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) eigendom.

In Microsoft Word, deze parameter is ingesteld met behulp van het dialoogvenster "Track Changes Options," zoals hieronder getoond:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Ook, Aspose.Words Hiermee kunt u revisies weergeven in een document. Gebruik de [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) eigendom van de [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) klasse om te bepalen of de revisies van documenten worden weergegeven. Om hun uiterlijk te controleren (revisie markeren kleur, revisie staaf kleur, enz.), gebruik de [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) Klasse.

U kunt ook revisies laten weergeven als commentaar op de inhoud. Gebruik hiervoor de [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) eigendom en [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) waarde.

Het volgende voorbeeld van code laat zien hoe revisies worden aangepast:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

De afbeelding hieronder laat zien hoe Aspose.Words geeft opmerkingen en de herzieningen verwijderen:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
