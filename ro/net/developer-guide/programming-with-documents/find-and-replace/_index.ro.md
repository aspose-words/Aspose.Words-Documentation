---
title: Găsire și înlocuire în C#
second_title: Aspose.Words pentru .NET
articleTitle: Găsește și înlocuiește
linktitle: Găsește și înlocuiește
type: docs
description: "Găsiți o șir sau un model de expresie regulată în documentul dvs. și înlocuiți-l cu textul pe care doriți să-l utilizați folosind C#."
weight: 100
url: /ro/net/find-and-replace/
---

Te poţi deplasa cu uşurinţă în cadrul unui document folosind o tastatură şi un mouse, dar dacă ai de parcurs multe pagini să se deruleze, va dura destul de mult timp pentru a găsi un anumit text într-un document lung. "Va fi mai consumator de timp atunci când doriți să înlocuiți anumite caractere sau cuvinte pe care le-ați folosit în documentul dumneavoastră." Funcționalitatea "Găsiți și înlocuiți" vă permite să găsiți o secvență de caractere într-un document și să o înlocuiți cu altă secvență de caractere.

Aspose.Words vă permite să găsiți un șir sau un model de expresie regulată în documentul dvs. și să-l înlocuiți cu o alternativă fără a instala și utiliza aplicații suplimentare, cum ar fi Microsoft Word. Acest lucru va accelera multe sarcini de tastare și formatare, potențial economisind ore de muncă.

Acest articol explică modul de aplicare a înlocuirii șirurilor și a expresiilor regulate cu ajutorul caracterelor meta.

## Moduri de a găsi și înlocui {#ways-to-find-and-replace}

Aspose.Words oferă două moduri de aplicare a operațiunii de căutare și înlocuire folosind următoarele:

1. *Înlocuirea simplă a șirului* - pentru a găsi și înlocui un anumit șir cu altul, trebuie să specificați un șir de căutare (caractere alfanumerice) care va fi înlocuit conform tuturor aparițiilor cu alt șir specificat ca înlocuire. Ambele șiruri nu trebuie să conțină simboluri. Ține cont de faptul că comparația șirurilor de caractere poate fi sensibilă la majuscule, sau s-ar putea să nu fii sigur de ortografie sau să ai mai multe scrieri similare.
2. *Expresii regulate* – pentru a specifica o expresie regulată pentru a găsi potriviri exacte de șiruri și pentru a le înlocui în conformitate cu expresia regulată. Notă că un cuvânt este definit ca fiind format din doar caractere alfanumerice. Dacă înlocuirea este executată cu doar cuvinte întregi care se potrivesc și șirul de intrare se întâmplă să conțină simboluri, atunci nu se vor găsi fraze.

În plus, puteți folosi caractere speciale meta cu înlocuire simplă de șiruri de caractere și expresii regulate pentru a specifica întreruperi în operațiunea de găsire și înlocuire.

