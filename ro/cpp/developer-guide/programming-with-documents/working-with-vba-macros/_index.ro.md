---
title: Lucrul cu VBA macrocomenzi în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu VBA macrocomenzi
linktitle: Lucrul cu VBA macrocomenzi
description: "Lucrul cu document VBA proiecte folosind C++."
type: docs
weight: 410
url: /ro/cpp/working-with-vba-macros/
---

Visual Basic pentru aplicații (VBA) Pentru Microsoft Word este un limbaj de programare simplu, dar puternic, care poate fi folosit pentru a extinde funcționalitatea. Aspose.Words API oferă trei clase pentru a avea acces la codul sursă al proiectului VBA:

- Clasa [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) oferă acces la VBA Informații despre proiect
- Clasa [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) returnează colecția de module de proiect VBA
- Clasa [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) oferă acces la modulul de proiect VBA

## Creați un proiect VBA

Aspose.Words API oferă `Document.VbaProject` proprietate pentru a obține sau seta VbaProject în document.

Următorul exemplu de cod demonstrează cum se creează un proiect VBA și un modul VBA împreună cu proprietăți De Bază, de exemplu, Nume și tip:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Citiți Macrocomenzi

Aspose.Words oferă, de asemenea, utilizatorilor posibilitatea de a citi macrocomenzi VBA.

Următorul exemplu de cod arată cum să citiți VBA macrocomenzi din document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Scrieți sau modificați macrocomenzi

Folosind Aspose.Words, utilizatorii pot modifica macro-urile VBA.

Următorul exemplu de cod arată cum să modificați macrocomenzile VBA folosind proprietatea [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Proiectul Clone VBA

Cu Aspose.Words este posibilă și clonarea proiectelor VBA.

Următorul exemplu de cod arată cum se clonează proiectul VBA folosind proprietatea [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) care creează o copie a proiectului existent:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Modul Clonă VBA

De asemenea, puteți clona modulele VBA dacă este necesar.

Următorul exemplu de cod arată cum se clonează modulul VBA folosind proprietatea [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) care creează o copie a proiectului existent:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
