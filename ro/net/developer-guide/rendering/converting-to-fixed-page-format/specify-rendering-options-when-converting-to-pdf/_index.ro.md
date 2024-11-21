---
title: Opțiuni la convertirea în PDF
second_title: Aspose.Words pentru .NET
articleTitle: Specificați opțiunile de redare atunci când convertați în PDF
linktitle: Specificați opțiunile de redare atunci când convertați în PDF
description: "Converteste un document la PDF cu opțiuni avansate folosind C#. Convertiți formularele DOCX în PDF C#. Utilizați PdfSaveOptions pentru a schimba rezultatul salvării unui document către PDF."
type: docs
weight: 20
url: /ro/net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Formatul PDF este un format cu pagini fixe, foarte popular printre utilizatori și larg acceptat de diverse aplicații, deoarece un document PDF arată același pe orice dispozitiv. Din acest motiv, convertirea în PDF este o caracteristică importantă a Aspose.Words.

PDF este un format complex. Mai multe etape de calcul sunt necesare în procesul de convertire a unui document într-un fișier PDF, inclusiv calculul de aranjare. Din moment ce aceste etape includ computații complexe, ele sunt consumatoare de timp. În plus, formatul PDF este destul de complicat prin el însuși. Are o structură de fișiere specifică, un model grafic și încorporare font. În plus, acesta are o funcționalitate de ieșire complexă, cum ar fi etichete de structură a documentului, criptare, semnături digitale și formulare editabile.

Aspose.Words motorul de layout imită modul în care Microsoft Word motorul de layout al paginii lucrează. Prin urmare, Aspose.Words face ca documentele PDF să arate cât mai aproape posibil de ceea ce poți vedea în Microsoft Word. Uneori este necesar să precizezi opţiuni suplimentare care pot afecta rezultatul salvării unui document în formatul PDF. Aceste opțiuni pot fi specificate prin utilizarea clasei [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/), care conține proprietățile care determină modul în care va fi afișată ieșirea PDF-ului.

Câteva exemple de utilizare a **PdfSaveOptions** sunt prezentate mai jos.

{{% alert color="primary" %}}

În prezent puteți salva în PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u și PDF/UA-1. Utilizaţi enumerarea [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) pentru a seta nivelul de conformitate cu standardele PDF. Notă că cu formatul PDF/A, dimensiunea unui fișier de ieșire este mai mare decât o dimensiune normală PDF fișier.

"[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) și [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) sunt marcate ca fiind învechite."

Pentru informații suplimentare despre PDF/A vezi articolul următor "Learn Features of Conversion to PDF/A".

{{% /alert %}}

## Crearea unui document PDF cu formulare editabile

Este posibil de asemenea să exportați formulare completabile dintr-un Microsoft Word document în ieșire PDF, care are formulare completabile în loc de text simplu. Utilizați proprietatea [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) pentru a salva un document ca PDF cu formulare editabile.

Rețineți că în contrast cu Microsoft Word, formatul PDF are un număr limitat de opțiuni pentru formulare editabile, cum ar fi textbox, combobox și checkbox. Microsoft Word are mai multe tipuri de formulare, de exemplu, selector de date calendaristice. În general, nu este posibil să se imite complet Microsoft Word comportamentul în PDF. Prin urmare, în unele cazuri complexe, ieșirea PDF poate fi diferită de ceea ce vedeți în Microsoft Word.

Exemplul de cod de mai jos arată cum să salvezi un document ca PDF cu formulare care pot fi umplute folosind compresia și calitatea specificate JPEG

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "image-compression.cs" >}}

## Exportarea structurii documentului și a proprietăților personalizate

Proprietatea [https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportdocumentstructure] permite exportul structurii documentului către PDF.

Facilitățile structurii logice PDF oferă un mecanism pentru includerea informațiilor referitoare la structura conținutului documentului într-un fișier PDF. Aspose.Words păstrează informații despre structura dintr-un Microsoft Word document, cum ar fi paragrafe, liste, tabele, note de subsol/post-scriptum, etc.

Exemplul următor demonstrează cum să salvezi un document într-un fișier PDF păstrând structura documentului:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "export-document-structure.cs" >}}

Aspose.Words permite de asemenea și exportul proprietăților personalizate ale documentului către PDF, ceea ce este demonstrat de exemplul următor:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "custom-properties-export.cs" >}}

## Exportarea notelor din marcaje și titluri în PDF de ieșire

