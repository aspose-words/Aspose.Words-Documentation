---
title: Comparați documentele în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Comparați Documentele
linktitle: Comparați Documentele
description: "Comparați două documente în orice format acceptat și afișează modificările de conținut folosind Python. Puteți aplica Opțiuni avansate atunci când comparați."
type: docs
weight: 60
url: /ro/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Compararea documentelor este un proces care identifică modificările între două documente și conține modificările ca revizuiri. Acest proces compară oricare două documente, inclusiv versiunile unui document specific, apoi modificările dintre ambele documente vor fi afișate ca revizuiri în primul document.

Metoda de comparare se realizează prin compararea cuvintelor la nivel de caracter sau la nivel de cuvânt. Dacă un cuvânt conține o schimbare de cel puțin un caracter, în rezultat, diferența va fi afișată ca o schimbare a întregului cuvânt, nu un caracter. Acest proces de comparație este o sarcină obișnuită în industriile juridice și financiare.

În loc să căutați manual diferențele dintre documente sau între diferite versiuni ale acestora, puteți utiliza Aspose.Words pentru compararea documentelor și obținerea modificărilor de conținut în formatare, antet/subsol, tabele și multe altele.

Acest articol explică modul de comparare a documentelor și modul de specificare a proprietăților avansate de comparare.

{{% alert color="primary" %}}

**Încercați online**

Puteți compara două documente online utilizând [Compararea documentelor online](https://products.aspose.app/words/comparison) unealtă.

Rețineți că metoda de comparație, descrisă mai jos, este utilizată în acest instrument pentru a asigura obținerea unor rezultate egale. Deci, veți obține aceleași rezultate chiar și utilizând instrumentul de comparație online sau utilizând metoda de comparație în Aspose.Words.

{{% /alert %}}

## Limitări și formate de fișiere acceptate {#limitations-and-supported-file-formats}

Compararea documentelor este o caracteristică foarte complexă. Există părți variate ale combinației de conținut care trebuie analizate pentru a recunoaște toate diferențele. Motivul acestei complexități se datorează faptului că Aspose.Words își propune să obțină aceleași rezultate de comparație ca algoritmul de comparație Microsoft Word.

Limitarea generală pentru două documente care sunt comparate este că acestea nu trebuie să aibă revizuiri înainte de a apela metoda de comparare, deoarece această limitare există în Microsoft Word.

{{% alert color="primary" %}}

Rețineți că puteți compara oricare două documente din cadrul [formate de fișiere acceptate](/words/python-net/supported-document-formats/). Practic, puteți compara obiectele documentului și chiar puteți crea acele obiecte de la zero fără a avea niciun format specific.

{{% /alert %}}

## Comparați Două Documente {#compare-two-documents}

Când comparați documente, diferențele dintre ultimul document și primul apar ca revizuiri ale primului. Când modificați un document, fiecare editare va avea propria revizuire după rularea metodei de comparare.

Aspose.Words vă permite să identificați diferențele de documente folosind metoda [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) - Aceasta este similară cu caracteristica de comparare a documentelor Microsoft Word. Vă permite să verificați documente sau versiuni de documente pentru a găsi diferențe și modificări, inclusiv modificări de formatare, cum ar fi modificări de font, modificări de spațiere, adăugarea de cuvinte și paragrafe.

Ca urmare a comparației, documentele pot fi determinate ca egale sau nu egale. Termenul de documente "egale" înseamnă că metoda de comparație nu este capabilă să reprezinte modificările ca revizuiri. Aceasta înseamnă că atât textul documentului, cât și formatarea textului sunt aceleași. Dar pot exista și alte diferențe între documente. De exemplu, Microsoft Word acceptă numai revizuiri de format pentru stiluri și nu puteți reprezenta inserarea/ștergerea stilului. Deci documentele pot avea un set diferit de stiluri, iar metoda [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) încă nu produce revizuiri.

Următorul exemplu de cod arată cum să verificați dacă două documente sunt egale sau nu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Următorul exemplu de cod arată cum să aplicați pur și simplu metoda `Compare` la două documente:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## Specificați Proprietăți Avansate De Comparare {#specify-advanced-comparing-properties}

Există multe proprietăți diferite ale clasei [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) pe care le puteți aplica atunci când doriți să comparați documente.

De exemplu, Aspose.Words vă permite să ignorați modificările efectuate în timpul unei operații de comparație pentru anumite tipuri de obiecte din documentul original. Puteți selecta proprietatea corespunzătoare pentru tipul de Obiect, cum ar fi[ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/), și altele prin setarea lor la `True`.

În plus, Aspose.Words oferă proprietatea [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) cu care puteți specifica dacă să urmăriți modificările după caracter sau după cuvânt.

O altă proprietate comună este alegerea documentului pentru a arăta modificările de comparație. De exemplu, caseta de dialog " comparați documentele "din Microsoft Word are opțiunea" Afișați modificările în " – aceasta afectează și rezultatele comparației. Aspose.Words oferă proprietatea [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) care servește acestui scop.

Următorul exemplu de cod arată cum să setați proprietățile avansate de comparare:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
