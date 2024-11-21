---
title: Opmaakopties opgeven in Java
second_title: Aspose.Words voor Java
articleTitle: Opmaakopties specificeren
linktitle: Opmaakopties specificeren
description: "Uitvoerdocumenten maken met verschillende lay-outs, afhankelijk van de parameters die in het document zijn gespecificeerd met behulp van Java."
type: docs
weight: 10
url: /nl/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words kunt u uitvoerdocumenten met verschillende lay-outs, afhankelijk van de parameters die in de [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) eigendom van de **Document**. Deze eigenschap lijkt op een aantal van de Microsoft Word user interface menu opties beschreven in dit artikel.

Voor een volledige lijst van parameters zoals [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) het berekenen van paginanummers in een continue sectie die paginanummering herstart, of [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) om de "Use printer metrics to lay out document" compatibiliteitsoptie te negeren, zie de [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) De lespagina.

## Opmaakmarkeringen

Aspose.Words maakt het mogelijk om opmaakmerken te beheren met behulp van de volgende eigenschappen:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) Een `Boolean` waarde, die aangeeft of de verborgen tekst is weergegeven.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) Een `Boolean` waarde, waarin wordt gespecificeerd of alineatekentekens worden weergegeven.

De in het onderstaande voorbeeld afgebeelde pagina bevat drie alinea's. De tweede is verborgen. Een gebruiker kan de **ShowHiddenText** optie om deze verborgen tekst weer te geven op de pagina. Bovendien heeft elke alinea aan het eind een alineateken. Het alineateken is gewoonlijk niet zichtbaar tenzij de **ShowParagraphMarks** eigenschap is ingesteld om het te renderen.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, deze parameters zijn ingesteld met behulp van het dialoogvenster "Bestand → Opties → Display" als volgt:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Opmerkingen en herzieningen

Met Aspose.Words, kunt u document opmerkingen die er hetzelfde als in Microsoft Word. Gebruik de [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) eigendom.

In Microsoft Word, deze parameter is ingesteld met behulp van het dialoogvenster "Track Changes Options," zoals hieronder getoond:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Ook, Aspose.Words Hiermee kunt u revisies in een document weergeven. Gebruik de [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) eigendom van de **LayoutOptions** klasse om te bepalen of de revisies van documenten worden weergegeven. Om hun uiterlijk te controleren (revisie markeren kleur, revisie staaf kleur, enz.), gebruik de [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) Klasse.

U kunt ook revisies laten weergeven als commentaar op de inhoud. Gebruik hiervoor de [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) eigendom en [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) waarde.

Het volgende voorbeeld van code laat zien hoe revisies worden aangepast:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

De afbeelding hieronder laat zien hoe Aspose.Words geeft opmerkingen en de herzieningen van schrappen:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Tekst Shaper voor geavanceerde typografie renderen

De [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) eigenschap kunt u de tekst vormgeven functionaliteit, evenals de `OpenType` beschikt over ondersteuning.

Gebruik tekstvorming voor documentverwerking in de volgende hoofdgevallen:

- Een document gebruikt Kerning, Numeral Shaping, Numeral Forms, of Ligaturen.
- Een document maakt gebruik van Complex Scripts, zoals Arabisch, Khmer, Thai, enz.

{{% alert color="primary" %}}

Tekstvorming wordt alleen ingeschakeld bij het exporteren van een document naar PDF of XPS.

{{% /alert %}}
