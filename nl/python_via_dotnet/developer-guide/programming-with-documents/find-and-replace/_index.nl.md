---
title: Zoeken en vervangen in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Zoeken en vervangen
linktitle: Zoeken en vervangen
type: docs
description: "Zoek een tekenreeks of reguliere expressiepatroon in uw document en vervang het door de tekst die u wilt gebruiken Python."
weight: 100
url: /nl/python-net/find-and-replace/
---

U kunt gemakkelijk in uw document navigeren met behulp van een toetsenbord en muis, maar als u veel pagina's om door te scrollen, zal het een tijdje duren om specifieke tekst te vinden in een lang document. Het zal tijdrovender zijn wanneer u bepaalde tekens of woorden wilt vervangen die u in uw document hebt gebruikt. Met de functionaliteit van de zoek- en vervangfunctie kunt u een reeks tekens in een document vinden en vervangen door een andere reeks tekens.

Aspose.Words kunt u een specifieke string of reguliere expressie patroon te vinden in uw document en te vervangen door een alternatief zonder het installeren en het gebruik van extra toepassingen zoals Microsoft Word. Dit zal veel typen en formatteren taken versnellen, mogelijk bespaart u uren werk.

Dit artikel legt uit hoe tekenreeksvervanging en reguliere expressies toe te passen met behulp van metakarakters.

## Manieren om te vinden en te vervangen {#ways-to-find-and-replace}

Aspose.Words biedt twee manieren om de vondst toe te passen en te vervangen door gebruik te maken van het volgende:

1. *Simple string replacement* Beide tekenreeksen mogen geen symbolen bevatten. Houd er rekening mee dat stringvergelijking hoofdlettergevoelig kan zijn, of dat je niet zeker bent van spelling of meerdere soortgelijke spellingen hebt.
2. *Regular expressions* Merk op dat een woord wordt gedefinieerd als bestaande uit alleen alfanumerieke tekens. Als vervanging wordt uitgevoerd met alleen hele woorden worden aangepast en de invoer string toevallig symbolen bevatten, dan zullen geen zinnen worden gevonden.

Daarnaast kunt u speciale metakarakters gebruiken met eenvoudige tekenreeksvervanging en reguliere expressies om breuken binnen de zoek- en vervangoperatie te specificeren.

Aspose.Words presenteert de zoek en vervangen functionaliteit door de [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) module. U kunt werken met vele opties tijdens het vinden en vervangen proces met behulp van [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) Klasse.

### Tekst zoeken en vervangen met behulp van eenvoudige tekenreeksvervanging {#find-and-replace-text-using-simple-string-replacement}

U kunt een van de [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) en [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) methoden om een bepaalde string te vinden of te vervangen en het aantal vervangingen terug te geven die werden gemaakt. In dit geval kunt u een tekenreeks opgeven die vervangen moet worden, een tekenreeks die alle gebeurtenissen vervangt, of de vervanging hoofdlettergevoelig is, en of alleen stand-alone woorden beïnvloed worden.

Het volgende voorbeeld van de code laat zien hoe je de string kunt vinden en vervangen door de string *

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

U kunt het verschil tussen het document opmerken voordat u eenvoudige tekenreeksvervanging toepast:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

En na het toepassen van eenvoudige string vervanger:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Tekst zoeken en vervangen met reguliere expressies {#find-and-replace-text-using-regular-expressions}

Een reguliere expressie is een patroon dat een bepaalde volgorde van tekst beschrijft. Stel dat je alle dubbele gebeurtenissen van een woord wilt vervangen door één woord. Dan kunt u de volgende reguliere expressie toepassen om het dubbele-woord patroon op te geven: `([a-zA-Z]+) \1`.

Gebruik de [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) methode om specifieke tekenscombinaties te zoeken en te vervangen door de reguliere expressie parameter in te stellen als het patroon om overeenkomsten te vinden.

Het volgende voorbeeld van code laat zien hoe tekenreeksen die overeenkomen met een reguliere expressiepatroon te vervangen door een gespecificeerde vervangende tekenreeks:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

U kunt het verschil tussen het document opmerken voordat u tekenreeksvervanging toepast met reguliere expressies:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

En na het toepassen van string vervanger met reguliere expressies:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### String zoeken en vervangen met metakarakters {#find-and-replace-text-using-metacharacters}

U kunt metakarakters gebruiken in de zoektekst of de vervangende tekenreeks als een bepaalde tekst of zin bestaat uit meerdere paragrafen, secties of pagina's. Enkele van de metakenmerken zijn **&p** voor een alineapauze, **&b** voor een sectiebreuk, **&m** voor een paginapauze, en **&l** voor een lijnbreuk.

{{% alert color="primary" %}}

Merk op dat het metakarakter **&&** gelijk aan **&**. Bijvoorbeeld, als je tekst moet vinden voor **&p** dat is geen paragraaf pauze, dan kunt u gebruiken **&&p**.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe tekst te vervangen door paragraaf en pagina-uitbraak:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Tekst zoeken en vervangen in kop/voet van een document {#find-and-replace-string-in-header-or-footer-of-a-document}

U kunt tekst vinden en vervangen in de header/voeter sectie van een Word-document met behulp van de [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) Klasse.

Het volgende voorbeeld van code laat zien hoe u de tekst van de koptekst in uw document kunt vervangen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

U kunt het verschil zien tussen het document voordat u header string vervanger:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

En na het aanbrengen van header string vervanger:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Het codevoorbeeld om de tekst van de footer sectie in uw document te vervangen is zeer vergelijkbaar met het vorige header code voorbeeld. Je hoeft alleen de volgende twee regels te vervangen:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Met de volgende kenmerken:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

U kunt het verschil tussen het document merken voordat u de tekst van de voettekst vervangt:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

En na het toepassen van footer string vervanging:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Tekst negeren tijdens zoeken en vervangen {#ignore-text-during-find-and-replace}

Tijdens het toepassen van de zoek- en vervangoperatie, kunt u bepaalde segmenten van de tekst negeren. Dus, bepaalde delen van de tekst kunnen worden uitgesloten van de zoekopdracht, en de vondst en vervanging kan alleen worden toegepast op de resterende delen.

Aspose.Words biedt veel zoek-en vervangen eigenschappen voor het negeren van tekst zoals [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), en [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

Het volgende voorbeeld van code laat zien hoe je tekst in de delete revisies moet negeren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Operatie zoeken en vervangen aanpassen {#customize-find-and-replace-operation}

Aspose.Words biedt veel verschillende eigenschappen om tekst te vinden en te vervangen, zoals het toepassen van specifiek formaat met [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) en [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) eigenschappen, gebruik van substituties in vervangende patronen met [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) eigendom, en anderen.

Het volgende voorbeeld van code laat zien hoe u een specifiek woord in uw document kunt markeren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
