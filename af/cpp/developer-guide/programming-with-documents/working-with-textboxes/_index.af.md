---
title: Werk met TextBoxes in C++
second_title: Aspose.Words vir C++
articleTitle: Werk met TextBoxes
linktitle: Werk met TextBoxes
description: "Inleiding tot gekoppelde teksbokse funksie in Aspose.Words vir C++."
type: docs
weight: 250
url: /af/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

In Aspose.Words word die [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) klas gebruik om te spesifiseer hoe teks binne'n vorm vertoon word. Dit stel'n openbare eiendom met die naam **Parent** bloot om die ouervorm vir die tekskassie te kry sodat die kliënt die gekoppelde [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) uit die geassosieerde **TextBox** kan vind.

## Skep'n Skakel

Die **TextBox** klas bied [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) metode om te kyk of die **TextBox** kan gekoppel word aan die teiken **Textbox**.

Die volgende kode voorbeeld toon hoe om te kyk of die `TextBox` kan gekoppel word aan die teiken Teksboks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Kontroleer TextBox Volgorde

Daar is verskeie maniere om teks in'n vorm te vertoon. Die [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) kan die Kop, Middel of Stert van'n reeks wees.

Die volgende kode voorbeeld toon hoe om te kyk of **TextBox** is'n Kop, Stert, of Middel van die reeks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Breek'n Skakel

Met behulp van die [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) metode kan jy die skakel na die volgende **TextBox** breek.

Die volgende kode voorbeeld toon hoe om'n skakel vir'n **TextBox**breek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
