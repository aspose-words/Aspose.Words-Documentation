---
title: Lucrul cu macro-uri VBA în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu macro-uri VBA
linktitle: Lucrul cu macro-uri VBA
description: "`Lucrând cu proiecte de documente VBA utilizând C#`."
type: docs
weight: 410
url: /ro/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic pentru aplicații (VBA) pentru Microsoft Word este o limbă de programare simplă, dar puternică care poate fi folosită pentru a extinde funcționalitatea. Aspose.Words API oferă trei clase pentru a obține acces la codul sursă al proiectului VBA:

"- Clasa [VBAProject](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/) permite accesul la informațiile proiectului VBA"
- Clasa [VBAModuleCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbamodulecollection/) returnează colecția de module de proiect VBA
"- Clasa [VbaModule](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/) oferă acces la modulul proiectului VBA"
- Enumerația [VbaModuleType](https://reference.aspose.com/words/net/aspose.words.vba/vbamoduletype/) definește tipurile unui model într-un proiect VBA. Modulul poate fi un modul procedural, modul document, modul clasa sau modul designer

## Creează un proiect VBA

Aspose.Words API oferă proprietatea [VbaProject](https://reference.aspose.com/words/net/aspose.words/document/vbaproject/) pentru a obține sau seta VbaProject în documentul.

Exemplul de cod următor demonstrează modul în care se creează un proiect VBA și un modul VBA împreună cu proprietățile de bază, de exemplu: Nume și Tip:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Citeste Macro-uri

Aspose.Words oferă, de asemenea, utilizatorilor capacitatea de a citi macro-uri VBA.

Exemplul de cod de mai jos arată cum să citești macro-urile VBA din document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Scrie sau Modifică Macro-uri

Folosind Aspose.Words utilizatorii pot modifica macro-urile VBA.

Exemplul de cod următor arată cum să modificăm macro-urile VBA folosind proprietatea [SourceCode](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Clona proiect VBA

Cu Aspose.Words este posibil şi clonarea proiectelor VBA.

Exemplul următor de cod arată cum să clonezi un proiect VBA utilizând proprietatea [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/clone/) care creează o copie a proiectului existent:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Clona modul VBA

Puteți, de asemenea, să clonificați modulele VBA dacă este necesar.

Exemplul următor de cod arată cum să clonaţi modulul VBA folosind proprietatea [Clone](https://reference.aspose.com/words/net/aspose.words.vba/vbamodule/clone/), care creează o copie a proiectului existent

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Lucrează cu Referințe Proiect VBA

Aspose.Words API oferă clasa [VbaReferenceCollection](https://reference.aspose.com/words/net/aspose.words.vba/vbareferencecollection/) pentru a lucra cu referințe de proiect VBA reprezentând o colecție de referințe de proiect VBA.

Exemplul de cod de mai jos arată cum se elimină câteva referințe din colecția de referințe dintr-un proiect VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
