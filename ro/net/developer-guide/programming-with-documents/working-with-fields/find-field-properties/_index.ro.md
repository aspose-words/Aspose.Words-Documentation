---
title: Cum să găseşti proprietăţile câmpurilor în C#?
second_title: Aspose.Words pentru .NET
articleTitle: Găseşte proprietăţile câmpului
linktitle: Găseşte proprietăţile câmpului
description: "Cum se găsesc unele proprietăți de câmp, cum ar fi codul câmpului și rezultatul câmpului în C#."
type: docs
weight: 25
url: /ro/net/find-field-properties/
---

Un câmp care este inserat folosind [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) returnează un obiect [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/). Aceasta este o clasă de interfață care oferă metode utile pentru a găsi rapid unele proprietăți ale unui câmp.

Exemplul de cod următor arată cum să găsești codul câmpului și rezultatul câmpului:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Notă dacă cauți doar numele câmpurilor de fuziune într-un document, atunci poți folosi metoda încorporată [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/).

Exemplul de cod următor arată cum să obții numele tuturor câmpurilor de fuziune într-un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}