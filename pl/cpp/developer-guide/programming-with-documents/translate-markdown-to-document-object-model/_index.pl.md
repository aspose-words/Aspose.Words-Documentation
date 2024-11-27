---
title: Translate Markdown to Document Object Model (DOM)
second_title: Aspose.Words dla C++
articleTitle: Translate Markdown to Document Object Model (DOM)
linktitle: Translate Markdown to Document Object Model (DOM)
type: docs
description: "Tarnslate a Markdown dokument do modelu obiektowego dokumentu iz powrotem za pomocą C++. Możesz więc pracować ze złożonymi istniejącymi Markdown i programowo tworzyć dokument Markdown od zera."
weight: 20
url: /pl/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Aby programowo odczytywać, manipulować i modyfikować zawartość i formatowanie dokumentu, należy przetłumaczyć go na model obiektowy dokumentu Aspose.Words (DOM).

W przeciwieństwie do dokumentów Word, Markdown nie jest zgodny z DOM opisanym w [Aspose.Words Obiektowy Model Dokumentu (DOM)](/words/cpp/aspose-words-document-object-model/) artykuł. Jednak Aspose.Words zapewnia własny mechanizm tłumaczenia dokumentów Markdown na DOM iz powrotem, dzięki czemu możemy z powodzeniem pracować z ich elementami, takimi jak formatowanie tekstu, tabele, nagłówki i inne.

W tym artykule wyjaśniono, w jaki sposób różne funkcje markdown można przetłumaczyć na Aspose.Words DOM iz powrotem do formatu Markdown.

## Złożoność tłumaczenia Markdown – DOM – Markdown

Główną trudnością tego mechanizmu jest nie tylko przetłumaczenie Markdown na DOM, ale także wykonanie odwrotnej transformacji – zapisanie dokumentu z powrotem do formatu Markdown przy minimalnych stratach. Istnieją elementy, takie jak cudzysłowy wielopoziomowe, dla których odwrotna transformacja nie jest trywialna.

Nasz silnik tłumaczeń pozwala użytkownikom nie tylko pracować ze złożonymi elementami w istniejącym dokumencie Markdown, ale także tworzyć własny dokument w formacie Markdown z oryginalną strukturą od podstaw. Aby utworzyć różne elementy, musisz użyć stylów o określonych nazwach zgodnie z pewnymi zasadami opisanymi w dalszej części tego artykułu. Takie style można tworzyć programowo.

## Wspólne Zasady Tłumaczenia

Używamy formatowania [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) dla bloków wbudowanych. Gdy nie ma bezpośredniej korespondencji dla funkcji Markdown w Aspose.Words DOM, używamy stylu znaków o nazwie zaczynającej się od niektórych specjalnych słów.

W przypadku bloków kontenerów używamy dziedziczenia stylów do oznaczania zagnieżdżonych funkcji Markdown. W takim przypadku, nawet jeśli nie ma funkcji zagnieżdżonych, używamy również stylów akapitów o nazwie zaczynającej się od niektórych specjalnych słów.

Listy punktowane i uporządkowane są również blokami kontenerów w Markdown. Ich zagnieżdżanie jest reprezentowane w DOM w taki sam sposób, jak w przypadku wszystkich innych bloków kontenerów wykorzystujących dziedziczenie stylu. Jednak dodatkowo listy w DOM odpowiadały formatowaniu liczb w stylu listy lub formatowaniu akapitu.

## Bloki Inline

Używamy formatowania [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) podczas tłumaczenia funkcji **Bold**, *Italic* lub ~~Strikethrough~~ inline markdown.

| Markdown funkcja | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Używamy stylu znaków o nazwie zaczynającej się od słowa `InlineCode`, po którym następuje opcjonalna kropka `(.)` i liczba backticks ```(`)``` dla funkcji `InlineCode`. Jeśli zostanie pominięta liczba backticks, domyślnie zostanie użyty jeden backtick.

| Markdown funkcja | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Klasa [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Klasa [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Klasa [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Bloki Kontenerowe

Dokument to sekwencja bloków kontenerów, takich jak nagłówki, akapity, listy, cudzysłowy i inne. Bloki kontenerowe można podzielić na 2 klasy: bloki liściowe i złożone Pojemniki. Bloki liści mogą zawierać tylko zawartość wbudowaną. Z kolei złożone pojemniki mogą zawierać inne bloki kontenerów, w tym bloki liści.

### Bloki Liści

Poniższa tabela przedstawia przykłady użycia Markdown bloków liści w Aspose.Words:

| Markdown funkcja | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | To jest prosty akapit o odpowiednim kształcie HorizontalRule:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, gdzie (1<= N <= 9).<br />Jest to tłumaczone na wbudowany styl i powinno mieć dokładnie określony wzór (nie są dozwolone żadne przyrostki ani przedrostki).<br />W przeciwnym razie będzie to zwykły akapit z odpowiednim stylem. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, Na podstawie stylu "Nagłówek N".<br />Jeśli (N >= 2), wówczas zostanie użyty " Heading 2", w przeciwnym razie " Heading 1".<br />Każdy przyrostek jest dozwolony, ale importer Aspose.Words używa odpowiednio liczb "1" i "2". |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br /> `[.]` i `[info string]` są opcjonalne. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Złożone Kontenery

Poniższa tabela przedstawia przykłady użycia Markdown złożonych kontenerów w Aspose.Words:

| Markdown funkcja | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />przyrostek w nazwie stylu jest opcjonalny, ale importer Aspose.Words używa uporządkowanych liczb 1, 2, 3, .... w przypadku zagnieżdżonych cytatów.<br />Zagnieżdżanie jest definiowane za pomocą odziedziczonych stylów. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Listy punktowane są reprezentowane za pomocą numeracji akapitów:<br />`get_ListFormat()->ApplyBulletDefault()`<br />mogą istnieć 3 typy list punktowanych. Różnią się tylko w formacie numeracji pierwszego poziomu. Są to odpowiednio: `‘-’`, `‘+’` lub `‘*’`. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Uporządkowane listy są reprezentowane za pomocą numeracji akapitów:<br />`get_ListFormat()->ApplyNumberDefault()`<br />mogą istnieć 2 znaczniki formatu liczb: ‘.’ i ‘)’. Domyślnym znacznikiem jest ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Tabele

Aspose.Words umożliwia również tłumaczenie tabel na DOM, Jak pokazano poniżej:

| Markdown funkcja | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) klasy. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Zobacz także

* [Praca z funkcjami Markdown ](/words/cpp/working-with-markdown-features/)

