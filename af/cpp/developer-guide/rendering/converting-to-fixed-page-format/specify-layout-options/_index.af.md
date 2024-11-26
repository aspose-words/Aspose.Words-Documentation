---
title: Spesifiseer Uitlegkeuses in C++
second_title: Aspose.Words vir C++
articleTitle: Spesifiseer Uitleg Opsies
linktitle: Spesifiseer Uitleg Opsies
description: "Spesifiseer Uitlegopsies vir verskeie dokumentuitlegte."
type: docs
weight: 20
url: /af/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words stel u in staat om uitsetdokumente met verskillende uitlegte te skep, afhangende van die parameters wat in die [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) eienskap van die **Document** gespesifiseer word. Hierdie eienskap lyk soos sommige van die Microsoft Word gebruikerskoppelvlak menu opsies wat in hierdie artikel beskryf word.

Vir'n volledige lys van parameters soos [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) om bladsy nommers te bereken in'n deurlopende afdeling wat bladsy nommering hervat, of [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) om die "Gebruik drukker statistieke om dokument uit te lê" verenigbaarheid opsie ignoreer, sien die [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) klas bladsy.

## Opmaakmerke

Aspose.Words kan formatering punte te bestuur met behulp van die volgende eienskappe:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) – 'n `Boolean` waarde, wat spesifiseer of die verborge teks weergegee word.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) – 'n `Boolean` waarde, wat spesifiseer of paragraaf merk karakters weergegee word.

Die bladsy wat in die onderstaande voorbeeld uitgebeeld word, bevat drie paragrawe. Die tweede is versteek. 'n gebruiker kan die **ShowHiddenText** opsie verander om hierdie verborge teks op die bladsy te vertoon. Elke paragraaf het ook'n paragraafmerk aan die einde. Die paragraafmerk is gewoonlik nie sigbaar nie, tensy die **ShowParagraphMarks** eienskap ingestel is om dit weer te gee.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

In Microsoft Word word hierdie parameters gestel met behulp van die dialoogkassie "File Argentrams Options Argentraly Display" soos volg:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Kommentaar en Hersienings

Met Aspose.Words kan jy dokumentopmerkings lewer wat dieselfde sal lyk as in Microsoft Word. Om te spesifiseer of kommentaar gelewer word, gebruik die [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/) eienskap.

In Microsoft Word word hierdie parameter ingestel met behulp van die dialoogkassie" Track Changes Options", soos hieronder getoon:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Met Aspose.Words kan u ook hersienings in'n dokument vertoon. Gebruik die [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) eienskap van die **LayoutOptions** klas om te definieer of die dokument hersienings vertoon word. Om hul voorkoms te beheer (hersiening beklemtoon kleur, hersiening bar kleur, ens.), gebruik die [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) klas.

U kan ook wysigings as kommentaar op die inhoud vertoon. Vir hierdie doel, gebruik die [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) eienskap en [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/) waarde.

Die volgende kode voorbeeld toon hoe om hersienings vertoon aan te pas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Die onderstaande beeld wys hoe Aspose.Words lewer kommentaar en Die Verwyder hersienings:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Teksvormer Vir Gevorderde Tipografie-Weergawe

Die [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) eienskap stel jou in staat om die teksvormende funksionaliteit in te stel, sowel as die `OpenType` funksies ondersteuning.

Gebruik teksvorming vir dokumentverwerking in die volgende hoofgevalle:

- 'n dokument gebruik Kerning, Syfervorming, Syfervorms of Ligaturen.
- 'n dokument gebruik Ingewikkelde Skrifte, soos arabies, Khmer, Thai, ens.

{{% alert color="primary" %}}

Teksvorming sal slegs geaktiveer word wanneer'n dokument na PDF of XPS uitgevoer word.

{{% /alert %}}
