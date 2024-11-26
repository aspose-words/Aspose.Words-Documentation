---
title: FAQ
second_title: Aspose.Words pentru .NET
articleTitle: Întrebări frecvente – Aspose.Words pentru .NET
linktitle: Întrebări frecvente – Aspose.Words pentru .NET
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words pentru .NET răspunde la întrebările cel mai frecvente. Învaţă această pagină pentru a-ţi rezolva rapid problema privind întrebări generale sau subiecte specifice."
weight: 75
url: /ro/net/faq/
timestamp: 2024-11-18-12-56-02
---

Această pagină conține răspunsuri la cele mai frecvente întrebări. Te rog să înveți pagina curentă - poate că asta îți va permite să rezolvi repede problema ta.

Dacă nu ai găsit răspunsul la întrebarea ta, poți cere pe forum-ul de suport. Pentru informaţii despre modul corect de raportare a întrebării sau problemei dumneavoastră, vedeţi [Technical Support](/words/net/technical-support/) pagina.

{{% alert color="primary" %}}

Întrebări frecvente sunt grupate pe teme pentru comoditatea ta.

{{% /alert %}}

## General

**"Î: Ce este Aspose.Words?"**

Aspose.Words pentru .NET este o bibliotecă de clasă care permite aplicațiilor dvs. să efectueze o gamă largă de sarcini de procesare a documentelor. Cu Aspose.Words pentru .NET, poţi genera, modifica, converti, afişa şi imprima documente fără aplicaţii terţe.

Detalii pot fi găsite în documentația noastră.

------

**Ce înseamnă că " Aspose.Words nu necesită aplicații terțe"?**

Aspose.Words pentru .NET nu trebuie să instalați orice aplicații terțe sau pachete software suplimentare pentru a funcționa. Doar descărcați și instalați Aspose.Words așa cum se descrie în [Installation](/words/net/installation/) articol și începeți să lucrați.

------

**Q: Care sunt platformele pe care Aspose.Words le suportă?**

Aspose.Words pentru .NET acoperă majoritatea mediilor de dezvoltare populare și platformelor de implementare. Puteți utiliza API pentru dezvoltarea de aplicații pentru o gamă largă de sisteme de operare precum Windows, Linux, și Mac OS, și diferite platforme.

Pentru detalii vedeți [Product Overview](/words/net/product-overview/) pagina și secțiunea [Platforms and Interoperability](/words/net/platforms-and-interoperability/).

------

**Ce formate de documente suportă Aspose.Words?**

Aspose.Words pentru .NET acceptă majoritatea formatelor populare de documente precum DOC, DOCX, HTML, Markdown, PDF, XML și altele.

Puteți vedea lista completă a formatelor suportate pe [Supported Document Formats](/words/net/supported-document-formats/) pagina.

------

**Î: Cum pot încerca Aspose.Words gratuit?**

Poți face acest lucru în două moduri – folosind versiunea de încercare sau o licență temporară de 30 de zile. Versiunea de încercare este la fel ca cea achiziționată, ea oferă întreaga funcționalitate a produsului dar adaugă o urmăritor de evaluare în partea de sus a documentului când încărcarea și salvarea și limitează mărimea maximă a documentului la câteva sute de paragrafe. O licență temporară vă permite să testaţi Aspose.Words fără restricții de încercare timp de 30 de zile.

Vedeți [Licensing and Subscription](/words/net/licensing/) pagină pentru mai multe informații.

{{% alert color="primary" %}}

