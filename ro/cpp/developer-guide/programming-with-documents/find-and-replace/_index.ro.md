---
title: Găsiți și înlocuiți în C++
second_title: Aspose.Words pentru C++
articleTitle: Găsiți și înlocuiți
linktitle: Găsiți și înlocuiți
type: docs
description: "Găsiți un șir sau un model de expresie regulată în documentul dvs. și înlocuiți-l cu textul dorit folosind C++."
weight: 100
url: /ro/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Puteți naviga cu ușurință în documentul dvs. folosind o tastatură și un mouse, dar dacă aveți multe pagini de parcurs, va dura destul de mult timp pentru a găsi un anumit text într-un document lung. Va consuma mai mult timp atunci când doriți să înlocuiți anumite caractere sau cuvinte pe care le-ați folosit în documentul dvs. Funcționalitatea "găsiți și înlocuiți" vă permite să găsiți o secvență de caractere într-un document și să o înlocuiți cu o altă secvență de caractere.

Aspose.Words vă permite să găsiți un anumit șir sau un model de expresie regulată în documentul dvs. și să îl înlocuiți cu o alternativă fără a instala și utiliza aplicații suplimentare, cum ar fi Microsoft Word. Acest lucru va accelera multe sarcini de tastare și formatare, economisind potențial ore de lucru.

Acest articol explică modul de aplicare a înlocuirii șirurilor și a expresiilor regulate cu sprijinul metacaracterelor.

## Modalități de a găsi și înlocui {#ways-to-find-and-replace}

Aspose.Words oferă două moduri de a aplica operația de găsire și înlocuire utilizând următoarele:

1. *Simple string replacement* - pentru a găsi și înlocui un șir specific cu altul, trebuie să specificați un șir de căutare (caractere alfanumerice) care va fi înlocuit în funcție de toate aparițiile cu un alt șir de înlocuire specificat. Ambele șiruri nu trebuie să conțină simboluri. Luați în considerare faptul că compararea șirurilor poate fi sensibilă la majuscule și minuscule sau este posibil să nu fiți sigur de ortografie sau să aveți mai multe ortografii similare.
2. *Regular expressions* - pentru a specifica o expresie regulată pentru a găsi potrivirile exacte ale șirului și a le înlocui în funcție de expresia dvs. regulată. Rețineți că un cuvânt este definit ca fiind alcătuit doar din caractere alfanumerice. Dacă o înlocuire este executată cu doar cuvinte întregi potrivite și șirul de intrare conține simboluri, atunci nu vor fi găsite fraze.

În plus, puteți utiliza metacaractere speciale cu înlocuire simplă a șirurilor și expresii regulate pentru a specifica pauze în cadrul operației de găsire și înlocuire.

