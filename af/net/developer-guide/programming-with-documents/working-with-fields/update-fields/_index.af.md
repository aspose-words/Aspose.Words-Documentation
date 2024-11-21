---
title: Opdateer Velde C#
second_title: Aspose.Words vir .NET
articleTitle: Opdateer Velde
linktitle: Opdateer Velde
description: "Leer hoe om velde in C# op te dateer. Dateer velde programmaties op of gebruik outomatiese veldopdatering met .NET API."
type: docs
weight: 30
url: /af/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Tipies, 'n veld ingevoeg in Microsoft Word bevat reeds'n up-to-date waarde. Byvoorbeeld, as die veld'n formule of'n bladsy nommer is, sal dit die korrekte berekende waarde vir die gegewe weergawe van die dokument bevat. Maar as jy'n aansoek wat genereer of verander'n dokument met velde soos die samesmelting van twee dokumente of vul dit met data, dan ideaal alle velde moet opgedateer word vir die dokument nuttig te wees.

## Hoe Om Velde Op Te Dateer

Wanneer'n dokument gelaai word, naboots Aspose.Words die gedrag van Microsoft Word met die opsie om velde outomaties op te dateer, word afgeskakel. Die gedrag kan soos volg opgesom word:

- as u'n dokument oopmaak/stoor, bly die velde ongeskonde
- u kan alle velde in'n dokument eksplisiet opdateer, byvoorbeeld herbou `TOC`, wanneer u moet
- wanneer jy druk / weergee na PDF of XPS word die velde wat verband hou met bladsynommering in koptekste/voetskrifte opgedateer
- as u mail merge uitvoer, word alle velde outomaties opgedateer

### Dateer Velde Programmaties Op

Om velde in die hele dokument eksplisiet op te dateer, bel eenvoudig die [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) metode. Om velde in'n deel van'n dokument op te dateer, kry'n [Range](https://reference.aspose.com/words/net/aspose.words/range/) voorwerp en noem die [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) metode. In Aspose.Words, kan jy'n **Range** vir enige knoop in die dokument boom, soos [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), en so aan. gebruik die [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) eienskap. Jy kan die resultaat van'n enkele veld te werk deur die roeping van die [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) metode.

### Outomatiese Opdatering Van Bladsyverwante Velde Tydens Lewering

Wanneer jy die omskakeling van'n dokument na'n vaste bladsy formaat uitvoer, bv.na PDF of XPS, dan sal Aspose.Words outomaties bladsy uitleg-verwante velde `PAGE`, `PAGEREF` wat in koptekste/voetskrifte van die dokument gevind word, opdateer. Hierdie gedrag naboots die gedrag van Microsoft Word wanneer'n dokument gedruk word.

As u alle ander velde in die dokument wil opdateer, moet u [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) skakel voordat u die dokument weergee.

Die volgende kode voorbeeld toon hoe om al die velde te werk voor die lewering van'n dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Outomatiese Veldopdatering Gedurende Mail Merge

Wanneer jy'n mail merge uitvoer, sal alle velde in die dokument outomaties opgedateer word. Dit is omdat die mail merge is'n geval van'n veld update. Die program ontmoet'n mail merge veld en moet sy resultaat op te dateer, wat behels gryp die waarde van die data bron en voeg dit in die veld. Die logika is natuurlik meer ingewikkeld, byvoorbeeld wanneer die einde van die dokument/mail merge streek bereik word, maar daar is nog verdere data wat saamgesmelt moet word, dan moet die streek gedupliseer word en die nuwe stel velde opgedateer word.

## Dateer Velde Met Vuil Kenmerk Op

Die w: dirty is'n veldvlak-eienskap wat slegs die veld wat u spesifiseer, sal verfris wanneer die dokument oopgemaak word. Dit vertel MS Word om hierdie veld net te verfris die volgende keer as die dokument oopgemaak word. U kan die [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) eienskap gebruik om te spesifiseer of u die velde met die vuil kenmerk moet opdateer. Wanneer die waarde van **UpdateDirtyFields** op *true* gestel word, word alle velde met *true* waarde vir [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) of [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) eienskap opgedateer op dokumentlading.

Die volgende kode voorbeeld toon hoe om velde met die vuil kenmerk te werk:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Dateer LastSavedTime Eienskap Op Voordat Jy Stoor

U kan die [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) - eienskap gebruik of u die ooreenstemmende ingeboude dokumenteienskap [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) moet opdateer wanneer u die dokument stoor.

Die volgende kode voorbeeld toon hoe om hierdie eiendom te werk:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
