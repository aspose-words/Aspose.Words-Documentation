---
title: Zoeken en vervangen in C++
second_title: Aspose.Words voor C++
articleTitle: Zoeken en vervangen
linktitle: Zoeken en vervangen
type: docs
description: "Zoek een tekenreeks of reguliere expressiepatroon in uw document en vervang het door de tekst die u wilt gebruiken met C++."
weight: 100
url: /nl/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

U kunt gemakkelijk navigeren binnen uw document met behulp van een toetsenbord en muis, maar als u veel pagina ' s hebt om door te scrollen, zal het een tijdje duren om specifieke tekst in een lang document te vinden. Het kost meer tijd wanneer u bepaalde tekens of woorden die u in uw document hebt gebruikt, wilt vervangen. Met de functie "Zoeken en vervangen" kunt u een reeks tekens in een document vinden en deze vervangen door een andere reeks tekens.

Met Aspose.Words kunt u een specifieke tekenreeks of reguliere expressiepatroon in uw document vinden en vervangen door een alternatief zonder extra toepassingen zoals Microsoft Word te installeren en te gebruiken. Dit zal veel typen en formatteren taken versnellen, waardoor u mogelijk uren werk bespaart.

In dit artikel wordt uitgelegd hoe u string replacement en reguliere expressies kunt toepassen met de ondersteuning van metacharacters.

## Manieren om {#ways-to-find-and-replace}te vinden en te vervangen

Aspose.Words biedt twee manieren om de bewerking zoeken en vervangen toe te passen met behulp van de volgende:

1. *Simple string replacement* – om een specifieke tekenreeks te vinden en te vervangen door een andere, moet u een zoekreeks (alfanumerieke tekens) opgeven die volgens alle voorvallen zal worden vervangen door een andere opgegeven vervangende tekenreeks. Beide strings mogen geen symbolen bevatten. Houd er rekening mee dat stringvergelijking hoofdlettergevoelig kan zijn, of dat u misschien niet zeker bent van de spelling of verschillende vergelijkbare spellingen hebt.
2. *Regular expressions* – om een reguliere expressie op te geven om de exacte overeenkomende tekenreeks te vinden en deze te vervangen volgens uw reguliere expressie. Merk op dat een woord wordt gedefinieerd als een woord dat alleen uit alfanumerieke tekens bestaat. Als een vervanging wordt uitgevoerd met alleen hele woorden die overeenkomen en de invoerreeks toevallig symbolen bevat, worden er geen zinnen gevonden.

Daarnaast kunt u speciale metacharacters met eenvoudige string vervanging en reguliere expressies gebruiken om pauzes binnen de Zoeken en vervangen bewerking op te geven.

Aspose.Words geeft de functie Zoeken en vervangen weer met de [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing) naamruimte. U kunt met veel opties werken tijdens het proces zoeken en vervangen met behulp van [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/) Klasse.

### Tekst zoeken en vervangen met eenvoudige Tekenreeksvervanging {#find-and-replace-text-using-simple-string-replacement}

U kunt een van de methoden [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) gebruiken om een bepaalde tekenreeks te zoeken of te vervangen en het aantal vervangingen terug te geven dat is gemaakt. In dit geval kunt u een tekenreeks opgeven die moet worden vervangen, een tekenreeks die alle voorvallen vervangt, of de vervanging hoofdlettergevoelig is en of alleen zelfstandige woorden worden beïnvloed.

Het volgende codevoorbeeld laat zien hoe u de tekenreeks "_CustomerName_" kunt vinden en deze kunt vervangen door de tekenreeks *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

U kunt het verschil tussen het document opmerken voordat u eenvoudige tekenreeksvervanging toepast:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

