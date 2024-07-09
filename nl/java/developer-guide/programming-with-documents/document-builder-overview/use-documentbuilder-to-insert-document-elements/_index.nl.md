---
title: Gebruik `DocumentBuilder` Documentelementen invoegen
second_title: Aspose.Words voor Java
articleTitle: Gebruik `DocumentBuilder` Documentelementen invoegen
linktitle: Gebruik `DocumentBuilder` Documentelementen invoegen
type: docs
description: "Documentelementen invoegen met de documentbuilder in Java."
weight: 10
url: /nl/java/use-documentbuilder-to-insert-document-elements/
---

De [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) wordt gebruikt om documenten te wijzigen. In dit artikel wordt uitgelegd en beschreven hoe een aantal taken moet worden uitgevoerd.

## Een tekstreeks invoegen

Geef gewoon de tekstreeks die u in het document moet invoegen aan de [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) methode. Tekstopmaak wordt bepaald door de `Font` eigendom. Dit object bevat verschillende lettertype-attributen (lettertypenaam, lettergrootte, kleur, enzovoort). Enkele belangrijke lettertype-attributen worden ook vertegenwoordigd door [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) eigenschappen waarmee u ze direct kunt openen. Dit zijn Booleaanse eigenschappen [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), en [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Merk op dat de door u ingestelde tekenopmaak van toepassing zal zijn op alle tekst die vanaf de huidige positie in het document wordt ingevoegd.

{{% /alert %}}

Het volgende codevoorbeeld Invoegt geformatteerde tekst met behulp van DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Paragraaf invoegen

DocumentBuilder.writeln voegt ook een tekstreeks in het document toe, maar voegt daarnaast een paragraafpauze toe. De huidige lettertypeopmaak wordt ook gespecificeerd door de DocumentBuilder. krijgen Eigenschap lettertype en huidige paragraafopmaak wordt bepaald door de eigenschap DocumentBuilder.getParagraphFormat

Het volgende voorbeeld van code laat zien hoe je een paragraaf in het document invoegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Een tabel invoegen

Het basisalgoritme om een tabel te maken met behulp van `DocumentBuilder` is eenvoudig:

1. Start de tabel met [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Een cel invoegen met [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Dit start automatisch een nieuwe rij. Indien nodig, gebruik de [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) eigenschap om celopmaak op te geven.
1. Invoegen cel inhoud met behulp van de `DocumentBuilder` methoden.
1. Herhaal stap 2 en 3 tot de toer klaar is.
1. Oproep [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) om de huidige rij te beëindigen. Indien nodig, gebruik [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) eigenschap om rijopmaak op te geven.
1. Herhaal stap 2 - 5 totdat de tabel klaar is.
1. Oproep [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) om het tafelgebouw af te maken. De geschikte methoden voor het aanmaken van documentBuilder-tabellen worden hieronder beschreven.

### Een tabel starten

DocumentBuilder.start wordt aangeroepen Tafel is de eerste stap in het bouwen van een tafel. Het kan ook worden genoemd in een cel, in dit geval, het begint een geneste tafel. De volgende methode om te bellen is DocumentBuilder.insertCell.

### Een cel invoegen

Nadat je DocumentBuilder hebt gebeld. invoegen Cell, een nieuwe cel wordt aangemaakt en elke inhoud die u toevoegt met behulp van andere methoden van de `DocumentBuilder` klasse wordt toegevoegd aan de huidige cel. Om een nieuwe cel in dezelfde rij te starten, bel DocumentBuilder. invoegen Weer een cel. De DocumentBuilder.getCell gebruiken Formatteer eigenschap om celopmaak op te geven. Het geeft een [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) object dat alle opmaak voor een tabel cel vertegenwoordigt.

### Een rij beëindigen

Bel DocumentBuilder.end Rij om de huidige rij af te maken. Als u DocumentBuilder belt. invoegen Cel onmiddellijk daarna, dan gaat de tafel verder op een nieuwe rij. Gebruik de `DocumentBuilder.RowFormat` eigenschap om rijopmaak op te geven. Het geeft een [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) object dat alle opmaak voor een tabelrij voorstelt.

### Een tabel beëindigen

Bel DocumentBuilder.end Tabel om de huidige tabel te voltooien. Deze methode dient slechts eenmaal na DocumentBuilder te worden aangeroepen. EndRow heette. Wanneer aangeroepen, DocumentBuilder.end Tabel verplaatst de cursor uit de huidige cel naar een positie net na de tabel. Het volgende voorbeeld laat zien hoe je een geformatteerde tabel bouwt die 2 rijen en 2 kolommen bevat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Een pauze invoegen

Als u expliciet een nieuwe regel, paragraaf, kolom, sectie of pagina wilt starten, bel DocumentBuilder. invoegenBreak. Geef aan deze methode het type van de pauze die u moet invoegen die wordt weergegeven door de `BreakType` Samenvatting
Het volgende voorbeeld van code laat zien hoe pagina in te voegen breekt in een document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Een afbeelding invoegen

DocumentBuilder levert verschillende overbelastingen van de [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) methode waarmee u een inline of zwevend beeld invoegt. Als de afbeelding een EMF of WMF-metafile is, wordt deze in het document in metafile formaat ingevoegd. Alle andere afbeeldingen worden opgeslagen in PNG-formaat. Het documentBuilder.insert Afbeeldingsmethode kan afbeeldingen uit verschillende bronnen gebruiken:

- Van een bestand of `URL` door een tekenreeksparameter door te geven
- Van een stroom door een `Stream` parameter
- Van een afbeeldingsobject door een afbeeldingsparameter door te geven
- Van een bytearray door een bytearray parameter door te geven
- En andere

Voor elke DocumentBuilder. invoegen Afbeeldingsmethoden, er zijn verdere overbelastingen die u toelaten om een afbeelding met de volgende opties:

- Ingebonden of drijvend op een bepaalde positie
- Percentage schaal of aangepaste grootte

Bovendien is het document Builder.insert Afbeeldingsmethode geeft een [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) object dat net is aangemaakt en ingevoegd zodat u de eigenschappen van de Vorm verder kunt wijzigen.

### Een afbeelding invoegen

Geef een enkele tekenreeks door die een bestand weergeeft dat de afbeelding naar DocumentBuilder bevat. invoegen Afbeelding om de afbeelding als inline grafisch in het document in te voegen. Het volgende voorbeeld van code laat zien hoe je een inline afbeelding op de cursorpositie in een document invoegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Een drijvende afbeelding invoegen (Absoluut gepositioneerd)

Dit voorbeeld voegt een zwevende afbeelding van een bestand of `URL` op een bepaalde plaats en grootte.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Bladwijzer invoegen

Om een bladwijzer in het document in te voegen, moet u het volgende doen:

1. Oproep [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) de gewenste naam van de bladwijzer doorgeven.
1. Bladwijzertekst invoegen met `DocumentBuilder` methoden.
1. Oproep [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) dezelfde naam geven als die u gebruikte met DocumentBuilder.startBookmark.

Bladwijzers kunnen elkaar overlappen en elk bereik bestrijken. Om een geldige bladwijzer te maken moet je zowel DocumentBuilder.startBookmark als DocumentBuilder.endBookmark bellen met dezelfde bladwijzernaam.

Slecht gevormde bladwijzers of bladwijzers met dubbele namen worden genegeerd wanneer het document wordt opgeslagen.

Het volgende voorbeeld van code laat zien hoe u een bladwijzer in een document invoegt met behulp van een documentbouwer.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Een veld invoegen

Velden Microsoft Word documenten bestaan uit een veldcode en een veldresultaat. De veldcode is als een formule en het veldresultaat is de waarde die de formule produceert. De veldcode kan ook veldschakelaars bevatten die aanvullende instructies zijn om een specifieke actie uit te voeren. U kunt schakelen tussen het weergeven van veldcodes en resultaten in uw document in Microsoft Word met behulp van de sneltoets Alt + F9. Veldcodes verschijnen tussen krullende beugels ( { } Gebruik [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) om velden in het document aan te maken. U moet een veldtype, veldcode en veldwaarde opgeven. Als u niet zeker bent over de specifieke veldcode syntax, maak het veld in Microsoft Word eerst en switch om zijn veldcode te zien
Het volgende codevoorbeeld voegt een merge veld in een document met behulp van DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Invoegen van een `Form` Veld

Formuliervelden zijn een specifiek geval van Word-velden die "interactie" met de gebruiker toestaan. Vorm velden in Microsoft Word omvatten tekstvak, Combobox en checkbox. DocumentBuilder biedt speciale methoden om elk type formulierveld in het document in te voegen: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), en [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Merk op dat als je een naam opgeeft voor het formulierveld, dan wordt een bladwijzer automatisch aangemaakt met dezelfde naam.

### Tekstinvoer invoeren

DocumentBuilder.insertTextInput om een tekstvak in het document in te voegen. Het volgende voorbeeld van code laat zien hoe je een tekstinvoerformulierveld in een document invoegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Invoegen van een `CheckBox`

Bel DocumentBuilder.insert CheckBox om een selectievakje in het document in te voegen. Het volgende voorbeeld van code laat zien hoe je een veld in het aanvinkvakje in een document invoegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Een Combo Box invoegen

Bel DocumentBuilder.insertComboBox een combinatievakje in het document plaatsen. Het volgende voorbeeld van code laat zien hoe je een combo-vakformulierveld in een document invoegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Lokaal op veldniveau invoegen

Klanten kunnen opgeven Lokaal op veldniveau nu en kan betere controle bereiken. Lokaal Ids kunnen worden geassocieerd met elk veld binnen de DocumentBuilder. Onderstaande voorbeelden illustreren hoe van deze optie gebruik kan worden gemaakt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## HTML invoegen

U kunt eenvoudig een HTML-tekenreeks met een HTML-fragment of een heel HTML-document in het Word-document plaatsen. Geef deze string gewoon door aan de DocumentBuilder. invoegen Html methode. Een van de nuttige implementaties van de methode is het opslaan van een HTML string in een database en het invoegen in het document tijdens mail merge om de geformatteerde inhoud toegevoegd in plaats van bouwen met behulp van verschillende methoden van de document bouwer. Het volgende voorbeeld van code toont voegt HTML in een document met behulp van DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Hyperlink invoegen

Gebruik DocumentBuilder.insertHyperlink om een hyperlink in het document in te voegen. Deze methode accepteert drie parameters: tekst van de link die getoond moet worden in het document, link doel (URL of een naam van een bladwijzer in het document), en een booleaanse parameter die moet worden true indien `URL` is een naam van een bladwijzer in het document. DocumentBuilder.insertHyperlink intern aanroept DocumentBuilder.insertField. De methode voegt altijd apostrofes toe aan het begin en einde van de URL. Merk op dat u lettertypeopmaak voor de tekst van het hyperlinkscherm expliciet moet opgeven met behulp van de `Font` eigendom. Het volgende codevoorbeeld plaatst een hyperlink in een document met DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Inhoudsopgave invoegen

U kunt een `TOC` (inhoudsopgave) veld in het document op de huidige positie door het aanroepen van de [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) methode. De methode DocumentBuilder.insertTableOfContents zal alleen een `TOC` veld in het document. Om de inhoudsopgave te bouwen en ze weer te geven volgens paginanummers, de beide **Document.UpdateFields**methode moet worden aangeroepen na de invoeging van het veld. Het volgende voorbeeld van code laat zien hoe je een Inhoudsopgaveveld in een document invoegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Ole-object invoegen

Als je Ole Object wilt bellen [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Bestandsnaam en extensie instellen bij het invoegen van Ole Object

OLE pakket is een legacy en "undocumented" manier om ingebedde objecten op te slaan als de OLE handler is onbekend. Vroeg Windows versies zoals Windows 3.1, 95 en 98 hadden Packager. exe-applicatie die kan worden gebruikt om elk type gegevens in het document in te sluiten. Nu, deze toepassing is uitgesloten van Windows maar MS Word en andere toepassingen gebruiken het nog steeds om gegevens in te sluiten als de OLE handler ontbreekt of onbekend is. OlePackage klasse maakt toegang tot OLE Package eigenschappen. De volgende code voorbeeld laat zien hoe u de bestandsnaam, extensie en display naam voor OLE Package.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Toegang krijgen tot OLE-object ruwe gegevens

Het volgende code voorbeeld laat zien hoe je OLE krijgt Object ruwe gegevens gebruiken `OleFormat.GetRawData`() methode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Horizontaal invoegen Regel in document

Het volgende voorbeeld van code laat zien hoe horizontale regel vorm in een document in te voegen met behulp van `DocumentBuilder.InsertHorizontalRule` methode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Werken met Shapes

### Inline en vrij zwevende vormen invoegen

U kunt een inline vorm met een opgegeven type en grootte en een vrij zwevende vorm met de opgegeven positie, grootte en tekst wrap type in een document met behulp van `DocumentBuilder.InsertShape` methode. De `DocumentBuilder.InsertShape` methode maakt het mogelijk om DML vorm in het document model in te voegen. Het document moet worden opgeslagen in het formaat, dat DML-vormen ondersteunt, anders zullen dergelijke knooppunten worden omgezet in VML-vorm, terwijl documenten worden opgeslagen. Het volgende voorbeeld van code laat zien hoe je deze vormen in het document invoegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Kniphoek aanmaken

U kunt een kniphoek rechthoek met behulp van Aspose.Words. De vorm types zijn SingleCornerGesnipte, TopCornersGesnipte, DiagonalCornersGesnipte, TopCornersOneRounded OneSniped, SingleCornerRounded, TopCornersRounded en DiagonalCornersRounded. De DML vorm wordt gemaakt met behulp van `DocumentBuilder.InsertShape` methode met deze vormtypes. Deze types kunnen niet worden gebruikt om VML vormen te maken. Poging om een vorm te creëren door gebruik te maken van de publieke constructeur van de "Shape" klasse verhoogt de "NotSupportedException" uitzondering. Het volgende voorbeeld van code laat zien hoe je deze vormen in het document invoegt.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Formaten met XML als vorm importeren in DOM

U kunt `LoadOptions.ConvertShapeToOfficeMath` eigenschap om de vormen te converteren met EquationXML naar Office Math objecten. De standaardwaarde van deze eigenschap komt overeen met MS Word gedrag, d.w.z. vormen met vergelijking XML worden niet omgezet naar Office wiskunde objecten.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
