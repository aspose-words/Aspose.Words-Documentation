---
title: Traduire Markdown en DOM
second_title: Aspose.Words pour Java
articleTitle: Traduire Markdown en Modèle d'objet de document (DOM)
linktitle: Traduire Markdown en Modèle d'objet de document (DOM)
type: docs
description: "Tarnslate un document Markdown pour documenter le modèle d'objet et inversement. Ainsi, vous pouvez travailler avec des Markdown existants complexes et créer par programme un document Markdown à partir de zéro en utilisant Java."
weight: 20
url: /fr/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Pour lire, manipuler et modifier par programmation le contenu et la mise en forme d'un document, vous devez le traduire en Aspose.Words Modèle d'objet de document (DOM).

Contrairement aux documents Word, Markdown n'est pas conforme au DOM décrit dans le [Aspose.Words Modèle d'objet de document (DOM)](/words/java/aspose-words-document-object-model/) l'article. Cependant, Aspose.Words fournit son propre mécanisme pour traduire Markdown documents en DOM et inversement, afin que nous puissions travailler avec succès avec leurs éléments tels que la mise en forme du texte, les tableaux, les en-têtes et autres.

Cet article explique comment les différentes fonctionnalités markdown peuvent être traduites au format Aspose.Words DOM et revenir au format Markdown.

## Complexité de la Traduction Markdown – DOM – Markdown

La principale difficulté de ce mécanisme n'est pas seulement de traduire Markdown en DOM, mais aussi d'effectuer la transformation inverse – pour sauvegarder le document au format Markdown avec une perte minimale. Il y a des éléments, comme les guillemets multiniveaux, pour lesquels la transformation inverse n'est pas anodine.

Notre moteur de traduction permet aux utilisateurs non seulement de travailler avec des éléments complexes dans un document Markdown existant, mais également de créer leur propre document au format Markdown avec la structure d'origine à partir de zéro. Pour créer divers éléments, vous devez utiliser des styles avec des noms spécifiques selon certaines règles décrites plus loin dans cet article. De tels styles peuvent être créés par programmation.

## Principes Communs de Traduction

Nous utilisons le formatage [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) pour les blocs en ligne. Lorsqu'il n'y a pas de correspondance directe pour une entité Markdown dans Aspose.Words DOM, nous utilisons un style de caractère avec un nom qui commence par des mots spéciaux.

Pour les blocs conteneurs, nous utilisons l'héritage de style pour désigner les entités Markdown imbriquées. Dans ce cas, même lorsqu'il n'y a pas d'entités imbriquées, nous utilisons également des styles de paragraphe avec un nom commençant par des mots spéciaux.

Les listes à puces et ordonnées sont également des blocs conteneurs dans Markdown. Leur imbrication est représentée dans DOM de la même manière que pour tous les autres blocs conteneurs utilisant l'héritage de style. Cependant, de plus, les listes dans DOM ont une mise en forme numérique correspondante dans un style de liste ou une mise en forme de paragraphe.

## Blocs en Ligne

Nous utilisons la mise en forme [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) lors de la traduction des fonctionnalités **Bold**, *Italic* ou ~~Strikethrough~~ en ligne markdown.

| Markdown caractéristique | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Nous utilisons un style de caractère avec un nom qui commence par le mot `InlineCode`, suivi d'un point facultatif `(.)` et d'un certain nombre de backticks ```(`)``` pour la fonctionnalité `InlineCode`. Si un certain nombre de backticks sont manqués, un backtick sera utilisé par défaut.

| Markdown caractéristique | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | La classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[texte du lien](url)`<br />`[texte du lien](<url>"title")`<br />`[texte du lien](url 'title')`<br />`[texte du lien](url (title))` | La classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![texte alternatif](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![texte alternatif](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![texte alternatif](/words/java/translate-markdown-to-document-object-model/url (title))` | La classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Blocs de Conteneurs

Un document est une séquence de blocs conteneurs tels que des en-têtes, des paragraphes, des listes, des guillemets et autres. Les blocs de conteneurs peuvent être divisés en 2 classes: les blocs feuilles et les conteneurs complexes. Les blocs feuilles ne peuvent contenir que du contenu en ligne. Les conteneurs complexes, à leur tour, peuvent contenir d'autres blocs de conteneurs, y compris des blocs feuilles.

### Blocs de Feuilles

Le tableau ci-dessous montre des exemples d'utilisation de blocs feuilles Markdown dans Aspose.Words:

| Markdown caractéristique | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Ceci est un paragraphe simple avec une forme HorizontalRule correspondante:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, où (1<= D <= 9).<br />Ceci est traduit en un style intégré et doit correspondre exactement au modèle spécifié (aucun suffixe ou préfixe n'est autorisé).<br />Sinon, ce ne sera qu'un paragraphe normal avec un style correspondant. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, basé sur le style' Titre N'.<br />Si (N > = 2), alors 'Heading 2 'sera utilisé, sinon' Heading 1'.<br />Tout suffixe est autorisé, mais l'importateur Aspose.Words utilise les nombres "1" et "2" respectivement. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Conteneurs Complexes

Le tableau ci-dessous montre des exemples d'utilisation de Markdown Conteneurs complexes dans Aspose.Words:

| Markdown caractéristique | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />Le suffixe dans le nom du style est facultatif, mais Aspose.Words l'importateur utilise les numéros ordonnés 1, 2, 3, .... en cas de guillemets imbriqués.<br />L'imbrication est définie via les styles hérités. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Les listes à puces sont représentées à l'aide de la numérotation des paragraphes:<br />`ListFormat.ApplyBulletDefault()`<br />Il peut y avoir 3 types de listes à puces. Ils ne sont diff que dans un format de numérotation du tout premier niveau. Ce sont: `‘-’`, `‘+’` ou `‘*’` respectivement. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Les listes ordonnées sont représentées à l'aide de la numérotation des paragraphes:<br />`ListFormat.ApplyNumberDefault()`<br />Il peut y avoir 2 marqueurs de format numérique: ‘.’ et ‘)’. Le marqueur par défaut est ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Tableaux

Aspose.Words permet également de traduire les tables en DOM, comme indiqué ci-dessous:

| Markdown caractéristique | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | classes [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) et [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Voir Aussi

* [Travailler avec Markdown Fonctionnalités](/words/java/working-with-markdown-features/)

