---
title: FAQ
second_title: Aspose.Words pentru C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words pentru C++ răspunde la cele mai frecvente întrebări. Aflați această pagină pentru a vă rezolva rapid problema cu întrebări generale sau subiecte specifice."
weight: 75
url: /ro/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Această pagină conține răspunsuri la cele mai frecvente întrebări. Vă rugăm să aflați pagina curentă-poate că acest lucru vă va permite să vă rezolvați rapid problema.

Dacă nu ați găsit răspunsul la întrebarea dvs., puteți întreba pe forumul de asistență. Pentru informații despre cum să raportați corect întrebarea sau problema dvs., consultați [Suport Tehnic](/words/cpp/technical-support/) pagina.

{{% alert color="primary" %}}

Întrebările frecvente sunt grupate pe subiecte pentru confortul dvs.

{{% /alert %}}

## Generale

**Î: Ce este Aspose.Words?**

Aspose.Words pentru C++ este o bibliotecă de clase care permite aplicațiilor dvs. să efectueze o mare varietate de sarcini de procesare a documentelor. Cu Aspose.Words pentru C++, puteți genera, modifica, converti, reda și imprima documente fără aplicații terțe.

Detalii pot fi găsite în documentația noastră.

------

**Î: Ce înseamnă "Aspose.Words nu necesită aplicații terțe"?**

Aspose.Words pentru C++ nu este nevoie să instalați aplicații terțe sau pachete software suplimentare pentru a funcționa. Doar Descărcați și instalați Aspose.Words așa cum este descris în ["Instalare"](/words/cpp/installation/) articolul și începe.

------

**Î: Ce platforme acceptă Aspose.Words?**

Aspose.Words pentru C++ acoperă majoritatea mediilor de dezvoltare populare și a platformelor de implementare. Its API poate fi folosit pentru a dezvolta aplicații pentru o gamă largă de sisteme de operare, cum ar fi Windows, Linux și Mac OS, și diverse platforme.

Pentru detalii, consultați [Prezentare Generală A Produsului](/words/cpp/product-overview/) pagina.

------

**Î:Ce formate de documente acceptă Aspose.Words?**

Aspose.Words pentru C++ suportă majoritatea formatelor de documente populare, cum ar fi DOC, DOCX, HTML, Markdown, PDF, XML, și altele.

Puteți vedea lista completă a formatelor acceptate pe [Formate De Documente Acceptate](/words/cpp/supported-document-formats/) pagina.

------

**Î: Cum pot încerca Aspose.Words gratuit?**

Puteți face acest lucru în două moduri – folosind versiunea de încercare sau o licență temporară de 30 de zile. Versiunea de încercare este aceeași cu cea achiziționată, oferă funcționalitate completă a produsului, dar adaugă un filigran evaluativ în partea de sus a documentului la încărcare și salvare și limitează dimensiunea maximă a documentului la câteva sute de paragrafe. O licență temporară vă permite să testați Aspose.Words fără restricții de încercare timp de 30 zile.

Vezi [Licențiere și abonament](/words/cpp/licensing/) pagina pentru mai multe informații.

{{% alert color="primary" %}}