Dacă doriți să exportați marcajele ca linii în PDF-ul de ieșire, puteți utiliza proprietatea [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/). Această proprietate specifică nivelul de bază în schița documentului, la care sunt afișate Microsoft Word marcaje. Dacă documentul conține marcaje în antetul/subsolul documentului, puteți seta proprietatea [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) la [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) sau [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) pentru a specifica modul în care acestea sunt exportate în PDF de ieșire. Semnele de carte din antet/pod sunt neexportate atunci când valoarea lui **HeaderFooterBookmarksExportMode** este [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

Exemplul de cod de mai jos arată cum să exporți marcajele din primul antet/ subsol al unei secțiuni:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "export-header-footer-bookmarks.cs" >}}

Output-ul PDF al acestui exemplu este prezentat mai jos:

![specify-rendering-options-when-converting-to-pdf_1](specify-rendering-options-when-converting-to-pdf-1.png)

Când **HeaderFooterBookmarksExportMode** este setat la [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) și documentul are antete/subiecte parante și impare sau un antet/subiect diferit pe prima pagină, se exportează semne de carte pentru primele antete/subiecte unice într-o secțiune.

Puteți exporta și anteturile în fișierul PDF de ieșire utilizând proprietatea [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/). Această proprietate specifică câți niveluri de titluri sunt incluse în rezumatul documentului.

Codul exemplu de mai jos arată cum se exportează anteturi cu trei niveluri:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "outline-options.cs" >}}

Output-ul PDF al acestui exemplu este prezentat mai jos:

![specify-rendering-options-when-converting-to-pdf_2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un semn de carte sau navigarea prin anteturi pot avea aparențe diferite în diverse vizualizatoare de fișiere PDF. "Mai mult, în unele aplicații, marcajele și navigarea prin antet nu sunt disponibile în interfața utilizatorului."

{{% /alert %}}

## Downsampling Imagini pentru a Reduce Dimensiunea Documentei

Aspose.Words oferă posibilitatea de a descărca imaginile pentru a reduce dimensiunea fișierului PDF, folosind proprietatea [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/). Downsampling este activat în mod implicit în proprietatea [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/).

Rețineți că este posibil și să se stabilească o rezoluție specifică în proprietatea [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/), sau un prag de rezoluție în proprietatea [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold). În al doilea caz, dacă rezoluția imaginii este mai mică decât valoarea pragului, atunci reducerea eșantionării nu se aplică.

Exemplul de cod de mai jos arată cum se schimbă rezoluția imaginilor într-un document PDF de ieșire:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "downsampling-images.cs" >}}

Rezoluţia este calculată în funcţie de dimensiunea imaginii reale pe pagină.

## Incorporarea fonturilor în formatul Adobe PDF

Aspose.Words vă permite, de asemenea, să controlați modul în care fonturile sunt încorporate în documentele PDF rezultate. Fonturile trebuie să fie încorporate în orice document PDF Adobe pentru a asigura că documentul poate fi redat corect pe orice mașină (vezi mai multe detalii despre redarea fonturilor în secțiunea [Using TrueType Fonts](/words/net/using-truetype-fonts/)). În mod implicit, Aspose.Words încorporează un sub-set de fonturi utilizate în document în fișierul PDF generat. În acest caz, se salvează doar glifele (caractere) utilizate în document la PDF.

### Când să folosești fonturi complete și când subseturi

Există o cale de a specifica opțiunea pentru Aspose.Words să încorporeze fonturi complete. Detalii suplimentare, alături de unele avantaje și dezavantaje ale fiecărei setări sunt descrise în tabelul de mai jos.

| Modul Font Încorporat | Avantaje | Dezavantaje |
| :- | :- | :- |
| `Full` | Util atunci când doriți să editați mai târziu PDF-ul rezultat prin adăugarea sau modificarea textului. Toate fonturile sunt incluse, prin urmare toate glifurile sunt prezente. | Deoarece unele fonturi sunt mari (mai multe megabiți), inserarea lor fără subsetting poate duce la fișiere de ieșire mari. |
| `Subset` | Subsetting este util dacă doriți să păstrați dimensiunea fișierului de ieșire mai mică. | <p>"Utilizatorul nu poate adăuga sau edita complet text folosind fontul subsetat în documentul PDF rezultat." Aceasta se datorează faptului că nu toate glifele fontului sunt prezente.<p>Dacă mai multe fișiere PDF sunt salvate cu fonturi subsettate și asamblate împreună, atunci documentul PDF combinat ar putea avea un font care conține multe subseturi inutile.</p></p> |

