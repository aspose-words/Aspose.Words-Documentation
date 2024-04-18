---
title: Werken met Content Control SDT
second_title: Aspose.Words voor Python via .NET
articleTitle: Werken met Content Control SDT
linktitle: Werken met Content Control SDT
description: "Met behulp van python kunt u klant-gedefinieerde semantiek en het gedrag en uiterlijk in een document insluiten."
type: docs
weight: 390
url: /nl/python-net/working-with-content-control-sdt/
---

In Microsoft Word, U kunt een formulier aanmaken door te beginnen met een sjabloon en inhoudsopties toe te voegen, waaronder selectievakjes, tekstvakjes, datumkiezers en drop-downlijsten. In <span notrans="<span notrans=" Aspose.Words"=""></span>,"> een gestructureerde document label of inhoudscontrole van een document geladen in Aspose.Words wordt geïmporteerd als a [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) Node. Gestructureerde documenttags (SDT of content control) maken het mogelijk om door de klant gedefinieerde semantiek en zijn gedrag en uiterlijk in een document in te sluiten. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) kan voorkomen in een document op de volgende plaatsen:

- Blokniveau - Onder de paragrafen en tabellen, als kind van een [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) of a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) knooppunt
- Rij-niveau - Tussen rijen in een tafel, als kind van een [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) knooppunt
- Cell-level - Tussen cellen in een tabel rij, als kind van een [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) knooppunt
- Inline-niveau - Onder inline-inhoud binnen, als kind van een [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Genest in een ander [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Inhoudscontrole in een document invoegen

In deze versie van Aspose.Words, de volgende soorten SDT of inhoudscontrole kunnen worden gecreëerd:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Het volgende voorbeeld van code laat zien hoe content control van type checkbox te creëren.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Het volgende voorbeeld van code toont hoe inhoudscontrole van het type rijke tekstvak te creëren.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Het volgende voorbeeld van code laat zien hoe content control van het type combo box te creëren.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Hoe kan ik Content Controls bijwerken

Deze sectie legt uit hoe u de waarden van SDT of inhoudscontrole programmatisch kunt bijwerken

Het volgende voorbeeld van code laat zien hoe u de huidige status van het selectievakje kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Het volgende voorbeeld van code laat zien hoe u de inhoudscontrole van het type platte tekstvak, drop-down lijst en afbeelding kunt wijzigen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

U kunt het sample bestand van deze voorbeelden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Binding Content Control to Custom XML Parts

U kunt content controls binden met XML data (*custom XML part*) in Word-documenten.

Het volgende voorbeeld van code laat zien hoe content control te binden aan aangepaste XML-onderdelen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping van het tagbereik van gestructureerde documenten

U kunt de mapping van dit gestructureerde document tag bereik naar XML gegevens in een aangepaste XML deel van het huidige document met behulp van de [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) eigendom. De [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) methode kan worden gebruikt om een gestructureerd document tag bereik in kaart te brengen naar XML gegevens.

Het volgende voorbeeld van code laat zien hoe je XML mapping kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Duidelijke inhoud van een inhoudscontrole

U kunt de inhoud van een inhoudscontrole wissen met het weergeven van een plaatshouder. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) methode maakt inhoud van dit gestructureerde document tag en toont een plaatshouder als het is gedefinieerd. Echter, Het is niet mogelijk om de inhoud van een inhoudscontrole te wissen als er herzieningen zijn. Als een inhoudscontrole geen plaatshouder heeft, worden er vijf spaties ingevoegd zoals in MS Word (behalve delen herhalen, sectie-items herhalen, groepen, check-boxen, citaten). Als een inhoudscontrole is toegewezen aan aangepaste XML, wordt de referentie XML-node gewist.

Het volgende voorbeeld van code laat zien hoe je de inhoud van de inhoudscontrole kunt wissen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Achtergrond en randkleuren van inhoudscontrole wijzigen

De [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) eigenschap kunt u de kleur van de inhoud controle te krijgen of instellen. De kleur beïnvloedt inhoudscontrole in twee situaties:

1. MS Word benadrukt de achtergrond van de inhoudscontrole wanneer de muis beweegt over de inhoudscontrole. Dit helpt om de inhoudscontrole te identificeren. De kleur van het markeren is een beetje "zachter" dan de *color*. Bijvoorbeeld, MS Word benadrukt de achtergrond met de roze kleur, wanneer *color* is rood.
2. Wanneer u interageert (bewerken, plukken etc) met de inhoudscontrole, wordt de rand van de inhoudscontrole gekleurd met de *color*.

Het volgende voorbeeld van code laat zien hoe u de kleur van de inhoudscontrole kunt wijzigen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Hoe stijl instellen om tekst te formatteren in de inhoudscontrole

Als u de stijl van inhoudscontrole wilt instellen, kunt u deze gebruiken [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) of [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) eigenschappen. Wanneer u de tekst intypt in de inhoudscontrole in het uitvoerdocument, heeft de getypte tekst de stijl "Quote."

{{% alert color="primary" %}}

Merk op dat alleen Linked en Character stijlen kunnen worden toegepast op inhoudscontrole. Een uitzondering ("Kan deze stijl niet toepassen op de SDT") wordt gegooid wanneer een stijl die bestaat maar niet is gekoppeld of karakter stijl wordt toegepast.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je de stijl van inhoudscontrole kunt instellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Werken met het herhalen van sectie Content Control

De controle van de inhoud van de herhaalsectie maakt het mogelijk de inhoud ervan te herhalen. Gebruik Aspose.Words, de gestructureerde documenttagnodes van de herhalende sectie en het herhalen van sectie-itemtypen kunnen worden aangemaakt en voor dit doel; [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) Identificatietype geeft [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) eigendom.

Het volgende voorbeeld van code laat zien hoe je een repeterende sectie inhoudscontrole aan een tabel bindt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
