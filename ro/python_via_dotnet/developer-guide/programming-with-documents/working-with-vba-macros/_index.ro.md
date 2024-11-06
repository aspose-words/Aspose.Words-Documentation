---
title: Lucrul cu VBA macrocomenzi în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu VBA macrocomenzi
linktitle: Lucrul cu VBA macrocomenzi
description: "Creați, citiți, scrieți, clonați și gestionați macrocomenzi VBA într-un document folosind Python."
type: docs
weight: 410
url: /ro/python-net/working-with-vba-macros/
---

Visual Basic pentru aplicații (VBA) Pentru Microsoft Word este un limbaj de programare simplu, dar puternic, care poate fi folosit pentru a extinde funcționalitatea. Aspose.Words API oferă trei clase pentru a avea acces la codul sursă al proiectului VBA:

- Clasa [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) oferă acces la VBA Informații despre proiect
- Clasa [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) returnează colecția de module de proiect VBA
- Clasa [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) oferă acces la modulul de proiect VBA
- Enumerarea [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) definește tipurile unui model într-un proiect VBA. Modulul poate fi un modul procedural, un modul de document, un modul de clasă sau un modul de designer

## Creați un proiect VBA

Aspose.Words API furnizează proprietatea [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) pentru a obține sau seta [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) în document.

Următorul exemplu de cod demonstrează cum se creează un Proiect VBA și un modul VBA împreună cu proprietăți De Bază, de exemplu [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) și [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Citiți Macrocomenzi

Aspose.Words oferă, de asemenea, utilizatorilor posibilitatea de a citi macrocomenzi VBA.

Următorul exemplu de cod arată cum să citiți VBA macrocomenzi din document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Scrieți sau modificați macrocomenzi

Folosind Aspose.Words, utilizatorii pot modifica macro-urile VBA.

Următorul exemplu de cod arată cum să modificați macrocomenzile VBA folosind proprietatea [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Proiectul Clone VBA

Cu Aspose.Words este posibilă și clonarea proiectelor VBA.

Următorul exemplu de cod arată cum se clonează proiectul VBA folosind proprietatea [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) care creează o copie a proiectului existent:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Modul Clonă VBA

De asemenea, puteți clona modulele VBA dacă este necesar.

Următorul exemplu de cod arată cum se clonează modulul VBA folosind proprietatea [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) care creează o copie a proiectului existent:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Lucrați cu referințele proiectului VBA

Aspose.Words API oferă [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) clasă pentru a lucra cu VBA referințe de proiect reprezentând o colecție de VBA referințe de proiect.

Următorul exemplu de cod arată cum să eliminați unele referințe din colecția de referințe dintr-un proiect VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}