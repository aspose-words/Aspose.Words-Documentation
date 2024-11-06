---
title: Opdateer Velde Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Opdateer Velde
linktitle: Opdateer Velde
description: "Werk velde in'n dokument op verskillende maniere op en gebruik verskillende opsie in Python."
type: docs
weight: 30
url: /af/python-net/update-fields/
---

Tipies, 'n veld ingevoeg in Microsoft Word bevat reeds'n up-to-date waarde. Byvoorbeeld, as die veld'n formule of'n bladsy nommer is, sal dit die korrekte berekende waarde vir die gegewe weergawe van die dokument bevat. Maar as jy'n aansoek wat genereer of verander'n dokument met velde soos die samesmelting van twee dokumente of vul dit met data, dan ideaal alle velde moet opgedateer word vir die dokument nuttig te wees.

## Hoe Om Velde Op Te Dateer

Wanneer'n dokument gelaai word, naboots Aspose.Words die gedrag van Microsoft Word met die opsie om velde outomaties op te dateer, word afgeskakel. Die gedrag kan soos volg opgesom word:

- as u'n dokument oopmaak/stoor, bly die velde ongeskonde
- u kan alle velde in'n dokument eksplisiet opdateer (bv. herbou TOC) wanneer u moet
- wanneer jy druk / weergee na PDF of XPS word die velde wat verband hou met bladsynommering in koptekste/voetskrifte opgedateer
- as u mail merge uitvoer, word alle velde outomaties opgedateer

### Dateer Velde Programmaties Op

Om velde in die hele dokument eksplisiet op te dateer, bel eenvoudig [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). Om velde in'n deel van'n dokument op te dateer, kry'n [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) voorwerp en noem die [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) metode. In Aspose.Words, kan jy'n **Range** vir enige knoop in die dokument boom, soos [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), en so aan. gebruik die [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) eienskap. Jy kan die resultaat van'n enkele veld te werk deur die roeping van die [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) metode.

### Outomatiese Opdatering Van Bladsyverwante Velde Tydens Lewering

Wanneer jy die omskakeling van'n dokument na'n vaste bladsy formaat uitvoer, bv.na PDF of XPS, dan sal Aspose.Words outomaties bladsy uitleg-verwante velde `PAGE`, `PAGEREF` wat in koptekste/voetskrifte van die dokument gevind word, opdateer. Hierdie gedrag naboots die gedrag van Microsoft Word wanneer'n dokument gedruk word.

As u alle ander velde in die dokument wil opdateer, moet u [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) skakel voordat u die dokument weergee.

Die volgende kode voorbeeld toon hoe om al die velde te werk voor die lewering van'n dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Outomatiese Veldopdatering Gedurende Mail Merge

Wanneer jy'n mail merge uitvoer, sal alle velde in die dokument outomaties opgedateer word. Dit is omdat die mail merge is'n geval van'n veld update. Die program ontmoet'n mail merge veld en moet sy resultaat op te dateer, wat behels gryp die waarde van die data bron en voeg dit in die veld. Die logika is natuurlik meer ingewikkeld, byvoorbeeld wanneer die einde van die dokument/mail merge streek bereik word, maar daar is nog verdere data wat saamgesmelt moet word, dan moet die streek gedupliseer word en die nuwe stel velde opgedateer word.

## Dateer Velde Met Vuil Kenmerk Op

Die w: dirty is'n veldvlak-eienskap wat slegs die veld wat u spesifiseer, sal verfris wanneer die dokument oopgemaak word. Dit vertel MS Word om hierdie veld net te verfris die volgende keer as die dokument oopgemaak word. U kan [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) eienskap gebruik om te spesifiseer of die velde met die vuil kenmerk opgedateer moet word. Wanneer die waarde van **update_dirty_fields** op `True` gestel word, word alle velde met `True` waarde vir [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) of [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) eienskap opgedateer op dokumentlading.

Die volgende kode voorbeeld toon hoe om velde met die vuil kenmerk te werk:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Dateer LastSavedTime Eienskap Op Voordat Jy Stoor

U kan die eiendom [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) gebruik om die ooreenstemmende ingeboude dokumenteienskap [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) by te werk wanneer u die dokument stoor.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te werk:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