### Încorporarea fonturilor complete în PDF-uri

Proprietatea [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) vă permite să specificați modul în care Aspose.Words încorporează fonturi într-un document PDF de ieșire.

- Pentru a încorpora fonturi complete în documentul PDF de ieșire, setaţi **EmbedFullFonts** la true
"- Pentru a sub-seta fonturile la salvarea către PDF, setează **EmbedFullFonts** la false"

Următorul exemplu demonstrează cum să încorporezi fonturi complete în documentul PDF de ieșire:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "embedded-all-fonts.cs" >}}

Exemplul următor demonstrează cum să setați Aspose.Words la fonturile subset în PDF-ul de ieșire:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "embedded-subset-fonts.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon pentru aceste exemple de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Cum să controlați fonturile încorporate de bază și Windows Fonturi standard

Fonturile de bază și Windows fonturi standard sunt "seturile standard" de fonturi, care sunt de obicei prezente pe mașina țintă sau furnizate de cititorul de documente, prin urmare acestea nu trebuie să fie inserate în fișierul PDF rezultat. "Nu încorporând aceste fonturi, poţi diminua mărimea documentelor PDF randate şi totuşi să menţii portabilitatea."

Aspose.Words oferă opțiuni de a alege cum sunt exportate fonturile pentru PDF. Puteți alege fie să încorporați fonturi de bază și standard în fișierul PDF rezultat sau săriți peste încorporare și utilizați fonturi standard de bază PDF sau fonturi de sistem pe mașina țintă. Folosind oricare dintre aceste opțiuni, de obicei se obține o reducere semnificativă a dimensiunii fișierului pentru documentele PDF generate prin Aspose.Words.

"- Întrucât aceste opțiuni sunt reciproce, ar trebui să alegi doar una odată."
Când salvezi cu PDF/A-1 conformitatea, toate fonturile utilizate trebuie să fie încorporate cu documentul PDF. Când salvezi cu această conformitate, proprietatea [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) trebuie să fie setată la false și proprietatea [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) trebuie să fie setată la [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### Incorporarea fonturilor de bază

Opțiunea de a încorpora fonturi Core poate fi activată sau dezactivată folosind proprietatea [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/). Când este setat la true, următoarele cele mai populare "True Type" fonturi (fonturi Base 14) nu sunt încorporate în documentul PDF de ieșire:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Aceste fonturi sunt înlocuite cu fonturile de tip 1 corespunzătoare care sunt furnizate de un cititor atunci când PDF-ul este deschis.

Exemplul de mai jos arată cum să setați Aspose.Words pentru a evita încorporarea fonturilor de bază și permite cititorului să le înlocuiască cu fonturi PDF Type 1:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "avoid-embedding-core-fonts.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon pentru acest exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Din moment ce vizualizatoarele de fișiere PDF oferă fonturi de bază pe orice platformă acceptată, această opțiune este și utilă atunci când este necesară o mai mare portabilitate a documentului. "Cu toate acestea, fonturile de bază pot arăta diferit față de fonturile sistemului."

{{% alert color="primary" %}}

Această setare funcționează doar pentru textul de tip ANSI (ASCII, Windows-1252). Scrierea unui text ne-ANSI în PDF va necesita întotdeauna fonturile corespondente să fie încorporate.

{{% /alert %}}

### Fonturi pentru sisteme încorporate

Această opțiune poate fi activată sau dezactivată utilizând proprietatea [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/). Când această proprietate este setată la [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), fonturile "Arial" și "Times New Roman" true nu sunt încorporate într-un document PDF. În acest caz, vizualizatorul client se bazează pe fonturile care sunt instalate în sistemul de operare al clientului. Când proprietatea **FontEmbeddingMode** este setată la [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words să nu încorporeze nici o fonturi.

Exemplul de mai jos arată cum să setaţi Aspose.Words pentru a ignora încorporarea fonturilor Arial şi Times New Roman într-un document PDF:

{{< gist "aspose-words-gists" "6debb84fc15c7e5b8e35384d9c116215" "disable-embed-windows-fonts.cs" >}}

Acest mod este cel mai util atunci când doriți să vizualizați documentele pe aceeași platformă, păstrând aspectul exact al fonturilor în fișierul PDF de ieșire.

{{% alert color="primary" %}}

Această setare funcționează doar pentru textul de tip codificare ANSI ( Windows - 1252 ). Scrisul unui text ne-ANSI la PDF necesită fontul corespunzător să fie încorporat.

{{% /alert %}}
