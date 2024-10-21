---
title: Traduc Markdown la DOM
second_title: Aspose.Words pentru .NET
articleTitle: Traduc Markdown în Document Object Model (DOM)
linktitle: Traduc Markdown în Document Object Model (DOM)
type: docs
description: "Traduceti un Markdown document in Document Object Model si apoi inapoi folosind C#. Astfel, puteți lucra cu documente existente complexe Markdown și programatic crea un Markdown document de la zero."
weight: 20
url: /ro/net/translate-markdown-to-document-object-model/
---

Pentru a citi programatic, manipula și modifica conținutul și formatarea unui document, ai nevoie să-l traduci în Aspose.Words Document Object Model ( DOM ).

Spre deosebire de documentele Word, Markdown nu respectă DOM descris în [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/) articolul. Aspose.Words oferă însă propriul său mecanism de traducere a documentelor Markdown în DOM și înapoi, astfel încât putem lucra cu succes cu elementele lor, cum ar fi formatarea textului, tabelele, antetele și altele.

Acest articol explică modul în care diferite markdown caracteristici pot fi traduse în Aspose.Words DOM și înapoi la Markdown format.

## Complexitatea traducerii Markdown - DOM - Markdown

Principala dificultate a acestui mecanism este nu doar să traducă Markdown în DOM, dar și să facă transformarea inversă – să salveze documentul înapoi la formatul Markdown cu pierderi minime. Există elemente, cum ar fi ghilimele cu niveluri multiple, pentru care transformarea inversă nu este triviantă.

"Motor de traducere permite utilizatorilor nu numai să lucreze cu elemente complexe într-un document existent în Markdown, dar și să creeze propriul document într-un format Markdown cu structura originală din greu." Pentru a crea diverse elemente trebuie să folosiți stiluri cu nume specifice conform unor reguli descrise mai târziu în acest articol. Astfel de stiluri pot fi create programatic.

## Principii de traducere obişnuite

Utilizăm formatarea [Font](https://reference.aspose.com/words/net/aspose.words/font/) pentru blocuri inline. Când nu există nici o corespondență directă pentru un Markdown caracteristică în Aspose.Words DOM, folosim un stil de caracter cu un nume care începe din unele cuvinte speciale.

Pentru blocuri de containere folosim moștenirea stilului pentru a denumi caracteristici închise Markdown. În acest caz, chiar și atunci când nu există caracteristici închise, folosim, de asemenea, stiluri de paragraf cu un nume care începe de la anumite cuvinte speciale.

Lista cu marcatori și lista numerotată sunt blocuri de containere în Markdown ca și. Aspirarea lor este reprezentată în DOM același mod ca și pentru toate celelalte blocuri de containere folosind moștenirea stilului. "Însă, în plus, liste DOM au corespondență formatare numerică în stil de listă sau formatare paragrafică."

## Blocuri în linie

Noi folosim [Font](https://reference.aspose.com/words/net/aspose.words/font/) formatare atunci când traducem **Bold**, *Italic* sau caracteristici markdown inline.

| Markdown caracteristică | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br /> `{1}` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}} |  |
| **Italic**<br /> `*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

Utilizăm un stil de caracter cu un nume care începe cu cuvântul `InlineCode`, urmat de o linie opțională `(.)` și un număr de accente înapoi ```(`)``` pentru caracteristica `InlineCode`. Dacă se omite un număr de backtick-uri, atunci un singur backtick va fi folosit ca implicit.

| Markdown caracteristică | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br /> `{1}` | `Font.StyleName = “InlineCode[.][N]”` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}} |  |
| **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` | Clasa. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}} |  |
| **Link**<br /> `{1}` <br /> `{2}` <br /> `{3}` <br /> `{4})` | Clasa. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}} |  |
| **Image**<br /> `{1}` <br /> `{2}` <br /> `{3}` <br /> `{4})` | Clasa. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}} |  |

## Blokuri de Container

Un document este o secvență de blocuri de containere, cum ar fi titluri, paragrafe, liste, citate și altele. Blocurile de container pot fi împărțite în 2 clase: blocuri de frunze și containere complexe. Blocurile de frunze pot conține doar conținut în linie. Container complexe pot conține la rândul lor alte blocuri de containere, inclusiv blocuri de frunze.

### Blocuri de frunze

Tabelul de mai jos prezintă exemple de utilizare a Markdown blocuri Leaf în Aspose.Words:

| Markdown caracteristică | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br /> `-----` | Aceasta este un paragraf simplu cu o formă HorizontalRule corespunzătoare:<br /> `DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}} |  |
| **ATX Heading**<br /> `# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = “Heading N”`, unde (1<= N <=9). <br /> Acest lucru este tradus într-un stil încorporat și ar trebui să fie exact modelul specificat (nu se permit suffixe sau prefixe). <br /> Altfel, va fi doar un paragraf obișnuit cu un stil corespunzător. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}} |  |
| **Setext Heading** <br /> `===` (dacă nivel de antet 1), <br /> `---` (dacă nivel de antet 2) | `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, bazat pe `“Heading N”` stil.<br />Dacă (N >= 2), atunci `“Heading 2”` va fi utilizat, altfel `“Heading 1”`.<br />Orice sufix este permis, dar importatorul Aspose.Words folosește numerele "1" și "2" respectiv. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
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
| **Indented Code** | `ParagraphFormat.StyleName = “IndentedCode[some suffix]”` |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}} |  |
| **Fenced Code** <br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `ParagraphFormat.StyleName = “FencedCode[.][info string]”` < br /> The `[.]` și `[info string]` sunt opționale. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}} |  |

### Containere complexe

Tabelul de mai jos prezintă exemple de utilizare a Markdown Complex Containers în Aspose.Words:

| Markdown caracteristică | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br /> `> quote,` <br /> `>> nested quote` | `ParagraphFormat.StyleName = “Quote[some suffix]”` <br /> Sufixul din numele stilului este opțional, dar Aspose.Words importatorul folosește numerele ordonate 1, 2, 3, ... în cazul citatelor închise.<br /> Închiderea se definește prin stilurile moștenite. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
| **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` | Liste cu marcatori sunt reprezentate folosind numerotarea paragrafelor: <br /> `ListFormat.ApplyBulletDefault()` <br /> Pot exista 3 tipuri de liste cu marcatori. Ei sunt doar dif în formatul numerotării de foarte primul nivel. Acestea sunt: `‘-’`, `‘+’` sau `‘*’` respectiv. |
| {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Liste ordonate sunt reprezentate folosind numerotarea paragrafelor:<br /> `ListFormat.ApplyNumberDefault()` <br /> Există 2 marcatori de formatare a numerelor: ".", și ")". Marcatorul implicit este ".". |
| {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |  |

### Tablouri

"Aspose.Words permite, de asemenea, traducerea tabelelor în DOM, așa cum se arată mai jos:"

| Markdown caracteristică | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `Table` <br /> `a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) şi [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) clase. |
| {{< highlight csharp >}}// Use a document builder to add content to the document.
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
builder.Writeln("d");{{< /highlight >}} |  |

## Vezi și

* [Working with Markdown Features](/words/net/working-with-markdown-features/)

