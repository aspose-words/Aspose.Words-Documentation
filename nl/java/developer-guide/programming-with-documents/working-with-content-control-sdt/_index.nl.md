---
title: Werken met inhoudscontrole SDT in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Content Control SDT
linktitle: Werken met Content Control SDT
type: docs
description: "Geavanceerd document-contentbeheer, hoe contentbeheer te maken en te manipuleren (Gestructureerde documenttags) met behulp van Java."
weight: 390
url: /nl/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

In Microsoft Word, U kunt een formulier aanmaken door te beginnen met een sjabloon en inhoudsopties toe te voegen, waaronder selectievakjes, tekstvakjes, datumkiezers en drop-downlijsten. In Aspose.Words a Gestructureerd document Tag of inhoudscontrole van een document dat geladen is in Aspose.Words wordt geïmporteerd als een StructuredDocumentTag knooppunt. Gestructureerde documenttags (SDT of content control) maken het mogelijk om door de klant gedefinieerde semantiek en zijn gedrag en uiterlijk in een document in te bouwen.

Gestructureerddocument Tag kan voorkomen in een document op de volgende plaatsen:

- Block-level - Onder paragrafen en tabellen, als kind van een Body, HeaderFooter, Commentaar, Voetnoot of een Shape knooppunt.
- Onder rijen in een tafel, als kind van een tafelknoop.
- Onder cellen in een tabel rij, als kind van een rij knooppunt.
- Inline niveau - Onder inline inhoud binnen, als kind van een alinea.
- Genest in een ander Gestructureerd DocumentTag.

## Inhoudscontrole invoegen in een document

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

Het volgende voorbeeld van code laat zien hoe inhoudscontrole van type selectievakje kan worden gemaakt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Het volgende voorbeeld van code laat zien hoe inhoudscontrole van het type rijke tekstvak te maken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Het volgende voorbeeld van code laat zien hoe content control van het type combo box te maken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Hoe kan ik Content Controls bijwerken

Deze sectie legt uit hoe u de waarden van SDT of inhoudscontrole programmatisch kunt bijwerken.

Het volgende voorbeeld van code laat zien hoe u de huidige status van het selectievakje kunt instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Het volgende voorbeeld van code laat zien hoe u de inhoudscontrole van het type platte tekstvak, drop-down lijst en afbeelding kunt wijzigen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

U kunt het voorbeeldbestand van deze voorbeelden downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Bindende inhoudscontrole op aangepaste XML-delen

U kunt content controls binden met XML data (*custom XML part*) in Word-documenten

Het volgende voorbeeld van code laat zien hoe content control te binden aan aangepaste XML-onderdelen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Duidelijke inhoud van een inhoudscontrole

U kunt de inhoud van een inhoudscontrole wissen met het weergeven van een plaatshouder. **Gestructureerd documentTag.clear()** methode maakt de inhoud van deze gestructureerde documenttag duidelijk en geeft een plaatshouder weer indien deze is gedefinieerd. Echter, Het is niet mogelijk om de inhoud van een inhoudscontrole te wissen als er herzieningen zijn. Als een inhoudscontrole geen plaatshouder heeft, worden vijf spaties ingevoegd zoals in MS Word (behalve het herhalen van secties, het herhalen van sectie-items, groepen, check-boxen, citaten). Als een inhoudscontrole aan aangepaste XML is toegewezen, wordt de referentie XML-node gewist.

Het volgende voorbeeld van code laat zien hoe je de inhoud van de inhoudscontrole kunt wissen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Achtergrond en randkleuren van inhoudscontrole wijzigen

De `StructuredDocumentTag.Color` eigenschap kunt u de kleur van de inhoud controle te krijgen of in te stellen. De kleur beïnvloedt inhoudscontrole in twee situaties:

1. MS Word benadrukt de achtergrond van de inhoudscontrole wanneer de muis beweegt over de inhoudscontrole. Dit helpt om de inhoudscontrole te identificeren. De kleur van het markeren is een beetje "zachter" dan de *Color*. Bijvoorbeeld, MS Word benadrukt de achtergrond met de roze kleur, wanneer *Color* is Red.
2. Wanneer u interageert (bewerken, plukken etc) met de inhoudscontrole, wordt de rand van inhoudscontrole gekleurd met de *Color*.

Het volgende voorbeeld van code laat zien hoe u de kleur van de inhoudscontrole kunt wijzigen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Hoe stijl instellen om tekst te formatteren in de inhoudscontrole

Als u de stijl van inhoudscontrole wilt instellen, kunt u deze gebruiken `StructuredDocumentTag.Style` of `StructuredDocumentTag.StyleName` eigenschappen. Wanneer u de tekst intypt in de inhoudscontrole in het uitvoerdocument, zal de getypte tekst de stijl "Quote" hebben.

{{% alert color="primary" %}}

Merk op dat alleen Linked en Character stijlen kunnen worden toegepast op inhoudscontrole. Een OngeldigeOperatieUitzondering ("Kan deze stijl niet toepassen op de SDT") wordt gegooid wanneer een stijl die bestaat maar niet is gekoppeld of karakter stijl wordt toegepast.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe u de stijl van de inhoudscontrole kunt instellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Werken met het herhalen van sectie inhoudscontrole

Het repeteren sectie inhoud controle maakt het mogelijk de inhoud die erin zit te herhalen. Gebruik Aspose.Words, de gestructureerde documenttagnodes van de herhalende sectie en het herhalen van sectie-itemtypes kunnen worden aangemaakt en voor dit doel; [SdtType opsommingstype](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) geeft REPEATING_SECTION_ITEM lid.

Het volgende voorbeeld van code laat zien hoe je een repeterende sectie inhoudscontrole aan een tabel bindt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

