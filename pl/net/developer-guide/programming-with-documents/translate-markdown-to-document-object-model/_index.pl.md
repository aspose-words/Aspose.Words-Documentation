---
title: Przetłumacz Markdown na DOM
second_title: Aspose.Words dla .NET
articleTitle: Przetłumacz Markdown na Document Object Model (DOM)
linktitle: Przetłumacz Markdown na Document Object Model (DOM)
type: docs
description: "Przetłumacz dokument Markdown na Document Object Model i z powrotem, używając C#. Możesz więc pracować ze złożonym istniejącym Markdown i programowo tworzyć dokument Markdown od zera."
weight: 20
url: /pl/net/translate-markdown-to-document-object-model/
---

Aby programowo czytać, manipulować i modyfikować zawartość i formatowanie dokumentu, musisz przetłumaczyć go na format Aspose.Words Document Object Model (DOM).

W przeciwieństwie do dokumentów Worda, Markdown nie jest zgodny z formatem DOM opisanym w artykule [Aspose.Words Document Object Model (DOM)](/words/pl/net/aspose-words-document-object-model/). Aspose.Words zapewnia jednak własny mechanizm tłumaczenia dokumentów Markdown na DOM i odwrotnie, dzięki czemu możemy z powodzeniem pracować z ich elementami, takimi jak formatowanie tekstu, tabele, nagłówki i inne.

W tym artykule wyjaśniono, jak różne funkcje markdown można przetłumaczyć na format Aspose.Words DOM i z powrotem na format Markdown.

## Złożoność tłumaczenia Markdown – DOM – Markdown

Główną trudnością tego mechanizmu jest nie tylko przetłumaczenie Markdown na DOM, ale także wykonanie odwrotnej transformacji – zapisanie dokumentu z powrotem do formatu Markdown przy minimalnych stratach. Istnieją elementy, takie jak cudzysłowy wielopoziomowe, dla których odwrotna transformacja nie jest trywialna.

Nasz silnik tłumaczeniowy pozwala użytkownikom nie tylko pracować ze złożonymi elementami w istniejącym dokumencie Markdown, ale także stworzyć od podstaw własny dokument w formacie Markdown z oryginalną strukturą. Aby utworzyć różne elementy, należy użyć stylów o określonych nazwach, zgodnie z pewnymi zasadami opisanymi w dalszej części tego artykułu. Takie style można tworzyć programowo.

## Wspólne zasady tłumaczeń

W przypadku bloków wbudowanych używamy formatowania [Font](https://reference.aspose.com/words/net/aspose.words/font/). Jeśli nie ma bezpośredniego związku z funkcją Markdown w formacie Aspose.Words DOM, używamy stylu znakowego z nazwą rozpoczynającą się od specjalnych słów.

W przypadku bloków kontenerów używamy dziedziczenia stylów do oznaczenia zagnieżdżonych funkcji Markdown. W tym przypadku, nawet jeśli nie ma żadnych zagnieżdżonych funkcji, używamy również stylów akapitowych z nazwą zaczynającą się od specjalnych słów.

Listy wypunktowane i uporządkowane są również blokami kontenerów w Markdown. Ich zagnieżdżenie jest reprezentowane w DOM w taki sam sposób, jak w przypadku wszystkich innych bloków kontenerów wykorzystujących dziedziczenie stylów. Jednakże dodatkowo listom w formacie DOM odpowiada formatowanie liczb w stylu listy lub w formacie akapitu.

## Bloki wbudowane

Używamy formatowania [Font](https://reference.aspose.com/words/net/aspose.words/font/) podczas tłumaczenia wbudowanych funkcji markdown w formacie **Bold**, *Italic* lub ~~Przekreślenie~~.

|  Funkcja Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  ||
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} ||

Używamy stylu znakowego o nazwie rozpoczynającej się od słowa `InlineCode`, po którym następuje opcjonalna kropka `(.)` i pewna liczba tylnych znaków ```(`)``` dla funkcji `InlineCode`. Jeśli pominiesz kilka coknięć, domyślnie zostanie użyty jeden backtick.

|  Funkcja Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Klasa [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Klasa [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Klasa [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  ||

## Bloki kontenerowe

Dokument to sekwencja bloków kontenerów, takich jak nagłówki, akapity, listy, cytaty i inne. Bloki kontenerów można podzielić na 2 klasy: bloki liści i kontenery złożone. Bloki liści mogą zawierać wyłącznie treść wbudowaną. Złożone kontenery mogą z kolei zawierać inne bloki kontenerów, w tym bloki Liści.

### Bloki liści

Poniższa tabela pokazuje przykłady użycia bloków Markdown Leaf w Aspose.Words:

|  Funkcja Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  To jest prosty akapit z odpowiadającym mu kształtem HorizontalRule:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, gdzie (1&lt;= N &lt;= 9).<br /> Jest to tłumaczone na styl wbudowany i powinno być dokładnie zgodne z określonym wzorcem (nie są dozwolone żadne przyrostki ani przedrostki).<br /> W przeciwnym razie będzie to zwykły akapit z odpowiednim stylem |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (jeśli poziom nagłówka 1),<br /> `---` (jeśli poziom nagłówka 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, oparty na stylu `“Heading N”`.<br /> Jeśli (N &gt;= 2), wówczas zostanie użyty format `“Heading 2”`, w przeciwnym razie `“Heading 1”`.<br /> Dozwolony jest dowolny przyrostek, ale importer Aspose.Words używa odpowiednio cyfr "1" i "2" |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` i `[info string]` są opcjonalne |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Złożone kontenery

Poniższa tabela przedstawia przykłady użycia złożonych kontenerów Markdown w formacie Aspose.Words:

|  Funkcja Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> Sufiks w nazwie stylu jest opcjonalny, ale importer Aspose.Words używa uporządkowanych numerów 1, 2, 3,…. w przypadku zagnieżdżonych cudzysłowów.<br /> Zagnieżdżanie jest definiowane poprzez odziedziczone style |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Listy punktowane są reprezentowane przy użyciu numeracji akapitów:<br /> `ListFormat.ApplyBulletDefault()`<br /> Istnieją 3 typy list punktowanych. Różnią się one jedynie formatem numeracji na pierwszym poziomie. Są to odpowiednio: `‘-’`, `‘+’` lub `‘*’` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Uporządkowane listy są reprezentowane za pomocą numeracji akapitów:<br /> `ListFormat.ApplyNumberDefault()`<br /> Mogą występować 2 znaczniki formatu liczb: "." I ')'. Domyślnym znacznikiem jest "." |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### Stoły

Aspose.Words umożliwia także tłumaczenie tabel na DOM, jak pokazano poniżej:

|  Funkcja Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a | b`<br />`- | -`<br />`c | d` |  Klasy [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## Zobacz też

* [Praca z funkcjami Markdown](/words/pl/net/working-with-markdown-features/)

