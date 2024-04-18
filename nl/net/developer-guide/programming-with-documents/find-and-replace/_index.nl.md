---
title: Zoeken en vervangen in C#
second_title: Aspose.Words voor .NET
articleTitle: Zoeken en vervangen
linktitle: Zoeken en vervangen
type: docs
description: "Zoek een tekenreeks of reguliere expressiepatroon in uw document en vervang het door de tekst die u wilt gebruiken C#."
weight: 100
url: /nl/net/find-and-replace/
---

U kunt gemakkelijk in uw document navigeren met behulp van een toetsenbord en muis, maar als u veel pagina's om door te scrollen, zal het een tijdje duren om specifieke tekst te vinden in een lang document. Het zal tijdrovender zijn wanneer u bepaalde tekens of woorden wilt vervangen die u in uw document hebt gebruikt. Met de functionaliteit van de zoek- en vervangfunctie kunt u een reeks tekens in een document vinden en vervangen door een andere reeks tekens.

Aspose.Words kunt u een specifieke string of reguliere expressie patroon te vinden in uw document en te vervangen door een alternatief zonder het installeren en het gebruik van extra toepassingen zoals Microsoft Word. Dit zal veel typen en formatteren taken versnellen, mogelijk bespaart u uren werk.

Dit artikel legt uit hoe tekenreeksvervanging en reguliere expressies toe te passen met behulp van metakarakters.

## Manieren om te vinden en te vervangen {#ways-to-find-and-replace}

Aspose.Words biedt twee manieren om de vondst toe te passen en te vervangen door gebruik te maken van het volgende:

1. *Simple string replacement* Beide tekenreeksen mogen geen symbolen bevatten. Houd er rekening mee dat stringvergelijking hoofdlettergevoelig kan zijn, of dat je niet zeker bent van spelling of meerdere soortgelijke spellingen hebt.
2. *Regular expressions* Merk op dat een woord wordt gedefinieerd als bestaande uit alleen alfanumerieke tekens. Als vervanging wordt uitgevoerd met alleen hele woorden worden aangepast en de invoer string toevallig symbolen bevatten, dan zullen geen zinnen worden gevonden.

Daarnaast kunt u speciale metakarakters gebruiken met eenvoudige tekenreeksvervanging en reguliere expressies om breuken binnen de zoek- en vervangoperatie te specificeren.

Aspose.Words presenteert de zoek en vervangen functionaliteit door de [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/) naamruimte. U kunt werken met vele opties tijdens het vinden en vervangen proces met behulp van [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) Klasse.

### Tekst zoeken en vervangen met behulp van eenvoudige tekenreeksvervanging {#find-and-replace-text-using-simple-string-replacement}

U kunt een van de [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) methoden om een bepaalde string te vinden of te vervangen en het aantal vervangingen terug te geven die werden gemaakt. In dit geval kunt u een tekenreeks opgeven die vervangen moet worden, een tekenreeks die alle gebeurtenissen vervangt, of de vervanging hoofdlettergevoelig is, en of alleen stand-alone woorden beïnvloed worden.

Het volgende voorbeeld van de code laat zien hoe je de string kunt vinden en vervangen door de string *

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

U kunt het verschil tussen het document opmerken voordat u eenvoudige tekenreeksvervanging toepast:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

