---
title: Lucrul cu paragrafele din Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu paragrafe
linktitle: Lucrul cu paragrafe
description: "Introduceți paragraful și specificați formatarea acestuia într-un document folosind Python."
type: docs
weight: 210
url: /ro/python-net/working-with-paragraphs/
---

Un paragraf este un set de caractere combinate într – un bloc logic și se termină cu un caracter special-a *paragraph break*. În Aspose.Words, un paragraf este reprezentat de clasa [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Introduceți un paragraf

Pentru a insera un nou paragraf în document, de fapt, trebuie să introduceți un caracter de rupere a paragrafului în el. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) inserează și un șir de text în document, dar în plus, adaugă o pauză de paragraf.

Formatarea fontului curent este, de asemenea, specificată de proprietatea [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), iar formatarea paragrafului curent este determinată de proprietatea [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

Următorul exemplu de cod arată cum să inserați un paragraf într-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Format Paragraf

Formatarea paragrafului curent este reprezentată de un obiect [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) Care este returnat de proprietatea [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Acest obiect încapsulează diferite proprietăți de formatare a paragrafelor disponibile în Microsoft Word. Puteți reseta cu ușurință formatarea paragrafului la implicit la stilul Normal, aliniat la stânga, fără indentare, fără spațiere, fără margini și fără umbrire apelând [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

Următorul exemplu de cod arată cum să setați formatarea paragrafului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Aplicați un stil de paragraf

Unele obiecte de formatare, cum ar fi [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) sau [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/), acceptă stiluri. Un singur stil încorporat sau definit de utilizator este reprezentat de un obiect [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) care conține proprietățile stilului corespunzătoare, cum ar fi numele, stilul de bază, fontul și formatarea paragrafului stilului și așa mai departe.

Mai mult, un obiect [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) furnizează proprietatea [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) care returnează un identificator de stil independent de localizare reprezentat de o valoare de enumerare [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). Ideea este că numele stilurilor încorporate în Microsoft Word sunt localizate pentru diferite limbi. Folosind un identificator de stil, puteți găsi stilul corect indiferent de limba documentului. Valorile de enumerare corespund stilurilor încorporate Microsoft Word, cum ar fi Normal, Heading 1, Heading 2 etc. Tuturor stilurilor definite de utilizator li se atribuie valoarea [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user).

Următorul exemplu de cod arată cum se aplică un stil de paragraf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Inserați Separator de stil pentru a pune diferite stiluri de paragraf

Un separator de stil poate fi adăugat la sfârșitul unui paragraf folosind comanda rapidă de la tastatură Ctrl + Alt + Enter în MS Word. Această caracteristică permite două stiluri diferite de paragraf utilizate într-un paragraf tipărit logic. Dacă doriți ca un text de la începutul unui anumit titlu să apară într-un cuprins, dar nu doriți ca întregul titlu să apară în Cuprins, puteți utiliza această caracteristică.

Următorul exemplu de cod arată cum să inserați un separator de stil pentru a se potrivi diferitelor stiluri de paragraf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identificați Separatorul De Stil De Paragraf

Aspose.Words oferă o proprietate publică [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) într-o clasă [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) permite identificarea paragrafului Separator de stil, așa cum se arată în exemplul de mai jos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Aplicați margini și umbrire la un paragraf

Frontierele sunt reprezentate de [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Aceasta este o colecție de obiecte [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) care sunt accesate prin index sau prin tipul de frontieră. Tipul de frontieră este reprezentat de enumerarea [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Unele valori ale enumerării sunt aplicabile mai multor sau unui singur element de document. De exemplu, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) este aplicabil unui paragraf sau unei celule de tabel, în timp ce [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) specifică marginea diagonală numai într-o celulă de tabel.

Atât colecția de chenar, cât și fiecare chenar separat au atribute similare, cum ar fi culoarea, stilul liniei, lățimea liniei, distanța față de text și umbra opțională. Ele sunt reprezentate de proprietăți cu același nume. Puteți obține diferite tipuri de margini combinând valorile proprietății. În plus, ambele obiecte [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) și [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) vă permit să resetați aceste valori la valorile implicite apelând metoda [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Rețineți că atunci când proprietățile chenarului sunt resetate la valorile implicite, chenarul devine invizibil.

{{% /alert %}}

Aspose.Words are, de asemenea, clasa [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) conține atribute de umbrire pentru elementele documentului. Puteți seta textura de umbrire dorită și culorile care sunt aplicate pe fundalul și prim-planul elementului.

Textura de umbrire este setată cu o valoare de enumerare [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) care permite aplicarea diferitelor modele obiectului [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). De exemplu, pentru a seta o culoare de fundal pentru un element de document, utilizați valoarea [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) și setați culoarea de umbrire în prim plan, după caz. Exemplul de mai jos arată cum să aplicați margini și umbrire la un paragraf.

Următorul exemplu de cod arată cum să aplicați margini și umbrire unui paragraf:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
