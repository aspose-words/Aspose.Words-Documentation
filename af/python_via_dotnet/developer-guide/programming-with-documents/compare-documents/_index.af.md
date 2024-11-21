---
title: Vergelyk Dokumente in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Vergelyk Dokumente
linktitle: Vergelyk Dokumente
description: "Vergelyk twee dokumente in enige ondersteun formate en toon inhoud veranderinge met behulp van Python. U kan gevorderde opsies toepas wanneer u vergelyk."
type: docs
weight: 60
url: /af/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Die vergelyking van dokumente is'n proses wat veranderinge tussen twee dokumente identifiseer en die veranderinge as hersienings bevat. Hierdie proses vergelyk enige twee dokumente, insluitend weergawes van een spesifieke dokument, dan sal die veranderinge tussen beide dokumente as hersienings in die eerste dokument vertoon word.

Die vergelykingsmetode word bereik deur woorde op karaktervlak of op woordvlak te vergelyk. As'n woord'n verandering van ten minste een karakter bevat, sal die verskil in die resultaat vertoon word as'n verandering van die hele woord, nie'n karakter nie. Hierdie vergelykingsproses is'n gewone taak in die regs-en finansiële bedrywe.

In plaas daarvan om handmatig na verskille tussen dokumente of tussen verskillende weergawes daarvan te soek, kan jy Aspose.Words gebruik om dokumente te vergelyk en inhoudveranderings in formatering, koptekst/voetskrif, tabelle en meer te kry.

Hierdie artikel verduidelik hoe om dokumente te vergelyk en hoe om die gevorderde vergelykende eienskappe te spesifiseer.

{{% alert color="primary" %}}

**Probeer online**

Jy kan twee dokumente aanlyn vergelyk deur die [Dokument vergelyking aanlyn](https://products.aspose.app/words/comparison) gereedskap.

Let daarop dat die vergelykingsmetode, wat hieronder beskryf word, in hierdie instrument gebruik word om te verseker dat gelyke resultate verkry word. U sal dus dieselfde resultate kry, selfs deur die aanlynvergelykingsinstrument te gebruik of deur die vergelykingsmetode in Aspose.Words te gebruik.

{{% /alert %}}

## Beperkings en Ondersteunde Lêerformate {#limitations-and-supported-file-formats}

Vergelyking van dokumente is'n baie komplekse kenmerk. Daar is verskillende dele van inhoudkombinasie wat ontleed moet word om alle verskille te herken. Die rede vir hierdie kompleksiteit is te wyte aan die feit dat Aspose.Words dieselfde vergelykingsresultate as die Microsoft Word vergelykingsalgoritme wil kry.

Die algemene beperking vir twee dokumente wat vergelyk word, is dat hulle nie hersienings mag hê voordat hulle die vergelykingsmetode noem nie, aangesien hierdie beperking in Microsoft Word bestaan.

{{% alert color="primary" %}}

Let daarop dat jy enige twee dokumente binne die [ondersteunde lêerformate](/words/python-net/supported-document-formats/). Basies kan jy dokumentvoorwerpe vergelyk en selfs jy kan daardie voorwerpe van nuuts af skep sonder om enige spesifieke formaat te hê.

{{% /alert %}}

## Vergelyk Twee Dokumente {#compare-two-documents}

Wanneer jy dokumente vergelyk, verskyn verskille van laasgenoemde dokument van eersgenoemde as hersienings van eersgenoemde. As u'n dokument verander, sal elke wysiging sy eie hersiening hê nadat u die vergelykingsmetode uitgevoer het.

Aspose.Words laat jou toe om dokumente verskille te identifiseer met behulp van die [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) metode – dit is soortgelyk aan die Microsoft Word dokument vergelyk funksie. Dit laat jou toe om dokumente of dokumentweergawes na te gaan om verskille en veranderinge te vind, insluitend formateringsaanpassings soos lettertipeveranderings, spasiëringsveranderinge, die byvoeging van woorde en paragrawe.

As gevolg van vergelyking kan dokumente as gelyk of nie gelyk bepaal word nie. Die term "gelyke" dokumente beteken dat die vergelykingsmetode nie veranderinge as hersienings kan voorstel nie. Dit beteken dat beide dokument teks en teks formatering is dieselfde. Maar daar kan ander verskille tussen dokumente wees. Byvoorbeeld, Microsoft Word ondersteun slegs formaat hersienings vir style, en jy kan nie styl invoeging/verwydering verteenwoordig. Dokumente kan dus'n ander stel style hê, en die [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) metode lewer steeds geen hersienings nie.

Die volgende kode voorbeeld toon hoe om te kyk of twee dokumente is gelyk of nie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Die volgende kode voorbeeld toon hoe om eenvoudig die `Compare` metode toe te pas op twee dokumente:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## Spesifiseer Gevorderde Vergelykende Eienskappe {#specify-advanced-comparing-properties}

Daar is baie verskillende eienskappe van die [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) klas wat jy kan aansoek doen wanneer jy wil dokumente te vergelyk.

Byvoorbeeld, Aspose.Words laat jou toe om veranderinge wat tydens'n vergelykingsbewerking vir sekere soorte voorwerpe in die oorspronklike dokument gemaak is, te ignoreer. Jy kan die toepaslike eienskap vir die voorwerp tipe kies, soos [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/), en ander deur hulle te stel om `True`.

Daarbenewens bied Aspose.Words die [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) eienskap waarmee u kan spesifiseer of u veranderinge volgens karakter of woord moet opspoor.

Nog'n gemeenskaplike eienskap is'n keuse in watter dokument om vergelyking veranderinge te wys. Byvoorbeeld, die" Vergelyk dokumente dialoog boks "in Microsoft Word het die opsie" Wys veranderinge in " – dit beïnvloed ook die vergelyking resultate. Aspose.Words verskaf die [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) eienskap wat hierdie doel dien.

Die volgende kode voorbeeld toon hoe om die gevorderde vergelyking eienskappe stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
