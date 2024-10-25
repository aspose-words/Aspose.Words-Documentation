---
title: Gebruik `DocumentBuilder` Om Dokumentelemente In Te Voeg
second_title: Aspose.Words vir C++
articleTitle: Gebruik `DocumentBuilder` Om Dokumentelemente In Te Voeg
linktitle: Gebruik `DocumentBuilder` Om Dokumentelemente In Te Voeg
type: docs
description: "Voeg dokumentelemente in deur die dokumentbouer in C++ te gebruik."
weight: 80
url: /af/cpp/use-documentbuilder-to-insert-document-elements/
---

Die `DocumentBuilder` word gebruik om dokumente te verander. Hierdie artikel verduidelik en beskryf hoe om'n aantal take uit te voer:

## Voeg'n String Teks in

Slaag eenvoudig die teksstring wat u in die dokument moet invoeg na die `DocumentBuilder.Write` - metode. Teks formatering word bepaal deur die `Font` eienskap. Hierdie voorwerp bevat verskillende lettertipe eienskappe (lettertipe naam, lettertipe grootte, kleur, en so aan). Sommige belangrike lettertipe-eienskappe word ook verteenwoordig deur DocumentBuilder eienskappe om jou in staat te stel om direk toegang tot hulle te verkry. Dit is Boole-eienskappe `Font.Bold`, `Font.Italic`, en `Font.Underline`.

Let daarop dat die karakterformatering wat u ingestel het, van toepassing sal wees op alle teks wat vanaf die huidige posisie in die dokument ingevoeg is.

Hieronder Voorbeeld Voeg geformateerde teks met behulp van DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## Voeg'n Paragraaf by

 `DocumentBuilder.Writeln` voeg ook'n string teks in die dokument in, maar dit voeg ook'n paragraafonderbreking by. Huidige lettertipe formatering word ook gespesifiseer deur die `DocumentBuilder.Font` eienskap en huidige paragraaf formatering word bepaal deur die `DocumentBuilder.ParagraphFormat` eienskap. Hieronder voorbeeld toon hoe om'n paragraaf in die dokument in te voeg.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Voeg'n Tabel by

Die basiese algoritme vir die skep van'n tabel met behulp van DocumentBuilder is eenvoudig:

1. Begin die tabel met `DocumentBuilder.StartTable`.
1. Voeg'n sel in met `DocumentBuilder.InsertCell`. Dit begin outomaties'n nuwe ry. Indien nodig, gebruik die `DocumentBuilder.CellFormat` eienskap om selformatering te spesifiseer.
1. Voeg selinhoud in met behulp van die `DocumentBuilder` metodes.
1. Herhaal stappe 2 en 3 totdat die ry voltooi is.
1. Roep `DocumentBuilder.EndRow` om die huidige ry te beëindig. Indien nodig, gebruik `DocumentBuilder.RowFormat` eienskap om ry formatering spesifiseer.
1. Herhaal stappe 2 - 5 totdat die tabel voltooi is.
1. Bel `DocumentBuilder.EndTable` om die tafelgebou te voltooi. Die toepaslike DocumentBuilder tabel skep metodes word hieronder beskryf.

### Begin'n Tabel

Om `DocumentBuilder.StartTable` te bel is die eerste stap in die bou van'n tafel. Dit kan ook genoem word binne'n sel, in watter geval dit begin'n geneste tafel. Die volgende metode om te bel is `DocumentBuilder.InsertCell`.

### Voeg'n Sel in

Nadat jy `DocumentBuilder->InsertCell` gebel het, word'n nuwe sel geskep en enige inhoud wat jy byvoeg met ander metodes van die `DocumentBuilder` klas sal by die huidige sel gevoeg word. Om'n nuwe sel in dieselfde ry te begin, bel `DocumentBuilder->InsertCell` weer. Gebruik die `DocumentBuilder.CellFormat` eienskap om selformatering te spesifiseer. Dit gee'n `CellFormat` voorwerp wat al die formatering vir'n tabel sel verteenwoordig.

### Einde Van'n Ry

Bel `DocumentBuilder.EndRow` om die huidige ry te voltooi. As jy `DocumentBuilder->InsertCell` onmiddellik daarna bel, gaan die tabel voort op'n nuwe ry.

