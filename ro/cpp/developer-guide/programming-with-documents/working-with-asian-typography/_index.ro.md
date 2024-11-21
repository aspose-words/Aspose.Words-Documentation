---
title: Tipografie asiatică în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu tipografia asiatică
linktitle: Lucrul cu tipografia asiatică
description: "Lucrați cu tipografia asiatică folosind C++. Reglați spațiul dintre textul asiatic și Latin în C++."
type: docs
weight: 240
url: /ro/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Tipografia asiatică este un set de opțiuni pentru paragrafele de text din documentele scrise în limbile asiatice.

Aspose.Words suportă Tipografia asiatică folosind clasa [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) și unele dintre proprietățile sale.

## Reglați automat spațiul dintre textul sau numerele asiatice și latine

Dacă proiectați un șablon cu text atât din Asia de Est, cât și din latină și doriți să îmbunătățiți aspectul șablonului de formular controlând spațiile dintre ambele tipuri de text, puteți configura șablonul de formular pentru a ajusta automat spațiile dintre aceste două tipuri de text. Pentru a realiza acest lucru, puteți utiliza proprietățile [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) și [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) ale clasei `ParagraphFormat`.

Următorul exemplu de cod arată cum se utilizează proprietățile **AddSpaceBetweenFarEastAndAlpha** și **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Setați Opțiunile De Întrerupere A Liniei

Fila tipografie asiatică din caseta de dialog Proprietăți paragraf din Microsoft Word are grup de întrerupere a liniei. Opțiunile acestui grup pot fi setate utilizând [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) proprietățile clasei **ParagraphFormat**.

Următorul exemplu de cod arată cum să utilizați aceste proprietăți:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
