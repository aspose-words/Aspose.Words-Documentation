---
title: Lucrul cu Linked TextBoxes în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu Linked TextBoxes
linktitle: Lucrul cu Linked TextBoxes
description: "Introducere în caracteristica textboxes legate în Aspose.Words pentru Java."
type: docs
weight: 250
url: /ro/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

În Aspose.Words, clasa [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) este utilizată pentru a specifica modul în care un text este afișat în interiorul unei forme. Acesta oferă o proprietate publică numită părinte pentru a obține forma părinte pentru caseta de text pentru a permite clientului să găsească linked [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) din linked **TextBox**.

## Creați Un Link

Clasa **TextBox** furnizează metoda [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) pentru a verifica dacă **TextBox** poate fi legat de ținta **Textbox**.

Următorul exemplu de cod arată cum să verificați dacă `TextBox` poate fi legat de caseta de text țintă:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Verificați Secvența TextBox

Există mai multe moduri de a afișa text într-o formă. [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) poate fi capul, mijlocul sau coada unei secvențe.

Următorul exemplu de cod arată cum să verificați dacă **TextBox** este un cap, o coadă sau un mijloc al secvenței:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Rupe un Link

Folosind metoda [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) puteți rupe legătura cu următorul **TextBox**.

Următorul exemplu de cod arată cum să rupi o legătură pentru un **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
