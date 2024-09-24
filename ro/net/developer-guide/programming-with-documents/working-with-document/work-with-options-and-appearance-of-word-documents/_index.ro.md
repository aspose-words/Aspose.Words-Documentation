---
title: Opțiuni și aspect Document Word
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu Opțiuni și Aspectul Documentelor de Cuvânt
linktitle: Lucrul cu Opțiuni și Aspectul Documentelor de Cuvânt
description: "Controlează aspectul documentelor Word luând în considerare diferența dintre versiunile Microsoft Word folosind C#."
type: docs
weight: 40
url: /ro/net/work-with-word-document-options-and-appearance/
---

Uneori, s-ar putea să ai nevoie de a schimba aspectul unui document, pentru exemplu, setarea preferințelor lingvistice sau numărul de linii pe pagină.Aspose.Words oferă posibilitatea de a controla modul în care va fi afișat documentul, precum și anumite opțiuni suplimentare. Acest articol descrie astfel de posibilități.

## Opțiuni de afișare a documentului

Puteți controla cum va fi afișat un document în Microsoft Word folosind clasa [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/). "De exemplu, puteți seta o valoare de zoom la un document folosind proprietatea [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/), sau modul de vizualizare folosind proprietatea [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/)".

Următorul exemplu de cod arată cum să se asigure că un document este afișat la 50%, atunci când se deschide în Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fișierul șablon pentru acest exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nu scrie nici un factor de mărire într-un document și nu mai setează valoarea implicită de mărire din valoarea scrisă în document; în schimb, pare să folosească factorul de mărire al ultimului document deschis.

{{% /alert %}}

## Opțiuni afișare pagină

Dacă doriți să setați numărul de caractere pe linie, folosiți proprietatea [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/). Puteți de asemenea seta numărul de linii pe pagină pentru un document Word – utilizați proprietatea [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) pentru a obține sau seta numărul de linii pe pagină în grila de documente.

{{% alert color="primary" %}}

În Microsoft Word, puteți seta aceleași parametri folosind fila "Grile de document" în caseta de dialog "Configurare pagină", doar atunci când este instalată asistența pentru limbile asiatice.

{{% /alert %}}

Exemplul de cod de mai jos arată cum să stabilești numărul de caractere pe linie și numărul de linii pe pagină pentru un Microsoft Word document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Setarea preferințelor de limbă

Afişarea unui document în Microsoft Word depinde de ce limbi sunt setate ca standard pentru acest document. Dacă nu sunt stabilite limbi în opțiuni implicite, Microsoft Word preia informațiile din caseta de dialog "Set Office Language Preferences", care, de exemplu, poate fi găsită sub "File → Options → Language" în Microsoft Word 2019.

Cu Aspose.Words, poți configura și preferințele lingvistice folosind clasa [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/). Observa de asemenea că pentru o afișare corectă a documentului este necesar să se stabilească versiunea Microsoft Word care trebuie să corespundă procesului de încărcare a documentului – acest lucru poate fi realizat utilizând proprietatea [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/).

{{% alert color="primary" %}}

Dacă documentul generat de Aspose.Words nu arată așa cum era așteptat, verificați valorile **LanguagePreferences** și **MswVersion** și ajustați-le dacă este necesar pentru a corespunde setărilor pentru versiunea Microsoft Word.

{{% /alert %}}

Exemplul următor arată cum să adaugi japoneza la limbile de editare:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Exemplul următor de cod arată cum se setează limba rusă ca limbă editată în mod implicit:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Optimizați un document pentru o anumită versiune a cuvântului

Metoda [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) permite optimizarea conținutului documentelor precum și comportamentul implicit Aspose.Words pentru o versiune specifică de Microsoft Word. Puteți folosi această metodă pentru a preveni Microsoft Word de a afișa "modul compatibilității" panglică la încărcarea documentului. Rețineți că s-ar putea să fie necesar, de asemenea, să setați proprietatea `Compliance` la "Iso29500_2008_Transitional" sau mai mare.

Codul de exemplu următor arată cum să optimizați conținutul documentului pentru Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
