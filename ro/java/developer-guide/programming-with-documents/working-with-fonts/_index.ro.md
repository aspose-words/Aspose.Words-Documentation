---
title: Lucrul cu fonturi în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu fonturi
linktitle: Lucrul cu fonturi
description: "Formatarea fontului în detalii folosind Java."
type: docs
weight: 230
url: /ro/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Un font este un set de caractere cu o anumită dimensiune, culoare și design. Aspose.Words vă permite să lucrați cu fonturi folosind diferite clase legate de fonturi, inclusiv clasa [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## Formatarea Fontului

Formatarea curentă a fontului este reprezentată de un obiect **Font** returnat de proprietatea [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont). Clasa **Font** conține o mare varietate de proprietăți De font posibile în Microsoft Word.

Următorul exemplu de cod arată cum să setați formatarea fontului:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Proprietățile de umplere sunt acum disponibile și pentru fonturi pentru a seta formatarea de umplere a textului. Oferă posibilitatea de a schimba, de exemplu, culoarea din prim plan sau transparența umplerii textului.

## Obținerea Spațierii Liniei Fontului

Spațierea liniilor unui font este distanța verticală dintre liniile de bază ale două linii consecutive de text. Astfel, distanța dintre linii include spațiul gol dintre linii împreună cu înălțimea personajului în sine.

Proprietatea [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) a fost introdusă în clasa **Font** pentru a obține această valoare așa cum se arată în exemplul de mai jos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Font EmphasisMark

Clasa **Font** oferă proprietatea [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) pentru a obține sau a seta valorile de enumerare EmphasisMark care trebuie aplicate în formatare.

Următorul exemplu de cod arată cum să setați proprietatea **EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
