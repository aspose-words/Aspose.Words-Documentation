---
title: Dokumentbouer Oorsig in C++
second_title: Aspose.Words vir C++
articleTitle: Dokumentbouer Oorsig
linktitle: Dokumentbouer Oorsig
type: docs
description: "DocumentBuilder laat jou toe om dinamiese dokumente van nuuts af te bou of nuwe elemente by bestaande te voeg met behulp van C++. DocumentBuilder bied metodes om teks, regmerkies, tabelle, beelde en ander inhoudelemente in C++ in te voeg."
weight: 30
url: /af/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) is'n kragtige klas wat met [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) assosieer en jou in staat stel om dinamiese dokumente van nuuts af te bou of nuwe elemente by'n bestaande een te voeg.

**DocumentBuilder**

## Dokumentbouer of Aspose.Words DOM

**DocumentBuilder**

Operasies wat moontlik is met **DocumentBuilder** is ook moontlik wanneer die klasse van die Aspose.Words DOM direk gebruik word. Maar die gebruik van Aspose.Words DOM klasse direk vereis gewoonlik meer reëls kode as die gebruik van **DocumentBuilder**.

## Dokument Navigasie

Dokumentnavigasie is gebaseer op die konsep van'n virtuele wyser, waarmee jy na'n ander plek in die dokument kan beweeg met behulp van verskeie **DocumentBuilder.MoveToXXX** metodes soos [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) en [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Hierdie virtuele wyser dui aan waar die teks ingevoeg sal word wanneer die metodes geroep word [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), en ander.

Die volgende kode voorbeeld toon hoe om te navigeer na'n boekmerk:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Dokumentbou En Wysiging

Aspose.Words API bied verskeie klasse wat verantwoordelik is vir die formatering van verskeie elemente van'n dokument. Elk van die klasse inkapsel formatering eienskappe wat verband hou met'n spesifieke dokument element, soos teks, paragraaf, afdeling, en ander. Byvoorbeeld, die [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) klas verteenwoordig karakter formatering eienskappe, die [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) klas verteenwoordig paragraaf formatering eienskappe, en so aan. Voorwerpe van hierdie klasse word teruggestuur deur die ooreenstemmende **DocumentBuilder** eienskappe, wat dieselfde name as die klasse het. Daarom kan u toegang tot hulle kry en die verlangde formatering tydens die dokumentbou stel.

Jy kan ook voeg teks, boks, ole voorwerp, beelde, boekmerke, vorm velde, en ander dokument elemente by die wyser posisie met behulp van die `Write` metode of enige van die **DocumentBuilder.InsertXXX** metodes, soos [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/), en soortgelyke metodes.

Kom ons kyk hoe om'n eenvoudige dokument te skep met behulp van die **DocumentBuilder**.

### Skep'n Dokument met DocumentBuilder

Om te begin, moet jy'n **DocumentBuilder** skep en dit met'n **Document** voorwerp assosieer. Jy skep'n nuwe voorbeeld van **DocumentBuilder** deur sy konstruktor te bel en dit aan'n **Document** voorwerp te gee vir aanhegting aan die bouer.

Om'n teks in te voeg, slaag die teksstring wat u in die dokument moet invoeg na die **Write** - metode.

Die volgende kode voorbeeld toon hoe om'n eenvoudige dokument te skep met behulp van'n dokument bouer.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Spesifiseer Dokumentformatering

Die [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) eienskap definieer teks formatering. Hierdie voorwerp bevat verskillende lettertipe eienskappe (lettertipe naam, lettertipe grootte, kleur, en so aan). Sommige belangrike lettertipe-eienskappe word ook verteenwoordig deur **DocumentBuilder** eienskappe om jou in staat te stel om direk toegang tot hulle te verkry. Dit is die [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/), en [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/) booleaanse eienskappe.

Die volgende kode voorbeeld toon hoe om'n geformateerde teks in te voeg met behulp van **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) spesifiseer die karakterformatering wat toegepas sal word op alle teks wat vanaf die huidige posisie in die dokument ingevoeg word.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) spesifiseer die paragraafformatering vir die huidige en alle paragrawe wat ingevoeg moet word.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) spesifiseer die bladsy-en afdelingseienskappe vir die huidige afdeling en die hele afdeling wat ingevoeg sal word.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) en [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) spesifiseer formatering eienskappe wat toegepas sal word om tabel selle en rye van die huidige posisie in die dokument af.

In hierdie situasie beteken "huidige" die posisie, paragraaf, gedeelte, sel of ry waarin die wyser is.

{{% /alert %}}

{{% alert color="primary" %}}

Let daarop dat die eienskappe **Font**, **ParagraphFormat** en **PageSetup** opgedateer word wanneer jy na'n ander plek in die dokument navigeer om die opmaak eienskappe van hierdie plek te weerspieël.

{{% /alert %}}
