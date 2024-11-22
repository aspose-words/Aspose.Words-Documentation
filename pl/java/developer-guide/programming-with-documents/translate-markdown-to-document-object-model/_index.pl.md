---
title: Przetłumacz Markdown do DOM
second_title: Aspose.Words zamiast Java
articleTitle: Przetłumacz Markdown do Document Object Model (DOM)
linktitle: Przetłumacz Markdown do Document Object Model (DOM)
type: docs
description: "Tarnbail a Markdown dokument Document Object Model i z powrotem. Więc możesz pracować z istniejącymi kompleksami Markdown i programowo tworzyć Markdown dokument od podstaw za pomocą Java."
weight: 20
url: /pl/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Aby programowo czytać, manipulować i modyfikować zawartość i formatowanie dokumentu, należy przetłumaczyć go na Aspose.Words Document Object Model (DOM).

W przeciwieństwie do dokumentów Worda, Markdown nie jest zgodny z DOM opisane w [Aspose.Words Document Object Model (DOM)](/words/pl/java/aspose-words-document-object-model/) Artykuł. Jednakże, Aspose.Words zapewnia własny mechanizm tłumaczenia Markdown dokumenty DOM i z powrotem, abyśmy mogli z powodzeniem pracować z ich elementami, takimi jak formatowanie tekstu, tabele, nagłówki i inne.

Ten artykuł wyjaśnia, jak różne markdown funkcje można przetłumaczyć na Aspose.Words DOM i powrót do Markdown format.

## Kompleksowość tłumaczenia Markdown - DOM - Markdown

Główną trudnością tego mechanizmu jest nie tylko tłumaczenie Markdown do DOM, ale także zrobić odwrotną transformację - zapisać dokument z powrotem do Markdown format z minimalną stratą. Istnieją elementy, takie jak cytaty wielopoziomowe, dla których transformacja odwrotna nie jest trywialna.

Nasz silnik tłumaczeniowy pozwala użytkownikom nie tylko pracować z skomplikowanymi elementami w istniejących Markdown dokument, ale także do tworzenia własnego dokumentu w Markdown format z oryginalną strukturą od podstaw. Aby stworzyć różne elementy, musisz używać stylów z konkretnymi nazwami zgodnie z niektórymi zasadami opisanymi później w tym artykule. Style takie mogą być tworzone programowo.

## Wspólne tłumaczenie Zasady

Używamy [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formatowanie bloków wewnętrznych. W przypadku braku bezpośredniej korespondencji Markdown funkcja w Aspose.Words DOM, Używamy stylu postaci o nazwie, która zaczyna się od specjalnych słów.

Dla bloków kontenerowych, używamy stylu dziedziczenia do określenia gniazda Markdown funkcje. W tym przypadku, nawet jeśli nie ma zagnieżdżonych funkcji, używamy również stylów paragrafów z nazwą, która zaczyna się od niektórych słów specjalnych.

Wystawione i zamówione listy są bloki kontenerowe w Markdown Jak również. Ich gniazda są reprezentowane w DOM w ten sam sposób jak dla wszystkich innych bloków kontenerowych przy użyciu stylu dziedziczenia. Jednakże, dodatkowo, wykazy w DOM mają odpowiadający numer formatowania w stylu listy lub w formacie paragrafu.

## Bloki wewnętrzne

Używamy [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formatowanie podczas tłumaczenia **Bold**, *Italic* lub ~ ~ Strikethrough ~ ~ inline markdown funkcje.

|  Markdown funkcja |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Używamy stylu znaków z nazwą, która zaczyna się od słowa `InlineCode`, > po której następuje opcjonalna kropka `(.)` i kilka tyłków ```(`)``` dla `InlineCode` funkcja. W przypadku pominięcia pewnej liczby typków, domyślnie zostanie użyty jeden.

|  Markdown funkcja |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  W [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasa |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  W [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) Klasa |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  W [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasa |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Bloki kontenerów

Dokument jest sekwencją bloków kontenerowych, takich jak nagłówki, paragrafy, listy, cytaty i inne. Bloki kontenerów można podzielić na 2 klasy: Bloki liści i złożone kontenery. Bloki liści mogą zawierać tylko zawartość inline. Z kolei złożone pojemniki mogą zawierać inne bloki kontenerowe, w tym bloki Leaf.

### Bloki liści

Poniższa tabela przedstawia przykłady stosowania Markdown Bloki liści w Aspose.Words:

|  Markdown funkcja |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Jest to prosty akapit o odpowiednim kształcie horyzontalnej zasady:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = "Heading N"`, gdzie (1 < = N < = 9).<br/>To jest przetłumaczone na built- w stylu i powinno być dokładnie określonego wzoru (nie są dozwolone przyrostki lub przedrostki).<br/>W przeciwnym razie będzie to zwykły akapit o odpowiednim stylu |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (jeżeli zakres 1),<br/>`---` (jeżeli zakres 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, w oparciu o 'Heading N' Styl.<br/>Jeśli (N > = 2), to 'Heading 2' zostaną wykorzystane, w przeciwnym razie 'Heading 1'.<br/>Każdy przyrostek jest dozwolony, ale Aspose.Words Importer stosuje odpowiednio numery "1" i "2" |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>W `[.]` oraz `[info string]` są opcjonalne |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Kontenery złożone

Poniższa tabela przedstawia przykłady stosowania Markdown Kompleksowe pojemniki w Aspose.Words:

|  Markdown funkcja |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Przyrostek w nazwie stylu jest opcjonalny, ale Aspose.Words Importer stosuje zamówione numery 1, 2, 3,.... w przypadku zagnieżdżonych cytatów.<br/>Zagnieżdżenie jest zdefiniowane poprzez odziedziczone style |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Listy zbiorcze są reprezentowane przy użyciu numeracji paragrafów:<br/>`ListFormat.ApplyBulletDefault()`<br/>Mogą być 3 rodzaje list bulletowanych. Są one tylko diff w formacie numeracji pierwszego poziomu. Są to: `‘-’`, `‘+’` lub `‘*’` odpowiednio |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Zamówione listy są reprezentowane przy użyciu numeracji paragrafów:<br/>`ListFormat.ApplyNumberDefault()`<br/>Mogą być 2 znaczniki formatu liczb: '.' i') '. Domyślny znacznik to' .' |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Tabele

Aspose.Words pozwala również na tłumaczenie tabel na DOM, jak przedstawiono poniżej:

|  Markdown funkcja |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>"a|b`<br />`-|-`<br />`c|d ' |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) oraz [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) zajęcia |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Zobacz również

* [Praca z Markdown Cechy](/words/pl/java/working-with-markdown-features/)

