---
title: Lucrul cu fonturi în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu fonturi
linktitle: Lucrul cu fonturi
description: "Formatarea fontului în detalii folosind C++."
type: docs
weight: 230
url: /ro/cpp/working-with-fonts/
---

Un font este un set de caractere cu o anumită dimensiune, culoare și design. Aspose.Words vă permite să lucrați cu fonturi folosind spațiul de nume [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) și clasa [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Formatarea Fontului

Formatarea curentă a fontului este reprezentată de obiectul **Font** returnat de proprietatea [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). Clasa **Font** conține o mare varietate de proprietăți De font, replicând cele disponibile în Microsoft Word.

Următorul exemplu de cod arată cum să setați formatarea fontului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Proprietățile de umplere sunt acum disponibile și pentru fonturi pentru a seta formatarea de umplere a textului. Oferă posibilitatea de a schimba, de exemplu, culoarea din prim plan sau transparența umplerii textului.

## Obținerea Spațierii Liniei Fontului

Spațierea liniilor de Font este distanța verticală dintre liniile de bază ale două linii consecutive de text. Deci, spațierea liniilor include spațiul gol dintre linii împreună cu înălțimea personajului în sine.

Proprietatea [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) a fost introdusă în clasa **Font** pentru a obține această valoare, așa cum se arată în exemplul de mai jos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Font EmphasisMark

Unele limbi din Asia de Est folosesc un semn special de accentuare pentru a indica un accent. Clasa **Font** furnizează proprietatea [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) pentru a obține sau seta valorile de enumerare `EmphasisMark` care trebuie aplicate la formatare.

Următorul exemplu de cod arată cum să setați proprietatea **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
