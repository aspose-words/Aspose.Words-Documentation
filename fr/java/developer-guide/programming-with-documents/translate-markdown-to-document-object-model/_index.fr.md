---
title: Traduire Markdown à DOM
second_title: Aspose.Words pour Java
articleTitle: Traduire Markdown à Document Object Model (DOM)
linktitle: Traduire Markdown à Document Object Model (DOM)
type: docs
description: "Tarnslate a Markdown pour Document Object Model et de retour. Ainsi, vous pouvez travailler avec les complexes existants Markdown et programmatique Markdown document à partir de zéro en utilisant Java."
weight: 20
url: /fr/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Pour lire, manipuler et modifier programmatiquement le contenu et le formatage d'un document, vous devez le traduire au Aspose.Words Document Object Model (DOM).

Contrairement aux documents Word, Markdown ne sont pas conformes à la DOM décrit dans [Aspose.Words Document Object Model (DOM)](/words/fr/java/aspose-words-document-object-model/) article. Toutefois, Aspose.Words fournit son propre mécanisme de traduction Markdown pour DOM et retour, afin que nous puissions travailler avec succès avec leurs éléments tels que le formatage de texte, les tables, les en-têtes, et d'autres.

Cet article explique comment les markdown les fonctionnalités peuvent être traduites en Aspose.Words DOM et retour à Markdown modèle.

## La complexité de la traduction Markdown – DOM – Markdown

La principale difficulté de ce mécanisme n'est pas seulement de traduire Markdown à DOM, mais aussi pour faire la transformation inverse – pour sauvegarder le document Markdown format avec perte minimale. Il y a des éléments, comme les guillemets multiniveaux, pour lesquels la transformation inverse n'est pas banale.

Notre moteur de traduction permet non seulement aux utilisateurs de travailler avec des éléments complexes dans une Markdown mais aussi pour créer leur propre document dans Markdown format avec la structure originale à partir de zéro. Pour créer différents éléments, vous devez utiliser des styles avec des noms spécifiques selon certaines règles décrites plus loin dans cet article. Ces styles peuvent être créés de façon programmatique.

## Traduction commune Principes

Nous utilisons [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formatage pour les blocs en ligne. Lorsqu'il n'y a pas de correspondance directe pour Markdown fonctionnalité dans Aspose.Words DOM, nous utilisons un style de caractère avec un nom qui commence par des mots spéciaux.

Pour les blocs de conteneurs, nous utilisons l'héritage style pour indiquer Markdown caractéristiques. Dans ce cas, même s'il n'y a pas de caractéristiques imbriquées, nous utilisons également des styles de paragraphes avec un nom qui commence par des mots spéciaux.

Les listes Bulleted et commandées sont des blocs de conteneurs dans Markdown aussi. Leur nidification est représentée dans DOM de la même manière que pour tous les autres blocs de conteneurs utilisant l'héritage de style. Toutefois, en outre, DOM ont correspondu au formatage de nombre dans le style de liste ou de paragraphe.

## Blocs en ligne

Nous utilisons [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formatage lors de la traduction **Bold**, *Italic* ou ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ markdown caractéristiques.

|  Markdown Caractéristique |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Nous utilisons un style de caractère avec un nom qui commence par le mot `InlineCode`"> suivi d'un point facultatif `(.)` et un certain nombre de backticks ```(`)``` pour `InlineCode` Caractéristique. Si un certain nombre de backticks est manqué, alors un backtick sera utilisé par défaut.

|  Markdown Caractéristique |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  Les [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) En cours |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Les [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) En cours |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  Les [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) En cours |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Blocs de conteneurs

Un document est une séquence de blocs de conteneurs tels que des titres, des paragraphes, des listes, des citations, etc. Les blocs de conteneurs peuvent être divisés en 2 classes: Blocs de feuilles et conteneurs complexes. Les blocs de feuilles ne peuvent contenir que du contenu en ligne. Les contenants complexes, à leur tour, peuvent contenir d'autres blocs de contenants, y compris les blocs de feuilles.

### Blocs de feuilles

Le tableau ci-dessous donne des exemples de Markdown Blocs de feuilles Aspose.Words:

|  Markdown Caractéristique |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Il s'agit d'un paragraphe simple avec une forme de règle horizontale correspondante:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = "Heading N"`, où (1<= N <= 9).<br/>Ceci est traduit dans un style intégré et devrait être exactement du modèle spécifié (aucun suffixe ou préfixe ne sont autorisés).<br/>Sinon, ce ne sera qu'un paragraphe régulier avec un style correspondant |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (si la rubrique 1 est utilisée),<br/>`---` (si le niveau de la rubrique 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, sur la base 'Heading N' style.<br/>Si (N >= 2), alors 'Heading 2' sera utilisé, sinon 'Heading 1'.<br/>Tout suffixe est autorisé, mais Aspose.Words l'importateur utilise respectivement les numéros "1" et "2" |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>Les `[.]` et `[info string]` sont facultatifs |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Conteneurs complexes

Le tableau ci-dessous donne des exemples de Markdown Contenants complexes en Aspose.Words:

|  Markdown Caractéristique |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Le suffixe dans le nom de style est facultatif, mais Aspose.Words l'importateur utilise les numéros commandés 1, 2, 3, .... en cas de devis imbriqués.<br/>La nidification est définie par les styles hérités |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Les listes de balles sont représentées en utilisant la numérotation des paragraphes:<br/>`ListFormat.ApplyBulletDefault()`<br/>Il peut y avoir 3 types de listes par balles. Ils ne sont diff que dans un format de numérotation du tout premier niveau. Ce sont: `‘-’`, `‘+’` ou `‘*’` respectivement |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Les listes commandées sont représentées en utilisant la numérotation des paragraphes:<br/>`ListFormat.ApplyNumberDefault()`<br/>Il peut y avoir 2 marqueurs de format de nombre: ‘. Le marqueur par défaut est ‘ |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Tableaux

Aspose.Words permet également de traduire les tableaux en DOM, comme suit:

|  Markdown Caractéristique |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>"a|b`<br />`- Oui | - Oui.`<br />`c|d " |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) et [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) les cours |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Voir aussi

* [Travailleur avec Markdown Caractéristiques](/words/fr/java/working-with-markdown-features/)

