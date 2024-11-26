---
title: Lucrul cu Fonturi în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu Fonturi
linktitle: Lucrul cu Fonturi
description: "Formatarea fontului în detalii folosind C#. Marcă de accent în C#. Obțineți distanța între linii de font folosind C#."
type: docs
weight: 230
url: /ro/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Fontul este un set de caractere cu o anumită dimensiune, culoare și model. Aspose.Words îți permite să lucrezi cu fonturi folosind spațiul de nume [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) și clasa [Font](https://reference.aspose.com/words/net/aspose.words/font/).

## Formatare font

"Formatarea curentă a fontului este reprezentată de obiectul **Font** returnat de proprietatea [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/)." "Clasa **Font** conține o gamă largă de proprietăți de font, replicând cele disponibile în Microsoft Word."

Exemplul următor de cod arată cum să se seteze formatarea fontului:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Proprietățile "Fill" sunt, de asemenea disponibile pentru fonturi pentru a seta formatarea umpluturii textului. Acest lucru face posibilă schimbarea, de exemplu, a culorii de prim plan sau a transparenței umplerii textului.

## Obținerea spațierii fontului

Spațierea fontului reprezintă distanța verticală dintre liniile de bază ale a două rânduri consecutive de text. Astfel, spațierea între rânduri include spațiul gol dintre rânduri și înălțimea caracterului în sine.

Proprietatea [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) a fost introdusă în clasa **Font** pentru a obține această valoare, așa cum se arată în exemplul de mai jos:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Font EmphasisMark

Unele limbi din Asia de Est folosesc un punct special de accent pentru a indica un accent. Clasa **Font** oferă proprietatea [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) pentru a obţine sau stabili valorile de enumerare care trebuie aplicate la formatare.

Exemplul următor de cod arată cum să se seteze proprietatea **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
