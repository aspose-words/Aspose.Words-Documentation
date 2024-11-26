---
title: Lucrul cu TextBox-uri în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu textbox-uri
linktitle: Lucrul cu textbox-uri
description: "Introducere a funcției de textbox-uri asociate în Aspose.Words pentru .NET."
type: docs
weight: 250
url: /ro/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

În Aspose.Words, clasa [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) este folosită pentru a specifica modul în care textul este afișat în interiorul unui obiect. "El expune o proprietate publică numită **Parent** pentru a obține forma părinte pentru caseta de text, astfel încât clientul poate găsi [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) legat din asociatul **TextBox**"

## Crearea unui link

"Clasa **TextBox** oferă metoda [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) pentru a verifica dacă clasa **TextBox** poate fi legată de ținta **Textbox**."

Exemplul de cod următor arată cum să verifici dacă `TextBox` poate fi legat la caseta țintă de text:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Verifica secvența TextBox

Există câteva modalități de a afișa text într-o formă. The [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) poate fi capul, mijlocul sau coada unei secvențe.

Exemplul de cod următor arată cum se verifică dacă **TextBox** este un cap, o coadă sau mijlocul secvenței:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Ruptura unui Legătură

Folosind metoda [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/), poţi întrerupe legătura cu următoarea etichetă **TextBox**.

Exemplul de cod următor arată cum se întrerupe un link pentru o **TextBox**:"

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
