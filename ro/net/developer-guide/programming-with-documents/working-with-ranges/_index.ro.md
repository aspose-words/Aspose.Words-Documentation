---
title: Lucrul cu intervale în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu intervale
linktitle: Lucrul cu intervale
description: "Introducere la caracteristica Range în Aspose.Words pentru .NET."
type: docs
weight: 130
url: /ro/net/working-with-ranges/
---

{{% alert color="primary" %}}

În Aspose.Words, o gamă este un "fereastră plată" într-un model altfel în formă de copac al documentului.

{{% /alert %}}

Dacă ai lucrat cu Microsoft Word Automatizare, probabil știi că unul dintre principalele instrumente pentru examinarea și modificarea conținutului documentelor este obiectul **Range**. **Range** este ca o "fereastră" către conținutul și formatarea documentului.

Aspose.Words are şi clasa [Range](https://reference.aspose.com/words/net/aspose.words/range/) şi este concepută să arate şi să funcţioneze similar cu **Range** în Microsoft Word. Deși **Range** nu poate acoperi o porțiune arbitrară dintr-un document și nu are un **Start** și **End**, tu poți accesa intervalul acoperit de orice nod al unui document inclusiv pe cel [Document](https://reference.aspose.com/words/net/aspose.words/document/) în sine. În alte cuvinte, fiecare nod are propria sa gamă. Obiectul **Range** vă permite să accesați și să modificați textul, marcajele și câmpurile de formular din intervalul respectiv.

## Recuperează text simplu

Utilizaţi proprietatea [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) pentru a obţine text simplu neformatat al intervalului.

Exemplul de cod de mai sus arată cum să obții un text simplu, neformatat al unui interval:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fişierul de exemplu al acestui exemplu de la [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Șterge textul

Range permite ștergerea tuturor caracterelor din interval prin apelarea la [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Exemplul de cod următor arată cum să ștergeți toate caracterele unui interval:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul de probă al acestui exemplu de la [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}