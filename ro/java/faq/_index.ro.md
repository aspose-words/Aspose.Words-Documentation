---
title: FAQ
second_title: Aspose.Words pentru Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words pentru Java răspunde la cele mai frecvente întrebări. Aflați această pagină pentru a vă rezolva rapid problema cu întrebări generale sau subiecte specifice."
weight: 75
url: /ro/java/faq/
timestamp: 2024-01-31-14-23-37
---

Această pagină conține răspunsuri la cele mai frecvente întrebări. Vă rugăm să aflați pagina curentă-poate că acest lucru vă va permite să vă rezolvați rapid problema.

Dacă nu ați găsit răspunsul la întrebarea dvs., puteți întreba pe forumul de asistență. Pentru informații despre cum să raportați corect întrebarea sau problema dvs., consultați [Suport Tehnic](/words/java/technical-support/) pagina.

{{% alert color="primary" %}}

Întrebările frecvente sunt grupate pe subiecte pentru confortul dvs.

{{% /alert %}}

## Generale

**Î: Ce este Aspose.Words?**

Aspose.Words pentru Java este o bibliotecă de clase care permite aplicațiilor dvs. să efectueze o mare varietate de sarcini de procesare a documentelor. Cu Aspose.Words pentru Java, puteți genera, modifica, converti, reda și imprima documente fără aplicații terțe.

Detalii pot fi găsite în documentația noastră.

------

**Î: Ce înseamnă "Aspose.Words nu necesită aplicații terțe"?**

Aspose.Words pentru Java nu este nevoie să instalați aplicații terțe sau pachete software suplimentare pentru a funcționa. Doar Descărcați și instalați Aspose.Words așa cum este descris în [Instalare](/words/java/installation/) articolul și începe.

------

**Î: Ce platforme acceptă Aspose.Words?**

Aspose.Words pentru Java acoperă majoritatea mediilor de dezvoltare populare și a platformelor de implementare. Its API poate fi folosit pentru a dezvolta aplicații pentru o gamă largă de sisteme de operare, cum ar fi Windows, Linux și Mac OS, și diverse platforme.

Pentru detalii, consultați [Prezentare Generală A Produsului](/words/java/product-overview/) pagina și [Platforme și Interoperabilitate](/words/java/platforms-and-interoperability/) secțiunea.

------

**Î:Ce formate de documente acceptă Aspose.Words?**

Aspose.Words pentru Java suportă majoritatea formatelor de documente populare, cum ar fi DOC, DOCX, HTML, Markdown, PDF, XML, și altele.

Puteți vedea lista completă a formatelor acceptate pe [Formate De Documente Acceptate](/words/java/supported-document-formats/) pagina.

------

**Î: Cum pot încerca Aspose.Words gratuit?**

Puteți face acest lucru în două moduri – folosind versiunea de încercare sau o licență temporară de 30 de zile. Versiunea de încercare este aceeași cu cea achiziționată, oferă funcționalitate completă a produsului, dar adaugă un filigran evaluativ în partea de sus a documentului la încărcare și salvare și limitează dimensiunea maximă a documentului la câteva sute de paragrafe. O licență temporară vă permite să testați Aspose.Words fără restricții de încercare timp de 30 zile.

Vezi [Licențiere și abonament](/words/java/licensing/) pagina pentru mai multe informații.

{{% alert color="primary" %}}

