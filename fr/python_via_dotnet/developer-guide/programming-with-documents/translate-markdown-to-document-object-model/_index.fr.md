---
title: Traduire Markdown en DOM
second_title: Aspose.Words pour Python via .NET
articleTitle: Traduire Markdown en Document Object Model (DOM)
linktitle: Traduire Markdown en Document Object Model (DOM)
type: docs
description: "Convertissez un document Markdown en Document Object Model et inversement en utilisant Python. Vous pouvez ainsi travailler avec des Markdown existants complexes et créer par programme un document Markdown à partir de zéro."
weight: 20
url: /fr/python-net/translate-markdown-to-document-object-model/
---

Pour lire, manipuler et modifier par programme le contenu et le formatage d'un document, vous devez le traduire au format Aspose.Words Document Object Model (DOM).

Contrairement aux documents Word, Markdown n'est pas conforme au DOM décrit dans l'article [Aspose.Words Document Object Model (DOM)](/words/fr/python-net/aspose-words-document-object-model/). Cependant, Aspose.Words fournit son propre mécanisme pour traduire les documents Markdown en DOM et inversement, afin que nous puissions travailler avec succès avec leurs éléments tels que le formatage du texte, les tableaux, les en-têtes et autres.

Cet article explique comment les différentes fonctionnalités de markdown peuvent être traduites en Aspose.Words DOM et renvoyées au format Markdown.

## Complexité de la traduction Markdown – DOM – Markdown

La principale difficulté de ce mécanisme n'est pas seulement de traduire Markdown en DOM, mais également d'effectuer la transformation inverse: sauvegarder le document au format Markdown avec une perte minimale. Il existe des éléments, comme les guillemets multiniveaux, pour lesquels la transformation inverse n'est pas anodine.

Notre moteur de traduction permet aux utilisateurs non seulement de travailler avec des éléments complexes d'un document Markdown existant, mais également de créer leur propre document au format Markdown avec la structure originale à partir de zéro. Pour créer divers éléments, vous devez utiliser des styles avec des noms spécifiques selon certaines règles décrites plus loin dans cet article. De tels styles peuvent être créés par programme.

## Principes communs de traduction

Nous utilisons le formatage [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) pour les blocs en ligne. Lorsqu'il n'y a pas de correspondance directe pour une fonctionnalité Markdown dans Aspose.Words DOM, nous utilisons un style de caractère avec un nom qui commence par des mots spéciaux.

Pour les blocs conteneurs, nous utilisons l'héritage de style pour désigner les fonctionnalités Markdown imbriquées. Dans ce cas, même lorsqu'il n'y a pas de fonctionnalités imbriquées, nous utilisons également des styles de paragraphe dont le nom commence par des mots spéciaux.

Les listes à puces et ordonnées sont également des blocs conteneurs dans Markdown. Leur imbrication est représentée dans DOM de la même manière que pour tous les autres blocs conteneurs utilisant l'héritage de style. Cependant, en outre, les listes dans DOM ont un formatage de nombres correspondant, soit en style de liste, soit en format de paragraphe.

## Blocs en ligne

Nous utilisons le formatage [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) lors de la traduction des fonctionnalités **Bold**, *Italic* ou ~~Strikethrough~~ markdown en ligne.

|  Fonctionnalité Markdown |   Aspose.Words        |
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

Nous utilisons un style de caractère avec un nom qui commence par le mot `InlineCode`, suivi d'un point `(.)` facultatif et d'un certain nombre de backticks ```(`)``` pour la fonctionnalité `InlineCode`. Si un certain nombre de backticks sont manqués, alors un backtick sera utilisé par défaut.

|  Fonctionnalité Markdown |   Aspose.Words        |
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
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  La classe [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Le [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  La classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Blocs de conteneurs

Un document est une séquence de blocs conteneurs tels que des titres, des paragraphes, des listes, des citations et autres. Les blocs conteneurs peuvent être divisés en 2 classes: les blocs feuilles et les conteneurs complexes. Les blocs feuilles ne peuvent contenir que du contenu en ligne. Les conteneurs complexes, à leur tour, peuvent contenir d’autres blocs de conteneurs, notamment des blocs Leaf.

### Blocs de feuilles

Le tableau ci-dessous montre des exemples d'utilisation des blocs Markdown Leaf dans Aspose.Words:

|  Fonctionnalité Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Il s'agit d'un simple paragraphe avec une forme HorizontalRule correspondante:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, où (1&lt;= N &lt;= 9).<br /> Ceci est traduit dans un style intégré et doit être exactement du modèle spécifié (aucun suffixe ou préfixe n'est autorisé).<br /> Sinon, ce sera juste un paragraphe normal avec un style correspondant |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (si titre niveau 1),<br /> `---` (si titre niveau 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, basé sur le style `"Heading N"`.<br /> Si (N &gt;= 2), alors `"Heading 2"` sera utilisé, sinon `"Heading 1"`.<br /> Tout suffixe est autorisé, mais l'importateur Aspose.Words utilise respectivement les nombres "1" et "2" |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> Le `[.]` et le `[info string]` sont facultatifs |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Conteneurs complexes

Le tableau ci-dessous montre des exemples d'utilisation de conteneurs complexes Markdown dans Aspose.Words:

|  Fonctionnalité Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> Le suffixe dans le nom du style est facultatif, mais l'importateur Aspose.Words utilise les nombres ordonnés 1, 2, 3,…. en cas de guillemets imbriqués.<br /> L'imbrication est définie via les styles hérités |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Les listes à puces sont représentées à l'aide de la numérotation des paragraphes:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> Il peut y avoir 3 types de listes à puces. Ils ne diffèrent que par un format de numérotation du tout premier niveau. Ce sont respectivement: `'-'`, `'+'` ou `'*'` |
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
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Les listes ordonnées sont représentées à l'aide de la numérotation des paragraphes:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> Il peut y avoir 2 marqueurs de format numérique: `'.'` et `')'`. Le marqueur par défaut est `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### les tables

Aspose.Words permet également de traduire des tableaux en DOM, comme indiqué ci-dessous:

|  Fonctionnalité Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `un\ | b`<br />`-\ | -`<br />`c\ | d` |  Classes [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) et [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
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

## Voir également

* [Travailler avec les fonctionnalités Markdown](/words/fr/python-net/working-with-markdown-features/)

