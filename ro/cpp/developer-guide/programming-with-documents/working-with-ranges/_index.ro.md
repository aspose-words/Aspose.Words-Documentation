---
title: Lucrul cu intervale în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu gamele
linktitle: Lucrul cu gamele
description: "Introducere în funcția de gamă în Aspose.Words pentru C++."
type: docs
weight: 130
url: /ro/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

În Aspose.Words, o gamă este o "fereastră plată" într-un model de document asemănător unui copac.

{{% /alert %}}

Dacă ați lucrat cu automatizarea Microsoft Word, probabil știți că unul dintre principalele instrumente pentru examinarea și modificarea conținutului documentului este obiectul **Range**. **Range** este ca o "fereastră" în conținutul și formatarea documentului.

Aspose.Words are, de asemenea, clasa [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) și este proiectat să arate și să acționeze similar cu **Range** în Microsoft Word. Deși **Range** nu poate acoperi o porțiune arbitrară a unui document și nu are **Start** și **End**, puteți accesa intervalul acoperit de orice nod de document, inclusiv [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) în sine. Cu alte cuvinte, fiecare nod are propria gamă. Obiectul **Range** vă permite să accesați și să modificați textul, marcajele și câmpurile de formular din interval.

## Preluați Text Simplu

Utilizați proprietatea [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) pentru a prelua textul simplu, neformatat al intervalului.

Următorul exemplu de cod arată cum să obțineți un text simplu, neformatat al unui interval:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Ștergerea Textului

Intervalul permite ștergerea tuturor caracterelor intervalului prin apelarea [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

Următorul exemplu de cod arată cum să ștergeți toate caracterele unui interval:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}