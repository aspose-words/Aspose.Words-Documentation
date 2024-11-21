---
title: Traduire Markdown en DOM
second_title: Aspose.Words pour .NET
articleTitle: Traduire Markdown en Document Object Model (DOM)
linktitle: Traduire Markdown en Document Object Model (DOM)
type: docs
description: "Traduisez un document Markdown en Document Object Model et inversement en utilisant C#. Vous pouvez ainsi travailler avec des Markdown existants complexes et créer par programme un document Markdown à partir de zéro."
weight: 20
url: /fr/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Pour lire, manipuler et modifier par programme le contenu et le formatage d'un document, vous devez le traduire au format Aspose.Words Document Object Model (DOM).

Contrairement aux documents Word, Markdown n'est pas conforme au DOM décrit dans l'article [Aspose.Words Document Object Model (DOM)](/words/fr/net/aspose-words-document-object-model/). Cependant, Aspose.Words fournit son propre mécanisme pour traduire les documents Markdown vers DOM et inversement, afin que nous puissions travailler avec succès avec leurs éléments tels que le formatage du texte, les tableaux, les en-têtes et autres.

Cet article explique comment les différentes fonctionnalités de markdown peuvent être traduites en Aspose.Words DOM et renvoyées au format Markdown.

## Complexité de la traduction Markdown – DOM – Markdown

La principale difficulté de ce mécanisme n'est pas seulement de traduire Markdown en DOM, mais également d'effectuer la transformation inverse: sauvegarder le document au format Markdown avec une perte minimale. Il existe des éléments, comme les guillemets multiniveaux, pour lesquels la transformation inverse n'est pas anodine.

Notre moteur de traduction permet aux utilisateurs non seulement de travailler avec des éléments complexes d'un document Markdown existant, mais également de créer leur propre document au format Markdown avec la structure originale à partir de zéro. Pour créer divers éléments, vous devez utiliser des styles avec des noms spécifiques selon certaines règles décrites plus loin dans cet article. De tels styles peuvent être créés par programme.

## Principes communs de traduction

Nous utilisons le formatage [Font](https://reference.aspose.com/words/fr/net/aspose.words/font/) pour les blocs en ligne. Lorsqu'il n'y a pas de correspondance directe pour une fonctionnalité Markdown dans Aspose.Words DOM, nous utilisons un style de caractère avec un nom qui commence par des mots spéciaux.

Pour les blocs conteneurs, nous utilisons l'héritage de style pour désigner les fonctionnalités Markdown imbriquées. Dans ce cas, même lorsqu'il n'y a pas de fonctionnalités imbriquées, nous utilisons également des styles de paragraphe dont le nom commence par des mots spéciaux.

Les listes à puces et ordonnées sont également des blocs conteneurs dans Markdown. Leur imbrication est représentée dans DOM de la même manière que pour tous les autres blocs conteneurs utilisant l'héritage de style. Cependant, en outre, les listes dans DOM ont un formatage de nombres correspondant, soit en style de liste, soit en format de paragraphe.

## Blocs en ligne

Nous utilisons le formatage [Font](https://reference.aspose.com/words/fr/net/aspose.words/font/) lors de la traduction des fonctionnalités **Bold**, *Italic* ou ~~Strikethrough~~ markdown en ligne.

|  Fonctionnalité Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

Nous utilisons un style de caractère avec un nom qui commence par le mot `InlineCode`, suivi d'un point `(.)` facultatif et d'un certain nombre de backticks ```(`)``` pour la fonctionnalité `InlineCode`. Si un certain nombre de backticks sont manqués, alors un backtick sera utilisé par défaut.

|  Fonctionnalité Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  La classe [FieldHyperlink](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  La classe [FieldHyperlink](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  La classe [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## Blocs de conteneurs

Un document est une séquence de blocs conteneurs tels que des titres, des paragraphes, des listes, des citations et autres. Les blocs conteneurs peuvent être divisés en 2 classes: les blocs feuilles et les conteneurs complexes. Les blocs feuilles ne peuvent contenir que du contenu en ligne. Les conteneurs complexes, à leur tour, peuvent contenir d’autres blocs de conteneurs, notamment des blocs Leaf.

### Blocs de feuilles

Le tableau ci-dessous montre des exemples d'utilisation des blocs Markdown Leaf dans Aspose.Words:

|  Fonctionnalité Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Il s'agit d'un simple paragraphe avec une forme HorizontalRule correspondante:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, où (1&lt;= N &lt;= 9).<br /> Ceci est traduit dans un style intégré et doit être exactement du modèle spécifié (aucun suffixe ou préfixe n'est autorisé).<br /> Sinon, ce sera juste un paragraphe normal avec un style correspondant |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (si titre niveau 1),<br /> `---` (si titre niveau 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, basé sur le style `“Heading N”`.<br /> Si (N &gt;= 2), alors `“Heading 2”` sera utilisé, sinon `“Heading 1”`.<br /> Tout suffixe est autorisé, mais l'importateur Aspose.Words utilise respectivement les nombres "1" et "2" |
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
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> Le `[.]` et le `[info string]` sont facultatifs |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Conteneurs complexes

Le tableau ci-dessous montre des exemples d'utilisation de conteneurs complexes Markdown dans Aspose.Words:

|  Fonctionnalité Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> Le suffixe dans le nom du style est facultatif, mais l'importateur Aspose.Words utilise les nombres ordonnés 1, 2, 3,…. en cas de guillemets imbriqués.<br /> L'imbrication est définie via les styles hérités |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Les listes à puces sont représentées à l'aide de la numérotation des paragraphes:<br /> `ListFormat.ApplyBulletDefault()`<br /> Il peut y avoir 3 types de listes à puces. Ils ne diffèrent que par un format de numérotation du tout premier niveau. Ce sont respectivement: `‘-’`, `‘+’` ou `‘*’` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Les listes ordonnées sont représentées à l'aide de la numérotation des paragraphes:<br /> `ListFormat.ApplyNumberDefault()`<br /> Il peut y avoir 2 marqueurs de format numérique: '.' et ')'. Le marqueur par défaut est '.' |
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

### les tables

Aspose.Words permet également de traduire des tableaux en DOM, comme indiqué ci-dessous:

|  Fonctionnalité Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `un | b`<br />`-|-`<br />`c|d` |  Classes [Table](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/fr/net/aspose.words.tables/row/) et [Cell](https://reference.aspose.com/words/fr/net/aspose.words.tables/cell/) |
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

## Voir également

* [Travailler avec les fonctionnalités Markdown](/words/fr/net/working-with-markdown-features/)

