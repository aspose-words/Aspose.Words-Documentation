---
title: Lucrează cu Add-in-urile de birou în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrează cu Add-in-urile de birou
linktitle: Lucrează cu Add-in-urile de birou
description: "Aspose.Words pentru .NET oferă diverse clase pentru a lucra cu add-in-uri Office folosind C#. Poți adăuga un panou de sarcini prin extensie și particulariza proprietățile panoului și ale extensiei."
type: docs
weight: 50
url: /ro/net/work-with-office-add-ins/
---

Uneori ai putea dori să oferi acces la controale de interfață care rulează cod pentru a modifica documente. Aspose.Words API oferă spațiul de nume `WebExtensions`, care acordă diverse clase pentru a particulariza elemente și atribute extinzând vocabularul XML pentru reprezentarea Office Add-ins.

Spațiul de nume WebExtensions poate fi împărțit în mod condițional în:

* Obiecte pentru lucrul cu panoul de sarcini
* Obiecte pentru lucrul cu extensii pentru web

## Folosirea panourilor de sarcini

Panourile de sarcini sunt suprafețe interfeței care sunt afișate pe partea dreaptă a ferestrei în Microsoft Word. Panoul de sarcini permite utilizatorilor să acceseze controalele interfeței care pot rula cod pentru a modifica documentele.

De exemplu, folosind Aspose.Words API puteți adăuga un panou de sarcini și particulariza aspectul său.

## Utilizarea Extensiilor Web

Extensiile web sunt instrumente care extind capabilitățile aplicațiilor Office și interacționează cu conținutul documentelor Office. Extensiile web oferă funcționalitate suplimentară clienților de Office pentru îmbunătățirea experienței utilizatorului.

Aspose.Words oferă posibilitatea de a adăuga extensii Web de tipul Task Pane folosind clasele [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) și [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/), și permite, de asemenea, personalizarea proprietăților panoului și extensiilor.

Exemplul de cod următor arată cum să creați panouri de sarcini și să adăugați la panourile de sarcini ale extensiei web cu proprietăți de bază:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Pentru a vedea o listă cu panoul de sarcini, utilizați [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/) proprietatea.

Exemplul de cod următor arată cum se obține o astfel de listă de plugin-uri:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