Gebruik die `DocumentBuilder.RowFormat` eienskap om ry formatering spesifiseer. Dit gee'n `RowFormat` voorwerp wat al die formatering vir'n tabel ry verteenwoordig.

### Die Einde Van'n Tafel

Bel `DocumentBuilder.EndTable` om die huidige tabel te voltooi. Hierdie metode moet slegs een keer genoem word nadat `DocumentBuilder->EndRow` genoem is. Wanneer genoem, `DocumentBuilder.EndTable` beweeg die wyser uit die huidige sel na'n posisie net na die tabel. Die volgende voorbeeld demonstreer hoe om'n geformateerde tabel te bou wat 2 rye en 2 kolomme bevat.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## Voeg'n Breek in

As u uitdruklik'n nuwe reël, paragraaf, kolom, afdeling of bladsy wil begin, skakel `DocumentBuilder.InsertBreak`. Gee aan hierdie metode die tipe breek wat u moet invoeg wat deur die `BreakType` opsomming voorgestel word. Hieronder voorbeeld toon hoe om bladsy breek in'n dokument in te voeg.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## Voeg'n Prent in

DocumentBuilder bied verskeie oorladings van die `DocumentBuilder->InsertImage` metode wat jou toelaat om'n inlyn of drywende beeld in te voeg. As die beeld'n EMF of WMF metafile is, sal dit in die dokument in metafile-formaat ingevoeg word. Alle ander beelde sal in PNG formaat gestoor word. Die `DocumentBuilder->InsertImage` metode kan beelde van verskillende bronne gebruik:

- Van'n lêer of `URL` deur'n string parameter `DocumentBuilder->InsertImage` te slaag.
- Van'n stroom deur'n `Stream` parameter `DocumentBuilder->InsertImage` te slaag.
- Van'n Beeld voorwerp deur'n Beeld parameter `DocumentBuilder->InsertImage`.
- Van'n byte skikking deur'n byte skikking parameter `DocumentBuilder.InsertImage` te slaag.Vir elk van die `DocumentBuilder->InsertImage` metodes, is daar verdere oorladings wat jou toelaat om'n beeld met die volgende opsies in te voeg:
- Inlyn of dryf op'n spesifieke posisie, byvoorbeeld, `DocumentBuilder->InsertImage`.
- Persentasie skaal of persoonlike grootte, byvoorbeeld, `DocumentBuilder.InsertImage`. Verder die `DocumentBuilder->InsertImage` metode gee'n `Shape` voorwerp wat net geskep en ingevoeg sodat jy verder kan verander eienskappe van die vorm.

### Voeg'n Inlynbeeld in

Gee'n enkele string wat'n lêer verteenwoordig wat die beeld bevat na `DocumentBuilder->InsertImage` om die beeld in die dokument as'n inlyngrafika in te voeg. Hieronder voorbeeld toon hoe om'n inline beeld by die wyser posisie in'n dokument in te voeg.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### Voeg'n Drywende (Absoluut Geposisioneer) Beeld in

Hierdie voorbeeld voeg'n drywende beeld van'n lêer of `URL` by'n gespesifiseerde posisie en grootte.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## Voeg'n Boekmerk in

Om'n boekmerk in die dokument in te voeg, moet jy die volgende doen:

1. Bel `DocumentBuilder->StartBookmark` verby dit die gewenste naam van die boekmerk.
1. Voeg die boekmerk teks met behulp van DocumentBuilder metodes.
1. Noem `DocumentBuilder.EndBookmark` verby dit dieselfde naam wat jy gebruik met **DocumentBuilder->StartBookmark**.
1. Boekmerke kan oorvleuel en enige reeks oorskry. Om'n geldige boekmerk te skep, moet jy beide `DocumentBuilder->StartBookmark` en `DocumentBuilder->EndBookmark` met dieselfde boekmerknaam bel.

{{% alert color="primary" %}}

Swak gevormde boekmerke of boekmerke met dubbele name sal geïgnoreer word wanneer die dokument gestoor word.

{{% /alert %}}

Die onderstaande voorbeeld toon hoe om'n boekmerk in'n dokument in te voeg met behulp van'n dokumentbouer.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## Voeg'n `Form` Veld in

