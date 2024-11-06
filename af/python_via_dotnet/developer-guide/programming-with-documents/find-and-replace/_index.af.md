---
title: Vind en Vervang in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Vind en Vervang
linktitle: Vind en Vervang
type: docs
description: "Soek'n string of gereelde uitdrukkingspatroon in u dokument en vervang dit met die teks wat u wil gebruik Python."
weight: 100
url: /af/python-net/find-and-replace/
---

Jy kan maklik binne jou dokument navigeer met'n sleutelbord en muis, maar as jy baie bladsye het om deur te blaai, sal dit nogal'n rukkie neem om spesifieke teks in'n lang dokument te vind. Dit sal meer tydrowend wees as u sekere karakters of woorde wat u in u dokument gebruik het, wil vervang. Die" Vind en vervang " funksie stel jou in staat om'n volgorde van karakters in'n dokument te vind en dit te vervang met'n ander volgorde van karakters.

Aspose.Words laat jou toe om'n spesifieke string of gereelde uitdrukkingspatroon in jou dokument te vind en dit te vervang met'n alternatief sonder om addisionele toepassings soos Microsoft Word te installeer en te gebruik. Dit sal baie tik-en formateringstake bespoedig, wat u moontlik ure se werk bespaar.

Hierdie artikel verduidelik hoe om string vervanging en gereelde uitdrukkings met die ondersteuning van meta karakters toe te pas.

## Maniere om {#ways-to-find-and-replace}Te Vind En Te Vervang

Aspose.Words bied twee maniere om die vind en vervang operasie toe te pas deur die volgende te gebruik:

1. *Simple string replacement* - om'n spesifieke string met'n ander te vind en te vervang, moet u'n soekstring (alfanumeriese karakters) spesifiseer wat volgens alle voorkoms met'n ander gespesifiseerde vervangingstring vervang gaan word. Beide snare mag nie simbole bevat nie. Neem in ag dat stringvergelyking hooflettergevoelig kan wees, of jy kan onseker wees oor spelling of verskeie soortgelyke spellings hê.
2. *Regular expressions* - om'n gereelde uitdrukking spesifiseer om die presiese string wedstryde te vind en vervang hulle volgens jou gereelde uitdrukking. Let daarop dat'n woord gedefinieer word as iets wat net uit alfanumeriese karakters bestaan. As vervanging uitgevoer word met slegs hele woorde wat ooreenstem en die invoer string gebeur simbole bevat, dan sal geen frases gevind word.

Daarbenewens kan jy spesiale meta karakters met eenvoudige string vervanging en gereelde uitdrukkings gebruik om breuke binne die vind en vervang operasie spesifiseer.

Aspose.Words bied die vind en vervang funksionaliteit met die [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) module. Jy kan werk met baie opsies tydens die vind en vervang proses met behulp van [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) klas.

### Soek En Vervang Teks Met Eenvoudige Stringvervanging {#find-and-replace-text-using-simple-string-replacement}

U kan een van die [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) en [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) metodes gebruik om'n spesifieke string te vind of te vervang en die aantal vervangings wat gemaak is, terug te gee. In hierdie geval kan jy'n string spesifiseer wat vervang moet word, 'n string wat al sy voorkoms sal vervang, of die vervanging hooflettergevoelig is, en of slegs selfstandige woorde geraak sal word.

Die volgende kode voorbeeld toon hoe om die string "_CustomerName_ " te vind en vervang dit met die string *"James Bond"*:

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

U kan die verskil tussen die dokument sien voordat u eenvoudige stringvervanging toepas:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

En na die toepassing van eenvoudige string vervanging:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Soek En Vervang Teks met Gereelde Uitdrukkings {#find-and-replace-text-using-regular-expressions}

'n gereelde uitdrukking is'n patroon wat'n sekere volgorde van teks beskryf. Veronderstel jy wil al die dubbele voorkoms van'n woord vervang met'n enkele woord voorkoms. Dan kan jy die volgende reëlmatige uitdrukking toepas om die dubbele woordpatroon te spesifiseer: `([a-zA-Z]+) \1`.

Gebruik die [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) metode om spesifieke karakterkombinasies te soek en te vervang deur die reëlmatige uitdrukkingsparameter as die patroon te stel om ooreenkomste te vind.

Die volgende kode voorbeeld toon hoe om strings wat ooreenstem met'n gereelde uitdrukking patroon te vervang met'n gespesifiseerde vervanging string:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

U kan die verskil tussen die dokument sien voordat u stringvervanging met gereelde uitdrukkings toepas:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

En na die toepassing van string vervanging met gereelde uitdrukkings:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Soek En Vervang String met Behulp Van Meta Karakters {#find-and-replace-text-using-metacharacters}

U kan meta karakters in die soekstring of die vervangingstring gebruik as'n spesifieke teks of frase uit verskeie paragrawe, afdelings of bladsye bestaan. Sommige van die meta karakters sluit in **&p** vir'n paragraaf breek, **&b** vir'n afdeling breek, **&m** vir'n bladsy breek, en **&l** vir'n lyn breek.

{{% alert color="primary" %}}

Let daarop dat die meta karakter **&&** gelyk is aan **&**. Byvoorbeeld, as jy teks vir **&p** moet vind wat nie'n paragraafonderbreking is nie, dan kan jy **&&p** gebruik.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om teks te vervang met paragraaf en bladsy breek:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Soek En Vervang String in Kop/Voetskrif van'n Dokument {#find-and-replace-string-in-header-or-footer-of-a-document}

U kan teks in die kop - /voetskrifgedeelte van'n Word-dokument vind en vervang deur die [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) - klas te gebruik.

Die volgende kode voorbeeld toon hoe om die teks van die kop afdeling in jou dokument te vervang:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Jy kan die verskil tussen die dokument sien voordat jy kopstringvervanging toepas:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

En na die toepassing van kopstringvervanging:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Die kode voorbeeld om die teks van die voetskrif afdeling in jou dokument te vervang is baie soortgelyk aan die vorige kop kode voorbeeld. Al wat jy hoef te doen is om die volgende twee reëls te vervang:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Met die volgende:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Jy kan die verskil tussen die dokument sien voordat jy voetskrifstringvervanging toepas:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

En na die toepassing van voetskrif string vervanging:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Ignoreer Teks Tydens Soek en Vervang {#ignore-text-during-find-and-replace}

Terwyl die toepassing van die vind en vervang operasie, kan jy sekere segmente van die teks ignoreer. Dus, sekere dele van die teks kan van die soektog uitgesluit word, en die vind en vervang kan slegs op die oorblywende dele toegepas word.

Aspose.Words bied baie vind en vervang eienskappe vir die ignoreer van teks soos [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/), en [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

Die volgende kode voorbeeld toon hoe om teks te ignoreer binne verwyder hersienings:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Pasmaak Soek En Vervang Operasie {#customize-find-and-replace-operation}

Aspose.Words bied baie verskillende eienskappe om teks te vind en te vervang, soos die toepassing van spesifieke formaat met [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) en [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) eienskappe, die gebruik van vervangingspatrone in vervangingspatrone met [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) eienskap, en ander.

Die volgende kode voorbeeld wys hoe om'n spesifieke woord in jou dokument uit te lig:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
