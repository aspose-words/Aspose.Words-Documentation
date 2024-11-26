---
title: Opțiuni și aspect document Word
second_title: Aspose.Words pentru Python
articleTitle: Lucrați cu opțiuni și aspectul documentelor Word
linktitle: Lucrați cu opțiuni și aspectul documentelor Word
description: "Controlați aspectul documentelor Word ținând cont de diferența dintre diferitele versiuni Microsoft Word folosind Python."
type: docs
weight: 40
url: /ro/python-net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Uneori poate fi necesar să modificați aspectul unui document, de exemplu, să setați preferințele de limbă sau numărul de linii pe pagină.Aspose.Words oferă posibilitatea de a controla modul în care va fi afișat documentul, precum și câteva opțiuni suplimentare. Acest articol descrie astfel de posibilități.

## Setați Opțiunile De Afișare A Documentelor

Puteți controla modul în care un document va fi afișat în Microsoft Word folosind clasa [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/). De exemplu, puteți seta o valoare de zoom a documentului utilizând proprietatea [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) sau modul de vizualizare utilizând proprietatea [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/).

Următorul exemplu de cod arată cum să vă asigurați că un document este afișat la 50% atunci când este deschis în Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon pentru acest exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 nu scrie niciun factor de zoom într-un document și nu mai setează zoomul implicit din valoarea scrisă în document, în schimb, pare să utilizeze factorul de zoom al ultimului document deschis.

{{% /alert %}}

## Setați Opțiunile De Afișare A Paginii

Dacă doriți să setați numărul de caractere pe linie, utilizați proprietatea [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/). De asemenea, puteți seta numărul de linii pe pagină pentru un document Word – utilizați proprietatea [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) pentru a obține sau seta numărul de linii pe pagină în grila documentului.

{{% alert color="primary" %}}

În Microsoft Word, Puteți seta aceiași parametri folosind fila "grilă Document" din caseta de dialog "Configurare pagină" numai atunci când este instalat suportul pentru limbi asiatice.

{{% /alert %}}

Următorul exemplu de cod arată cum să setați numărul de caractere pe linie și numărul de linii pe pagină pentru un document Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Setați Preferințele De Limbă

Afișarea unui document în Microsoft Word depinde de limbile setate ca valori implicite pentru acest document. Dacă nu sunt setate limbi în valorile implicite, Microsoft Word preia informații din caseta de dialog" Set Office Language Preferences", care, de exemplu, poate fi găsită în" File Options standard limba " în Microsoft Word 2019.

Cu Aspose.Words, Puteți configura, de asemenea, preferințele de limbă folosind clasa [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/). De asemenea, rețineți că pentru afișarea corectă a documentului dvs. este necesar să setați versiunea Microsoft Word pe care procesul de încărcare a documentului ar trebui să se potrivească – acest lucru se poate face folosind proprietatea [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/).

{{% alert color="primary" %}}

Aspose.Words documentul generat nu arată așa cum era de așteptat, verificați valorile [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) și [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) și ajustați-le dacă este necesar pentru a se potrivi cu setările pentru versiunea Microsoft Word.

{{% /alert %}}

Următorul exemplu de cod arată cum să adăugați Japoneză la limbile de editare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

Următorul exemplu de cod arată cum să setați limba rusă ca limbă de editare implicită:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Optimizați un Document pentru o anumită versiune Word

Metoda [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) permite optimizarea conținutului documentului, precum și comportamentul implicit Aspose.Words pentru o anumită versiune a Microsoft Word. Puteți utiliza această metodă pentru a împiedica Microsoft Word să afișeze panglica" Mod de compatibilitate " la încărcarea documentului. Rețineți că poate fi necesar să setați proprietatea [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) la [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) sau mai mare.

Următorul exemplu de cod arată cum să optimizați conținutul documentului pentru Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
