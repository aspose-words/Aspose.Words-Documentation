---
title: Cum să găsiți proprietățile câmpului
second_title: Aspose.Words pentru C++
articleTitle: Găsiți Proprietățile Câmpului
linktitle: Găsiți Proprietățile Câmpului
description: "Cum să găsiți unele proprietăți de câmp, cum ar fi codul de câmp și rezultatul câmpului în C++."
type: docs
weight: 25
url: /ro/cpp/find-field-properties/
---

Un câmp care este inserat folosind [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) returnează un obiect [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/). Aceasta este o clasă de fațadă care oferă metode utile pentru a găsi rapid unele proprietăți ale unui câmp.

Următorul exemplu de cod arată cum să găsiți codul câmpului și rezultatul câmpului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Notă Dacă căutați doar numele câmpurilor de îmbinare dintr-un document, atunci puteți utiliza în schimb metoda [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) încorporată.

Următorul exemplu de cod arată cum să obțineți numele tuturor câmpurilor de îmbinare dintr-un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}