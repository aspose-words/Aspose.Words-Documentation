---
title: Bună ziua, lume!
second_title: Exemplu simplu cum să folosești Aspose.Words pentru .NET
articleTitle: Bună ziua, lume!
linktitle: Salut Lume
description: "Creați, editați și salvați primul document în orice format acceptat folosind Aspose.Words pentru .NET pentru a experimenta simplitatea și puterea sa în C#."
type: docs
weight: 20
url: /ro/net/hello-world/
---

Un cod "Bună lume!" este adesea primul exemplu simplu de scris folosind Aspose.Words pentru .NET, și poate fi folosit și ca un test de validare pentru a asigura că software-ul destinat compilării sau rulării codului sursă este instalat corect.

"Aspose.Words pentru .NET" biblioteca C# oferă dezvoltatorilor acces direct la crearea, modificarea, unirea, conversia și compararea documentelor Word și Web. PDF, DOCX, DOC, RTF, ODT, EPUB, HTML și multe alte formate de fișiere sunt [supported](/words/net/supported-document-formats/).

Mai jos este un fragment de cod care urmează acești pași:

1. Creează un nou, gol [Document](https://reference.aspose.com/words/net/aspose.words/document)
1. Initializează o [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) clasă
1. Inseraţi textul în partea de sus a documentului folosind metoda simplă [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/)
1. Deschideți un [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) existent dintr-un fișier. Detectează automat formatul fișierului
1. [Append](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) document "A" la sfârşitul documentului "B"
1. [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) ca PDF

Fragmentul de cod următor este un exemplu "Hello, World!" pentru a ilustra funcționarea " Aspose.Words for .NET " API:

{{< gist "aspose-words-gists" "542a463e1857480986d18ec296ed43d5" "hello-world.cs" >}}
