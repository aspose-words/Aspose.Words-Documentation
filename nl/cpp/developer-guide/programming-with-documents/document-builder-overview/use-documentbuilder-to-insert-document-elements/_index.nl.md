---
title: DocumentBuilder gebruiken om Documentelementen in te voegen
second_title: Aspose.Words voor C++
articleTitle: DocumentBuilder gebruiken om Documentelementen in te voegen
linktitle: DocumentBuilder gebruiken om Documentelementen in te voegen
type: docs
description: "Documentelementen invoegen met de documentbouwer in C++."
weight: 80
url: /nl/cpp/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

De `DocumentBuilder` wordt gebruikt om documenten te wijzigen. In dit artikel wordt uitgelegd en beschreven hoe u een aantal taken kunt uitvoeren:

## Een tekenreeks invoegen

Geef de tekenreeks die u in het document moet invoegen gewoon door aan de methode `DocumentBuilder.Write`. Tekstopmaak wordt bepaald door de eigenschap `Font`. Dit object bevat verschillende lettertypeattributen (lettertypenaam, lettergrootte, kleur, enzovoort). Sommige belangrijke lettertypeattributen worden ook weergegeven door DocumentBuilder - eigenschappen, zodat u ze rechtstreeks kunt openen. Dit zijn Booleaanse eigenschappen `Font.Bold`, `Font.Italic` en `Font.Underline`.

Merk op dat de tekenopmaak die u instelt, van toepassing is op alle tekst die vanaf de huidige positie in het document wordt ingevoegd.

In het onderstaande voorbeeld wordt opgemaakte tekst ingevoegd met DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Een alinea invoegen

 `DocumentBuilder.Writeln` voegt ook een tekenreeks in het document in, maar voegt daarnaast een alinea-einde toe. De huidige lettertypeopmaak wordt ook gespecificeerd door de eigenschap `DocumentBuilder.Font` en de huidige alineaopmaak wordt bepaald door de eigenschap `DocumentBuilder.ParagraphFormat`. In het onderstaande voorbeeld ziet u hoe u een alinea in het document invoegt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Een tabel invoegen

Het basisalgoritme voor het maken van een tabel met DocumentBuilder is eenvoudig:

1. Start de tabel met `DocumentBuilder.StartTable`.
1. Een cel invoegen met `DocumentBuilder.InsertCell`. Hiermee start automatisch een nieuwe rij. Gebruik indien nodig de Eigenschap `DocumentBuilder.CellFormat` om celopmaak op te geven.
1. Celinhoud invoegen met behulp van de methoden `DocumentBuilder`.
1. Herhaal stap 2 en 3 totdat de rij is voltooid.
1. Roep `DocumentBuilder.EndRow` Aan om de huidige rij te beëindigen. Gebruik indien nodig de eigenschap `DocumentBuilder.RowFormat` om rijopmaak op te geven.
1. Herhaal stap 2 tot en met 5 totdat de tabel is voltooid.
1. Bel `DocumentBuilder.EndTable` om het tafelgebouw te voltooien. De juiste DocumentBuilder tabel creatie methoden worden hieronder beschreven.

### Een tafel starten

`DocumentBuilder.StartTable` aanroepen is de eerste stap in het maken van een tabel. Het kan ook in een cel worden genoemd, in welk geval het een geneste tabel begint. De volgende methode om te bellen is `DocumentBuilder.InsertCell`.

### Een cel invoegen

Nadat u `DocumentBuilder->InsertCell` hebt aangeroepen, wordt een nieuwe cel gemaakt en alle inhoud die u met andere methoden van de `DocumentBuilder` - klasse toevoegt, wordt aan de huidige cel toegevoegd. Als u een nieuwe cel in dezelfde rij wilt starten, roept u `DocumentBuilder->InsertCell` opnieuw op. Gebruik de Eigenschap `DocumentBuilder.CellFormat` om celopmaak op te geven. Het retourneert een `CellFormat` object dat alle opmaak voor een tabelcel vertegenwoordigt.

### Einde van een Rij

Roep `DocumentBuilder.EndRow` Aan om de huidige rij te voltooien. Als u onmiddellijk daarna `DocumentBuilder->InsertCell` aanroept, gaat de tabel verder op een nieuwe rij.

