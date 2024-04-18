---
title: Documenten vergelijken in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Documenten vergelijken
linktitle: Documenten vergelijken
description: "Vergelijk twee documenten in ondersteunde formaten en toont wijzigingen in de inhoud met behulp van Python. U kunt geavanceerde opties toepassen bij het vergelijken."
type: docs
weight: 60
url: /nl/python-net/compare-documents/
---

Het vergelijken van documenten is een proces dat veranderingen tussen twee documenten identificeert en de wijzigingen als herzieningen bevat. Dit proces vergelijkt twee documenten, inclusief versies van één specifiek document, dan worden de wijzigingen tussen beide documenten getoond als herzieningen in het eerste document.

De vergelijkingsmethode wordt bereikt door woorden op tekenniveau of op woordniveau te vergelijken. Als een woord een verandering van ten minste één teken bevat, wordt in het resultaat het verschil weergegeven als een verandering van het hele woord, geen teken. Dit vergelijkingsproces is een gebruikelijke taak in de juridische en financiële sector.

In plaats van handmatig te zoeken naar verschillen tussen documenten of tussen verschillende versies ervan, kunt u Aspose.Words voor het vergelijken van documenten en het krijgen van wijzigingen in inhoud in formatteren, header/voeter, tabellen, en meer.

Dit artikel legt uit hoe documenten te vergelijken en hoe de geavanceerde vergelijkingseigenschappen te specificeren.

{{% alert color="primary" %}}

**Probeer online**

U kunt twee documenten online vergelijken met behulp van de [Documentvergelijking online](https://products.aspose.app/words/comparison) gereedschap.

Merk op dat de vergelijkingsmethode, hieronder beschreven, wordt gebruikt in deze tool om het verkrijgen van gelijke resultaten. Zo krijgt u dezelfde resultaten, zelfs met behulp van de online vergelijking tool of met behulp van de vergelijking methode in Aspose.Words.

{{% /alert %}}

## Beperkingen en ondersteunde bestandsformaten {#limitations-and-supported-file-formats}

Het vergelijken van documenten is een zeer complex kenmerk. Er zijn verschillende delen van de inhoud combinatie die moeten worden geanalyseerd om alle verschillen te herkennen. De reden voor deze complexiteit is het feit dat Aspose.Words is gericht op dezelfde vergelijkingsresultaten als de Microsoft Word vergelijkingsalgoritme.

De algemene beperking voor twee documenten die worden vergeleken, is dat zij geen herzieningen mogen hebben alvorens de vergelijkingsmethode aan te roepen omdat deze beperking bestaat in Microsoft Word.

{{% alert color="primary" %}}

Merk op dat u kunt vergelijken twee documenten binnen de [Ondersteunde documentformaten](/words/nl/python-net/supported-document-formats/). In principe kunt u documentobjecten vergelijken en zelfs u kunt deze objecten vanaf nul maken zonder een specifiek formaat te hebben.

{{% /alert %}}

## Twee documenten vergelijken {#compare-two-documents}

Wanneer u documenten vergelijkt, verschillen van het laatste document ten opzichte van het vorige verschijnen als herzieningen van het eerste document. Wanneer u een document wijzigt, zal elke bewerking een eigen revisie hebben na het uitvoeren van de vergelijkingsmethode.

Aspose.Words kunt u documenten verschillen met behulp van de [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) methode is dit vergelijkbaar met de Microsoft Word documentvergelijkingsfunctie. Hiermee kunt u documenten of documentversies controleren om verschillen en wijzigingen te vinden, waaronder opmaakwijzigingen zoals lettertypewijzigingen, spatiëringswijzigingen, toevoeging van woorden en alinea's.

Als gevolg van vergelijking kunnen documenten als gelijk of niet gelijk worden vastgesteld. De term "gelijke" documenten betekent dat de vergelijkingsmethode geen wijzigingen als herzieningen kan voorstellen. Dit betekent dat zowel documenttekst als tekstopmaak hetzelfde zijn. Maar er kunnen andere verschillen zijn tussen documenten. Bijvoorbeeld, Microsoft Word ondersteunt alleen format revisies voor stijlen, en u kunt niet vertegenwoordigen stijl invoegen / verwijderen. Dus documenten kunnen een andere set van stijlen, en de [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) De methode levert nog steeds geen herzieningen op.

Het volgende voorbeeld van code laat zien hoe te controleren of twee documenten gelijk zijn of niet:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Het volgende voorbeeld van de code laat zien hoe u de `Compare` methode voor twee documenten:

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

## Geavanceerde vergelijkingseigenschappen opgeven {#specify-advanced-comparing-properties}

Er zijn veel verschillende eigenschappen van de [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) klasse die u kunt toepassen wanneer u documenten wilt vergelijken.

Bijvoorbeeld, Aspose.Words Hiermee kunt u wijzigingen negeren die tijdens een vergelijking zijn gemaakt voor bepaalde soorten objecten in het oorspronkelijke document. U kunt de juiste eigenschap voor het objecttype selecteren, zoals [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/), en anderen door ze op `True`.

Bovendien, Aspose.Words levert de [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) eigenschap waarmee u kunt specificeren of wijzigingen per teken of per woord moeten worden gevolgd.

Een andere gemeenschappelijke eigenschap is een keuze in welk document om vergelijkingsveranderingen te tonen. Bijvoorbeeld het dialoogvenster documenten vergelijken Microsoft Word heeft de optie Aspose.Words levert de [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) eigendom die dit doel dient.

Het volgende code voorbeeld laat zien hoe u de geavanceerde vergelijken eigenschappen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
