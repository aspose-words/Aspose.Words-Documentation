---
title: Lucrați cu programe de completare Office în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrați cu programe de completare Office
linktitle: Lucrați cu programe de completare Office
description: "Aspose.Words pentru Python via .NET oferă diverse clase pentru lucrul cu programe de completare Office. Puteți adăuga Panoul de activități prin extensia web și puteți personaliza proprietățile panoului și extensiei."
type: docs
weight: 50
url: /ro/python-net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Uneori este posibil să doriți să acordați acces la comenzile interfeței care rulează cod pentru a modifica documentele. Aspose.Words API oferă modulul [webextensions](https://reference.aspose.com/words/python-net/aspose.words.webextensions/), care acordă diferite clase pentru a personaliza elemente și atribute care extind vocabularul XML pentru reprezentarea programelor de completare Office.

WebExtensions spațiul de nume poate fi împărțit condiționat în:

* Obiecte pentru lucrul cu panoul de activități
* Obiecte pentru lucrul cu extensii web

## Utilizarea Panourilor De Sarcini

Panourile de sarcini sunt suprafețe de interfață care sunt afișate în partea dreaptă a ferestrei în Microsoft Word. Panoul de activități permite utilizatorilor să acceseze controale de interfață care pot rula cod pentru a modifica documente.

De exemplu, folosind Aspose.Words API, Puteți adăuga un panou de activități add-in și personaliza aspectul său.

## Utilizarea Extensiilor Web

Extensiile Web sunt instrumente care extind capacitățile aplicațiilor Office și interacționează cu conținutul documentelor Office. Extensiile Web oferă funcționalități suplimentare clienților Office pentru îmbunătățirea experienței utilizatorului.

Aspose.Words oferă posibilitatea de a adăuga extensii Web de tipul panoului de activități folosind clasele [WebExtension](https://reference.aspose.com/words/python-net/aspose.words.webextensions/webextension/) și [TaskPane](https://reference.aspose.com/words/python-net/aspose.words.webextensions/taskpane/) și, de asemenea, vă permite să personalizați proprietățile panoului și extensiei.

Următorul exemplu de cod arată cum să creați panouri de activități și să adăugați panouri de activități pentru extensia web cu proprietăți de bază:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-UsingWebExtensionTaskPanes.py" >}}

Pentru a vedea o listă de programe de completare în panoul de activități, utilizați proprietatea [web_extension_task_panes](https://reference.aspose.com/words/python-net/aspose.words/document/web_extension_task_panes/).

Următorul exemplu de cod arată cum să obțineți o astfel de listă de programe de completare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_web_extension-GetListOfAddins.py" >}}
