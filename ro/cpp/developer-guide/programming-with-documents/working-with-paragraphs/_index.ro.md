---
title: Lucrul cu paragrafele din C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu paragrafe
linktitle: Lucrul cu paragrafe
description: "Practici de manipulare a nodurilor de paragraf folosind C++."
type: docs
weight: 210
url: /ro/cpp/working-with-paragraphs/
---

Un paragraf este un set de caractere combinate într – un bloc logic și se termină cu un caracter special-a *paragraph break*. În Aspose.Words, un paragraf este reprezentat de clasa [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Introduceți un paragraf

Pentru a insera un nou paragraf în document, de fapt, trebuie să introduceți un caracter de rupere a paragrafului în el. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) introduce nu numai un șir de text în document, ci adaugă și o pauză de paragraf.

Formatarea fontului curent este, de asemenea, specificată de proprietatea [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/), iar formatarea paragrafului curent este determinată de proprietatea [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). În secțiunea următoare, vom intra în mai multe detalii despre formatarea paragrafelor.

Următorul exemplu de cod arată cum să inserați un paragraf într-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Format Paragraf

Formatarea paragrafului curent este reprezentată de un obiect **ParagraphFormat** Care este returnat de proprietatea **ParagraphFormat**. Acest obiect încapsulează diferite proprietăți de formatare a paragrafelor disponibile în Microsoft Word. Puteți reseta cu ușurință formatarea paragrafului la implicit la stilul Normal, aliniat la stânga fără indentare, fără spațiere, fără margini și fără umbrire apelând [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

Următorul exemplu de cod arată cum să setați formatarea paragrafului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Aplicați Stilul Paragrafului

Unele obiecte de formatare, cum ar fi Font sau ParagraphFormat, acceptă stiluri. Un singur stil încorporat sau definit de utilizator este reprezentat de un obiect `Style` care conține proprietățile stilului corespunzătoare, cum ar fi numele, stilul de bază, fontul și formatarea paragrafului stilului și așa mai departe.

Mai mult, un obiect **Style** furnizează proprietatea [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) care returnează un identificator de stil independent de localizare reprezentat de valoarea de enumerare **StyleIdentifier**. Ideea este că numele stilurilor încorporate în Microsoft Word sunt localizate pentru diferite limbi. Folosind un identificator de stil, puteți găsi stilul corect indiferent de limba documentului. Valorile de enumerare corespund Microsoft Word stiluri încorporate, cum ar fi *Normal*, *Heading 1*, *Heading 2* etc. Tuturor stilurilor definite de utilizator li se atribuie valoarea **StyleIdentifier.User**.

Următorul exemplu de cod arată cum se aplică un stil de paragraf:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Inserați Separator de stil pentru a pune diferite stiluri de paragraf

Separatorul de stil poate fi adăugat la sfârșitul unui paragraf folosind comanda rapidă de la tastatură Ctrl + Alt + Enter în MS Word. Această caracteristică permite două stiluri diferite de paragraf utilizate într-un paragraf tipărit logic. Dacă doriți ca un text de la începutul unui anumit titlu să apară într-un cuprins, dar nu doriți ca întregul titlu să apară în Cuprins, puteți utiliza această caracteristică.

Următorul exemplu de cod arată cum să inserați un separator de stil pentru a se potrivi diferitelor stiluri de paragraf:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identificați Separatorul De Stil De Paragraf

` `Aspose.Words oferă o proprietate publică [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) într-o clasă `Paragraph` permite identificarea paragrafului Separator de stil așa cum se arată în exemplul de mai jos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Aplicați margini și umbrire la un paragraf

Frontierele din Aspose.Words sunt reprezentate de clasa [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) - Aceasta este o colecție de obiecte [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) care sunt accesate prin index sau prin tipul de frontieră. Tipul de frontieră este reprezentat de enumerarea `BorderType`. Unele valori ale enumerării sunt aplicabile mai multor sau unui singur element de document. De exemplu, **BorderType.Bottom** este aplicabil unui paragraf sau unei celule de tabel, în timp ce **BorderType.DiagonalDown** specifică marginea diagonală numai într-o celulă de tabel.

Atât colecția de chenar, cât și fiecare chenar separat au atribute similare, cum ar fi culoarea, stilul liniei, lățimea liniei, distanța față de text și umbra opțională. Ele sunt reprezentate de proprietăți cu același nume. Puteți obține diferite tipuri de margini combinând valorile proprietății. În plus, ambele obiecte **BorderCollection** și **Border** vă permit să resetați aceste valori la valorile implicite apelând metoda [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Rețineți că atunci când proprietățile chenarului sunt resetate la valorile implicite, chenarul devine invizibil.

{{% /alert %}}

Aspose.Words are, de asemenea, clasa [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) conține atribute de umbrire pentru elementele documentului. Puteți seta textura de umbrire dorită și culorile care sunt aplicate pe fundalul și prim-planul elementului.

Textura de umbrire este setată cu o valoare de enumerare [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) care permite aplicarea diferitelor modele obiectului **Shading**. De exemplu, pentru a seta o culoare de fundal pentru un element de document, utilizați valoarea [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) și setați culoarea de umbrire în prim plan, după caz.

Următorul exemplu de cod arată cum să aplicați margini și umbrire unui paragraf:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
