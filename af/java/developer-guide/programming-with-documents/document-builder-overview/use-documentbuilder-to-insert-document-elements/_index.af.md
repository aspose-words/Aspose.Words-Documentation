---
title: Gebruik `DocumentBuilder` Om Dokumentelemente In Te Voeg
second_title: Aspose.Words vir Java
articleTitle: Gebruik `DocumentBuilder` Om Dokumentelemente In Te Voeg
linktitle: Gebruik `DocumentBuilder` Om Dokumentelemente In Te Voeg
type: docs
description: "Voeg dokumentelemente in deur die dokumentbouer in Java te gebruik."
weight: 10
url: /af/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

Die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) word gebruik om dokumente te verander. Hierdie artikel verduidelik en beskryf hoe om'n aantal take uit te voer.

## Voeg'n String Teks in

Slaag eenvoudig die teksstring wat u in die dokument moet invoeg na die [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) metode. Teks formatering word bepaal deur die `Font` eienskap. Hierdie voorwerp bevat verskillende lettertipe eienskappe (lettertipe naam, lettertipe grootte, kleur, en so aan). Sommige belangrike lettertipe-eienskappe word ook verteenwoordig deur [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) eienskappe om jou in staat te stel om direk toegang tot hulle te verkry. Dit is Boole-eienskappe [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), en [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

{{% alert color="primary" %}}

Let daarop dat die karakterformatering wat u ingestel het, van toepassing sal wees op alle teks wat vanaf die huidige posisie in die dokument ingevoeg is.

{{% /alert %}}

Die volgende kode voorbeeld Voeg geformateerde teks met behulp van DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## Voeg'n Paragraaf by

DocumentBuilder.writeln voeg ook'n string teks in die dokument in, maar dit voeg ook'n paragraafonderbreking by. Huidige lettertipe formatering word ook gespesifiseer deur die DocumentBuilder.getFont eienskap en huidige paragraaf formatering word bepaal deur die DocumentBuilder.getParagraphFormat eienskap.

Die volgende kode voorbeeld toon hoe om'n paragraaf in die dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## Voeg'n Tabel by

Die basiese algoritme om'n tabel te skep met behulp van `DocumentBuilder` is eenvoudig:

1. Begin die tabel met [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable).
1. Voeg'n sel in met [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell). Dit begin outomaties'n nuwe ry. Indien nodig, gebruik die [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) eienskap om selformatering te spesifiseer.
1. Voeg selinhoud in met behulp van die `DocumentBuilder` metodes.
1. Herhaal stappe 2 en 3 totdat die ry voltooi is.
1. Bel [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) om die huidige ry te beëindig. Indien nodig, gebruik [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) eienskap om ry formatering spesifiseer.
1. Herhaal stappe 2 - 5 totdat die tabel voltooi is.
1. Bel [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) om die tafelgebou te voltooi. Die toepaslike DocumentBuilder tabel skep metodes word hieronder beskryf.

### Begin'n Tabel

Roep DocumentBuilder.startTable is die eerste stap in die bou van'n tafel. Dit kan ook genoem word binne'n sel, in hierdie geval, dit begin'n geneste tafel. Die volgende metode om te bel is DocumentBuilder.insertCell.

### Voeg'n Sel in

Nadat jy DocumentBuilder gebel het.insertCell, 'n nuwe sel geskep en enige inhoud wat jy voeg met behulp van ander metodes van die `DocumentBuilder` klas sal bygevoeg word om die huidige sel. Om'n nuwe sel in dieselfde ry te begin, bel DocumentBuilder.insertCell weer. Gebruik die DocumentBuilder.getCellFormat eienskap om selformatering te spesifiseer. Dit gee'n [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) voorwerp wat al die formatering vir'n tabel sel verteenwoordig.

### Einde Van'n Ry

Bel DocumentBuilder.endRow om die huidige ry te voltooi. As jy DocumentBuilder bel.insertCell onmiddellik daarna, dan gaan die tabel voort op'n nuwe ry. Gebruik die `DocumentBuilder.RowFormat` eienskap om ry formatering spesifiseer. Dit gee'n [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) voorwerp wat al die formatering vir'n tabel ry verteenwoordig.

### Die Einde Van'n Tafel

Bel DocumentBuilder.endTable om die huidige tabel te voltooi. Hierdie metode moet slegs een keer na DocumentBuilder genoem word.endRow is geroep. Wanneer genoem, DocumentBuilder.endTable beweeg die wyser uit die huidige sel na'n posisie net na die tabel. Die volgende voorbeeld demonstreer hoe om'n geformateerde tabel te bou wat 2 rye en 2 kolomme bevat.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## Voeg'n Breek in

As u uitdruklik'n nuwe reël, paragraaf, kolom, afdeling of bladsy wil begin, skakel DocumentBuilder.insertBreak. Gee aan hierdie metode die tipe breek wat u moet invoeg wat deur die `BreakType` opsomming voorgestel word.
Die volgende kode voorbeeld toon hoe om bladsy breek in'n dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## Voeg'n Prent in

DocumentBuilder bied verskeie oorladings van die [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) metode wat jou toelaat om'n inlyn of drywende beeld in te voeg. As die beeld'n EMF of WMF metafile is, sal dit in die dokument in metafile-formaat ingevoeg word. Alle ander beelde sal in PNG formaat gestoor word. Die DocumentBuilder.insertImage metode kan beelde van verskillende bronne gebruik:

- Van'n lêer of `URL` deur'n string parameter
- Van'n stroom deur'n `Stream` parameter te slaag
- Van'n Beeld voorwerp deur'n Beeld parameter
- Van'n byte skikking deur'n byte skikking parameter
- En ander

Vir elk van die DocumentBuilder.insertImage metodes, daar is verdere oorladings wat jou toelaat om'n prent met die volgende opsies in te voeg:

- Inlyn of swaai op'n spesifieke posisie
- Persentasie skaal of persoonlike grootte

Verder, die DocumentBuilder.insertImage metode gee'n [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) voorwerp wat net geskep en ingevoeg sodat jy verder kan verander eienskappe van die Vorm.

### Voeg'n Inlynbeeld in

Gee'n enkele string wat'n lêer wat die beeld bevat om DocumentBuilder.insertImage om die prent in die dokument as'n inlyngrafiek in te voeg. Die volgende kode voorbeeld toon hoe om'n inline beeld by die wyser posisie in'n dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### Voeg'n Drywende (Absoluut Geposisioneer) Beeld in

Hierdie voorbeeld voeg'n drywende beeld van'n lêer of `URL` by'n gespesifiseerde posisie en grootte.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## Voeg'n Boekmerk in

Om'n boekmerk in die dokument in te voeg, moet jy die volgende doen:

1. Bel [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) verby dit die gewenste naam van die boekmerk.
1. Voeg die boekmerk teks met behulp van `DocumentBuilder` metodes.
1. Noem [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) verby dit dieselfde naam wat jy gebruik met DocumentBuilder.startBookmark.

Boekmerke kan oorvleuel en enige reeks oorskry. Om'n geldige boekmerk te skep, moet jy albei DocumentBuilder bel.startBookmark en DocumentBuilder.endBookmark met dieselfde boekmerk naam.

Swak gevormde boekmerke of boekmerke met dubbele name sal geïgnoreer word wanneer die dokument gestoor word.

Die volgende kode voorbeeld toon hoe om'n boekmerk in'n dokument te voeg met behulp van'n dokument bouer.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## Voeg'n Veld in

Velde in Microsoft Word dokumente bestaan uit'n veld kode en'n veld resultaat. Die veld kode is soos'n formule en die veld resultaat is die waarde wat die formule produseer. Die veldkode kan ook veldskakelaars bevat wat addisionele instruksies is om'n spesifieke aksie uit te voer. Jy kan wissel tussen die vertoon van veldkodes en resultate in jou dokument in Microsoft Word met behulp van die sleutelbordkortpad Alt+F9. Veldkodes verskyn tussen krullerige hakies ( { } ).Gebruik [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) om velde in die dokument te skep. U moet'n veldtipe, veldkode en veldwaarde spesifiseer. As u nie seker is oor die spesifieke veldkode-sintaksis nie, skep eers die veld in Microsoft Word en skakel om die veldkode daarvan te sien.
Die volgende kode voorbeeld voeg'n samesmelting veld in'n dokument met behulp van DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## Voeg'n `Form` Veld in

Vorm velde is'n spesifieke geval van Woord velde wat "interaksie" met die gebruiker toelaat. Vorm velde in Microsoft Word sluit teks boks, Combobox en checkbox.DocumentBuilder bied spesiale metodes om elke tipe vormveld in die dokument in te voeg: [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int), [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), en [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int). Let daarop dat as u'n naam vir die vormveld spesifiseer, 'n boekmerk outomaties met dieselfde naam geskep word.

### Voeg'n Teks Invoer in

DocumentBuilder.insertTextInput om'n teksblokkie in die dokument in te voeg. Die volgende kode voorbeeld toon hoe om'n teks invoer vorm veld in'n dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Voeg by `CheckBox`

Bel DocumentBuilder.insertCheckBox om'n checkbox in die dokument in te voeg. Die volgende kode voorbeeld toon hoe om'n checkbox vorm veld in'n dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Voeg'n Kombinasie Boks in

Bel DocumentBuilder.insertComboBox om'n kombinasie boks in die dokument in te voeg. Die volgende kode voorbeeld toon hoe om'n combo boks vorm veld in'n dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Invoeging Van Ligging Op Veldvlak

Kliënte kan Nou Die Ligging op veldvlak spesifiseer en kan beter beheer verkry. Locale Id's kan geassosieer word met elke veld binne die DocumentBuilder. Die voorbeelde hieronder illustreer hoe om van hierdie opsie gebruik te maak.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## Voeg by HTML

Jy kan maklik'n HTML string wat'n HTML fragment of hele HTML dokument bevat in die Word-dokument invoeg. Gee net hierdie string aan die DocumentBuilder.insertHtml metode. Een van die nuttige implementasies van die metode is om'n HTML string in'n databasis te stoor en dit in die dokument in te voeg tydens mail merge om die geformateerde inhoud by te voeg in plaas daarvan om dit te bou met behulp van verskillende metodes van die dokumentbouer. Die volgende kode voorbeeld toon insetsels HTML in'n dokument met behulp van DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## Voeg'n Hiperskakel in

Gebruik DocumentBuilder.insertHyperlink om'n hiperskakel in die dokument in te voeg. Hierdie metode aanvaar drie parameters: teks van die skakel wat in die dokument vertoon moet word, skakelbestemming (URL of'n naam van'n boekmerk binne die dokument), en'n booleaanse parameter wat waar moet wees as die `URL` 'n naam van'n boekmerk binne die dokument is.DocumentBuilder.insertHyperlink intern oproepe DocumentBuilder.insertField. Die metode voeg altyd apostrofes by aan die begin en einde van die URL. Let daarop dat jy font formatering vir die hyperlink vertoon teks eksplisiet met behulp van die `Font` eiendom spesifiseer. Die volgende kode voorbeeld voeg'n hiperskakel in'n dokument met behulp van DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Voeg'n Inhoudsopgawe in

Jy kan'n `TOC` (inhoudsopgawe) veld in die dokument by die huidige posisie invoeg deur die [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) metode te skakel. Die DocumentBuilder.insertTableOfContents metode sal slegs'n `TOC` veld in die dokument invoeg. Om die inhoudsopgawe te bou en dit volgens bladsynommers te vertoon, moet die both **Document.UpdateFields**metode genoem word na die invoeging van die veld. Die volgende kode voorbeeld toon hoe om'n Inhoudsopgawe veld in'n dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Invoeging Van Ole Voorwerp

As jy Wil Ole Voorwerp bel [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Stel Lêernaam en Uitbreiding wanneer Ole-Voorwerp Ingevoeg Word

OLE pakket is'n erfenis en "ongedokumenteerde" manier om ingebedde voorwerpe te stoor as die OLE handelaar onbekend is. Vroeë Windows weergawes soos Windows 3.1, 95 en 98 het Packager.exe aansoek wat gebruik kan word om enige tipe data in die dokument te insluit. Nou, hierdie aansoek is uitgesluit van Windows maar MS Word en ander programme gebruik dit nog steeds om data te insluit as die OLE handelaar ontbreek of onbekend is. OlePackage klas laat toegang tot OLE Package eienskappe.Die volgende kode voorbeeld toon hoe om die lêernaam, uitbreiding en vertoon naam vir OLE Package stel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## Kry Toegang tot OLE Voorwerp Rou Data

Die volgende kode voorbeeld demonstreer hoe om OLE Voorwerp rou data te kry met behulp van `OleFormat.GetRawData`() metode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## Voeg Horisontale Reël in Dokument in

Die volgende kode voorbeeld toon hoe om horisontale reël vorm in'n dokument met behulp van `DocumentBuilder.InsertHorizontalRule` metode in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## Werk Met Vorms

### Invoeging Van Inlyn-En Vryvloeiende Vorms

Jy kan'n inlynvorm met'n gespesifiseerde tipe en grootte en'n vryswewende vorm met die gespesifiseerde posisie, grootte en teks wrap tipe in'n dokument invoeg met behulp van `DocumentBuilder.InsertShape` metode. Die `DocumentBuilder.InsertShape` metode laat toe om DML vorm in die dokument model in te voeg. Die dokument moet gestoor word in die formaat wat DML vorms ondersteun, anders sal sulke nodusse omgeskakel word na VML vorm, terwyl dokument gestoor word. Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Skep Snip Hoek Reghoek

Jy kan'n snip hoek reghoek te skep met behulp van Aspose.Words. Die vorm tipes is SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, en DiagonalCornersRounded. Die DML vorm word geskep met behulp van `DocumentBuilder.InsertShape` metode met hierdie vorm tipes. Hierdie tipes kan nie gebruik word om VML vorms te skep nie. Probeer om'n vorm te skep deur die openbare konstruktor van die "Shape" klas te gebruik, verhoog die "NotSupportedException" uitsondering. Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Invoer Vorms met Wiskunde XML As Vorms in DOM

Jy kan `LoadOptions.ConvertShapeToOfficeMath` eienskap gebruik om die vorms met EquationXML om Te skakel Na Kantoor Wiskunde voorwerpe. Die standaard waarde van hierdie eienskap stem ooreen met MS Woord gedrag d.w. s. vorms met vergelyking XML word nie omgeskakel na Kantoor wiskunde voorwerpe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
