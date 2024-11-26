---
title: Spesifiseer Uitlegkeuses in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Spesifiseer Uitleg Opsies
linktitle: Spesifiseer Uitleg Opsies
description: "Spesifiseer Uitlegopsies vir verskeie dokumentuitlegte met behulp van Python."
type: docs
weight: 10
url: /af/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words stel u in staat om uitsetdokumente met verskillende uitlegte te skep, afhangende van die parameters wat in eienskappe van die [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) - klas gespesifiseer word. Sommige van hierdie eienskappe lyk soos sommige van die Microsoft Word gebruikerskoppelvlak menu opsies – hulle sal in hierdie artikel beskryf word.

Vir'n volledige lys van parameters soos [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) om bladsy nommers te bereken in'n deurlopende afdeling wat bladsy nommering hervat, of [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) om die "Gebruik drukker statistieke om dokument uit te lê" verenigbaarheid opsie ignoreer, sien die [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) klas bladsy.

## Opmaakmerke

Aspose.Words kan formatering punte te bestuur met behulp van die volgende eienskappe:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) - 'n `Boolean` waarde, wat spesifiseer of die verborge teks weergegee word.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) - 'n `Boolean` waarde, wat spesifiseer of paragraaf merk karakters weergegee word.

Die bladsy wat in die onderstaande voorbeeld uitgebeeld word, bevat drie paragrawe. Die tweede is versteek. 'n gebruiker kan die [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) opsie verander om hierdie verborge teks op die bladsy te vertoon. Elke paragraaf het ook'n paragraafmerk aan die einde. Die paragraafmerk is gewoonlik nie sigbaar nie, tensy die [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) eienskap ingestel is om dit weer te gee.

![specify-layout-options_1](specify-layout-options-1.png)

In Microsoft Word word hierdie parameters gestel met behulp van die dialoogkassie "File Argentrams Options Argentraly Display" soos volg:

![specify-layout-options_2](specify-layout-options-2.jpg)

## Kommentaar en Hersienings

Met Aspose.Words kan jy dokumentopmerkings lewer wat dieselfde sal lyk as in Microsoft Word. Om te spesifiseer of kommentaar gelewer word, gebruik die [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) eienskap.

In Microsoft Word word hierdie parameter ingestel met behulp van die dialoogkassie" Track Changes Options", soos hieronder getoon:

![specify-layout-options_3](specify-layout-options-3.jpg)

Met Aspose.Words kan u ook hersienings in'n dokument vertoon. Gebruik die [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) eienskap van die [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) klas om te definieer of die dokument hersienings vertoon word. Om hul voorkoms te beheer (hersiening beklemtoon kleur, hersiening bar kleur, ens.), gebruik die [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) klas.

U kan ook wysigings as kommentaar op die inhoud vertoon. Vir hierdie doel, gebruik die [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) eienskap en [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) waarde.

Die volgende kode voorbeeld toon hoe om hersienings vertoon aan te pas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Die onderstaande beeld wys hoe Aspose.Words lewer kommentaar en Die Verwyder hersienings:

<img src="specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
