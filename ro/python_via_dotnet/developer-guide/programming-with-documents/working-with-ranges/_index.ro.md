---
title: Lucrul cu intervale în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu gamele
linktitle: Lucrul cu gamele
description: "Lucrați cu intervale într-un document folosind Python."
type: docs
weight: 130
url: /ro/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

În Aspose.Words, un [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) este o "fereastră plată" într-un model de document asemănător unui copac.

{{% /alert %}}

Dacă ați lucrat cu automatizarea Microsoft Word, probabil știți că unul dintre principalele instrumente pentru examinarea și modificarea conținutului documentului este obiectul [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) este ca o "fereastră" în conținutul și formatarea documentului. Aspose.Words are, de asemenea, clasa [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) și este proiectat să arate și să acționeze similar cu **Range** în Microsoft Word. Deși **Range** nu poate acoperi o porțiune arbitrară a unui document și nu are **Start** și **End**, puteți accesa intervalul acoperit de orice nod de document, inclusiv [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) în sine. Cu alte cuvinte, fiecare nod are propria gamă. Obiectul [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) vă permite să accesați și să modificați textul, marcajele și câmpurile de formular din interval.

## Preluați Text Simplu

Utilizați proprietatea [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) pentru a prelua textul simplu, neformatat al intervalului.

Următorul exemplu de cod arată cum să obțineți un text simplu, neformatat al unui interval:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Ștergerea Textului

Intervalul permite ștergerea tuturor caracterelor intervalului prin apelarea [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/).

Următorul exemplu de cod arată cum să ștergeți toate caracterele unui interval:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
