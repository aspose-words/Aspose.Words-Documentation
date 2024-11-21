---
title: Zoeken en vervangen in Java
second_title: Aspose.Words voor Java
articleTitle: Zoeken en vervangen
linktitle: Zoeken en vervangen
type: docs
description: "Zoek een tekenreeks of reguliere expressiepatroon in uw document en vervang het door de tekst die u wilt gebruiken Java."
weight: 100
url: /nl/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

U kunt gemakkelijk navigeren in uw document met behulp van een toetsenbord en muis, maar als u veel pagina's om door te schuiven, zal het vrij lang duren om specifieke tekst te vinden in een lang document. Het zal tijdrovender zijn wanneer u bepaalde tekens of woorden wilt vervangen die u in uw document hebt gebruikt. Met de functionaliteit van de zoek- en vervangfunctie kunt u een reeks tekens in een document vinden en vervangen door een andere reeks tekens.

Aspose.Words kunt u een specifieke string of reguliere expressie patroon in uw document te vinden en te vervangen door een alternatief zonder het installeren en het gebruik van extra toepassingen zoals Microsoft Word. Dit zal veel typen en formatteren taken versnellen, mogelijk bespaart u uren werk.

Dit artikel legt uit hoe tekenreeksvervanging en reguliere expressies toe te passen met behulp van metakarakters.

## Manieren om te vinden en te vervangen {#ways-to-find-and-replace}

Aspose.Words biedt twee manieren om de vondst toe te passen en te vervangen door gebruik te maken van:

1. *Eenvoudige tekenreeksvervanging* Beide snaren mogen geen symbolen bevatten. Houd er rekening mee dat snaarvergelijking hoofdlettergevoelig kan zijn, of dat je niet zeker bent van spelling of meerdere soortgelijke spellingen hebt.
2. *Regular expressions* Merk op dat een woord wordt gedefinieerd als bestaande uit alleen alfanumerieke tekens. Als een vervanging wordt uitgevoerd met alleen hele woorden die worden aangepast en de invoer string toevallig symbolen bevatten, dan zullen geen zinnen worden gevonden.

Ook kunt u speciale metakarakters gebruiken met eenvoudige tekenreeksvervanging en reguliere expressies om breuken binnen de zoek- en vervangoperatie te specificeren.

