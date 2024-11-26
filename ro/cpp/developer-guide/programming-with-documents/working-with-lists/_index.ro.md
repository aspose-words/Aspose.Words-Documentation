---
title: Lucrul cu liste în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul Cu Liste
linktitle: Lucrul Cu Liste
description: "Introducere în funcția de formatare a numerotării în Aspose.Words pentru C++."
type: docs
weight: 200
url: /ro/cpp/working-with-lists/
timestamp: 2024-01-30-16-22-34
---

O listă dintr-un document Microsoft Word este un set de proprietăți de formatare a listei. Listele pot fi utilizate în documentele dvs. pentru a formata, aranja și sublinia textul. Listele sunt o modalitate excelentă de a organiza datele în documente și facilitează cititorilor să înțeleagă punctele cheie.

Fiecare listă poate avea până la 9 nivelurile și proprietățile de formatare, cum ar fi stilul numărului, valoarea de pornire, liniuța, poziția filei etc. sunt definite separat pentru fiecare nivel.

În Aspose.Words, Lucrul cu liste este reprezentat de spațiul de nume [Lists](https://reference.aspose.com/words/cpp/aspose.words.lists/). Cu toate acestea, obiectul [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) aparține întotdeauna colecției [ListCollection](https://reference.aspose.com/words/cpp/aspose.words.lists/listcollection/).

Acest subiect descrie modul de lucru programatic cu liste folosind Aspose.Words.

## Specificați formatarea pentru un nivel de listă

Obiectele la nivel de listă sunt create automat atunci când este creată o listă. Utilizați proprietățile și metodele clasei [ListLevel](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/) pentru a controla formatarea nivelurilor individuale ale unei liste.

## Reporniți lista pentru fiecare secțiune

Puteți reporni o listă pentru fiecare secțiune folosind proprietatea [IsRestartAtEachSection](https://reference.aspose.com/words/cpp/aspose.words.lists/list/get_isrestartateachsection/). Rețineți că această opțiune este acceptată numai în formatele de documente RTF, DOC și DOCX. Această opțiune va fi scrisă în DOCX numai dacă OoxmlCompliance este mai mare decât Ecma376.

Următorul exemplu de cod arată cum să creați o listă și să o reporniți pentru fiecare secțiune:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cpp" >}}
