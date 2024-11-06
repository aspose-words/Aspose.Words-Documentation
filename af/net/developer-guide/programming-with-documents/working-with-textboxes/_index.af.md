---
title: Werk met TextBoxes in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk met TextBoxes
linktitle: Werk met TextBoxes
description: "Inleiding tot gekoppelde teksbokse funksie in Aspose.Words vir .NET."
type: docs
weight: 250
url: /af/net/working-with-textboxes/
---

In Aspose.Words word die [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) klas gebruik om te spesifiseer hoe teks binne'n vorm vertoon word. Dit stel'n openbare eiendom met die naam **Parent** bloot om die ouervorm vir die tekskassie te kry sodat die kliënt die gekoppelde [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) uit die geassosieerde **TextBox** kan vind.

## Skep'n Skakel

Die **TextBox** klas bied [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) metode om te kyk of die **TextBox** kan gekoppel word aan die teiken **Textbox**.

Die volgende kode voorbeeld toon hoe om te kyk of die `TextBox` kan gekoppel word aan die teiken Teksboks:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Kontroleer TextBox Volgorde

Daar is verskeie maniere om teks in'n vorm te vertoon. Die [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) kan die Kop, Middel of Stert van'n reeks wees.

Die volgende kode voorbeeld toon hoe om te kyk of **TextBox** is'n Kop, Stert, of Middel van die reeks:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Breek'n Skakel

Met behulp van die [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) metode kan jy die skakel na die volgende **TextBox** breek.

Die volgende kode voorbeeld toon hoe om'n skakel vir'n **TextBox**breek:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
