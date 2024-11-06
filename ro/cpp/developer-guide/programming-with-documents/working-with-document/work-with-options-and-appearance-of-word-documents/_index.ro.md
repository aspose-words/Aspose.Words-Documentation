---
title: Opțiuni și aspectul documentelor Word
second_title: Aspose.Words pentru C++
articleTitle: Lucrați cu opțiuni și aspectul documentelor Word
linktitle: Lucrați cu opțiuni și aspectul documentelor Word
description: "Controlați aspectul documentelor Word ținând cont de diferența dintre diferitele versiuni Microsoft Word."
type: docs
weight: 40
url: /ro/cpp/work-with-word-document-options-and-appearance/
---

Uneori poate fi necesar să modificați aspectul unui document, de exemplu, să setați preferințele de limbă sau numărul de linii pe pagină.Aspose.Words oferă posibilitatea de a controla modul în care va fi afișat documentul, precum și câteva opțiuni suplimentare. Acest articol descrie astfel de posibilități.

## Setați Opțiunile De Afișare A Documentelor

Puteți controla modul în care un document va fi afișat în Microsoft Word folosind clasa [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). De exemplu, puteți seta o valoare de zoom a documentului utilizând proprietatea [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) sau modul de vizualizare utilizând proprietatea [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

Următorul exemplu de cod arată cum să vă asigurați că un document este afișat la 50% atunci când este deschis în Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon pentru acest exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nu scrie niciun factor de zoom într-un document și nu mai setează zoomul implicit din valoarea scrisă în document, în schimb, pare să utilizeze factorul de zoom al ultimului document deschis.

{{% /alert %}}

## Setați Opțiunile De Afișare A Paginii

Dacă doriți să setați numărul de caractere pe linie, utilizați proprietatea [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). De asemenea, puteți seta numărul de linii pe pagină pentru un document Word – utilizați proprietatea [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) pentru a obține sau seta numărul de linii pe pagină în grila documentului.

{{% alert color="primary" %}}

În Microsoft Word, Puteți seta aceiași parametri folosind fila "grilă Document" din caseta de dialog "Configurare pagină" numai atunci când este instalat suportul pentru limbi asiatice.

{{% /alert %}}

Următorul exemplu de cod arată cum să setați numărul de caractere pe linie și numărul de linii pe pagină pentru un document Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Setați Preferințele De Limbă

Afișarea unui document în Microsoft Word depinde de limbile setate ca valori implicite pentru acest document. Dacă nu sunt setate limbi în valorile implicite, Microsoft Word preia informații din caseta de dialog" Set Office Language Preferences", care, de exemplu, poate fi găsită în" File Options standard limba " în Microsoft Word 2019.

Cu Aspose.Words, Puteți configura, de asemenea, preferințele de limbă folosind clasa [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). De asemenea, rețineți că pentru afișarea corectă a documentului dvs. este necesar să setați versiunea Microsoft Word pe care procesul de încărcare a documentului ar trebui să se potrivească – acest lucru se poate face folosind proprietatea [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Aspose.Words documentul generat nu arată așa cum era de așteptat, verificați valorile **LanguagePreferences** și **MswVersion** și ajustați-le dacă este necesar pentru a se potrivi cu setările pentru versiunea Microsoft Word.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați Japoneză la limbile de editare:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

Următorul exemplu de cod arată cum să setați limba rusă ca limbă de editare implicită:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Optimizați un Document pentru o anumită versiune Word

Metoda [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) permite optimizarea conținutului documentului, precum și comportamentul implicit Aspose.Words pentru o anumită versiune a Microsoft Word. Puteți utiliza această metodă pentru a împiedica Microsoft Word să afișeze panglica" Mod de compatibilitate " la încărcarea documentului. Rețineți că poate fi necesar să setați proprietatea `Compliance` la Iso29500_2008_Transitional sau mai mare.

Următorul exemplu de cod arată cum să optimizați conținutul documentului pentru Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