Poți încerca și câteva dintre cele mai populare Aspose.Words caracteristici prin intermediul [Aspose.Words free online Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**R: Cum pot să cumpăr Aspose.Words?**

Pentru a cumpăra un Aspose.Words licență, trebuie să mergi la [Purchase](https://purchase.aspose.com/buy) pagina, alege produsul "Aspose.Words" și tipul de licență care ți se potrivește. Apoi adăugați licența în coșul dumneavoastră și urmați instrucțiunile din Coș.

După achiziționare, aplicați pentru licență așa cum este descris în secțiunea [Purchased License](/words/net/licensing/#purchased-license).

Detalii despre cum să instalați Aspose.Words pot fi citite pe pagina [Installation](/words/net/installation/).

------

**Î: Cum pot obține suport?**

Folosește forumul de asistență tehnică gratuită. Pentru detalii despre modul de raportare corect a unei probleme și ce trebuie făcut înainte de contactarea forumului, consultă [Technical Support](/words/net/technical-support/) pagina.

## Rندرizarea unui document

{{% alert color="primary" %}}

Poți găsi informații mai detaliate despre redarea în secțiunea [Rendering](/words/net/rendering/) a documentației.

{{% /alert %}}

**De ce dispunerea şi fonturile din documentul de ieşire diferă de cel original?**

Font-ul poate să nu fie disponibil sau formatul fontului este acceptat de Microsoft Word dar nu este acceptat de Aspose.Words. Aspose.Words va efectua [font substitution](/words/net/manipulating-and-substitution-truetype-fonts/).

Pentru a verifica dacă fontul lipsește:

* În Aspose.Words folosește avertismente de substituție a fontului (pentru detalii, vezi secțiunea "Cum să recunoști când fontul a fost înlocuit" din articolul [Manipulate and Substitute TrueType Fonts](/words/net/manipulating-and-substitution-truetype-fonts/)).
* În Microsoft Word deschide caseta de dialog "Substitutie font" (Fișier → Opțiuni → Avansat → Substitutie font).

------

**Î: Unde ar trebui să depozitez fonturile pentru aplicații ASP.NET?**

În `APS.NET`, nu există acces la folderul cu fonturi de sistem în încredere medie. Utilizatorii trebuie să stocheze fonturile în propriul lor folder.

------

**Q: De ce nu funcționează fontul de rezervă pe platformele non-Windows și caracterele Unicode sunt înlocuite cu .notdef glyph?**

Ne putem vedea adesea `.notdef` glyph în loc de vreun caracter Unicode. Aceasta este de obicei o cutie sau o întrebare glyph.

Aceasta se datorează faptului că setările de rezervă Microsoft Office sunt selectate în mod implicit și fonturile Microsoft Office nu sunt disponibile. Utilizatorii trebuie să instaleze Microsoft fonturi Office sau să modifice setările de rezervă.

------

**Q: De ce ar putea fi afișat incorect un text cu scripturi complexe, cum ar fi thailandez sau ebraic, din anumite motive, cum ar fi poziția greșită pentru accente sau ligaturi incorecte?**

Unele fonturi de script complexe necesită ca caracteristicile avansate de tipografie să fie procesate pentru a le afișa corect. Tipografia avansată este dezactivată în Aspose.Words implicită. Utilizatorii trebuie să activeze tipografia avansată cu [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/).

------

**Î: Am nevoie de fișiere de licență pentru fonturile pe care le folosesc?**

Da, tu o faci. Prin urmare, când copiaţi fonturi, ţineţi minte că majoritatea fonturilor sunt copyrightate. Verificați licențele fonturilor înainte și asigurați-vă că pot fi transferate liber către o altă mașină.

## Nested Mail Merge

{{% alert color="primary" %}}

Puteți găsi mai multe informații detaliate despre Mail Merge în secțiunea de documentație [Mail Merge and Reporting](/words/net/mail-merge-and-reporting/).

{{% /alert %}}

**P: De ce nu există câmpuri fuzionate în ieșirea generată?**

Numele câmpului de fuziune rămâne același fără a fi înlocuit de datele necesare din sursa de date, atunci când:

* Verificați dacă datele sunt încărcate corect în tabele: setați [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) corect cu toate cheile primare și relații necesare.
* Verifică că câmpurile de fuziune sunt denumite corespunzător. Folosește metoda [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) pentru a obține toate numele câmpurilor de fuziune și asigură-te că numele câmpurilor de fuziune din șablonul tău se potrivesc cu cel din sursa de date.

------

**Î: De ce ieșirea din fuziunea încastrată nu afișează datele din tabelul copil pentru prima intrare în tabelul părinte, dar afișează toate articolele pentru ultima intrare în tabelul părinte, chiar și cele care nu sunt legate de acesta?**

Aceasta se datorează faptului că regiunile de fuziune din șablon nu sunt formate corect, ceea ce poate face ca toate regiunile încorporate Mail Merge să înceteze să afișeze orice deloc. Eticheta de deschidere [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) și eticheta de închidere [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) trebuie să corespundă și să fie în același rând sau celulă. De exemplu, dacă începi să încorporezi regiuni de fuziune într-o celulă dintr-o tabelă, trebuie să termini regiunea de fuziune în aceeași rând ca prima celulă.

------

**De ce fiecare intrare din tabelul părinte afișează fiecare element din tabelul copil, chiar și pe cele care nu sunt de fapt legate de el?**

Acesta este din cauza relației dintre tabelele părinte și copil nu sunt stabilite sau sunt incorect stabiliți. Este necesar să:

* Asigurați integritatea datelor în cadrul **DataSet** și utilizați obiectul **DataRelation** pentru a reprezenta relația părinte-copil dintre tabelele de date legate.
* Verificați secțiunea "Cum să configurați relațiile de date în Mail Merge închise cu regiuni" din articolul [Nested Mail Merge with Regions](/words/net/nested-mail-merge-with-regions/).

------

**De ce este o excepție: "System.ArgumentException: Această restricție nu poate fi activată deoarece nu toate valorile au valori părinte corespunzătoare" în timp ce se execută Mail Merge încastrate?**

Asta se întâmplă pentru că nu fiecare înregistrare părinte are o înregistrare copil, deci sursa ta de date nu corespunde criteriilor următoare: *fiecare rând din tabelul părinte ar trebui să aibă o relație unu-la-unu cu rândurile din tabelul copil pe baza cheilor primare și străine*.

Dezactiva constrângerile cheie străine când creezi o **DataRelation**.

## Adăugați sau Inserați un Document

{{% alert color="primary" %}}

Puteți găsi mai multe informații detaliate despre programare cu documente în secțiunea de documentație [Programming with Documents](/words/net/programming-with-documents/).

{{% /alert %}}

**Î: De ce conținutul adăugat unui document nu apare pe aceeași pagină?**

"Rezultatul apendat apare pe o pagină separată din cauza diferenței în setările [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) pentru secțiunile în care documentele sunt apendate împreună." Setați identic **PageSetup** setările pentru secțiunile în care documentele sunt adăugate împreună.

## Converteste un document

{{% alert color="primary" %}}

Puteți găsi mai multe informații detaliate despre convertirea unui document în secțiunea de documentație [Convert a Document](/words/net/convert-a-document/).

{{% /alert %}}

**Cum să convertesti PDF în Word?**

Este foarte ușor, doar încărcați un document către modelul și salvați-l într-un format acceptat.

Exemplul de cod următor arată procesul de conversie a unui fișier PDF într-un fișier DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**Î: Cum să convertesti un fișier DOCX în PDF?**

Este foarte ușor și doar încărcați un document către model și salvați-l într-un format acceptat.

Exemplul următor de cod arată procesul de conversie a unui fișier DOCX în PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipulează cu un document

{{% alert color="primary" %}}

Poţi găsi mai multe informaţii detaliate despre programare cu documente în secţiunea de documentaţie [Programming with Documents](/words/net/programming-with-documents/).

{{% /alert %}}

**Î: Cum să împărțiți o pagină de document pe pagină?**

Aspose.Words vă permite să împărțiți un document cu mai multe pagini pe pagină după pagină.

Exemplul de cod următor arată cum să împărțiți un document și să salvați fiecare pagină ca document separat:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**Î: Cum să deschizi un fișier criptat?** **document?**

Puteți să încercați să deschideți un document criptat fără o parolă, ceea ce ar trebui să ducă la o excepție.

Exemplul de cod următor arată cum se deschide un document criptat cu o parolă:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**Î: Cum să imprimi un document?**

Doar două linii de cod.

Exemplul de cod de mai jos arată cum să imprimi un document în două moduri:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**Î: Cum se editează un document PDF?**

Doar încărcați PDF la modelul de Aspose.Words document și faceți modificări.

Exemplul de cod următor arată cum să editezi un document:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**Cum să folosești Aspose.Words în Docker?**

Pentru un răspuns detaliat, citiți articolul [How to Run Aspose.Words in Docker](/words/net/how-to-run-aspose-words-in-docker/).
