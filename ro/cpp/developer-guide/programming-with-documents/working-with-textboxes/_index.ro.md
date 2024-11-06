---
title: Lucrul cu TextBoxes în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu TextBoxes
linktitle: Lucrul cu TextBoxes
description: "Introducere în caracteristica textboxes legate în Aspose.Words pentru C++."
type: docs
weight: 250
url: /ro/cpp/working-with-textboxes/
---

În Aspose.Words, clasa [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) este utilizată pentru a specifica modul în care textul este afișat în interiorul unei forme. Expune o proprietate publică numită **Parent** pentru a obține forma părinte pentru caseta de text, astfel încât clientul să poată găsi [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) legat din **TextBox** asociat.

## Creați Un Link

Clasa **TextBox** oferă metoda [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) pentru a verifica dacă **TextBox** poate fi legat de ținta **Textbox**.

Următorul exemplu de cod arată cum să verificați dacă `TextBox` poate fi legat de caseta de text țintă:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Verificați Secvența TextBox

Există mai multe moduri de a afișa text într-o formă. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) poate fi capul, mijlocul sau coada unei secvențe.

Următorul exemplu de cod arată cum să verificați dacă **TextBox** este un cap, o coadă sau un mijloc al secvenței:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Rupe un Link

Folosind metoda [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) puteți rupe legătura cu următorul **TextBox**.

Următorul exemplu de cod arată cum să rupi o legătură pentru un **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
