---
title: Verdeel'n Dokument in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Verdeel'n Dokument
linktitle: Verdeel'n Dokument
description: "Verdeel'n dokument in verskeie lêers met Python. Gebruik die gesplete funksie om'n dokument effektief te verdeel volgens opskrifte of afdelings, sowel as volgens bladsye of bladsyreekse."
type: docs
weight: 90
url: /af/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* of *split a document* is die proses om'n groot dokument in'n groter aantal kleiner lêers te breek. Daar is verskeie redes om'n lêer te verdeel. Byvoorbeeld, jy benodig net'n paar bladsye van'n spesifieke dokument en nie die hele een nie. Of om privaatheidsredes wil u slegs sommige dele van'n dokument met ander deel. Met die verdeelfunksie kan u slegs die vereiste dele van die dokument kry en die nodige aksies daarmee doen, byvoorbeeld om op te merk, te stoor of te stuur.

Aspose.Words bied jou'n doeltreffende manier om een dokument in verskeie dokumente te verdeel deur opskrifte of afdelings. U kan ook'n dokument volgens bladsye of volgens bladsyreekse verdeel. Beide splitsingsopsies sal in hierdie artikel beskryf word.

Om'n dokument in kleiner lêers te verdeel met Aspose.Words, moet jy hierdie stappe volg:

1. Laai die dokument in enige ondersteun formaat.
1. Verdeel die dokument.
1. Stoor die uitvoerdokumente.

Nadat u'n dokument verdeel het, kan u al die uitvoerdokumente oopmaak wat begin met die vereiste bladsye, teks, ens.

{{% alert color="primary" %}}

**Probeer online**

Jy kan hierdie funksie probeer met ons [Gratis aanlyn dokument splitter](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Verdeel'n Dokument volgens verskillende Kriteria {#split-a-document-using-different-criteria}

Aspose.Words laat jou toe om EPUB of HTML dokumente in hoofstukke te verdeel volgens verskeie kriteria. In die proses word die styl en uitleg van die brondokument bewaar vir die uitsetdokumente.

Jy kan kriteria spesifiseer deur die [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) opsomming te gebruik. U kan dus'n dokument in hoofstukke verdeel deur een van die volgende kriteria te gebruik of meer as een kriteria saam te kombineer:

- opskrif paragraaf,
- afdeling breek,
- kolom breek,
- bladsy breek.

Wanneer die uitset na HTML gestoor word, stoor Aspose.Words elke individuele hoofstuk as'n aparte HTML lêer. As gevolg hiervan sal die dokument in verskeie HTML lêers verdeel word. Wanneer die uitset na EPUB gestoor word, stoor Aspose.Words die resultaat in'n enkele EPUB lêer ongeag die [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) waarde wat jy gebruik het. Dus, die gebruik van [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) vir EPUB dokumente beïnvloed slegs die voorkoms van hul inhoud in lesertoepassings: inhoud sal in hoofstukke verdeel word en die dokument sal nie meer deurlopend verskyn nie.

{{% alert color="primary" %}}

Jy kan nie'n dokument verdeel deur die [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) eienskap te gebruik wanneer jy na MHTML formaat stoor nie.

{{% /alert %}}

In hierdie afdeling oorweeg ons slegs sommige van die moontlike gesplete kriteria.

### Verdeel'n Dokument deur Opskrifte {#split-a-document-by-headings}

Om'n dokument in hoofstukke te verdeel volgens opskrifte, gebruik die [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) waarde van die [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) eienskap.

As jy'n dokument moet verdeel deur'n spesifieke vlak van opskrif paragrawe, soos opskrifte 1, 2, en 3, gebruik ook die [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) eienskap. Die uitset sal gedeel word deur paragrawe geformateer met die gespesifiseerde opskrif vlak.

Die volgende kode voorbeeld toon hoe om'n dokument te verdeel in kleiner dele deur opskrif:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Let asseblief daarop dat vir hierdie kriteria, Aspose.Words ondersteun slegs stoor na HTML formaat wanneer die verdeling.

Wanneer stoor na EPUB, is die dokument nie verdeel in verskeie lêers, en daar sal net een uitset lêer.

### Verdeel'n Dokument deur Afdelings {#split-a-document-by-sections}

Aspose.Words stel u ook in staat om afdelingsbreuke te gebruik om dokumente te verdeel en op HTML te stoor. Vir hierdie doel, gebruik [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) as die [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Daar is'n ander manier om die bron dokument te verdeel in verskeie uitset dokumente, en jy kan enige uitset formaat ondersteun deur Aspose.Words kies.

Die volgende kode voorbeeld toon hoe om'n dokument te verdeel in kleiner dele deur afdeling breek (sonder die gebruik van die [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) eiendom):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Verdeel Deur Bladsye {#splitting-by-pages}

U kan ook'n dokument bladsy vir bladsy, volgens bladsyreekse verdeel, of begin met die gespesifiseerde bladsynommers. In so'n geval kan die [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) metode die werk doen.

Hierdie afdeling beskryf verskeie gebruiksgevalle van die verdeling van dokumente deur bladsye met behulp van die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klas en die [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) metode.

{{% alert color="primary" %}}

Jy kan enige [uitvoer formaat ondersteun deur Aspose.Words](/words/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

As gevolg van die baie nuanses wat verskyn terwyl die aantal bladsye verminder word, is'n volledige ooreenstemming met die Microsoft Word - uitleg'n baie ingewikkelde taak. Afhangende van die kompleksiteit van die dokument, kan daar dus geringe verskille in die gevolglike dokumentopstelling van die oorspronklike dokument wees.

{{% /alert %}}

### Verdeel'n Dokument Bladsy vir Bladsy {#split-a-document-page-by-page}

Aspose.Words stel jou in staat om'n multi-bladsy dokument bladsy vir bladsy te verdeel.

Die volgende kode voorbeeld toon hoe om'n dokument te verdeel en stoor elke bladsy as'n aparte dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Verdeel'n Dokument volgens Bladsyreekse {#split-a-document-by-page-ranges}

Aspose.Words laat toe om'n dokument van meer bladsye te verdeel volgens bladsyreekse. U kan een lêer in verskeie lêers met verskillende bladsyreekse verdeel of net een reeks kies en slegs hierdie deel van die brondokument stoor. Let daarop dat u die bladsyreeks kan kies volgens die maksimum en minimum bladsynommer van'n dokument.

Die volgende kode voorbeeld toon hoe om'n dokument te verdeel in kleiner dele deur bladsy reeks met spesifieke begin en einde indekse:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Voeg Die Gesplete Dokument saam met'n Ander Lêer {#merge-the-split-document-with-another-file}

Aspose.Words stel u in staat om die uitvoerverdelingsdokument saam te voeg met'n ander dokument om'n nuwe dokument te vorm. Dit kan dokument samesmelting genoem word.

Die volgende kode voorbeeld toon hoe om'n gesplete dokument saam te smelt met'n ander dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