Vorm velde is'n spesifieke geval van Woord velde wat "interaksie" met die gebruiker toelaat. Vorm velde in Microsoft Word sluit teksboks, kombinasie boks en boks.DocumentBuilder bied spesiale metodes om elke tipe vormveld in die dokument in te voeg: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox`, en `DocumentBuilder.InsertComboBox`. Let daarop dat as u'n naam vir die vormveld spesifiseer, 'n boekmerk outomaties met dieselfde naam geskep word.

### Voeg'n Teks Invoer in

 `DocumentBuilder.InsertTextInput` om'n teksblokkie in die dokument in te voeg. Hieronder voorbeeld toon hoe om'n teks invoer vorm veld in'n dokument in te voeg.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### Voeg'n Boks In

Bel `DocumentBuilder.InsertCheckBox` om'n boks in die dokument in te voeg. Hieronder voorbeeld toon hoe om'n boks vorm veld in'n dokument in te voeg.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### Voeg'n Kombinasie Boks in

Bel `DocumentBuilder.InsertComboBox` om'n kombinasie boks in die dokument in te voeg. Hieronder voorbeeld toon hoe om'n kombinasie boks vorm veld in'n dokument in te voeg.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## Invoeging Van Ligging Op Veldvlak

Kliënte kan Nou Die Ligging op veldvlak spesifiseer en kan beter beheer verkry. Locale Id's kan geassosieer word met elke veld binne die DocumentBuilder. Die voorbeelde hieronder illustreer hoe om van hierdie opsie gebruik te maak.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## Voeg'n Hiperskakel in

Gebruik `DocumentBuilder.InsertHyperlink` om'n hiperskakel in die dokument in te voeg. Hierdie metode aanvaar drie parameters: teks van die skakel wat in die dokument vertoon moet word, skakelbestemming (URL of'n naam van'n boekmerk binne die dokument), en'n booleaanse parameter wat waar moet wees as die `URL` 'n naam van'n boekmerk binne die dokument is.DocumentBuilder.InsertHyperlink intern oproepe `DocumentBuilder.InsertField`.Die metode voeg altyd apostrofes by aan die begin en einde van die URL. Let daarop dat jy font formatering vir die hyperlink vertoon teks eksplisiet met behulp van die `Font` eiendom spesifiseer. Hieronder voorbeeld voeg'n hiperskakel in'n dokument met behulp van DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Invoeging Van Ole Voorwerp

As jy Wil Ole Voorwerp bel `DocumentBuilder.InsertOleObject`. Gee aan hierdie metode die `ProgId` eksplisiet met ander parameters. Hieronder voorbeeld toon hoe Om Ole Voorwerp in'n dokument in te voeg.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## Stel Lêernaam en Uitbreiding wanneer Ole-Voorwerp Ingevoeg Word

OLE pakket is'n erfenis en "ongedokumenteerde" manier om ingebedde voorwerp te stoor as OLE handelaar is onbekend. Vroeë Windows weergawes soos Windows 3.1, 95 en 98 het Verpakker gehad.exe aansoek wat gebruik kan word om enige tipe data in die dokument te insluit. Nou, hierdie aansoek is uitgesluit van Windows maar MS Word en ander programme gebruik dit nog steeds om data te insluit as OLE handelaar ontbreek of onbekend is. OlePackage klas kan toegang tot OLE Pakket eienskappe. Hieronder voorbeeld toon hoe om lêernaam, uitbreiding en vertoon naam vir OLE Pakket stel.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## Voeg by HTML

Jy kan maklik'n HTML string wat'n HTML fragment of hele HTML dokument bevat in die Word-dokument invoeg. Slaag net hierdie string na die `DocumentBuilder->InsertHtml` metode. Een van die nuttige implementasies van die metode is om'n HTML string in'n databasis te stoor en dit in die dokument in te voeg tydens mail merge om die geformateerde inhoud by te voeg in plaas daarvan om dit te bou met behulp van verskillende metodes van die dokumentbouer. Hieronder voorbeeld toon insetsels HTML in'n dokument met behulp van DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## Voeg Horisontale Reël in Dokument in

Below code voorbeeld toon hoe om horisontale reël vorm in'n dokument te voeg met behulp van `DocumentBuilder->InsertHorizontalRule` metode.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
