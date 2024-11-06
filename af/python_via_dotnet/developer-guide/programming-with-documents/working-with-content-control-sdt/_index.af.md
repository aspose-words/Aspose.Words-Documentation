---
title: Werk met Inhoud Beheer SDT
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk met Inhoud Beheer SDT
linktitle: Werk met Inhoud Beheer SDT
description: "Met behulp van python kan jy kliënt-gedefinieerde semantiek sowel as sy gedrag en voorkoms in'n dokument insluit."
type: docs
weight: 390
url: /af/python-net/working-with-content-control-sdt/
---

In Microsoft Word kan jy'n vorm skep deur met'n sjabloon te begin en inhoudskontroles by te voeg, insluitend checkboxes, tekskassies, datumplukkers en aftreklyste. In Aspose.Words word'n Gestruktureerde Dokumentetiket of inhoudbeheer van enige dokument wat in Aspose.Words gelaai is, ingevoer as'n [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) - knooppunt. Gestruktureerde dokument etikette (SDT of inhoud beheer) toelaat inbed kliënt-gedefinieerde semantiek sowel as sy gedrag en voorkoms in'n dokument. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) kan in'n dokument voorkom in die volgende plekke:

- Blokvlak tussen paragrawe en tabelle, as kind van'n [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) of'n [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) knoop
- Ry-vlak-Tussen rye In'n tabel, as'n kind van'n [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) knoop
- Selvlak-Onder selle In'n tabel ry, as'n kind van'n [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) knoop
- Inline-vlak-Onder inline inhoud binne, as'n kind van'n [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Geneste binne'n ander [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Invoeging Van Inhoudkontroles in'n Dokument

In hierdie weergawe van Aspose.Words, kan die volgende tipes van SDT of inhoud beheer geskep word:

- Checkbox
- DropDownList
- ComboBox
- Datum
- BuildingBlockGallery
- Groep
- `Picture`
- RichText
- PlainText

Die volgende kode voorbeeld demonstreer hoe om inhoud beheer van tipe checkbox te skep.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Die volgende kode voorbeeld demonstreer hoe om inhoud beheer van tipe ryk teks boks te skep.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Die volgende kode voorbeeld demonstreer hoe om inhoud beheer van die tipe combo boks te skep.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Hoe Om Inhoudskontroles op te dateer

Hierdie afdeling verduidelik hoe om die waardes van SDT of inhoud beheer programmaties te werk.

Die volgende kode voorbeeld toon hoe om die huidige toestand van die checkboxstel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Die volgende kode voorbeeld toon hoe om inhoud kontroles van tipe gewone teks boks, drop-down lys en prentjie te verander:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeelde aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Bindende Inhoud Beheer Om Persoonlike XML Dele

Jy kan inhoudsbeheer bind met XML data (*custom XML part*) in Word-dokumente.

Die volgende kode voorbeeld toon hoe om inhoud beheer bind om persoonlike XML dele:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping Van Gestruktureerde Dokument Tag Reeks

Jy kan die kartering van hierdie gestruktureerde dokument tag reeks te XML data in'n persoonlike XML deel van die huidige dokument met behulp van die [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) eiendom. Die [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) metode kan egter gebruik word om'n gestruktureerde dokument tag reeks te karteer om XML data.

Die volgende kode voorbeeld toon hoe om XML kartering stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Maak die inhoud van'n Inhoudsbeheer skoon

U kan die inhoud van'n inhoudsbeheer skoonmaak deur'n plekhouer te vertoon. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) metode maak die inhoud van hierdie gestruktureerde dokument tag skoon en vertoon'n plekhouer as dit gedefinieer is. Dit is egter nie moontlik om die inhoud van'n inhoudskontrole skoon te maak as dit hersienings het nie. As'n inhoudskontrole geen plekhouer het nie, word vyf spasies ingevoeg soos in MS Word (behalwe herhalende afdelings, herhalende afdelingitems, groepe, vinkbokse, aanhalings). As'n inhoud beheer is gekarteer na persoonlike XML, die verwys XML node is skoongemaak.

Die volgende kode voorbeeld toon hoe om die inhoud van inhoud beheer skoon te maak:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Verander Inhoud Beheer Agtergrond En Grens Kleure

Die [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) eienskap laat jou toe om die kleur van inhoud beheer te kry of stel. Die kleur beïnvloed inhoud beheer in twee situasies:

1. MS Word beklemtoon die agtergrond van die inhoudbeheer wanneer die muis oor die inhoudbeheer beweeg. Dit help om die inhoud beheer te identifiseer. Die kleur van die verligting is'n bietjie" sagter " as die *color*. Byvoorbeeld, MS Word beklemtoon die agtergrond met die pienk kleur, wanneer *color* rooi is.
2. Wanneer jy interaksie (redigering, pluk ens) met die inhoud beheer, is die grens van inhoud beheer gekleur met die *color*.

Die volgende kode voorbeeld toon hoe om die kleur van inhoud beheer te verander:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Hoe Om Styl Te Stel Om Teks Wat In Die Inhoudsbeheer Getik Is, Te Formateer

As jy die styl van inhoudbeheer wil instel, kan jy [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) of [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) eienskappe gebruik. As u die teks in die inhoudsbeheer in die uitvoerdokument tik, sal die getikte teks die styl "Kwotasie"hê.

{{% alert color="primary" %}}

Let daarop dat slegs Gekoppelde en Karakterstyle toegepas kan word op inhoudbeheer. 'n uitsondering ("Kan nie hierdie styl op die SDT toepas nie") word gegooi wanneer'n styl wat bestaan, maar nie Gekoppel is nie of Karakterstyl toegepas word.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die styl van inhoud beheer stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Werk Met Herhalende Afdeling Inhoud Beheer

Die herhalende afdeling inhoud beheer laat herhaling van die inhoud wat daarin vervat is. Met behulp van Aspose.Words, kan die gestruktureerde dokument tag nodes van die herhalende afdeling en herhalende afdeling item tipes geskep word en vir hierdie doel, [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) opsomming tipe bied [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) eiendom.

Die volgende kode voorbeeld toon hoe om'n herhalende gedeelte inhoud beheer te bind aan'n tabel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
