---
title: Werken met Content Control SDT
second_title: Aspose.Words voor .NET
articleTitle: Werken met Content Control SDT
linktitle: Werken met Content Control SDT
description: "Geavanceerd documentinhoudsbeheer, hoe inhoudsbeheer (Structured Document Tags) te maken en te manipuleren met behulp van C#."
type: docs
weight: 390
url: /nl/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word, U kunt een formulier aanmaken door te beginnen met een sjabloon en inhoudsopties toe te voegen, waaronder selectievakjes, tekstvakjes, datumkiezers en drop-downlijsten. In Aspose.Words een gestructureerde document label of inhoudscontrole van een document geladen in Aspose.Words wordt geïmporteerd als een StructuredDocumentTag knooppunt. Gestructureerde documenttags (SDT of content control) maken het mogelijk om door de klant gedefinieerde semantiek en zijn gedrag en uiterlijk in een document in te sluiten.

Gestructureerddocument Tag kan voorkomen in een document op de volgende plaatsen:

- Blok-niveau onder de paragrafen en tabellen, als kind van een lichaam, HeaderFooter, Commentaar, Voetnoot of een Shape knooppunt
- Rij-niveau onder rijen in een tabel, als kind van een Tafelknooppunt
- Cell-level onder cellen in een tabel rij, als kind van een rij knooppunt
- Inline-level onder inline-inhoud binnen, als kind van een alinea
- Genest in een ander gestructureerd document Tag

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

Het volgende voorbeeld van code laat zien hoe content control van type checkbox te maken:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Het volgende voorbeeld van code laat zien hoe inhoudscontrole van het type rijke tekstvak te maken:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Het volgende voorbeeld van code laat zien hoe content control van het type combo box te maken:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Hoe contentbeheer bijwerken

Deze sectie legt uit hoe u de waarden van SDT of inhoudscontrole programmatisch kunt bijwerken.

Het volgende voorbeeld van code laat zien hoe u de huidige status van het selectievakje kunt instellen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Het volgende voorbeeld van code laat zien hoe u de inhoudscontrole van het type platte tekstvak, drop-down lijst en afbeelding kunt wijzigen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Binding Content Control to Custom XML Parts

U kunt content controls binden met XML data (*custom XML part*) in Word-documenten.

Het volgende voorbeeld van code laat zien hoe content control te binden aan aangepaste XML-onderdelen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping van het tagbereik van gestructureerde documenten

U kunt de mapping van dit gestructureerde document tag bereik naar XML gegevens in een aangepaste XML deel van het huidige document met behulp van de **GestructureerdeDocumentTagRangeStart.XmlMapping eigenschap**. De [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) methode kan worden gebruikt om een gestructureerd document tag bereik in kaart te brengen naar XML gegevens.

Het volgende voorbeeld van code laat zien hoe je XML mapping kunt instellen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Duidelijke inhoud van een inhoudscontrole

U kunt de inhoud van een inhoudscontrole wissen met het weergeven van een plaatshouder. De **StructuredDocumentTag.Clear** methode ontruimt inhoud van dit gestructureerde document tag en toont een plaatshouder als het is gedefinieerd. Echter, Het is niet mogelijk om de inhoud van een inhoudscontrole te wissen als er herzieningen zijn. Als een inhoudscontrole geen plaatshouder heeft, worden vijf spaties ingevoegd zoals in Microsoft Word (behalve het herhalen van secties, het herhalen van sectie-items, groepen, check-boxen, citaten). Als een inhoudscontrole is toegewezen aan aangepaste XML, wordt de referentie XML-node gewist.

Het volgende voorbeeld van code laat zien hoe je de inhoud van de inhoudscontrole kunt wissen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Achtergrond en randkleuren van inhoudscontrole wijzigen

De `StructuredDocumentTag.Color` eigenschap kunt u de kleur van de inhoud controle te krijgen of instellen. De kleur beïnvloedt inhoudscontrole in twee situaties:

1. MS Word benadrukt de achtergrond van de inhoudscontrole wanneer de muis beweegt over de inhoudscontrole. Dit helpt om de inhoudscontrole te identificeren. De kleur van het markeren is een beetje "zachter" dan de *Color*. Bijvoorbeeld, MS Word benadrukt de achtergrond met de roze kleur, wanneer *Color* is Red.
2. Wanneer u interageert (bewerken, plukken etc) met de inhoudscontrole, wordt de rand van de inhoudscontrole gekleurd met de *Color*.

Het volgende voorbeeld van code laat zien hoe u de kleur van de inhoudscontrole kunt wijzigen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Hoe stijl instellen om tekst te formatteren in de inhoudscontrole

Als u de stijl van inhoudscontrole wilt instellen, kunt u deze gebruiken `StructuredDocumentTag.Style` of `StructuredDocumentTag.StyleName` eigenschappen. Wanneer u de tekst intypt in de inhoudscontrole in het uitvoerdocument, heeft de getypte tekst de stijl "Quote."

{{% alert color="primary" %}}

Merk op dat alleen Linked en Character stijlen kunnen worden toegepast op inhoudscontrole. Een OngeldigeOperatieUitzondering ("Kan deze stijl niet toepassen op de SDT") wordt gegooid wanneer een stijl die bestaat maar niet is gekoppeld of karakter stijl wordt toegepast.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe je de stijl van inhoudscontrole kunt instellen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Werken met het herhalen van sectie Content Control

De controle van de inhoud van de herhaalsectie maakt het mogelijk de inhoud ervan te herhalen. Gebruik Aspose.Words, de gestructureerde documenttagnodes van de herhalende sectie en het herhalen van sectie-itemtypen kunnen worden aangemaakt en voor dit doel; [SdtType opsommingstype](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) levert **RepeatingSectionItem** eigendom.

Het volgende voorbeeld van code laat zien hoe je een repeterende sectie inhoudscontrole aan een tabel bindt.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
