---
title: Voeg Velde in C#
second_title: Aspose.Words vir .NET
articleTitle: Voeg By Velde
linktitle: Voeg By Velde
description: "Hoe om velde in'n dokument in te voeg met C# - leer verskillende maniere met kode voorbeelde."
type: docs
weight: 20
url: /af/net/inserting-fields/
---

Daar is verskeie verskillende maniere om velde in'n dokument in te voeg:

* gebruik [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)
* gebruik [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/)
* gebruik [Aspose.Words Dokument Voorwerp Model (DOM)](/words/net/aspose-words-document-object-model/)

In hierdie artikel sal ons na elke manier in meer besonderhede kyk en ontleed hoe om sekere velde in te voeg deur hierdie opsies te gebruik.

## Voeg Velde in'n Dokument in met DocumentBuilder

In Aspose.Words word die [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) metode gebruik om nuwe velde in'n dokument in te voeg. Die eerste parameter aanvaar die volle veld kode van die veld wat ingevoeg moet word. Die tweede parameter is opsioneel en laat die veld resultaat van die veld handmatig gestel word. As dit nie verskaf word nie, word die veld outomaties opgedateer. U kan null of empty na hierdie parameter slaag om'n veld met'n leë veldwaarde in te voeg. As u nie seker is oor die spesifieke veldkode-sintaksis nie, skep eers die veld in Microsoft Word en skakel om die veldkode daarvan te sien.

{{% alert color="primary" %}}

As jou veld kode het'n parameter wat'n spasie dan moet dit ingesluit binne spraak punte. Andersins kan die veld in beide Microsoft Word en Aspose.Words nie werk soos verwag nie, aangesien die parameter deur albei as afgekap behandel word.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n samesmelting veld in'n dokument met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertField-InsertField.cs" >}}

Dieselfde tegniek word gebruik om velde in ander velde in te voeg.

Die volgende kode voorbeeld toon hoe om velde geneste binne'n ander veld met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cs" >}}

### Spesifiseer Ligging Op Veldvlak

'n taalidentifiseerder is'n standaard internasionale numeriese afkorting vir die taal in'n land of geografiese streek. Met Aspose.Words kan jy die Ligging op die veldvlak spesifiseer deur die [LocaleId](https://reference.aspose.com/words/net/aspose.words.fields/field/localeid/) eienskap te gebruik, wat die veld se ligging ID kry of stel.

Die volgende kode voorbeeld toon hoe om hierdie opsie te gebruik:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cs" >}}

### Voeg By Ongetypeerde / Leë Veld

As jy ongetypeerde/leë velde ({}) wil invoeg net soos Microsoft Word toelaat, kan jy die [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) metode met die [FieldType.FieldNone](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) parameter gebruik. Om'n veld in'n Word-dokument in te voeg, kan jy "Ctrl + F9" sleutelkombinasie druk.

Die volgende kode voorbeeld toon hoe om'n leë veld in die dokument in te voeg:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cs" >}}

