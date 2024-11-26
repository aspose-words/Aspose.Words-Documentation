---
title: Tipografie asiatică în Python
second_title: Aspose.Words pentru Python
articleTitle: Lucrul cu tipografia asiatică
linktitle: Lucrul cu tipografia asiatică
description: "Lucrați cu tipografia asiatică folosind Python. Reglați spațiul dintre textul asiatic și Latin în Python."
type: docs
weight: 240
url: /ro/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Tipografia asiatică este un set de opțiuni pentru paragrafele de text din documentele scrise în limbile asiatice.

Aspose.Words suportă Tipografia asiatică folosind clasa [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) și unele dintre proprietățile sale.

## Reglați automat spațiul dintre textul sau numerele asiatice și latine

Dacă proiectați un șablon cu text atât din Asia de Est, cât și din latină și doriți să îmbunătățiți aspectul șablonului de formular controlând spațiile dintre ambele tipuri de text, puteți configura șablonul de formular pentru a ajusta automat spațiile dintre aceste două tipuri de text. Pentru a realiza acest lucru, puteți utiliza proprietățile [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) și [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) ale clasei `ParagraphFormat`.

Următorul exemplu de cod arată cum se utilizează proprietățile **AddSpaceBetweenFarEastAndAlpha** și **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Setați Opțiunile De Întrerupere A Liniei

Fila tipografie asiatică din caseta de dialog Proprietăți paragraf din Microsoft Word are grup de întrerupere a liniei. Opțiunile acestui grup pot fi setate utilizând [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) proprietățile clasei **ParagraphFormat**.

Următorul exemplu de cod arată cum să utilizați aceste proprietăți:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