En na het toepassen van eenvoudige string vervanger:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Tekst zoeken en vervangen met reguliere expressies {#find-and-replace-text-using-regular-expressions}

Een reguliere expressie (regex) is een patroon dat een bepaalde volgorde van tekst beschrijft. Stel dat je alle dubbele gebeurtenissen van een woord wilt vervangen door één woord. Dan kunt u de volgende reguliere expressie toepassen om het dubbele-woord patroon op te geven: `([a-zA-Z]+) \1`.

Gebruik de andere [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) methode om specifieke tekenscombinaties te zoeken en te vervangen door de `Regex` parameter als het reguliere expressiepatroon om overeenkomsten te vinden.

Het volgende voorbeeld van code laat zien hoe tekenreeksen die overeenkomen met een reguliere expressiepatroon te vervangen door een gespecificeerde vervangende tekenreeks:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

U kunt het verschil tussen het document opmerken voordat u tekenreeksvervanging toepast met reguliere expressies:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

En na het toepassen van string vervanger met reguliere expressies:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### String zoeken en vervangen met metakarakters {#find-and-replace-text-using-metacharacters}

U kunt metakarakters gebruiken in de zoektekst of de vervangende tekenreeks als een bepaalde tekst of zin bestaat uit meerdere paragrafen, secties of pagina's. Enkele van de metakenmerken zijn **&p** voor een alineapauze, **&b** voor een sectiebreuk, **&m** voor een paginapauze, en **&l** voor een lijnbreuk.

{{% alert color="primary" %}}

Merk op dat het metakarakter **&&** gelijk aan **&**. Bijvoorbeeld, als je tekst moet vinden voor **&p** dat is geen paragraaf pauze, dan kunt u gebruiken **&&p**.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe tekst te vervangen door paragraaf en pagina-uitbraak:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Tekst zoeken en vervangen in kop/voet van een document {#find-and-replace-string-in-header-or-footer-of-a-document}

U kunt tekst vinden en vervangen in de header/voeter sectie van een Word-document met behulp van de [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) Klasse.

Het volgende voorbeeld van code laat zien hoe u de tekst van de koptekst in uw document kunt vervangen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

U kunt het verschil zien tussen het document voordat u header string vervanger:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

En na het aanbrengen van header string vervanger:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Het codevoorbeeld om de tekst van de footer sectie in uw document te vervangen is zeer vergelijkbaar met het vorige header code voorbeeld. Je hoeft alleen de volgende twee regels te vervangen:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Met de volgende kenmerken:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

U kunt het verschil tussen het document merken voordat u de tekst van de voettekst vervangt:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

En na het toepassen van footer string vervanging:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Tekst negeren tijdens zoeken en vervangen {#ignore-text-during-find-and-replace}

Tijdens het toepassen van de zoek- en vervangoperatie, kunt u bepaalde segmenten van de tekst negeren. Dus, bepaalde delen van de tekst kunnen worden uitgesloten van de zoekopdracht, en de vondst en vervanging kan alleen worden toegepast op de resterende delen.

Aspose.Words biedt veel zoek-en vervangen eigenschappen voor het negeren van tekst zoals [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/), en [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

Het volgende voorbeeld van code laat zien hoe je tekst in de delete revisies moet negeren:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Operatie zoeken en vervangen aanpassen {#customize-find-and-replace-operation}

Aspose.Words biedt veel verschillende [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) tekst te vinden en te vervangen, zoals het toepassen van een specifiek formaat door [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) en [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) eigenschappen, gebruik van substituties in vervangende patronen met [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) eigendom, en anderen.

Het volgende voorbeeld van code laat zien hoe u een specifiek woord in uw document kunt markeren:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words kunt u gebruiken [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) interface om een aangepaste methode te maken en aan te roepen tijdens een vervangende bewerking. U kunt enkele use cases hebben waar u de zoekopdracht moet aanpassen en de bewerking moet vervangen, zoals het vervangen van tekst door een reguliere expressie door HTML-tags, dus in principe zult u vervangen door het invoegen van HTML.

Als je een tekenreeks moet vervangen door een HTML-tag, moet je de **IReplacingCallback** interface om de zoek- en vervangoperatie aan te passen zodat de wedstrijd begint aan het begin van een run met de matchknop van uw document. Laten we verschillende voorbeelden geven van het gebruik **IReplacingCallback**.

Het volgende voorbeeld van code laat zien hoe u de tekst die is opgegeven met HTML kunt vervangen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Het volgende voorbeeld van code laat zien hoe positieve getallen met groene kleur en negatieve getallen met rode kleur te markeren:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

Het volgende voorbeeld van code laat zien hoe je een regelnummer aan elke regel voorschrijft:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