## Voeg Velde in'n Dokument in met FieldBuilder
Die alternatiewe manier om velde in Aspose.Words in te voeg is die [FieldBuilder](https://reference.aspose.com/words/net/aspose.words.fields/fieldbuilder/) klas. Dit bied vlot koppelvlak om veldskakelaars en argumentwaardes as teks, nodusse of selfs geneste velde te spesifiseer.

Die volgende kode voorbeeld toon hoe om'n veld in'n dokument te voeg met behulp van **FieldBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder.cs" >}}

## Voeg Velde in met DOM

U kan ook verskillende soorte velde invoeg met behulp van [Aspose.Words Dokument Voorwerp Model (DOM)](/words/net/aspose-words-document-object-model/). In hierdie afdeling sal ons kyk na'n paar voorbeelde.

### Voeg Saamvoeg Veld in'n Dokument met behulp van DOM

Die `MERGEFIELD` veld in Word dokument kan verteenwoordig word deur die [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) klas. Jy kan die **FieldMergeField** klas gebruik om die volgende bewerkings uit te voer:

- spesifiseer die naam van merge field
- spesifiseer die formatering van merge field
- spesifiseer die teks wat tussen die veldskeier en die veldkant van merge field is
- spesifiseer die teks wat na die samesmeltingsveld ingevoeg moet word as die veld nie leeg is nie
- spesifiseer die teks wat voor die samesmeltingsveld ingevoeg moet word as die veld nie leeg is nie

{{% alert color="primary" %}}

Vir meer besonderhede, sien die [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/) klas API.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die `MERGE` veld te voeg met behulp van DOM om'n paragraaf in'n dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cs" >}}

### Voeg Mail Merge `ADDRESSBLOCK` veld in'n Dokument met DOM

Die `ADDRESSBLOCK` veld word gebruik om'n mail merge adres blok in Word dokument in te voeg. `ADDRESSBLOCK` veld in Word dokument kan verteenwoordig word deur die [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) klas. Jy kan die **FieldAddressBlock** klas gebruik om die volgende bewerkings uit te voer:

- spesifiseer of die naam van die land/streek in die veld ingesluit moet word
- spesifiseer of die adres geformateer moet word volgens die land/streek van die ontvanger soos gedefinieer deur POST*CODE (Universal Postal Union 2006)
- spesifiseer die uitgeslote land / streeknaam
- spesifiseer die naam en adres formaat
- spesifiseer die taal ID wat gebruik word om die adres te formateer

{{% alert color="primary" %}}

Vir meer besonderhede, sien die [FieldAddressBlock](https://reference.aspose.com/words/net/aspose.words.fields/fieldaddressblock/) klas API.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die Mail Merge `ADDRESSBLOCK` Veld te voeg met behulp van DOM om'n paragraaf in'n dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cs" >}}

### Voeg `ADVANCE` veld in'n Dokument in sonder om DocumentBuilderte gebruik

Die `ADVANCE` veld word gebruik om daaropvolgende teks binne'n lyn na links, regs, op of af te verreken. Die `ADVANCE` veld in Word dokument kan verteenwoordig word deur die [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) klas. Jy kan die **FieldAdvance** klas gebruik om die volgende bewerkings uit te voer:

- spesifiseer die aantal punte waarmee die teks wat die veld volg vertikaal van die boonste rand van die bladsy geskuif moet word
- spesifiseer die aantal punte waardeur die teks wat die veld volg horisontaal van die linkerkant van die kolom, raam of tekskassie geskuif moet word
- spesifiseer die aantal punte waardeur die teks wat die veld volg, links, regs, op of af geskuif moet word

{{% alert color="primary" %}}

Vir meer besonderhede, sien die [FieldAdvance](https://reference.aspose.com/words/net/aspose.words.fields/fieldadvance/) klas API.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die `ADVANCE` Veld te voeg met behulp van DOM om'n paragraaf in'n dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAdvanceFieldWithOutDocumentBuilder-InsertAdvanceFieldWithOutDocumentBuilder.cs" >}}

### Voeg `ASK` veld in'n Dokument in sonder om DocumentBuilderte gebruik

Die `ASK` veld word gebruik om die gebruiker te vra vir teks om aan'n Boekmerk in Word-dokument toe te ken. `ASK` veld in Word dokument kan verteenwoordig word deur die [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) klas. Jy kan die **FieldAsk** klas gebruik om die volgende bewerkings uit te voer:

- spesifiseer die naam van die boekmerk
- spesifiseer verstek gebruiker reaksie (aanvanklike waarde vervat in die vinnige venster)
- spesifiseer of die gebruiker se reaksie een keer per mail merge bewerking ontvang moet word
- spesifiseer die vinnige teks (die titel van die vinnige venster)

{{% alert color="primary" %}}

Vir meer besonderhede, sien die [FieldAsk](https://reference.aspose.com/words/net/aspose.words.fields/fieldask/) klas API.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die `ASK` Veld te voeg met behulp van DOM om'n paragraaf in'n dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertASKFieldWithOutDocumentBuilder-InsertASKFieldWithOutDocumentBuilder.cs" >}}

### Voeg `AUTHOR` veld in'n Dokument in sonder om DocumentBuilderte gebruik

Die `AUTHOR` veld word gebruik om die naam van Die dokument se outeur te spesifiseer uit die `Document` eienskappe. Die `AUTHOR` veld in Word dokument kan verteenwoordig word deur die [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) klas. Jy kan die **FieldAuthor** klas gebruik om die volgende bewerkings uit te voer:

- spesifiseer die dokument outeur se naam

{{% alert color="primary" %}}

Vir meer besonderhede, sien die [FieldAuthor](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/) klas API.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die `AUTHOR` Veld te voeg met behulp van DOM om'n paragraaf in'n dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cs" >}}

### Voeg `INCLUDETEXT` veld in'n Dokument in sonder om DocumentBuilderte gebruik

Die `INCLUDETEXT` veld voeg die teks en grafika in die dokument wat in die veldkode genoem word. U kan die hele dokument of'n gedeelte van die dokument waarna'n boekmerk verwys, invoeg. Hierdie veld in Word dokument word verteenwoordig deur INCLUDETEXT. Jy kan die [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) klas gebruik om die volgende bewerkings uit te voer:

- spesifiseer die boekmerk se naam van die ingeslote dokument
- spesifiseer die ligging van die dokument

{{% alert color="primary" %}}

Vir meer besonderhede, sien die [FieldIncludeText](https://reference.aspose.com/words/net/aspose.words.fields/fieldincludetext/) klas API.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die `INCLUDETEXT` veld te voeg met behulp van DOM om'n paragraaf in'n dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertIncludeFieldWithoutDocumentBuilder-InsertFieldIncludeTextWithoutDocumentBuilder.cs" >}}

### Voeg `TOA` veld in'n Dokument in sonder om DocumentBuilderte gebruik

Die `TOA` (*Table of Authorities*) veld bou en voeg'n tabel van owerhede in. Die `TOA` veld versamel inskrywings gemerk deur `TA` (*Table of Authorities Entry*) velde. Microsoft Office Word voeg die `TOA` veld in wanneer jy op *Insert Table of Authorities* in die **Table of Authorities** groep op die **References** oortjie klik. Wanneer jy die `TOA` veld in jou dokument sien, lyk die sintaksis soos volg:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

Vir meer besonderhede, sien die [FieldToa](https://reference.aspose.com/words/net/aspose.words.fields/fieldtoa/) klas API.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die `TOA` veld te voeg met behulp van DOM om'n paragraaf in'n dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cs" >}}