Gebruik de eigenschap `DocumentBuilder.RowFormat` om rijopmaak op te geven. Het retourneert een `RowFormat` object dat alle opmaak voor een tabelrij vertegenwoordigt.

### Een tafel beëindigen

Roep `DocumentBuilder.EndTable` aan om de huidige tabel te voltooien. Deze methode moet slechts één keer worden aangeroepen nadat `DocumentBuilder->EndRow` is aangeroepen. Wanneer `DocumentBuilder.EndTable` wordt aangeroepen, wordt de cursor uit de huidige cel verplaatst naar een positie vlak na de tabel. Het volgende voorbeeld laat zien hoe u een opgemaakte tabel bouwt die 2 rijen en 2 kolommen bevat.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Een pauze invoegen

Als u expliciet een nieuwe regel, alinea, kolom, sectie of pagina wilt starten, belt u `DocumentBuilder.InsertBreak`. Geef aan deze methode het type onderbreking door dat u moet invoegen en dat wordt weergegeven door de `BreakType` - opsomming. In het onderstaande voorbeeld ziet u hoe u pagina-einden in een document invoegt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Een afbeelding invoegen

DocumentBuilder biedt verschillende overbelastingen van de `DocumentBuilder->InsertImage` methode waarmee u een inline of zwevende afbeelding kunt invoegen. Als de afbeelding een EMF of WMF metabestand is, wordt deze in het metabestandformaat in het document ingevoegd. Alle andere afbeeldingen worden opgeslagen in PNG formaat. De methode `DocumentBuilder->InsertImage` kan afbeeldingen uit verschillende bronnen gebruiken:

- Van een bestand of `URL` door een string parameter `DocumentBuilder->InsertImage` door te geven.
- Van een stroom door een `Stream` parameter `DocumentBuilder->InsertImage` te passeren.
- Van een afbeeldingsobject door een Afbeeldingsparameter `DocumentBuilder->InsertImage` door te geven.
- Van een byte array door een byte array parameter `DocumentBuilder.InsertImage` door te geven.Voor elk van de `DocumentBuilder->InsertImage` methoden zijn er nog meer overbelastingen waarmee u een afbeelding kunt invoegen met de volgende opties:
- Inline of zwevend op een specifieke positie, bijvoorbeeld `DocumentBuilder->InsertImage`.
- Percentageschaal of aangepaste grootte, bijvoorbeeld `DocumentBuilder.InsertImage`. Bovendien retourneert de methode `DocumentBuilder->InsertImage` een `Shape` - object dat zojuist is gemaakt en ingevoegd, zodat u de eigenschappen van de vorm verder kunt wijzigen.

### Een Inline Afbeelding invoegen

Geef een enkele tekenreeks die een bestand vertegenwoordigt dat de afbeelding bevat door aan `DocumentBuilder->InsertImage` om de afbeelding als inline-afbeelding in het document in te voegen. Onderstaand voorbeeld laat zien hoe u een inline afbeelding op de cursorpositie in een document invoegt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Een zwevende (absoluut gepositioneerde) Afbeelding invoegen

Dit voorbeeld voegt een zwevende afbeelding in van een bestand of `URL` op een opgegeven positie en grootte.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Een bladwijzer invoegen

Als u een bladwijzer in het document wilt invoegen, doet u het volgende:

1. Roep `DocumentBuilder->StartBookmark` door het de gewenste naam van de bladwijzer te geven.
1. De bladwijzertekst invoegen met behulp van DocumentBuilder - methoden.
1. Roep `DocumentBuilder.EndBookmark` en geef het dezelfde naam door die je met **DocumentBuilder->StartBookmark** hebt gebruikt.
1. Bladwijzers kunnen elk bereik overlappen en overspannen. Om een geldige bladwijzer te maken, moet u zowel `DocumentBuilder->StartBookmark` als `DocumentBuilder->EndBookmark` aanroepen met dezelfde bladwijzernaam.

{{% alert color="primary" %}}

Slecht gevormde bladwijzers of bladwijzers met dubbele namen worden genegeerd wanneer het document wordt opgeslagen.

{{% /alert %}}

Onderstaand voorbeeld laat zien hoe u een bladwijzer invoegt in een document met behulp van een documentbouwer.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Een `Form` veld invoegen

