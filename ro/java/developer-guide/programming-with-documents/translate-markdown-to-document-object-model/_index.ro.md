---
title: Traduceți Markdown în DOM
second_title: Aspose.Words pentru Java
articleTitle: Traduceți Markdown în Document Object Model (DOM)
linktitle: Traduceți Markdown în Document Object Model (DOM)
type: docs
description: "Tarnslate un document Markdown pentru a documenta Modelul obiect și înapoi. Deci, puteți lucra cu Markdown existent complex și puteți crea programatic un document Markdown de la zero folosind Java."
weight: 20
url: /ro/java/translate-markdown-to-document-object-model/
---

Pentru a citi, manipula și modifica în mod programatic conținutul și formatarea unui document, trebuie să îl traduceți în Aspose.Words Document Object Model (DOM).

Spre deosebire de documentele Word, Markdown nu este conform cu DOM descris în [Aspose.Words Model Obiect Document (DOM)](/words/java/aspose-words-document-object-model/) articolul. Cu toate acestea, Aspose.Words oferă propriul mecanism pentru traducerea documentelor Markdown în DOM și înapoi, astfel încât să putem lucra cu succes cu elementele lor, cum ar fi formatarea textului, tabele, anteturi și altele.

Acest articol explică modul în care diferitele caracteristici markdown pot fi traduse în Aspose.Words DOM și înapoi la formatul Markdown.

## Complexitatea traducerii Markdown – DOM – Markdown

Principala dificultate a acestui mecanism nu este doar de a traduce Markdown în DOM, ci și de a face transformarea inversă – pentru a salva documentul înapoi în format Markdown cu pierderi minime. Există elemente, cum ar fi citatele pe mai multe niveluri, pentru care transformarea inversă nu este banală.

Motorul nostru de traducere permite utilizatorilor nu numai să lucreze cu elemente complexe într-un document Markdown existent, ci și să își creeze propriul document în format Markdown cu structura originală de la zero. Pentru a crea diverse elemente, trebuie să utilizați stiluri cu nume specifice conform anumitor reguli descrise mai târziu în acest articol. Astfel de stiluri pot fi create programatic.

## Principii Comune De Traducere

Folosim formatarea [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) pentru blocurile inline. Când nu există corespondență directă pentru o caracteristică Markdown în Aspose.Words DOM, folosim un stil de caractere cu un nume care începe de la câteva cuvinte speciale.

Pentru blocurile de containere, folosim moștenirea stilului pentru a denota caracteristicile imbricate Markdown. În acest caz, chiar și atunci când nu există caracteristici imbricate, folosim și stiluri de paragraf cu un nume care pornește de la câteva cuvinte speciale.

Listele cu marcatori și ordonate sunt și blocuri de containere în Markdown. Cuibul lor este reprezentat în DOM în același mod ca și pentru toate celelalte blocuri de containere care utilizează moștenirea stilului. Cu toate acestea, în plus, listele din DOM au corespuns formatării numerelor fie în stilul listei, fie în formatarea paragrafelor.

## Blocuri Inline

Folosim formatarea [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) atunci când traducem **Bold**, *Italic* sau ~~Strikethrough~~ în Linie markdown caracteristici.

| Markdown caracteristică | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Folosim un stil de caractere cu un nume care începe de la cuvântul `InlineCode`, urmat de un punct opțional `(.)` și un număr de backtick-uri ```(`)``` pentru caracteristica `InlineCode`. Dacă un număr de backtick-uri este ratat, atunci un backtick va fi utilizat în mod implicit.

| Markdown caracteristică | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Clasa [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Clasa [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Clasa [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Blocuri De Containere

Un document este o secvență de blocuri de containere, cum ar fi titluri, paragrafe, liste, citate și altele. Blocurile de containere pot fi împărțite în clase 2: blocuri de frunze și containere complexe. Blocurile de frunze pot conține doar conținut în linie. Containerele complexe, la rândul lor, pot conține alte blocuri de containere, inclusiv blocuri de frunze.

### Blocuri De Frunze

Tabelul de mai jos prezintă exemple de utilizare a Markdown blocuri de frunze în Aspose.Words:

| Markdown caracteristică | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Acesta este un paragraf simplu cu o formă corespunzătoare HorizontalRule:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, unde (1<= N <= 9).<br />Acest lucru este tradus într-un stil încorporat și ar trebui să fie exact din modelul specificat (nu sunt permise sufixe sau prefixe).<br />În caz contrar, va fi doar un paragraf obișnuit cu un stil corespunzător. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, bazat pe stilul `"Heading N"`.<br />Dacă (N > = 2), atunci `"Heading 2"` va fi folosit, altfel `"Heading 1"`.<br />Orice sufix este permis, dar Aspose.Words importatorul folosește numerele "1" și "2" respectiv. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Containere Complexe

Tabelul de mai jos prezintă exemple de utilizare a containerelor complexe Markdown în Aspose.Words:

| Markdown caracteristică | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />sufixul din numele stilului este opțional, dar Aspose.Words importatorul folosește numerele ordonate1, 2, 3, .... în cazul cotațiilor imbricate.<br />Cuibul este definit prin stilurile moștenite. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Listele cu marcatori sunt reprezentate folosind numerotarea paragrafelor:<br />`ListFormat.ApplyBulletDefault()`<br />pot exista 3 tipuri de liste cu marcatori. Ele sunt diferite doar într-un format de numerotare de la primul nivel. Acestea sunt: `‘-’`, `‘+’` sau `‘*’` respectiv. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Listele ordonate sunt reprezentate folosind numerotarea paragrafelor:<br />`ListFormat.ApplyNumberDefault()`<br />pot exista 2 markeri de format numeric: ‘.’ și ‘)’. Marcatorul implicit este ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Tabele

Aspose.Words permite, de asemenea, traducerea tabelelor în DOM, după cum se arată mai jos:

| Markdown caracteristică | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) și [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) clase. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Vezi Și

* [Lucrul cu Markdown Caracteristici](/words/java/working-with-markdown-features/)

