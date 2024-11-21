---
title: Tipografia asiatică în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu tipografia asiatică
linktitle: Lucrul cu tipografia asiatică
description: "Lucrez cu tipografia asiatică folosind C#. Ajustarea spațiului între textul asiatic și cel latin în C#."
type: docs
weight: 240
url: /ro/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Tipografia asiatică este o serie de opțiuni pentru paragrafe de text în documente scrise în limbi asiatice.

Aspose.Words suportă tipografia asiatică folosind clasa [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) și unele dintre proprietățile sale.

## Reglează automat spaţiul între textul sau numerele asiatice şi latine

Dacă proiectezi un șablon cu atât text în limba asiatică de est cât și text latin și doriți să îmbunătățiți aspectul șablonului formularului dvs. controlând spațiile dintre aceste două tipuri de text, puteți configura șablonul formularului pentru a ajusta automat spațiile dintre cele două tipuri de text. Pentru a face acest lucru, puteți folosi proprietățile [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) și [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) ale clasei `ParagraphFormat`.

Exemplul de cod următor arată cum să folosești proprietățile **AddSpaceBetweenFarEastAndAlpha** și **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Opțiuni întrerupere linie setate

Tabloul de tipografie asiatică din caseta de dialog a proprietăților paragrafului în Microsoft Word are grupare punct de oprire linie. Opțiunile grupului pot fi setate folosind proprietățile [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) ale clasei **ParagraphFormat**.

Exemplul de cod următor arată cum să folosești aceste proprietăți:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