Formuliervelden zijn een bijzonder geval van Word velden die "interactie" met de gebruiker mogelijk maken. Formuliervelden in Microsoft Word omvatten tekstvak, keuzelijst met invoervak en checkbox.DocumentBuilder biedt speciale methoden voor het invoegen van elk type formulierveld in het document: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox` en `DocumentBuilder.InsertComboBox`. Merk op dat als u een naam voor het formulierveld opgeeft, er automatisch een bladwijzer met dezelfde naam wordt gemaakt.

### Een tekstinvoer invoegen

 `DocumentBuilder.InsertTextInput` om een tekstvak in het document in te voegen. In het onderstaande voorbeeld wordt weergegeven hoe u een formulierveld voor tekstinvoer in een document invoegt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Een selectievakje invoegen

Roep `DocumentBuilder.InsertCheckBox` aan om een checkbox in het document in te voegen. Onderstaand voorbeeld laat zien hoe u een checkbox formulierveld invoegt in een document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Een Combo Box invoegen

Roep `DocumentBuilder.InsertComboBox` aan om een keuzelijst met invoervak in het document in te voegen. In het onderstaande voorbeeld wordt weergegeven hoe u een formulierveld met keuzelijst met invoervak in een document invoegt.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Locale invoegen op veldniveau

Klanten kunnen nu Locale op veldniveau specificeren en kunnen een betere controle bereiken. Lokale ID ' s kunnen worden gekoppeld aan elk veld binnen de DocumentBuilder. Onderstaande voorbeelden illustreren hoe u van deze optie gebruik kunt maken.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Een Hyperlink invoegen

Gebruik `DocumentBuilder.InsertHyperlink` om een hyperlink in het document in te voegen. Deze methode accepteert drie parameters: de tekst van de koppeling die in het document moet worden weergegeven, de bestemming van de koppeling (URL of een naam van een bladwijzer in het document) en een Booleaanse parameter die waar moet zijn als de `URL` een naam is van een bladwijzer in het document.DocumentBuilder.InsertHyperlink intern roept `DocumentBuilder.InsertField`.De methode voegt altijd apostrofen toe aan het begin en het einde van de URL. Merk op dat u de lettertypeopmaak voor de hyperlink-weergavetekst expliciet moet opgeven met behulp van de eigenschap `Font`. In het onderstaande voorbeeld wordt een hyperlink ingevoegd in een document met behulp van DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Ole Object Invoegen

Als u Ole Object wilt aanroepen `DocumentBuilder.InsertOleObject`. Geef aan deze methode de `ProgId` expliciet door met andere parameters. Onderstaand voorbeeld laat zien hoe u Ole Object invoegt in een document.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Bestandsnaam en extensie instellen bij invoegen van Ole Object

OLE package is een oude en" ongedocumenteerde " manier om ingebedde objecten op te slaan als OLE handler onbekend is. Vroege Windows versies zoals Windows 3.1, 95 en 98 hadden Packager.exe applicatie die kon worden gebruikt om elk type gegevens in het document in te bedden. Nu is deze toepassing uitgesloten van Windows maar MS Word en andere toepassingen gebruiken het nog steeds om gegevens in te sluiten als OLE handler ontbreekt of onbekend is. OlePackage klasse geeft toegang tot OLE Package eigenschappen. Onderstaand voorbeeld laat zien hoe u bestandsnaam, extensie en weergavenaam instelt voor OLE Package.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## HTMLinvoegen

U kunt eenvoudig een HTML tekenreeks invoegen die een HTML fragment of geheel HTML document bevat in het Word document. Geef deze tekenreeks gewoon door aan de methode `DocumentBuilder->InsertHtml`. Een van de nuttige implementaties van de methode is het opslaan van een HTML string in een database en het invoegen in het document tijdens Mail Merge om de geformatteerde inhoud toegevoegd te krijgen in plaats van het te bouwen met behulp van verschillende methoden van de document builder. Onderstaand voorbeeld toont inserts HTML in een document met behulp van DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Horizontale regel invoegen in Document

Be low code voorbeeld toont hoe horizontale regelshape invoegen in een document met behulp van de methode `DocumentBuilder->InsertHorizontalRule`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
