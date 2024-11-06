---
title: Tipografie asiatică în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu tipografia asiatică
linktitle: Lucrul cu tipografia asiatică
description: "Lucrați cu tipografia asiatică folosind Java. Reglați spațiul dintre textul asiatic și Latin în Java."
type: docs
weight: 240
url: /ro/java/working-with-asian-typography/
---

Tipografia asiatică este un set de opțiuni pentru paragrafele de text din documentele scrise în limbile asiatice.

Aspose.Words suportă Tipografia asiatică folosind clasa [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) și unele dintre proprietățile sale.

## Reglați automat spațiul dintre textul sau numerele asiatice și latine

Dacă proiectați un șablon cu text atât din Asia de Est, cât și din latină și doriți să îmbunătățiți aspectul șablonului de formular controlând spațiile dintre ambele tipuri de text, puteți configura șablonul de formular pentru a ajusta automat spațiile dintre aceste două tipuri de text. Pentru a realiza acest lucru, puteți utiliza proprietățile [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) și [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) ale clasei `ParagraphFormat`.

Următorul exemplu de cod arată cum se utilizează proprietățile **AddSpaceBetweenFarEastAndAlpha** și **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Setați Opțiunile De Întrerupere A Liniei

Fila tipografie asiatică din caseta de dialog Proprietăți paragraf din Microsoft Word are grup de întrerupere a liniei. Opțiunile acestui grup pot fi setate utilizând [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) proprietățile clasei **ParagraphFormat**.

Următorul exemplu de cod arată cum să utilizați aceste proprietăți:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Schimbați spațierea paragrafelor asiatice și liniuțele

Următorul exemplu de cod arată cum să modificați spațierea paragrafelor asiatice și liniuțele:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}