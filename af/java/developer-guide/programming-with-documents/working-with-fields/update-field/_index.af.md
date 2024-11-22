---
title: Opdateer Velde in Java
second_title: Aspose.Words vir Java
articleTitle: Opdateer Velde
linktitle: Opdateer Velde
description: "Leer hoe om velde in Java op te dateer. Dateer velde programmaties op of gebruik outomatiese veldopdatering met Java API"
type: docs
weight: 30
url: /af/java/update-field/
timestamp: 2024-01-27-14-07-04
---

Tipies, 'n veld ingevoeg in Microsoft Word bevat reeds'n up-to-date waarde. Byvoorbeeld, as die veld'n formule of'n bladsy nommer is, sal dit die korrekte berekende waarde vir die gegewe weergawe van die dokument bevat. Maar as jy'n aansoek wat genereer of verander'n dokument met velde soos die samesmelting van twee dokumente of vul dit met data, dan ideaal alle velde moet opgedateer word vir die dokument nuttig te wees.

## Hoe Om Velde Op Te Dateer

Wanneer'n dokument gelaai word, naboots Aspose.Words die gedrag van Microsoft Word met die opsie om velde outomaties op te dateer, word afgeskakel. Die gedrag kan soos volg opgesom word:

- as u'n dokument oopmaak/stoor, bly die velde ongeskonde
- u kan alle velde in'n dokument eksplisiet opdateer, byvoorbeeld herbou `TOC` wanneer u moet
- wanneer jy druk / weergee na PDF of XPS word die velde wat verband hou met bladsynommering in koptekste/voetskrifte opgedateer
- as u Mail Merge uitvoer, word alle velde outomaties opgedateer

### Dateer Velde Programmaties Op

Om velde in die hele dokument eksplisiet op te dateer, bel eenvoudig die [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) metode. Om velde in'n deel van'n dokument op te dateer, kry'n [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) voorwerp en noem die [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) metode. In Aspose.Words, kan jy'n **Range** vir enige knoop in die dokument boom, soos [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), en so aan. gebruik die [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) eienskap. Jy kan die resultaat van'n enkele veld te werk deur die roeping van die [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) metode.

### Outomatiese Opdatering Van Bladsyverwante Velde tydens Lewering

Wanneer jy die omskakeling van'n dokument na'n vaste bladsy formaat uitvoer, bv.na PDF of XPS, dan sal Aspose.Words outomaties bladsy uitleg-verwante velde `PAGE`, `PAGEREF` wat in koptekste/voetskrifte van die dokument gevind word, opdateer. Hierdie gedrag naboots die gedrag van Microsoft Word wanneer'n dokument gedruk word.

As u alle ander velde in die dokument wil opdateer, moet u [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) skakel voordat u die dokument weergee.

Die volgende voorbeeld toon hoe om al die velde te werk voordat'n dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Outomatiese Veldopdatering gedurende Mail Merge

Wanneer jy'n Mail Merge uitvoer, sal alle velde in die dokument outomaties opgedateer word. Dit is omdat die Mail Merge is'n geval van'n veld update. Die program ontmoet'n Mail Merge veld en moet sy resultaat op te dateer, wat behels gryp die waarde van die data bron en voeg dit in die veld. Die logika is natuurlik meer ingewikkeld, byvoorbeeld wanneer die einde van die dokument/mail merge streek bereik word, maar daar is nog verdere data wat saamgesmelt moet word, dan moet die streek gedupliseer word en die nuwe stel velde opgedateer word.

## Dateer Velde Met Vuil Kenmerk op

Die w: dirty is'n veldvlak-eienskap wat slegs die veld wat u spesifiseer, sal verfris wanneer die dokument oopgemaak word. Dit vertel MS Word om hierdie veld net te verfris die volgende keer as die dokument oopgemaak word. Jy kan LoadOptions gebruik.setUpdateDirtyFields () eienskap om te spesifiseer of die velde met die vuil kenmerk opgedateer moet word. Wanneer die waarde van LoadOptions.setUpdateDirtyFields () is ingestel op *true*, alle velde met *true* waarde vir `Field.IsDirty` of `FieldChar.IsDirty` eienskap word opgedateer op dokument vrag.

Die volgende kode voorbeeld toon hoe om velde met die vuil kenmerk te werk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Dateer LastSavedTime Eienskap Op Voordat Jy Stoor

U kan die [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) - eienskap gebruik of u die ooreenstemmende ingeboude dokumenteienskap [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) moet opdateer wanneer u die dokument stoor.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te werk:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
