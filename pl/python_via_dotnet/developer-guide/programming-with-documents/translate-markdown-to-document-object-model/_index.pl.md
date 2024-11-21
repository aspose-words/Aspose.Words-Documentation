---
title: Przetłumacz Markdown na DOM
second_title: Aspose.Words dla Python via .NET
articleTitle: Przetłumacz Markdown na Document Object Model (DOM)
linktitle: Przetłumacz Markdown na Document Object Model (DOM)
type: docs
description: "Przekształć dokument Markdown do formatu Document Object Model i z powrotem, używając formatu Python. Możesz więc pracować ze złożonym istniejącym Markdown i programowo tworzyć dokument Markdown od zera."
weight: 20
url: /pl/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Aby programowo czytać, manipulować i modyfikować zawartość i formatowanie dokumentu, musisz przetłumaczyć go na format Aspose.Words Document Object Model (DOM).

W przeciwieństwie do dokumentów Worda, Markdown nie jest zgodny z formatem DOM opisanym w artykule [Aspose.Words Document Object Model (DOM)](/words/pl/python-net/aspose-words-document-object-model/). Aspose.Words zapewnia jednak własny mechanizm tłumaczenia dokumentów Markdown na DOM i odwrotnie, dzięki czemu możemy z powodzeniem pracować z ich elementami, takimi jak formatowanie tekstu, tabele, nagłówki i inne.

W tym artykule wyjaśniono, jak różne funkcje markdown można przetłumaczyć na format Aspose.Words DOM i z powrotem na format Markdown.

## Złożoność tłumaczenia Markdown – DOM – Markdown

Główną trudnością tego mechanizmu jest nie tylko przetłumaczenie Markdown na DOM, ale także wykonanie odwrotnej transformacji – zapisanie dokumentu z powrotem do formatu Markdown przy minimalnych stratach. Istnieją elementy, takie jak cudzysłowy wielopoziomowe, dla których odwrotna transformacja nie jest trywialna.

Nasz silnik tłumaczeniowy pozwala użytkownikom nie tylko pracować ze złożonymi elementami w istniejącym dokumencie Markdown, ale także stworzyć od podstaw własny dokument w formacie Markdown z oryginalną strukturą. Aby utworzyć różne elementy, należy użyć stylów o określonych nazwach, zgodnie z pewnymi zasadami opisanymi w dalszej części tego artykułu. Takie style można tworzyć programowo.

## Wspólne zasady tłumaczeń

W przypadku bloków wbudowanych używamy formatowania [Font](https://reference.aspose.com/words/python-net/aspose.words/font/). Jeśli nie ma bezpośredniego związku z funkcją Markdown w formacie Aspose.Words DOM, używamy stylu znakowego z nazwą rozpoczynającą się od specjalnych słów.

W przypadku bloków kontenerów używamy dziedziczenia stylów do oznaczenia zagnieżdżonych funkcji Markdown. W tym przypadku, nawet jeśli nie ma żadnych zagnieżdżonych funkcji, używamy również stylów akapitowych z nazwą zaczynającą się od specjalnych słów.

Listy wypunktowane i uporządkowane są również blokami kontenerów w Markdown. Ich zagnieżdżenie jest reprezentowane w DOM w taki sam sposób, jak w przypadku wszystkich innych bloków kontenerów wykorzystujących dziedziczenie stylów. Jednakże dodatkowo listom w formacie DOM odpowiada formatowanie liczb w stylu listy lub w formacie akapitu.

## Bloki wbudowane

Używamy formatowania [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) podczas tłumaczenia wbudowanych funkcji markdown w formacie **Bold**, *Italic* lub ~~Przekreślenie~~.

|  Funkcja Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

Używamy stylu znakowego o nazwie rozpoczynającej się od słowa `InlineCode`, po którym następuje opcjonalna kropka `(.)` i pewna liczba tylnych znaków ```(`)``` dla funkcji `InlineCode`. Jeśli pominiesz kilka coknięć, domyślnie zostanie użyty jeden backtick.

|  Funkcja Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Klasa [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Klasa [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Bloki kontenerowe

Dokument to sekwencja bloków kontenerów, takich jak nagłówki, akapity, listy, cytaty i inne. Bloki kontenerów można podzielić na 2 klasy: bloki liści i kontenery złożone. Bloki liści mogą zawierać wyłącznie treść wbudowaną. Złożone kontenery mogą z kolei zawierać inne bloki kontenerów, w tym bloki Liści.

### Bloki liści

Poniższa tabela pokazuje przykłady użycia bloków Markdown Leaf w Aspose.Words:

|  Funkcja Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  To jest prosty akapit z odpowiadającym mu kształtem HorizontalRule:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, gdzie (1&lt;= N &lt;= 9).<br /> Jest to tłumaczone na styl wbudowany i powinno być dokładnie zgodne z określonym wzorcem (nie są dozwolone żadne przyrostki ani przedrostki).<br /> W przeciwnym razie będzie to zwykły akapit z odpowiednim stylem |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (jeśli poziom nagłówka 1),<br /> `---` (jeśli poziom nagłówka 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, oparty na stylu `"Heading N"`.<br /> Jeśli (N &gt;= 2), wówczas zostanie użyty format `"Heading 2"`, w przeciwnym razie `"Heading 1"`.<br /> Dozwolony jest dowolny przyrostek, ale importer Aspose.Words używa odpowiednio cyfr "1" i "2" |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` i `[info string]` są opcjonalne |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Złożone kontenery

Poniższa tabela przedstawia przykłady użycia złożonych kontenerów Markdown w formacie Aspose.Words:

|  Funkcja Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> Sufiks w nazwie stylu jest opcjonalny, ale importer Aspose.Words używa uporządkowanych numerów 1, 2, 3,…. w przypadku zagnieżdżonych cudzysłowów.<br /> Zagnieżdżanie jest definiowane poprzez odziedziczone style |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Listy punktowane są reprezentowane przy użyciu numeracji akapitów:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> Istnieją 3 typy list punktowanych. Różnią się one jedynie formatem numeracji na pierwszym poziomie. Są to odpowiednio: `'-'`, `'+'` lub `'*'` |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Uporządkowane listy są reprezentowane za pomocą numeracji akapitów:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> Mogą istnieć 2 znaczniki formatu liczb: `'.'` i `')'`. Domyślnym znacznikiem jest `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Stoły

Aspose.Words umożliwia także tłumaczenie tabel na DOM, jak pokazano poniżej:

|  Funkcja Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a\ | b`<br />`-\ | -`<br />`c\ | d` |  Klasy [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                                |

## Zobacz też

* [Praca z funkcjami Markdown](/words/pl/python-net/working-with-markdown-features/)

