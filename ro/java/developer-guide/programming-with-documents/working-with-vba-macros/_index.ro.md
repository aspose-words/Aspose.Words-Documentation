---
title: Lucrul cu VBA macrocomenzi în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu VBA macrocomenzi
linktitle: Lucrul cu VBA macrocomenzi
description: "Lucrul cu document VBA proiecte folosind Java."
type: docs
weight: 410
url: /ro/java/working-with-vba-macros/
---

Visual Basic pentru aplicații (VBA) Pentru Microsoft Word este un limbaj de programare simplu, dar puternic, care poate fi folosit pentru a extinde funcționalitatea. Aspose.Words API oferă trei clase pentru a avea acces la codul sursă al proiectului VBA:

- Clasa [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) oferă acces la informațiile proiectului VBA
- Clasa [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) returnează colecția de module de proiect VBA
- Clasa [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) oferă acces la modulul de proiect VBA

## Creați un proiect VBA

Aspose.Words API furnizează proprietatea [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) pentru a obține sau seta VbaProject în document.

Următorul exemplu de cod demonstrează cum se creează un proiect VBA și un modul VBA împreună cu proprietăți De Bază, de exemplu, Nume și tip:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Citiți Macrocomenzi

Aspose.Words oferă, de asemenea, utilizatorilor posibilitatea de a citi macrocomenzi VBA.

Următorul exemplu de cod arată cum să citiți VBA macrocomenzi din document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modificați Macrocomenzile

Folosind Aspose.Words, utilizatorii pot modifica macro-urile VBA.

Următorul exemplu de cod arată cum să modificați macrocomenzile VBA folosind proprietatea [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Proiectul Clone VBA

Cu Aspose.Words este posibilă și clonarea proiectelor VBA.

Următorul exemplu de cod demonstrează cum se clonează proiectul VBA folosind proprietatea [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) care creează o copie a proiectului existent:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Modul Clonă VBA

De asemenea, puteți clona modulele VBA dacă este necesar.

Următorul exemplu de cod demonstrează cum se clonează modulul VBA folosind proprietatea [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) care creează o copie a proiectului existent.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