Aspose.Words presenteert de zoek en vervangen functionaliteit door de [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). U kunt werken met vele opties tijdens het vinden en vervangen proces met behulp van [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Klasse.

### Tekst zoeken en vervangen met behulp van eenvoudige tekenreeksvervanging {#find-and-replace-text-using-simple-string-replacement}

U kunt een van de [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) methoden om een bepaalde string te vinden of te vervangen en het aantal vervangingen dat is gemaakt terug te geven. In dit geval kunt u een tekenreeks opgeven die vervangen moet worden, een tekenreeks die alle gebeurtenissen vervangt, of de vervanging hoofdlettergevoelig is, en of alleen stand-alone woorden beïnvloed zullen worden.

Het volgende voorbeeld van de code laat zien hoe je de string kunt vinden en vervangen door de string *

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

U kunt het verschil tussen het document opmerken voordat u eenvoudige tekenreeksvervanging toepast:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

En na het toepassen van eenvoudige string vervanger:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Tekst zoeken en vervangen met reguliere expressies {#find-and-replace-text-using-regular-expressions}

Een reguliere expressie (regex) is een patroon dat een bepaalde volgorde van tekst beschrijft. Stel dat je alle dubbele gebeurtenissen van een woord wilt vervangen door één woord. Dan kunt u de volgende reguliere expressie toepassen om het dubbele-woord patroon op te geven: `([a-zA-Z]+) \1`.

Gebruik de andere [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) methode om bepaalde tekenscombinaties te zoeken en te vervangen door de `Regex` parameter als het reguliere expressiepatroon om overeenkomsten te vinden.

Het volgende codevoorbeeld laat zien hoe tekenreeksen die overeenkomen met een reguliere expressiepatroon te vervangen door een gespecificeerde vervangende tekenreeks:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


U kunt het verschil tussen het document merken voordat u tekenreeksvervanging toepast met reguliere expressies:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

En na het toepassen van tekenreeksvervanging door reguliere expressies:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Tekenreeks zoeken en vervangen met metakarakters {#find-and-replace-text-using-metacharacters}

U kunt metatekens in de zoekreeks of de vervangende tekenreeks gebruiken als een bepaalde tekst of zin bestaat uit meerdere paragrafen, secties of pagina's. Enkele van de metakenmerken zijn **&p** voor een paragraafpauze, **&b** voor een sectiebreuk, **&m** voor een paginapauze, en **&l** voor een lijnbreuk.

{{% alert color="primary" %}}

Merk op dat het metakarakter **&&** gelijk aan **&**. Bijvoorbeeld, als u de tekst voor **&p** Dat is geen paragraaf pauze, dan kunt u gebruiken **&&p**.

{{% /alert %}}

Het volgende voorbeeld van code laat zien hoe tekst vervangen kan worden door paragraaf en pagina-breuk:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## String zoeken en vervangen in header/footer van een document {#find-and-replace-string-in-header-or-footer-of-a-document}

U kunt tekst vinden en vervangen in de header/voeter sectie van een Word-document met behulp van de [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) Klasse.

Het volgende voorbeeld van code laat zien hoe u de tekst van de koptekst in uw document kunt vervangen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


U kunt het verschil zien tussen het document voordat u header string vervanger:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

En na het aanbrengen van header string vervanger:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Het codevoorbeeld om de tekst van de footer sectie in uw document te vervangen is zeer vergelijkbaar met het vorige header code voorbeeld. Je hoeft alleen de volgende twee regels te vervangen:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Met de volgende kenmerken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


U kunt het verschil tussen het document merken voordat u de tekst van de voettekst vervangt:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

En na het aanbrengen van footer string vervanging:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Tekst negeren tijdens zoeken en vervangen {#ignore-text-during-find-and-replace}

Bij het toepassen van de zoek- en vervangoperatie kunt u bepaalde segmenten van de tekst negeren. Dus, bepaalde delen van de tekst kunnen worden uitgesloten van de zoekopdracht, en de vondst en vervanging kan alleen worden toegepast op de resterende delen.

Aspose.Words biedt veel zoek-en vervangen eigenschappen voor het negeren van tekst zoals [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), en [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Het volgende voorbeeld van code laat zien hoe je tekst in de delete revisies negeert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Operatie zoeken en vervangen aanpassen {#customize-find-and-replace-operation}

Aspose.Words biedt veel verschillende [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) tekst te vinden en te vervangen, zoals het toepassen van een specifiek formaat door [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) en [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) eigenschappen, gebruik van substituties in vervangende patronen met [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) eigendom, en anderen.

Het volgende voorbeeld van code laat zien hoe u een specifiek woord in uw document markeert:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words kunt u de [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) interface om een aangepaste methode aan te maken en aan te roepen tijdens een vervangende bewerking. U kunt enkele use cases hebben waarin u de zoekopdracht moet aanpassen en de bewerking moet vervangen, zoals het vervangen van tekst door een reguliere expressie door HTML-tags, dus in principe zult u vervangen door het invoegen van HTML.

Als je een tekenreeks moet vervangen door een HTML-tag, moet je de **IReplacingCallback** interface om de zoek- en vervangoperatie aan te passen zodat de wedstrijd begint bij het begin van een run met de match-node van uw document. Laten we verschillende voorbeelden geven van het gebruik van **IReplacingCallback**.

Het volgende voorbeeld van code laat zien hoe je de tekst die is opgegeven met HTML kunt vervangen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Het volgende voorbeeld van code laat zien hoe positieve getallen met groene kleur en negatieve getallen met rode kleur te markeren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Het volgende voorbeeld van code laat zien hoe je een regelnummer aan elke regel voorschrijft:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