Aspose.Words prezintă funcționalitatea Găsire și înlocuire cu spațiul de nume [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). Puteți lucra cu mai multe opțiuni în timpul procesului de găsire și înlocuire folosind clasa [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Găsiți și înlocuiți textul folosind înlocuirea simplă a șirurilor {#find-and-replace-text-using-simple-string-replacement}

Puteți utiliza una dintre metodele [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) pentru a găsi sau înlocui un anumit șir și pentru a returna numărul de înlocuiri care au fost făcute. În acest caz, puteți specifica un șir de înlocuit, un șir care va înlocui toate aparițiile sale, dacă înlocuirea este sensibilă la majuscule și minuscule și dacă vor fi afectate doar cuvintele de sine stătătoare.

Următorul exemplu de cod arată cum să găsiți șirul "_CustomerName_ " și să îl înlocuiți cu șirul *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Puteți observa diferența dintre document înainte de a aplica înlocuirea simplă a șirului:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

Și după aplicarea înlocuirii simple a șirului:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Găsiți și înlocuiți textul folosind expresii regulate {#find-and-replace-text-using-regular-expressions}

O expresie regulată (regex) este un model care descrie o anumită secvență de text. Să presupunem că doriți să înlocuiți toate aparițiile duble ale unui cuvânt cu un singur cuvânt. Apoi puteți aplica următoarea expresie regulată pentru a specifica modelul cu două cuvinte: `([a-zA-Z]+) \1`.

Utilizați cealaltă metodă [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) pentru a căuta și înlocui anumite combinații de caractere setând parametrul `Regex` ca model de expresie regulată pentru a găsi potriviri.

Următorul exemplu de cod arată cum să înlocuiți șirurile care se potrivesc cu un model de expresie regulată cu un șir de înlocuire specificat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Puteți observa diferența dintre document înainte de a aplica înlocuirea șirului cu expresii regulate:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

Și după aplicarea înlocuirii șirului cu expresii regulate:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Găsiți și înlocuiți șirul folosind metacaractere {#find-and-replace-text-using-metacharacters}

Puteți utiliza metacaractere în șirul de căutare sau în șirul de înlocuire dacă un anumit text sau expresie este compus din mai multe paragrafe, secțiuni sau pagini. Unele dintre metacaractere includ **&p** pentru o pauză de paragraf, **&b** pentru o pauză de secțiune, **&m** pentru o pauză de pagină și **&l** pentru o pauză de linie.

{{% alert color="primary" %}}

Rețineți că metacaracterul **&&** este egal cu **&**. De exemplu, dacă trebuie să găsiți text pentru **&p** care nu este o pauză de paragraf, atunci puteți utiliza **&&p**.

{{% /alert %}}

Următorul exemplu de cod arată cum să înlocuiți textul cu paragraf și pauză de pagină:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Găsiți și înlocuiți șirul în antetul / subsolul unui Document {#find-and-replace-string-in-header-or-footer-of-a-document}

Puteți găsi și înlocui textul în secțiunea antet/subsol a unui document Word folosind clasa [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

Următorul exemplu de cod arată cum să înlocuiți textul secțiunii antet din documentul dvs:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Puteți observa diferența dintre document înainte de a aplica înlocuirea șirului de antet:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Și după aplicarea înlocuirii șirului de antet:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Exemplul de cod pentru a înlocui textul secțiunii subsol din documentul dvs. este foarte similar cu exemplul de cod antet anterior. Tot ce trebuie să faceți este să înlocuiți următoarele două linii:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Cu următoarele:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Puteți observa diferența dintre document înainte de a aplica înlocuirea șirului de subsol:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

Și după aplicarea înlocuirii șirului de subsol:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Ignorați textul în timpul găsirii și înlocuirii {#ignore-text-during-find-and-replace}

În timp ce aplicați operația de găsire și înlocuire, puteți ignora anumite segmente ale textului. Deci, anumite părți ale textului pot fi excluse din căutare, iar găsirea și înlocuirea pot fi aplicate numai părților rămase.

Aspose.Words oferă multe proprietăți de găsire și înlocuire pentru ignorarea textului, cum ar fi [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), și [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Următorul exemplu de cod arată cum să ignorați textul din interiorul reviziilor de ștergere:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Personalizați operația de găsire și înlocuire {#customize-find-and-replace-operation}

Aspose.Words oferă multe [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) diferite pentru a găsi și înlocui text, cum ar fi aplicarea unui format specific cu [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) și [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) proprietăți, folosind substituții în modele de înlocuire cu [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) proprietate și altele.

Următorul exemplu de cod arată cum să evidențiați un anumit cuvânt în documentul dvs:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words vă permite să utilizați interfața [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) pentru a crea și a apela o metodă personalizată în timpul unei operații de înlocuire. Este posibil să aveți unele cazuri de utilizare în care trebuie să personalizați operațiunea găsiți și înlocuiți, cum ar fi înlocuirea textului specificat cu o expresie regulată cu etichete HTML, deci practic veți aplica înlocuiți cu inserarea HTML.

Dacă trebuie să înlocuiți un șir cu o etichetă HTML, Aplicați interfața **IReplacingCallback** pentru a personaliza operația de găsire și înlocuire, astfel încât potrivirea să înceapă la începutul unei rulări cu nodul de potrivire al documentului dvs. Să oferim câteva exemple de utilizare a **IReplacingCallback**.

Următorul exemplu de cod arată cum să înlocuiți textul specificat cu HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

Următorul exemplu de cod arată cum să evidențiați numerele pozitive cu culoarea verde și numerele negative cu culoarea roșie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Următorul exemplu de cod arată cum să prependați un număr de linie la fiecare linie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
