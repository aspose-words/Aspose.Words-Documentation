---
title: Spesifiseer Uitlegkeuses in Java
second_title: Aspose.Words vir Java
articleTitle: Spesifiseer Uitleg Opsies
linktitle: Spesifiseer Uitleg Opsies
description: "Skep uitvoerdokumente met verskillende uitlegte, afhangende van die parameters wat in die Dokument gespesifiseer word met behulp van Java."
type: docs
weight: 10
url: /af/java/specify-layout-options/
---

Aspose.Words stel u in staat om uitsetdokumente met verskillende uitlegte te skep, afhangende van die parameters wat in die [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) eienskap van die **Document** gespesifiseer word. Hierdie eienskap lyk soos sommige van die Microsoft Word gebruikerskoppelvlak menu opsies wat in hierdie artikel beskryf word.

Vir'n volledige lys van parameters soos [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) om bladsy nommers te bereken in'n deurlopende afdeling wat bladsy nommering hervat, of [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) om die "Gebruik drukker statistieke om dokument uit te lê" verenigbaarheid opsie ignoreer, sien die [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) klas bladsy.

## Opmaakmerke

Aspose.Words kan formatering punte te bestuur met behulp van die volgende eienskappe:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - 'n `Boolean` waarde, wat spesifiseer of die verborge teks weergegee word.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - 'n `Boolean` waarde, wat spesifiseer of paragraaf merk karakters weergegee word.

Die bladsy wat in die onderstaande voorbeeld uitgebeeld word, bevat drie paragrawe. Die tweede is versteek. 'n gebruiker kan die **ShowHiddenText** opsie verander om hierdie verborge teks op die bladsy te vertoon. Elke paragraaf het ook'n paragraafmerk aan die einde. Die paragraafmerk is gewoonlik nie sigbaar nie, tensy die **ShowParagraphMarks** eienskap ingestel is om dit weer te gee.

![formatting_marks_example_aspose_words_java](specify-layout-options-1.png)

In Microsoft Word word hierdie parameters gestel met behulp van die dialoogkassie "File Argentrams Options Argentraly Display" soos volg:

![formatting_marks_ms_word_aspose_words_java](specify-layout-options-3.png)

## Kommentaar en Hersienings

Met Aspose.Words kan jy dokumentopmerkings lewer wat dieselfde sal lyk as in Microsoft Word. Om te spesifiseer of kommentaar gelewer word, gebruik die [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) eienskap.

In Microsoft Word word hierdie parameter ingestel met behulp van die dialoogkassie" Track Changes Options", soos hieronder getoon:

![comments_and_revisions_ms_word_aspose_words_java](specify-layout-options-4.png)

Met Aspose.Words kan u ook hersienings in'n dokument vertoon. Gebruik die [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) eienskap van die **LayoutOptions** klas om te definieer of die dokument hersienings vertoon word. Om hul voorkoms te beheer (hersiening beklemtoon kleur, hersiening bar kleur, ens.), gebruik die [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) klas.

U kan ook wysigings as kommentaar op die inhoud vertoon. Vir hierdie doel, gebruik die [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) eienskap en [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) waarde.

Die volgende kode voorbeeld toon hoe om hersienings vertoon aan te pas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Die onderstaande beeld wys hoe Aspose.Words lewer kommentaar en Die Verwyder hersienings:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Teksvormer Vir Gevorderde Tipografie-Weergawe

Die [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) eienskap stel jou in staat om die teksvormende funksionaliteit in te stel, sowel as die `OpenType` funksies ondersteuning.

Gebruik teksvorming vir dokumentverwerking in die volgende hoofgevalle:

- 'n dokument gebruik Kerning, Syfervorming, Syfervorms of Ligaturen.
- 'n dokument gebruik Ingewikkelde Skrifte, soos arabies, Khmer, Thai, ens.

{{% alert color="primary" %}}

Teksvorming sal slegs geaktiveer word wanneer'n dokument na PDF of XPS uitgevoer word.

{{% /alert %}}