Aspose.Words prezintă funcționalitatea "găsește și înlocuiește" cu spațiul de nume [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/). Poţi lucra cu multe opţiuni în timpul procesului de găsire şi înlocuire folosind clasa [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Găsește și înlocuiește text folosind înlocuirea simplă a șirurilor de caractere {#find-and-replace-text-using-simple-string-replacement}

Puteți folosi una din [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) metode pentru a găsi sau înlocui un anumit șir și pentru a returna numărul de înlocuiri care au fost făcute. În acest caz, puteți specifica o șir care va fi înlocuit, un șir care va înlocui toate aparițiile sale, dacă înlocuirea este sensibile de litere mari și mici, și dacă numai cuvintele independente vor fi afectate.

Exemplul următor de cod arată cum se găsește șirul "_CustomerName_" și se înlocuiește cu șirul "*James Bond*":

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Puteți observa diferența dintre document înainte de aplicarea înlocuirii simple a șirului:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

Și după aplicarea înlocuirii simple de șiruri:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Găsește și înlocuiește text folosind expresii regulate {#find-and-replace-text-using-regular-expressions}

O expresie regulată (regex) este un model care descrie o anumită secvență de text. "Dacă vrei să înlocuiești toate aparițiile duble ale unui cuvânt cu o singură apariție." Apoi, puteți aplica următoarea expresie regulată pentru a specifica modelul dublu cuvânt: `([a-zA-Z]+) \1`.

Utilizează metoda [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) pentru a căuta și înlocui combinații specifice de caractere prin setarea parametrului `Regex` ca șablon al expresiei regulate pentru a găsi potriviri.

Exemplul de cod următor prezintă modul în care să înlocuiți șiruri de caractere care se potrivesc cu un model de expresie regulată cu un șir de înlocuire specificat:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Poți observa diferența dintre documentul înainte de aplicarea înlocuirii șirului cu expresii regulate:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

Și după aplicarea înlocuirii șirurilor de caractere cu expresii regulate:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Găsiți și înlocuiți șir folosind caractere metae {#find-and-replace-text-using-metacharacters}

Puteți folosi caractere metachiaracterice în șirul de căutare sau șirul de înlocuire dacă un anumit text sau o frază este compusă din mai multe paragrafe, secțiuni sau pagini. Unii dintre caracterele metae includ **&p** pentru o pauză de paragraf, **& b** pentru o secțiune, **&m** pentru un salt de pagină și **&l** pentru o linie.

{{% alert color="primary" %}}

Observă că caracterul metaforă **&&** este egal cu **&**. Spre exemplu, dacă ai nevoie să găsești un text pentru **&p** care nu este o pauză de paragraf, atunci poți folosi **&&p**.

{{% /alert %}}

Exemplul de cod următor arată cum să înlocuiți textul cu un paragraf și o pauză de pagină:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Găsiți și înlocuiți șirul în antet/pod al unui document {#find-and-replace-string-in-header-or-footer-of-a-document}

Puteți găsi și înlocui text în secțiunea antet/ subsol a unui document Word folosind clasa [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/).

Exemplul de cod următor arată cum să înlocuiți textul secțiunii antetului din documentul dvs

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Puteți observa diferența dintre documentul înainte de a aplica înlocuirea șirului de antet:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

Și după aplicarea înlocuirii șirului de antet:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Exemplul de cod pentru a înlocui textul secțiunii de subsol în documentul dvs. este foarte asemănător cu exemplul de cod antet de mai sus. Tot ce trebuie să faci este să înlocuiești următoarele două rânduri:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Cu următoarele:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Puteți observa diferența dintre documentul înainte de aplicarea înlocuirii șirului de subsol:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

Și după aplicarea înlocuirii șirului de subsol

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Ignoră text în timpul căutării și înlocuirii {#ignore-text-during-find-and-replace}

În timp ce aplici operația de căutare și înlocuire, poți ignora anumite segmente din text. Deci, anumite părți ale textului pot fi excluse de la căutare și funcția găsiți și înlocuiți poate fi aplicată numai părților rămase.

Aspose.Words oferă multe proprietăți de căutare și înlocuire pentru ignorarea textului, cum ar fi [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) și [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

Exemplul de cod următor arată cum să ignori textul din reviziuni ștergând:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Personalizați operațiunea "Găsiți și înlocuiți" {#customize-find-and-replace-operation}

Aspose.Words oferă multe diferite [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) de a găsi și înlocui text, cum ar fi aplicarea unui format specific cu [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) și [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) proprietăți, folosind substituții în modelele de înlocuire cu [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) proprietatea, și altele.

Exemplul de cod următor arată cum să evidențiezi un cuvânt specific în documentul tău:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words vă permite să utilizați [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) interfață pentru crearea și apelarea unei metode personalizate în timpul unei operații de înlocuire. Puteți avea unele cazuri de utilizare în care aveți nevoie să particularizați operațiunea de căutare și înlocuire, cum ar fi înlocuirea textului specificat cu o expresie regulată cu etichete HTML, deci, în esență, veți aplica înlocuirea prin inserarea HTML.

Dacă ai nevoie să înlocuiești o șir cu un tag HTML, aplică interfața **IReplacingCallback** pentru a personaliza operația de căutare și înlocuire astfel încât potrivirea să înceapă de la începutul unui segment din nodul de potrivire al documentului tău. Să prezentăm câteva exemple de utilizare a lui **IReplacingCallback**.

Exemplul următor de cod arată cum să înlocuiască text specificat cu HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Exemplul de cod de mai jos arată cum să evidențiem numerele pozitive cu culoarea verde și numerele negative cu culoarea roșie:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

Exemplul de cod următor arată cum să pre-adăugăm un număr liniei fiecărei linii:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
