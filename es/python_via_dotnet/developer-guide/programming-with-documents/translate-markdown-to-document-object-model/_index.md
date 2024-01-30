---
title: Traducir Markdown a DOM
second_title: Aspose.Words para Python via .NET
articleTitle: Traducir Markdown a modelo de objetos de documento (DOM)
linktitle: Traducir Markdown a modelo de objetos de documento (DOM)
type: docs
description: "Transfiera un documento Markdown al modelo de objetos de documento y viceversa usando Python. Por lo tanto, puede trabajar con Markdown complejos existentes y crear mediante programación un documento Markdown desde cero."
weight: 20
url: /es/python-net/translate-markdown-to-document-object-model/
---

Para leer, manipular y modificar mediante programación el contenido y el formato de un documento, debe traducirlo al modelo de objetos de documento (DOM) Aspose.Words.

A diferencia de los documentos de Word, Markdown no se ajusta al DOM descrito en el artículo [Modelo de objetos de documento Aspose.Words (DOM)](/words/es/python-net/aspose-words-document-object-model/). Sin embargo, Aspose.Words proporciona su propio mecanismo para traducir documentos Markdown a DOM y viceversa, de modo que podamos trabajar exitosamente con sus elementos como formato de texto, tablas, encabezados y otros.

Este artículo explica cómo las diversas funciones markdown se pueden traducir a Aspose.Words DOM y volver al formato Markdown.

## Complejidad de la traducción Markdown – DOM – Markdown

La principal dificultad de este mecanismo no es sólo traducir Markdown a DOM, sino también realizar la transformación inversa: guardar el documento nuevamente en formato Markdown con una pérdida mínima. Hay elementos, como las comillas multinivel, para los que la transformación inversa no es trivial.

Nuestro motor de traducción permite a los usuarios no sólo trabajar con elementos complejos en un documento Markdown existente, sino también crear su propio documento en formato Markdown con la estructura original desde cero. Para crear varios elementos, debe utilizar estilos con nombres específicos de acuerdo con ciertas reglas que se describen más adelante en este artículo. Estos estilos se pueden crear mediante programación.

## Principios comunes de traducción

Usamos formato [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) para bloques en línea. Cuando no existe una correspondencia directa para una característica Markdown en Aspose.Words DOM, utilizamos un estilo de carácter con un nombre que comienza con algunas palabras especiales.

Para los bloques contenedores, utilizamos la herencia de estilo para indicar características Markdown anidadas. En este caso, incluso cuando no hay funciones anidadas, también utilizamos estilos de párrafo con un nombre que comienza con algunas palabras especiales.

Las listas con viñetas y ordenadas también son bloques contenedores en Markdown. Su anidamiento se representa en DOM de la misma manera que para todos los demás bloques contenedores mediante herencia de estilos. Sin embargo, además, las listas en DOM tienen el formato de número correspondiente, ya sea en estilo de lista o en formato de párrafo.

## Bloques en línea

Usamos el formato [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) al traducir funciones **Bold**, *Italic* o ~~Tachado~~ markdown en línea.

|  característica Markdown |  Aspose.Words |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} ||
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} ||

Usamos un estilo de carácter con un nombre que comienza con la palabra `InlineCode`, seguido de un punto `(.)` opcional y varias comillas invertidas ```(`)``` para la función `InlineCode`. Si se omiten varias comillas graves, se utilizará una de forma predeterminada.

|  característica Markdown |  Aspose.Words |
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

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  La clase [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/). |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> PELEA<br /> `{4})` |  El [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> PELEA<br /> `{4})` |  La clase [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} ||

## Bloques de contenedores

Un documento es una secuencia de bloques contenedores como encabezados, párrafos, listas, citas y otros. Los bloques de contenedores se pueden dividir en 2 clases: bloques de hojas y contenedores complejos. Los bloques de hojas solo pueden contener contenido en línea. Los contenedores complejos, a su vez, pueden contener otros bloques de contenedores, incluidos los bloques Leaf.

### Bloques de hojas

La siguiente tabla muestra ejemplos del uso de bloques Markdown Leaf en Aspose.Words:

|  característica Markdown |  Aspose.Words |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Este es un párrafo simple con una forma de Regla Horizontal correspondiente:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|  {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}} |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, donde (1&lt;= N &lt;= 9).<br /> Esto se traduce en un estilo incorporado y debe seguir exactamente el patrón especificado (no se permiten sufijos ni prefijos).<br /> De lo contrario, será sólo un párrafo normal con el estilo correspondiente. |
|  {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}} |                                                                |
|  **Setext Heading**<br /> `===` (si el nivel de título es 1),<br /> `---` (si el nivel de título 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, basado en el estilo `"Heading N"`.<br /> Si (N &gt;= 2), se utilizará `"Heading 2"`; en caso contrario, `"Heading 1"`.<br /> Se permite cualquier sufijo, pero el importador Aspose.Words utiliza los números "1" y "2" respectivamente. |
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
|  **Indented Code** |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> El `[.]` y el `[info string]` son opcionales. |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Contenedores complejos

La siguiente tabla muestra ejemplos del uso de contenedores complejos Markdown en Aspose.Words:

|  Función Markdown |  Aspose.Words |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> El sufijo en el nombre del estilo es opcional, pero el importador Aspose.Words utiliza los números ordenados 1, 2, 3,…. en caso de comillas anidadas.<br /> El anidamiento se define mediante los estilos heredados. |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> PELEA<br /> `   - Item 2b` |  Las listas con viñetas se representan mediante numeración de párrafos:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> Puede haber 3 tipos de listas con viñetas. Sólo son diferencias en un formato de numeración del primer nivel. Estos son: `'-'`, `'+'` o `'*'` respectivamente. |
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
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> PELEA<br /> `2) Item 2b` |  Las listas ordenadas se representan mediante numeración de párrafos:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> Puede haber 2 marcadores de formato numérico: `'.'` y `')'`. El marcador predeterminado es `'.'`. |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Mesas

Aspose.Words también permite traducir tablas a DOM, como se muestra a continuación:

|  característica Markdown |  Aspose.Words |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `un\ | b`<br />`-\ | -`<br />`c\ | d` |  Clases [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/). |
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

## Ver también

* [Trabajar con funciones Markdown](/words/es/python-net/working-with-markdown-features/)

