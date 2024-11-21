---
title: Comparați documente în C#
second_title: Aspose.Words pentru .NET
articleTitle: Comparați documentele
linktitle: Comparați documentele
description: "Comparaţi două documente în orice format acceptat şi afişaţi modificările de conţinut folosind C#. Poţi aplica opţiuni avansate atunci când compari."
type: docs
weight: 60
url: /ro/net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Comparați documentele este un proces care identifică modificările dintre două documente și conține modificările ca revizii. Acest proces compară orice două documente, inclusiv versiunile unuia singur document, apoi modificările dintre ambele documente vor fi arătate ca reviziuni în primul document.

Metoda de comparație se obține prin compararea cuvintelor la nivel de caractere sau la nivel de cuvinte. Dacă un cuvânt conține o schimbare de cel puțin un caracter, în rezultatul final diferența va fi afișată ca o schimbare a întregului cuvânt, nu a unui caracter. Acest proces de comparație este o sarcină obișnuită în industriile juridice și financiare.

În loc să cauți manual diferențele între documente sau între diferite versiuni ale acestora, poți folosi Aspose.Words pentru compararea documentelor și obținerea modificărilor de conținut în formatare, antet/subantet, tabele și altele.

Acest articol explică cum să comparăm documente și cum să specificăm proprietățile de comparare avansată.

{{% alert color="primary" %}}

**Încercă online**

Puteți compara două documente online folosind instrumentul [Document comparison online](https://products.aspose.app/words/comparison).

Rețineți că metoda de comparație, descrisă mai jos, este utilizată în acest instrument pentru a garanta obținerea unor rezultate egale. Deci veți obține aceleași rezultate chiar și prin utilizarea instrumentului de comparare online sau prin utilizarea metodei de comparare în Aspose.Words.

{{% /alert %}}

## Limitari şi formate de fişiere acceptate {#limitations-and-supported-file-formats}

Compararea documentelor este o caracteristică foarte complexă. Există părți variate ale combinației de conținut care trebuie analizate pentru a recunoaște toate diferențele. Motivul acestei complexități este din faptul că Aspose.Words își propune să obțină aceleași rezultate de comparație ca algoritmul de comparație Microsoft Word.

Limita generală pentru două documente care sunt comparate este că nu trebuie să aibă revizuiri înainte de a apela metoda comparați ca această limită există în Microsoft Word.

{{% alert color="primary" %}}

Observă că poți compara orice două documente din cadrul [supported file formats](/words/net/supported-document-formats/). În esență, poți compara obiecte de documente și chiar poți crea aceste obiecte de la zero fără a avea un anumit format.

{{% /alert %}}

## Comparaţi două documente {#compare-two-documents}

Când compari documentele, diferențele din cel de-al doilea document față de primul se arată ca niște modificări ale celui de-al doilea față de primul. Când modifici un document, fiecare modificare va avea propria sa revizuire după ce rulezi metoda de comparare.

Aspose.Words vă permite să identificați diferențele de documente utilizând metoda [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) – aceasta este similară cu caracteristica de comparare a documentelor Microsoft Word. Îți permite să verifici documente sau versiuni de documente pentru a găsi diferențe și modificări, inclusiv modificări ale formatării, cum ar fi schimbarea fontului, modificări de spațiu, adăugarea de cuvinte și paragrafe.

Ca rezultat al comparației, documentele pot fi determinate ca fiind egale sau nu egale. Termenul "documente egale" înseamnă că metoda de comparație nu este capabilă să reprezinte modificările ca revizuiri. Aceasta înseamnă că atât textul de document, cât și formatarea textului sunt aceleași. Dar pot exista și alte diferențe între documente. De exemplu Microsoft Word suportă doar revizuiri de format pentru stiluri și nu puteți reprezenta inserarea/ștergerea stilului. Astfel de documente pot avea un set diferit de stiluri, iar metoda **Compare** încă produce nicio revizuire.

Exemplul de cod următor arată cum se verifică dacă două documente sunt egale sau nu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Exemplul de cod următor arată cum se poate aplica metoda `Compare` pur și simplu la două documente:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Specificați opțiunile de comparație avansate {#specify-advanced-comparing-properties}

Există multe proprietăți diferite ale clasei [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) pe care le poți aplica când vrei să compari documente.

De exemplu Aspose.Words îți permite să ignori modificări făcute în timpul unei operații de comparare pentru anumite tipuri de obiecte din documentul original. Puteţi alege proprietatea corespunzătoare pentru tipul de obiect, cum ar fi [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/) și altele prin setarea lor la "true".

În plus, Aspose.Words oferă proprietatea [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/), cu care puteți specifica dacă să urmăriți modificările prin caracter sau prin cuvânt.

O altă proprietate comună este o alegere în care document să afișeze modificările de comparație. Spre exemplu, caseta de dialog "Comparați documente" din Microsoft Word are opțiunea "Afișați modificările în"-acesta afectează și rezultatele comparației. Aspose.Words oferă proprietatea [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) care servește acestui scop.

Exemplul de cod următor arată cum se setează proprietățile avansate de comparare:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