Puteți încerca, de asemenea, unele dintre cele mai populare Aspose.Words Caracteristici prin intermediul [Aspose.Words aplicații online gratuite](https://products.aspose.app/words).

{{% /alert %}}

------

**Î: Cum pot cumpăra Aspose.Words?**

Pentru a cumpăra o licență Aspose.Words, trebuie să mergeți la [Cumpărare](https://purchase.aspose.com/buy) selectați produsul "Aspose.Words " și tipul de licență care vi se potrivește. Apoi adăugați licența în coș și urmați instrucțiunile coșului de cumpărături.

După cumpărare, solicitați licența așa cum este descris în [Licență Achiziționată](/words/java/licensing/#purchased-license) secțiunea.

Detalii despre cum se instalează Aspose.Words pot fi citite pe [Instalare](/words/java/installation/) pagina.

------

**Î: Cum pot obține sprijin?**

Utilizați forumul gratuit de asistență tehnică. Pentru detalii despre cum să raportați corect o problemă și ce trebuie făcut înainte de a contacta forumul, consultați [Suport Tehnic](/words/java/technical-support/) pagina.

## Redarea unui Document

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre redare în [Redare](/words/java/rendering/) secțiunea Documentație.

{{% /alert %}}

**Î: De ce aspectul și fonturile din documentul de ieșire diferă de original?**

Este posibil ca fontul să nu fie disponibil sau formatul fontului să fie acceptat de Microsoft Word, dar să nu fie acceptat de Aspose.Words. Aspose.Words va efectua [înlocuirea fontului](/words/java/manipulate-and-substitute-truetype-fonts/).

Pentru a verifica dacă fontul lipsește:

- În Aspose.Words utilizați avertismentele de substituție a fontului (pentru detalii, consultați secțiunea" Cum să recunoașteți că fontul a fost înlocuit " din [Manipulați și înlocuiți fonturile TrueType ](/words/java/manipulate-and-substitute-truetype-fonts/) articol).
- În Microsoft Word deschideți caseta de dialog" Substituirea fontului " (Fișier Opțiuni de înlocuire a fontului).

------

**Î: De ce nu funcționează fontul de rezervă pe platforme non-Windows și caracterele Unicode sunt înlocuite cu .notdef glyph?**

Putem vedea adesea gliful `.notdef` în loc de un caracter Unicode. Aceasta este de obicei o cutie sau un glif de întrebare.

Acest lucru se datorează faptului că Microsoft setările de rezervă Office sunt selectate în mod implicit, iar Microsoft fonturile Office nu sunt disponibile. Utilizatorii trebuie să instaleze Microsoft fonturi Office sau să modifice setările de rezervă.

------

**Î: De ce ar putea textul script complex, cum ar fi Thai sau ebraică, să fie afișat inexact din anumite motive, cum ar fi poziția greșită pentru diacritice sau ligaturi inexacte?**

Unele fonturi de script complexe necesită procesarea caracteristicilor avansate de tipografie pentru a le afișa corect. Tipografia avansată este dezactivată în Aspose.Words în mod implicit. Utilizatorii trebuie să activeze Tipografia avansată cu [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Î: Am nevoie de fișiere de licență pentru fonturile pe care le folosesc?**

Ba da, ai. Prin urmare, atunci când copiați fonturi, rețineți că majoritatea fonturilor sunt protejate prin drepturi de autor. Localizați în prealabil licențele de fonturi și verificați dacă acestea pot fi transferate liber pe o altă mașină.

## Cuibărit Mail Merge

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre Mail Merge în [Mail Merge și raportare](/words/java/mail-merge-and-reporting/) secțiunea Documentație.

{{% /alert %}}

**Î: De ce nu există câmpuri îmbinate în ieșirea generată?**

Numele original al câmpului de îmbinare rămâne același fără a fi înlocuit cu datele necesare din sursa de date, apoi:

- Verificați dacă datele sunt încărcate corect în tabele: setați corect [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) cu toate cheile și relațiile primare necesare.
- Verificați dacă câmpurile de îmbinare sunt denumite corect. Utilizați metoda [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) pentru a obține toate numele câmpurilor de îmbinare și asigurați-vă că numele câmpurilor de îmbinare din șablon se potrivește cu cel din sursa de date.

------

**Î: De ce ieșirea fuziunii imbricate nu afișează date din tabelul copil pentru prima intrare din tabelul părinte, ci afișează toate elementele pentru ultima intrare din tabelul părinte, chiar și cele care nu sunt de fapt legate de acesta?**

Acest lucru se datorează faptului că regiunile de îmbinare din șablon nu sunt formate corect, ceea ce poate face ca toate regiunile imbricate Mail Merge să nu mai afișeze nimic. Eticheta de deschidere [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) și eticheta de închidere [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) trebuie să se potrivească și să fie în același rând sau celulă. De exemplu, dacă începeți cuibărirea regiunilor de îmbinare într-o celulă a unui tabel, trebuie să terminați regiunea de îmbinare în același rând cu prima celulă.

------

**Î: De ce fiecare intrare din tabelul părinte afișează fiecare element din tabelul copil, chiar și cele care nu sunt de fapt legate de acesta?**

Acest lucru se datorează faptului că relația dintre tabelele părinte și copil nu sunt configurate sau sunt configurate incorect. Este necesar să:

- Asigurați integritatea datelor în **DataSet** și utilizați obiectul **DataRelation** pentru a reprezenta relația părinte-copil între tabelele de date conexe.
- Verificați secțiunea "Cum se configurează relațiile de date în imbricate Mail Merge cu regiuni" din articol [Imbricate Mail Merge cu regiuni](/words/java/nested-mail-merge-with-regions/).

------

**Î: De ce este o excepție: "sistem.ArgumentException: această constrângere nu poate fi activată deoarece nu toate valorile au valori părinte corespunzătoare" în timp ce se execută imbricate mail merge?**

Acest lucru se întâmplă deoarece nu fiecare înregistrare părinte are o înregistrare copil, astfel încât sursa dvs. de date nu corespunde următoarelor criterii: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Dezactivați constrângerile cheii străine atunci când creați un **DataRelation**.

## Adăugați sau inserați un Document

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre programarea cu documente în [Programare cu documente](/words/java/programming-with-documents/) secțiunea Documentație.

{{% /alert %}}

**Î: De ce conținutul atașat la un document nu apare pe aceeași pagină?**

Rezultatul append apare pe o pagină separată din cauza unei diferențe în setările [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) pentru secțiunile în care documentele sunt atașate împreună. Efectuați setări identice **PageSetup** pentru secțiunile în care documentele sunt atașate împreună.

## Conversia unui Document

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre conversia unui document în [Conversia unui Document](/words/java/convert-a-document/) secțiunea Documentație.

{{% /alert %}}

**Î: Cum se convertește DOCX în PDF?**

De asemenea, este foarte ușor, trebuie doar să încărcați un document pe model și să îl salvați în orice format acceptat.

Următorul exemplu de cod arată procesul de conversie a unui fișier DOCX în PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipulați cu un Document

{{% alert color="primary" %}}

Puteți găsi informații mai detaliate despre programarea cu documente în [Programare cu documente](/words/java/programming-with-documents/) secțiunea Documentație.

{{% /alert %}}

**Î: Cum să împărțiți o pagină de document pe pagină?**

Aspose.Words vă permite să împărțiți un document cu mai multe pagini pagină cu pagină.

Următorul exemplu de cod arată cum să împărțiți un document și să salvați fiecare pagină ca document separat:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Î: Cum se deschide un criptat**

Puteți încerca să deschideți un document criptat fără o parolă, ceea ce ar trebui să conducă la o excepție.

Următorul exemplu de cod arată cum să deschideți un document criptat cu o parolă:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**Î: Cum se imprimă un document?**

Pentru un răspuns detaliat, aflați articolul [Imprimarea unui Document programatic sau folosind Dialoguri](/words/java/print-a-document-programmatically-or-using-dialogs/).
