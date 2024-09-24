---
title: Lucrând cu caractere de control
second_title: Aspose.Words pentru .NET
articleTitle: Lucrând cu caractere de control
linktitle: Lucrând cu caractere de control
description: "Introducere în lucrul cu caractere de control în Aspose.Words pentru .NET."
type: docs
weight: 400
url: /ro/net/working-with-control-characters/
---

"Microsoft Word documente pot conține caractere diferite care au o semnificație specială." În mod normal, acestea sunt folosite pentru scopuri de formatare și nu sunt trase în modul normal. Puteți să le faceți vizibile dacă faceți clic pe butonul "Arată/ascunde semne de formatare", din bara de instrumente standard.

Uneori s-ar putea să ai nevoie să adaugi sau să elimini caractere din/din text. "De exemplu, atunci când obţineţi textul în mod programatic din document, Aspose.Words păstrează majoritatea caracterelor de control, astfel încât dacă aveţi nevoie să lucraţi cu acest text ar trebui probabil să îndepărtaţi sau să înlocuiţi aceste caractere."

Clasa [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) este un depozit pentru constantele care reprezintă caracterele de control, care sunt întâlnite frecvent în documente. Oferă atât versiunea char cât și pe cea de șir pentru aceleași constante. De exemplu, șirul [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) și caracterul [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) au aceeași valoare.

Exemplul următor arată cum să se folosească caracterele de control:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
