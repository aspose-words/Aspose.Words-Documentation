---
title: Lucrul cu intervale în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu gamele
linktitle: Lucrul cu gamele
description: "Introducere în funcția de gamă în Aspose.Words pentru Java."
type: docs
weight: 130
url: /ro/java/working-with-ranges/
---

{{% alert color="primary" %}}

În Aspose.Words, o gamă este o "fereastră plată" într-un model de document asemănător unui copac.

{{% /alert %}}

Dacă ați lucrat cu automatizarea Microsoft Word, probabil știți că unul dintre principalele instrumente pentru examinarea și modificarea conținutului documentului este obiectul `Range`.Gama este ca o "fereastră" în conținutul documentului și formatarea.

Aspose.Words are, de asemenea, clasa [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) și este proiectat să arate și să acționeze similar cu **Range** în Microsoft Word. Deși **Range** nu poate acoperi o porțiune arbitrară a unui document și nu are **Start** și **End**, puteți accesa intervalul acoperit de orice nod de document, inclusiv [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) în sine. Cu alte cuvinte, fiecare nod are propria gamă. Obiectul **Range** vă permite să accesați și să modificați textul, marcajele și câmpurile de formular din interval.

## Preluarea Textului Simplu

Utilizați proprietatea [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) pentru a prelua textul simplu, neformatat al intervalului.

Următorul exemplu de cod arată cum să obțineți un text simplu, neformatat al unui interval:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Ștergeți Textul

Clasa `Range` permite ștergerea tuturor caracterelor intervalului prin apelarea [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Următorul exemplu de cod arată cum să ștergeți toate caracterele unui interval:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

