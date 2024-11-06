---
title: Găsiți proprietățile câmpului în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Găsiți Proprietățile Câmpului
linktitle: Găsiți Proprietățile Câmpului
description: "Cum să găsiți unele proprietăți de câmp, cum ar fi codul de câmp și rezultatul câmpului în Python."
type: docs
weight: 25
url: /ro/python-net/find-field-properties/
---

Un câmp care este inserat folosind [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) returnează un obiect [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Aceasta este o clasă de fațadă care oferă metode utile pentru a găsi rapid unele proprietăți ale unui câmp.

Următorul exemplu de cod arată cum să găsiți codul câmpului și rezultatul câmpului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Notă Dacă căutați doar numele câmpurilor de îmbinare dintr-un document, atunci puteți utiliza în schimb metoda [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) încorporată.

Următorul exemplu de cod arată cum să obțineți numele tuturor câmpurilor de îmbinare dintr-un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}