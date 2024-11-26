---
title: Lucrul cu paragrafe în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu paragrafele
linktitle: Lucrul cu paragrafele
description: "Inserare paragraf într-un document în C#. Stabilește stiluri de paragraf în C#. Lucrează cu separatorul de stil paragraf în C#. Manipulează nodul de paragraf folosind C#."
type: docs
weight: 210
url: /ro/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Un paragraf este o serie de caractere combinate într-un bloc logic și care se termină cu un caracter special - o *întrerupere de paragraf*. În Aspose.Words, un paragraf este reprezentat de clasa [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

## Introduceți un paragraf

Pentru a introduce un nou paragraf în document, de fapt, ai nevoie să introduci un caracter de pauză de paragraf în el. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) nu introduce doar o șir de text în document, ci și adaugă o pauză de paragraf.

"Formatarea curentă a fontului este specificată și de proprietatea [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/), iar formatarea curentă a paragrafului este determinată de proprietatea [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/)." În secțiunea următoare vom discuta în detaliu despre formatarea paragrafelor.

Exemplul de cod următor arată cum se inserează un paragraf într-un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Format Paragraful

Formatarea paragrafelor curente este reprezentată de obiectul [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) care este returnat de proprietatea [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Acest obiect încapsulează diverse proprietăți de formatare a paragrafelor disponibile în Microsoft Word. Puteți reseta cu ușurință formatarea unui paragraf la stilul său implicit – Normal, aliniat spre stânga, fără indentare, fără spațiere, fără margini, fără umbrire – apelând [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

Exemplul de cod următor arată cum să se stabilească formatarea paragrafelor:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Aplică Stilul de Paragraful

Unele obiecte de formatare, cum ar fi **Font** sau **ParagraphFormat**, acceptă stiluri. Un stil încorporat sau definit de utilizator este reprezentat de un [Style](https://reference.aspose.com/words/net/aspose.words/style/) obiect, care conține proprietățile stilului corespunzătoare, cum ar fi numele, stilul de bază, fontul, formatarea paragrafului de stil și așa mai departe.

În plus, obiectul **Style** expune proprietatea [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/), care returnează identificatorul de stil independent de limbă reprezentat de valoarea enumerației [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/). Faptul este că numele stilurilor încorporate din Microsoft Word sunt localizate pentru diferite limbi. Folosind identificatorul stilului, puteți găsi stilul corect indiferent de limba documentului. Valorile enumerării corespund stilurilor încorporate, cum ar fi Microsoft Word, cum ar fi *Normal*, *Titluri 1*, *Titluri 2* și așa mai departe. Toate stilurile definite de utilizator sunt stabilite la valoarea enumerării **StyleIdentifier.User**.

Exemplul de cod următor arată cum se aplică un stil de paragraful:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Introduce Stil Separator pentru a Separa Stiluri de Paragrafe Diferite

Un separator de stil poate fi adăugat la sfârșitul unui paragraf folosind scurtătura de tastatură Ctrl+Alt+Enter în Microsoft Word. Această caracteristică vă permite să utilizați două stiluri diferite de paragraf în același paragraf logic tipărit. Dacă doriți ca un anumit text de la începutul unui antet specific să apară în tabelul de conținuturi, dar nu doriți ca întregul antet să fie afișat în tabelul de conținuturi, puteți folosi această funcție.

Exemplul de cod următor arată cum se inserează un separator de stil pentru a acomoda diferite stiluri de paragrafe:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identifică Separatorul Stilului Paragraf

Aspose.Words expune proprietatea publică [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) pe clasa `Paragraph` pentru a identifica un paragraf cu un separatore de stil, așa cum se vede în exemplul de mai jos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Aplică margini și umbrire unui paragraf

Bordurile în Aspose.Words sunt reprezentate de clasa [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) – aceasta este o colecție de [Border](https://reference.aspose.com/words/net/aspose.words/border/) obiecte accesate prin indice sau tip de bordură. Tipul de contur este reprezentat în continuare prin enumerarea [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/). Unele valori de enumerare se aplică la mai multe sau doar la un singur element de document. De exemplu, **BorderType.Bottom** se aplică la un paragraf sau o celulă de tabel, în timp ce **BorderType.DiagonalDown** specifică un contur diagonal într-o celulă de tabel doar.

Atât colecția de borduri, cât și fiecare bordură separată au atribute similare, cum ar fi culoarea, stilul liniei, lățimea liniei, distanța față de text și umbra opțională. Ei sunt reprezentați de proprietăți cu același nume. Poţi obţine tipuri de borduri diferite prin combinarea valorilor proprietăţilor. În plus, obiectele **BorderCollection** și **Border** vă permit să resetați aceste valori la valorile lor implicite prin apelarea metodei [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Notă că atunci când proprietățile de margine sunt resetate la valorile lor implicite, marginea devine invizibilă.

{{% /alert %}}

Aspose.Words are și clasa [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) care conține atribute de umbrire pentru elementele documentului. Puteți seta textura de umbrire dorită și culorile care se aplică la fundalul și la primul plan al unui obiect folosind valoarea enumerării [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/). **TextureIndex** vă permite, de asemenea, să aplicați diferite modele pentru **Shading** obiect. De exemplu, pentru a seta culoarea de fundal pentru un element de document, folosiți valoarea **TextureIndex.TextureSolid** și setați culoarea de umbră în prim plan după cum se potrivește.

Exemplul de cod următor arată cum se aplică borduri și umbrire unui paragraf:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Numără rânduri paragraf

Dacă doriți să numărați numărul de linii dintr-un paragraf pentru orice document Word, codul următor poate fi utilizat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
