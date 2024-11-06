---
title: Lucrul cu fonturi în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu fonturi
linktitle: Lucrul cu fonturi
description: "Personalizați setările fontului folosind Python."
type: docs
weight: 230
url: /ro/python-net/working-with-fonts/
---

Un font este un set de caractere cu o anumită dimensiune, culoare și design. Aspose.Words vă permite să lucrați cu fonturi folosind modulul [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) și clasa [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Formatarea Fontului

Formatarea curentă a fontului este reprezentată de obiectul **Font** returnat de proprietatea [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). Clasa **Font** conține o mare varietate de proprietăți De font, replicând cele disponibile în Microsoft Word.

Următorul exemplu de cod arată cum să setați formatarea fontului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Proprietățile de umplere sunt acum disponibile și pentru fonturi pentru a seta formatarea de umplere a textului. Oferă posibilitatea de a schimba, de exemplu, culoarea din prim plan sau transparența umplerii textului.

## Obținerea Spațierii Liniei Fontului

Spațierea liniilor de Font este distanța verticală dintre liniile de bază ale două linii consecutive de text. Deci, spațierea liniilor include spațiul gol dintre linii împreună cu înălțimea personajului în sine.

Proprietatea [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) a fost introdusă în clasa [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) pentru a obține această valoare așa cum se arată în exemplul de mai jos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Font EmphasisMark

Unele limbi din Asia de Est folosesc un semn special de accentuare pentru a indica un accent. Clasa **Font** furnizează proprietatea [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) pentru a obține sau a seta valorile de enumerare [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) care trebuie aplicate în formatare.

Următorul exemplu de cod arată cum să setați proprietatea **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
