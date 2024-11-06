---
title: Dokumentbouer Oorsig in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Dokumentbouer Oorsig
linktitle: Dokumentbouer Oorsig
type: docs
description: "DocumentBuilder laat jou toe om dinamiese dokumente van nuuts af te bou of nuwe elemente by bestaande te voeg met behulp van Python. DocumentBuilder bied metodes om teks, checkboxes, tabelle, beelde en ander inhoud elemente in Python in te voeg."
weight: 30
url: /af/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) is'n kragtige klas wat met [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) assosieer en jou in staat stel om dinamiese dokumente van nuuts af te bou of nuwe elemente by'n bestaande een te voeg.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) bied metodes om teks, checkboxes, ole voorwerpe, paragrawe, lyste, tabelle, beelde, en ander inhoud elemente in te voeg. Dit laat jou toe om lettertipes, paragraaf of afdeling formatering spesifiseer, en voer ander bewerkings.

## Dokumentbouer of Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) vul klasse en metodes beskikbaar in die Aspose.Words Document Object Model (DOM) om die mees algemene dokument gebou take te vereenvoudig. Dit wil sê, jy kan die inhoud van dokumente skep en verander deur beide die Aspose.Words DOM, wat'n goeie begrip van die boomstruktuur vereis, en die gebruik van die DocumentBuilder. Die `DocumentBuilder` is'n "fasade" vir die komplekse **Document** struktuur wat jou toelaat om vinnig en maklik inhoud en formatering in te voeg.

Operasies wat moontlik is met [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) is ook moontlik wanneer die klasse van die Aspose.Words DOM direk gebruik word. Maar die gebruik van Aspose.Words DOM klasse direk vereis gewoonlik meer reëls kode as die gebruik van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Dokument Navigasie

Dokumentnavigasie is gebaseer op die konsep van'n virtuele wyser, waarmee jy na'n ander plek in die dokument kan beweeg met behulp van verskeie **DocumentBuilder.move_to_XXX** metodes soos [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) en [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Hierdie virtuele wyser dui aan waar die teks ingevoeg sal word wanneer die metodes geroep word [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), en ander. Sien die volgende artikel "Navigasie met Wyser" om meer te leer oor die virtuele wyser.

Die volgende kode voorbeeld toon hoe om te navigeer na'n boekmerk:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Dokumentbou En Wysiging

Aspose.Words API bied verskeie klasse wat verantwoordelik is vir die formatering van verskeie elemente van'n dokument. Elk van die klasse inkapsel formatering eienskappe wat verband hou met'n spesifieke dokument element, soos teks, paragraaf, afdeling, en ander. Byvoorbeeld, die [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) klas verteenwoordig karakter formatering eienskappe, die [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) klas verteenwoordig paragraaf formatering eienskappe, en so aan. Voorwerpe van hierdie klasse word teruggestuur deur die ooreenstemmende [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) eienskappe, wat dieselfde name as die klasse het. Daarom kan u toegang tot hulle kry en die verlangde formatering tydens die dokumentbou stel.

Jy kan ook voeg teks, checkbox, ole voorwerp, beelde, boekmerke, vorm velde, en ander dokument elemente by die wyser posisie met behulp van die `Write` metode of enige van die **DocumentBuilder.insert_XXX** metodes, soos [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), en soortgelyke metodes.

Kom ons kyk hoe om'n eenvoudige dokument te skep met behulp van die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Skep'n Dokument met DocumentBuilder

Om te begin, moet jy'n [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) skep en dit met'n [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) voorwerp assosieer. Jy skep'n nuwe voorbeeld van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) deur sy konstruktor te bel en dit aan'n [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) voorwerp te gee vir aanhegting aan die bouer.

Om'n teks in te voeg, slaag die teksstring wat u in die dokument moet invoeg na die [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) - metode.

Die volgende kode voorbeeld toon hoe om'n eenvoudige dokument te skep met behulp van'n dokument bouer.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Spesifiseer Dokumentformatering

Die [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) eienskap definieer teks formatering. Hierdie voorwerp bevat verskillende lettertipe eienskappe (lettertipe naam, lettertipe grootte, kleur, en so aan). Sommige belangrike lettertipe-eienskappe word ook verteenwoordig deur [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) eienskappe om jou in staat te stel om direk toegang tot hulle te verkry. Dit is die [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), en [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) booleaanse eienskappe.

Die volgende kode voorbeeld toon hoe om'n geformateerde teks in te voeg met behulp van [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) spesifiseer die karakterformatering wat toegepas sal word op alle teks wat vanaf die huidige posisie in die dokument ingevoeg word.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) spesifiseer die paragraafformatering vir die huidige en alle paragrawe wat ingevoeg moet word.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) spesifiseer die bladsy-en afdelingseienskappe vir die huidige afdeling en die hele afdeling wat ingevoeg sal word.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) en [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) spesifiseer formatering eienskappe wat toegepas sal word om tabel selle en rye van die huidige posisie in die dokument af.

In hierdie situasie beteken "huidige" die posisie, paragraaf, gedeelte, sel of ry waarin die wyser is.

{{% /alert %}}

{{% alert color="primary" %}}

Let daarop dat die eienskappe [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) en [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) opgedateer word wanneer jy na'n ander plek in die dokument navigeer om die opmaak eienskappe van hierdie plek te weerspieël.

{{% /alert %}}
