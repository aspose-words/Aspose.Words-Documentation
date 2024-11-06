---
title: Găsiți și înlocuiți în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Găsiți și înlocuiți
linktitle: Găsiți și înlocuiți
type: docs
description: "Găsiți un șir sau un model de expresie regulată în documentul dvs. și înlocuiți-l cu textul dorit folosind Python."
weight: 100
url: /ro/python-net/find-and-replace/
---

Puteți naviga cu ușurință în documentul dvs. folosind o tastatură și un mouse, dar dacă aveți multe pagini de parcurs, va dura destul de mult timp pentru a găsi un anumit text într-un document lung. Va consuma mai mult timp atunci când doriți să înlocuiți anumite caractere sau cuvinte pe care le-ați folosit în documentul dvs. Funcționalitatea "găsiți și înlocuiți" vă permite să găsiți o secvență de caractere într-un document și să o înlocuiți cu o altă secvență de caractere.

Aspose.Words vă permite să găsiți un anumit șir sau un model de expresie regulată în documentul dvs. și să îl înlocuiți cu o alternativă fără a instala și utiliza aplicații suplimentare, cum ar fi Microsoft Word. Acest lucru va accelera multe sarcini de tastare și formatare, economisind potențial ore de lucru.

Acest articol explică modul de aplicare a înlocuirii șirurilor și a expresiilor regulate cu sprijinul metacaracterelor.

## Modalități de a găsi și înlocui {#ways-to-find-and-replace}

Aspose.Words oferă două moduri de a aplica operația de găsire și înlocuire utilizând următoarele:

1. *Simple string replacement* - pentru a găsi și înlocui un șir specific cu altul, trebuie să specificați un șir de căutare (caractere alfanumerice) care va fi înlocuit în funcție de toate aparițiile cu un alt șir de înlocuire specificat. Ambele șiruri nu trebuie să conțină simboluri. Luați în considerare faptul că compararea șirurilor poate fi sensibilă la majuscule și minuscule sau este posibil să nu fiți sigur de ortografie sau să aveți mai multe ortografii similare.
2. *Regular expressions* - pentru a specifica o expresie regulată pentru a găsi potrivirile exacte ale șirului și a le înlocui în funcție de expresia dvs. regulată. Rețineți că un cuvânt este definit ca fiind alcătuit doar din caractere alfanumerice. Dacă înlocuirea este executată cu doar cuvinte întregi potrivite și șirul de intrare conține simboluri, atunci nu vor fi găsite fraze.

În plus, puteți utiliza metacaractere speciale cu înlocuire simplă a șirurilor și expresii regulate pentru a specifica pauze în cadrul operației de găsire și înlocuire.

Aspose.Words prezintă funcționalitatea Găsire și înlocuire cu modulul [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). Puteți lucra cu mai multe opțiuni în timpul procesului de găsire și înlocuire folosind clasa [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Găsiți și înlocuiți textul folosind înlocuirea simplă a șirurilor {#find-and-replace-text-using-simple-string-replacement}

Puteți utiliza una dintre metodele [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) și [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) pentru a găsi sau înlocui un anumit șir și pentru a returna numărul de înlocuiri efectuate. În acest caz, puteți specifica un șir de înlocuit, un șir care va înlocui toate aparițiile sale, dacă înlocuirea este sensibilă la majuscule și minuscule și dacă vor fi afectate doar cuvintele de sine stătătoare.

Următorul exemplu de cod arată cum să găsiți șirul "_CustomerName_ " și să îl înlocuiți cu șirul *"James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Puteți observa diferența dintre document înainte de a aplica înlocuirea simplă a șirului:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement" style="width:600px"/>

Și după aplicarea înlocuirii simple a șirului:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement" style="width:600px"/>

### Găsiți și înlocuiți textul folosind expresii regulate {#find-and-replace-text-using-regular-expressions}

O expresie regulată este un model care descrie o anumită secvență de text. Să presupunem că doriți să înlocuiți toate aparițiile duble ale unui cuvânt cu un singur cuvânt. Apoi puteți aplica următoarea expresie regulată pentru a specifica modelul cu două cuvinte: `([a-zA-Z]+) \1`.

Utilizați metoda [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) pentru a căuta și înlocui anumite combinații de caractere setând parametrul expresiei regulate ca model pentru a găsi potriviri.

Următorul exemplu de cod arată cum să înlocuiți șirurile care se potrivesc cu un model de expresie regulată cu un șir de înlocuire specificat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Puteți observa diferența dintre document înainte de a aplica înlocuirea șirului cu expresii regulate:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions" style="width:600px"/>

Și după aplicarea înlocuirii șirului cu expresii regulate:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions" style="width:600px"/>

### Găsiți și înlocuiți șirul folosind metacaractere {#find-and-replace-text-using-metacharacters}

Puteți utiliza metacaractere în șirul de căutare sau în șirul de înlocuire dacă un anumit text sau expresie este compus din mai multe paragrafe, secțiuni sau pagini. Unele dintre metacaractere includ **&p** pentru o pauză de paragraf, **&b** pentru o pauză de secțiune, **&m** pentru o pauză de pagină și **&l** pentru o pauză de linie.

{{% alert color="primary" %}}

Rețineți că metacaracterul **&&** este egal cu **&**. De exemplu, dacă trebuie să găsiți text pentru **&p** care nu este o pauză de paragraf, atunci puteți utiliza **&&p**.

{{% /alert %}}

Următorul exemplu de cod arată cum să înlocuiți textul cu paragraf și pauză de pagină:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Găsiți și înlocuiți șirul în antetul / subsolul unui Document {#find-and-replace-string-in-header-or-footer-of-a-document}

Puteți găsi și înlocui textul în secțiunea antet/subsol a unui document Word folosind clasa [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

Următorul exemplu de cod arată cum să înlocuiți textul secțiunii antet din documentul dvs:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Puteți observa diferența dintre document înainte de a aplica înlocuirea șirului de antet:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement" style="width:600px"/>

Și după aplicarea înlocuirii șirului de antet:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement" style="width:600px"/>

Exemplul de cod pentru a înlocui textul secțiunii subsol din documentul dvs. este foarte similar cu exemplul de cod antet anterior. Tot ce trebuie să faceți este să înlocuiți următoarele două linii:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Cu următoarele:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Puteți observa diferența dintre document înainte de a aplica înlocuirea șirului de subsol:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement" style="width:600px"/>

Și după aplicarea înlocuirii șirului de subsol:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement" style="width:600px"/>

## Ignorați textul în timpul găsirii și înlocuirii {#ignore-text-during-find-and-replace}

În timp ce aplicați operația de găsire și înlocuire, puteți ignora anumite segmente ale textului. Deci, anumite părți ale textului pot fi excluse din căutare, iar găsirea și înlocuirea pot fi aplicate numai părților rămase.

Aspose.Words oferă multe proprietăți de găsire și înlocuire pentru ignorarea textului, cum ar fi [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) și [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

Următorul exemplu de cod arată cum să ignorați textul din interiorul reviziilor de ștergere:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Personalizați operația de găsire și înlocuire {#customize-find-and-replace-operation}

Aspose.Words oferă multe proprietăți diferite pentru a găsi și înlocui textul, cum ar fi aplicarea unui format specific cu proprietățile [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) și [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/), utilizarea substituțiilor în modelele de înlocuire cu proprietatea [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) și altele.

Următorul exemplu de cod arată cum să evidențiați un anumit cuvânt în documentul dvs:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