En na het toepassen van eenvoudige string vervanging:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Tekst zoeken en vervangen met reguliere expressies {#find-and-replace-text-using-regular-expressions}

Een reguliere expressie (regex) is een patroon dat een bepaalde volgorde van tekst beschrijft. Stel dat u alle dubbele voorkomen van een woord wilt vervangen door een enkel woord voorkomen. Vervolgens kunt u de volgende reguliere expressie toepassen om het dubbele woordpatroon op te geven: `([a-zA-Z]+) \1`.

Gebruik de andere [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) methode om bepaalde tekencombinaties te zoeken en te vervangen door de `Regex` parameter in te stellen als het reguliere expressiepatroon om overeenkomsten te vinden.

Het volgende codevoorbeeld laat zien hoe tekenreeksen die overeenkomen met een reguliere expressiepatroon kunnen worden vervangen door een opgegeven vervangende tekenreeks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

U kunt het verschil tussen het document opmerken voordat u tekenreeksvervanging toepast met reguliere expressies:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

En na het toepassen van string vervanging met reguliere expressies:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Tekenreeks zoeken en vervangen met Metacharacters {#find-and-replace-text-using-metacharacters}

U kunt metacharacters in de zoekreeks of de vervangende tekenreeks gebruiken als een bepaalde tekst of zin uit meerdere alinea 's, secties of pagina' s bestaat. Enkele van de metacharacters zijn **&p** voor een alinea-einde, **&b** voor een sectie-einde, **&m** voor een pagina-einde en **&l** voor een regeleinde.

{{% alert color="primary" %}}

Merk op dat de metacharacter **&&** gelijk is aan **&**. Als u bijvoorbeeld tekst voor **&p** wilt vinden die geen alinea-einde is, kunt u **&&p** gebruiken.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u tekst kunt vervangen door alinea-en pagina-einde:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Tekenreeks zoeken en vervangen in kop - / voettekst van een Document {#find-and-replace-string-in-header-or-footer-of-a-document}

U kunt tekst zoeken en vervangen in de kop - /voettekstsectie van een Word - document met behulp van de [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) - Klasse.

Het volgende codevoorbeeld laat zien hoe u de tekst van de koptekst in uw document kunt vervangen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

U kunt het verschil tussen het document opmerken voordat u header string replacement toepast:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

En na het toepassen van header string vervanging:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Het codevoorbeeld om de tekst van de voettekstsectie in uw document te vervangen, lijkt erg op het vorige voorbeeld van de koptekst. Het enige wat u hoeft te doen is de volgende twee regels vervangen:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Met de volgende:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

U kunt het verschil tussen het document opmerken voordat u voettekstvervanging toepast:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

En na het toepassen van voettekst vervanging:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Tekst negeren tijdens zoeken en vervangen van {#ignore-text-during-find-and-replace}

Wanneer u de bewerking zoeken en vervangen toepast, kunt u bepaalde segmenten van de tekst negeren. Bepaalde delen van de tekst kunnen dus worden uitgesloten van het zoeken en het zoeken en vervangen kan alleen worden toegepast op de resterende delen.

Aspose.Words biedt veel Zoek en vervang eigenschappen voor het negeren van tekst zoals [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), en [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Het volgende codevoorbeeld laat zien hoe u tekst in revisies kunt negeren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Bewerking {#customize-find-and-replace-operation}zoeken en vervangen aanpassen

Aspose.Words biedt veel verschillende [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) om tekst te vinden en te vervangen, zoals het toepassen van specifieke opmaak met [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) en [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) eigenschappen, het gebruik van substituties in Vervangende patronen met [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) eigenschap, en anderen.

Het volgende codevoorbeeld laat zien hoe u een specifiek woord in uw document kunt markeren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Met Aspose.Words kunt u de [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) - interface gebruiken om een aangepaste methode te maken en aan te roepen tijdens een vervangbewerking. Er kunnen enkele use cases zijn waarin u de Zoek-en vervang-bewerking moet aanpassen, zoals het vervangen van tekst die is opgegeven door een reguliere expressie met HTML - tags, dus in principe zult u vervangen toepassen door HTML in te voegen.

Als u een tekenreeks moet vervangen door een HTML - tag, past u de **IReplacingCallback** - interface toe om de bewerking zoeken en vervangen aan te passen, zodat de overeenkomst begint aan het begin van een run met het overeenkomstknooppunt van uw document. Laten we enkele voorbeelden geven van het gebruik van **IReplacingCallback**.

Het volgende codevoorbeeld laat zien hoe u de opgegeven tekst kunt vervangen door HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

Het volgende codevoorbeeld laat zien hoe u positieve getallen met groene kleur en negatieve getallen met rode kleur kunt markeren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Het volgende codevoorbeeld laat zien hoe een regelnummer aan elke regel kan worden toegevoegd:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