Puteți încerca, de asemenea, unele dintre cele mai populare Aspose.Words Caracteristici prin intermediul [Aspose.Words aplicații online gratuite](https://products.aspose.app/words).

{{% /alert %}}

------

**Î: Cum pot cumpăra Aspose.Words?**

Pentru a cumpăra o licență Aspose.Words, trebuie să mergeți la [Cumpărare](https://purchase.aspose.com/buy) selectați produsul "Aspose.Words " și tipul de licență care vi se potrivește. Apoi adăugați licența în coș și urmați instrucțiunile coșului de cumpărături.

După cumpărare, solicitați licența așa cum este descris în [Licență Achiziționată](/words/cpp/licensing/#purchased-license) secțiunea.

Detalii despre cum se instalează Aspose.Words pot fi citite pe [Instalare](/words/cpp/installation/) pagina.

------

**Î: Cum pot obține sprijin?**

Utilizați forumul gratuit de asistență tehnică. Pentru detalii despre cum să raportați corect o problemă și ce trebuie făcut înainte de a contacta forumul, consultați [Suport Tehnic](/words/cpp/technical-support/) pagina.

## Redarea unui Document

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre redare în [Redare](/words/cpp/rendering/) secțiunea Documentație.

{{% /alert %}}

**Î: De ce aspectul și fonturile din documentul de ieșire diferă de original?**

Este posibil ca fontul să nu fie disponibil sau formatul fontului să fie acceptat de Microsoft Word, dar să nu fie acceptat de Aspose.Words. Aspose.Words va efectua [înlocuirea fontului](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Pentru a verifica dacă fontul lipsește:

- În Aspose.Words utilizați avertismentele de substituție a fontului (pentru detalii, consultați secțiunea" Cum să recunoașteți că fontul a fost înlocuit " din [Manipulați și înlocuiți fonturile TrueType ](/words/cpp/manipulate-and-substitute-truetype-fonts/) articol).
- În Microsoft Word deschideți caseta de dialog" Substituirea fontului " (Fișier Opțiuni de înlocuire a fontului).

------

**Î: De ce nu funcționează fontul de rezervă pe platforme non-Windows și caracterele Unicode sunt înlocuite cu .notdef glyph?**

Putem vedea adesea gliful `.notdef` în loc de un caracter Unicode. Aceasta este de obicei o cutie sau un glif de întrebare.

Acest lucru se datorează faptului că setările de rezervă Microsoft Office sunt selectate în mod implicit, iar fonturile Microsoft Office nu sunt disponibile. Utilizatorii trebuie să instaleze fonturi Microsoft Office sau să modifice setările de rezervă.

------

**Î: De ce ar putea textul script complex, cum ar fi Thai sau ebraică, să fie afișat inexact din anumite motive, cum ar fi poziția greșită pentru diacritice sau ligaturi inexacte?**

Unele fonturi de script complexe necesită procesarea caracteristicilor avansate de tipografie pentru a le afișa corect. Tipografia avansată este dezactivată în Aspose.Words în mod implicit. Utilizatorii trebuie să activeze Tipografia avansată cu [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**Î: Am nevoie de fișiere de licență pentru fonturile pe care le folosesc?**

Ba da, ai. Prin urmare, atunci când copiați fonturi, rețineți că majoritatea fonturilor sunt protejate prin drepturi de autor. Localizați în prealabil licențele de fonturi și verificați dacă acestea pot fi transferate liber pe o altă mașină.

## Adăugați sau inserați un Document

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre programarea cu documente în [Programare cu documente](/words/cpp/programming-with-documents/) secțiunea Documentație.

{{% /alert %}}

**Î: De ce conținutul atașat la un document nu apare pe aceeași pagină?**

Rezultatul append apare pe o pagină separată din cauza unei diferențe în setările [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) pentru secțiunile în care documentele sunt atașate împreună. Efectuați setări identice **PageSetup** pentru secțiunile în care documentele sunt atașate împreună.

## Conversia unui Document

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre conversia unui document în [Conversia unui Document](/words/cpp/convert-a-document/) secțiunea Documentație.

{{% /alert %}}

**Î: Cum se convertește DOCX în PDF?**

De asemenea, este foarte ușor, trebuie doar să încărcați un document pe model și să îl salvați în orice format acceptat.

Următorul exemplu de cod arată procesul de conversie a unui fișier DOCX în PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipulați cu un Document

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre programarea cu documente în [Programare cu documente](/words/cpp/programming-with-documents/) secțiunea Documentație.

{{% /alert %}}

**Î: Cum să împărțiți o pagină de document pe pagină?**

Aspose.Words vă permite să împărțiți un document cu mai multe pagini pagină cu pagină.

Următorul exemplu de cod arată cum să împărțiți un document și să salvați fiecare pagină ca document separat:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**Î: Cum se deschide un criptat**

Puteți încerca să deschideți un document criptat fără o parolă, ceea ce ar trebui să conducă la o excepție.

Următorul exemplu de cod arată cum să deschideți un document criptat cu o parolă:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
