---
title: Skakel'n Dokument om na PDF in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Skakel'n Dokument om na PDF
linktitle: Skakel'n Dokument om na PDF
description: "Skakel'n dokument om na PDF met Python. Verskeie invoer formate word ondersteun, insluitend Word, OpenOffice, Beeld en eBook formate."
type: docs
weight: 10
url: /af/python-net/convert-a-document-to-pdf/
---

Die vermoë om dokumente maklik en betroubaar van een formaat na'n ander te omskep, is'n belangrike kenmerk van Aspose.Words. Een van die gewildste formate vir omskakeling is PDF – 'n vaste uitlegformaat, wat die oorspronklike voorkoms van'n dokument behou tydens die weergawe daarvan op verskillende platforms. Die term" rendering " word in Aspose.Words gebruik om die proses van omskakeling van'n dokument in'n lêerformaat te beskryf wat gepagineer is of die konsep van bladsye het.

## Skakel'n Word-Dokument om na PDF {#convert-a-word-document-to-pdf}

Omskakeling van Woord na PDF is'n taamlik komplekse proses wat verskeie stadiums van berekening vereis. Aspose.Words uitleg enjin naboots die manier waarop die Microsoft Word se bladsy uitleg enjin werk, maak PDF uitset dokumente lyk so naby as moontlik aan wat jy kan sien in Microsoft Word.

Met Aspose.Words kan jy'n dokument programmaties omskakel Van Woordformate, soos DOC of DOCX, na PDF sonder om Microsoft Office te gebruik. Hierdie artikel verduidelik hoe om hierdie omskakeling uit te voer.

{{% alert color="primary" %}}

Let daarop dat die aantal bladsye in'n dokument die omskakelingstyd beïnvloed.

{{% /alert %}}

### Omskep DOC of DOCX na PDF {#convert-doc-or-docx-to-pdf}

Omskakeling van die DOC of DOCX dokument formaat in die PDF formaat in Aspose.Words is baie maklik en kan bereik word met net twee reëls van die kode wat:

1. Laai jou dokument in'n [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) voorwerp met behulp van een van sy konstruktors deur die spesifiseer van die dokument naam met sy formaat uitbreiding.
1. Roep een van die [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metodes op die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) voorwerp en spesifiseer die gewenste uitset formaat as PDF deur die invoer van'n lêernaam met die ".PDF" uitbreiding.

Die volgende kode voorbeeld toon hoe om'n dokument van DOCX te omskep in PDF met behulp van die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) metode:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Soms is dit nodig om addisionele opsies te spesifiseer, wat die resultaat van die stoor van'n dokument as'n PDF kan beïnvloed. Hierdie opsies kan gespesifiseer word deur die gebruik van die [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die PDF uitset vertoon sal word.

Let daarop dat met dieselfde tegniek, kan jy enige vloei-uitleg formaat dokument om te skakel na PDF formaat.

{{% /alert %}}

### Skakel Na Verskeie PDF Standaarde {#convert-to-various-pdf-standards}

Aspose.Words verskaf die [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) opsomming om die omskakeling van DOC of DOCX in verskillende PDF formaat standaarde (soos PDF 1.7, PDF 1.5, en so aan.).

Die volgende kode voorbeeld demonstreer hoe om'n dokument te omskep na PDF 1.7 met behulp van [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) met ooreenstemming met [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Skakel Beelde om na PDF

Omskakeling na PDF word nie beperk deur Microsoft Word dokumentformate nie. Enige formaat ondersteun deur Aspose.Words, insluitend programmaties geskep, kan ook omgeskakel word na PDF. Byvoorbeeld, kan ons enkele bladsy beelde, soos JPEG, PNG, BMP, EMF, of WMF, sowel as meerbladsy-beelde, soos TIFF en GIF, tot PDF.

Die volgende kode voorbeeld toon hoe om JPEG en TIFF beelde te omskep in PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Om hierdie kode te laat werk, moet jy verwysings na Aspose.Words en `aspose.pydrawing` by jou projek voeg.

## Verminder PDF Uitset Grootte

Wanneer jy stoor na PDF, kan jy spesifiseer of jy die uitset wil optimaliseer. Om dit te doen, moet jy die [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) vlag op waar stel, en dan sal oorbodige geneste doeke en leë doeke verwyder word, naburige glywe met dieselfde formatering sal gekonketen word.

{{% alert color="primary" %}}

Die gebruik van die **OptimizeOutput** eienskap kan die akkuraatheid van inhoud vertoon beïnvloed.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Verminder PDF Uitset Grootte

Wanneer jy stoor na PDF, kan jy spesifiseer of jy die uitset wil optimaliseer. Om dit te doen, moet jy die [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) vlag op waar stel, en dan sal oorbodige geneste doeke en leë doeke verwyder word, naburige glywe met dieselfde formatering sal gekonketen word.

{{% alert color="primary" %}}

Die gebruik van die **OptimizeOutput** eienskap kan die akkuraatheid van inhoud vertoon beïnvloed.

{{% /alert %}}

## Sien Ook

- Die artikel [Lewering](/words/python-net/rendering/) vir meer inligting oor die vaste bladsy en vloei-uitleg formate
- Die artikel [Omskakeling Na Vaste bladsy Formaat](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) vir meer inligting oor die bladsy uitleg
- Die artikel [Spesifiseer Vertoonopsies Wanneer U Na PDFOmskakel](/words/python-net/specify-rendering-options-when-converting-to-pdf/) vir meer inligting oor die gebruik van die [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) klas
