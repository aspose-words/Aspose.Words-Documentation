---
title: Specificați opțiunile De redare la conversia în PDF
second_title: Aspose.Words pentru C++
articleTitle: Specificați opțiunile De redare la conversia în PDF
linktitle: Specificați opțiunile De redare la conversia în PDF
description: "Convertiți un document în PDF cu opțiuni avansate folosind C++. Utilizați PdfSaveOptions pentru a schimba rezultatul salvării unui document în format PDF."
type: docs
weight: 30
url: /ro/cpp/specify-rendering-options-when-converting-to-pdf/
---

Formatul PDF este un format de pagină fixă care este foarte popular în rândul utilizatorilor și este acceptat pe scară largă de diverse aplicații, deoarece un document PDF arată la fel pe orice dispozitiv. Din acest motiv, conversia în PDF este o caracteristică importantă a Aspose.Words.

PDF este un format complex. Sunt necesare mai multe etape de calcule în procesul de conversie a unui document în PDF, inclusiv calculul aspectului. Deoarece aceste etape includ calcule complexe, acestea consumă mult timp. De asemenea, formatul PDF este destul de complex în sine. Are o structură specifică de fișiere, model grafic și încorporare de fonturi. Mai mult, are unele funcționalități complexe de ieșire, cum ar fi etichetele structurii documentelor, criptarea, semnăturile digitale și formularele editabile.

Aspose.Words motorul de aspect imită modul în care funcționează motorul de aspect al paginii Microsoft Word. Prin urmare, Aspose.Words face ca documentele de ieșire PDF să arate cât mai aproape posibil de ceea ce puteți vedea în Microsoft Word. Uneori este necesar să specificați opțiuni suplimentare, care pot afecta rezultatul salvării unui document în formatul PDF. Aceste opțiuni pot fi specificate prin utilizarea clasei [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), care conține proprietățile care determină modul în care va fi afișată ieșirea PDF.

Câteva exemple de utilizare a **PdfSaveOptions** sunt furnizate mai jos.

{{% alert color="primary" %}}

În prezent, puteți salva în PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, și PDF/UA-1 formate. Utilizați enumerarea [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) pentru a seta nivelul de conformitate cu standardele PDF. Rețineți că, cu formatul PDF/A, o dimensiune a fișierului de ieșire este mai mare decât o dimensiune obișnuită a fișierului PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) și [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) sunt marcate ca învechite.

Pentru mai multe informații despre PDF/A, consultați articolul următor, "aflați caracteristicile conversiei în PDF/A".

{{% /alert %}}

## Crearea unui Document PDF cu formulare completabile

De asemenea, este posibil să exportați formulare completabile dintr-un document Microsoft Word În ieșire PDF, care are formulare completabile în loc de text simplu. Utilizați proprietatea [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) pentru a salva un document ca PDF cu formulare completabile.

Rețineți că, spre deosebire de Microsoft Word, formatul PDF are un număr limitat de opțiuni pentru formulare editabile, cum ar fi textbox, combobox și checkbox. Microsoft Word are mai multe tipuri de formulare, de exemplu, calendar data picker. În general, nu este posibil să imităm pe deplin comportamentul Microsoft Word în PDF. Prin urmare, în unele cazuri complexe, ieșirea PDF poate diferi de ceea ce vedeți în Microsoft Word.

Exemplul de cod de mai jos arată cum să salvați un document ca PDF cu formulare completabile cu compresie și calitate Jpeg specificate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Exportarea structurii documentelor și a proprietăților personalizate

Proprietatea [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) vă permite să exportați structura documentului în PDF ieșire.

PDF facilitățile structurii logice oferă un mecanism de încorporare a informațiilor referitoare la structura conținutului documentului într-un fișier PDF. Aspose.Words păstrează informații despre structură dintr-un document Microsoft Word, cum ar fi paragrafe, liste, tabele, note de subsol/note de final etc.

Următorul exemplu demonstrează cum să salvați un document în format PDF, păstrând structura documentului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words vă permite, de asemenea, să exportați Proprietăți personalizate ale documentului în PDF, ceea ce este demonstrat de următorul exemplu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Exportarea contururilor din marcaje și titluri în Ieșire PDF

Dacă doriți să exportați marcaje ca contururi în ieșire PDF, puteți utiliza proprietatea [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Această proprietate specifică nivelul implicit în schița documentului, la care sunt afișate marcajele Microsoft Word. Dacă documentul conține marcaje în antetul / subsolul documentului, puteți seta proprietatea [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) la [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) sau [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) pentru a specifica modul în care sunt exportate în ieșire PDF. Marcajele din anteturi / subsoluri nu sunt exportate atunci când valoarea **HeaderFooterBookmarksExportMode** este [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

Exemplul de cod de mai jos arată cum să exportați marcaje din primul antet/subsol al unei secțiuni:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Rezultatul PDF al acestui exemplu este prezentat mai jos:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Când **HeaderFooterBookmarksExportMode** este setat la primul și documentul are anteturi/subsoluri pare și impare sau un antet/subsol diferit de prima pagină, marcajele sunt exportate pentru primele anteturi/subsoluri unice dintr-o secțiune.

De asemenea, puteți exporta titluri în Ieșire PDF, folosind proprietatea [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Această proprietate specifică câte niveluri de titluri sunt incluse în schița documentului.

Exemplul de cod de mai jos arată cum să exportați titluri cu trei niveluri:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Rezultatul PDF al acestui exemplu este prezentat mai jos:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

O navigare de marcaj sau de titlu poate avea apariții diferite în diferite vizualizatoare PDF. Mai mult, în unele aplicații, marcajele și navigarea la titlu nu sunt disponibile în UI.

{{% /alert %}}

## Reducerea eșantionării imaginilor pentru a Reduce dimensiunea documentului

Aspose.Words oferă posibilitatea de a reduce eșantionarea imaginilor pentru a reduce dimensiunea de ieșire PDF, folosind proprietatea [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Downsampling este activat în mod implicit în proprietatea [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Rețineți că este, de asemenea, posibil să setați o rezoluție specifică în proprietatea [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) sau un prag de rezoluție în proprietatea [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). În al doilea caz, dacă rezoluția imaginii este mai mică decât valoarea pragului, atunci nu se va aplica eșantionarea descendentă.

Exemplul de cod de mai jos afișează modul de modificare a rezoluției imaginilor într-un document de ieșire PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Rezoluția este calculată în funcție de dimensiunea reală a imaginii de pe pagină.

## Încorporarea fonturilor în format Adobe PDF

Aspose.Words de asemenea, vă permite să controlați modul în care fonturile sunt încorporate în documentele PDF rezultate. Fonturile trebuie să fie încorporate în orice document Adobe PDF pentru a vă asigura că documentul poate fi redat corect pe orice mașină (consultați mai multe detalii despre redarea fontului în secțiune [Folosind TrueType Fonturi](/words/cpp/using-truetype-fonts/)). În mod implicit, Aspose.Words încorporează un subset de fonturi utilizate în document în PDF generat. În acest caz, numai glifele (caracterele) utilizate în document sunt salvate în PDF.

### Când să utilizați fonturi complete și când să Subsetați

Există o modalitate de a specifica o opțiune pentru Aspose.Words pentru a încorpora fonturi complete. Mai multe detalii, împreună cu unele avantaje și dezavantaje ale fiecărei setări sunt descrise în tabelul de mai jos.

| Modul De Încorporare A Fonturilor | Avantaje | Dezavantaje |
| :- | :- | :- |
| `Full` | Util atunci când doriți să editați rezultatul PDF mai târziu prin adăugarea sau modificarea textului. Toate fonturile sunt incluse, prin urmare, toate glifele sunt prezente. | Deoarece unele fonturi sunt mari (mai multe megaocteți), încorporarea lor fără subsetare poate duce la fișiere de ieșire mari. |
| `Subset` | Subsetarea este utilă dacă doriți să păstrați Dimensiunea fișierului de ieșire mai mică. | <p>Utilizatorul nu poate adăuga sau edita complet textul folosind fontul subsetat din documentul de ieșire PDF. Acest lucru se datorează faptului că nu toate glifele fontului sunt prezente.</p><p>Dacă mai multe PDFs sunt salvate cu fonturi subsetate și asamblate împreună, atunci documentul combinat PDF poate avea un font care conține multe subseturi inutile.</p> |

### Încorporarea fonturilor complete în PDF

Proprietatea [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) vă permite să specificați modul în care Aspose.Words încorporează fonturile într-un document de ieșire PDF.

- Pentru a încorpora fonturi complete în documentul de ieșire PDF, Setați **EmbedFullFonts** la true
- Pentru a subseta fonturile când salvați în PDF, Setați **EmbedFullFonts** la fals

Următorul exemplu demonstrează cum să încorporați fonturi complete în documentul de ieșire PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Următorul exemplu demonstrează cum să setați Aspose.Words la subset fonturi în Ieșire PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon pentru aceste exemple din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Cum să controlați încorporarea fonturilor de bază și a fonturilor standard Windows

Fonturile de bază și fonturile standard Windows sunt seturile de fonturi "standard", care sunt de obicei prezente pe mașina țintă sau furnizate de cititorul de documente, prin urmare nu trebuie să fie încorporate în ieșirea PDF. Prin faptul că nu încorporați aceste fonturi, puteți reduce dimensiunea documentelor redate PDF și totuși puteți menține portabilitatea.

Aspose.Words oferă opțiuni pentru a alege modul în care fonturile sunt exportate în PDF. Puteți alege fie să încorporați fonturile core și standard în ieșirea PDF, fie să săriți încorporarea lor și să utilizați fonturi standard core PDF sau fonturi de sistem pe mașina țintă. Utilizarea oricăreia dintre aceste opțiuni are ca rezultat în mod normal o reducere semnificativă a dimensiunii fișierului pentru documentele PDF generate de Aspose.Words.

- Deoarece aceste opțiuni se exclud reciproc, ar trebui să alegeți doar una câte una.
- Când salvați cu PDF/A-1 conformitate, toate fonturile utilizate trebuie să fie încorporate cu documentul PDF. Când salvați cu această conformitate, proprietatea [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) trebuie setată la false și proprietatea [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) trebuie setată la [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Încorporarea Fonturilor De Bază

Opțiunea de a încorpora fonturi de bază poate fi activată sau dezactivată utilizând proprietatea `UseCoreFonts`. Când este setat la true, următoarele fonturi "True Type" cele mai populare (fonturi de bază 14) nu sunt încorporate în documentul de ieșire PDF:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

Aceste fonturi sunt înlocuite cu fonturile corespunzătoare de tip de bază 1, care sunt furnizate de un cititor atunci când PDF este deschis.

Exemplul de mai jos arată cum să setați Aspose.Words pentru a evita încorporarea fonturilor de bază și lăsați cititorul să le înlocuiască cu PDF tip 1 fonturi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon pentru acest exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Deoarece vizualizatorii PDF furnizează fonturi de bază pe orice platformă acceptată, această opțiune este utilă și atunci când este necesară o portabilitate mai mare a documentelor. Cu toate acestea, fonturile de bază pot arăta diferit de fonturile de sistem.

{{% alert color="primary" %}}

Această setare funcționează numai pentru ANSI (Windows-1252) codificarea textului. Scrierea unui text non - ANSI în PDF va necesita întotdeauna încorporarea fonturilor corespunzătoare.

{{% /alert %}}

### Încorporarea Fonturilor De Sistem

Această opțiune poate fi activată sau dezactivată utilizând proprietatea [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Când această proprietate este setată la [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), fonturile de tip adevărat" Arial " și "Times New Roman" nu sunt încorporate într-un document PDF. În acest caz, vizualizatorul client se bazează pe fonturile instalate pe sistemul de operare al clientului. Când proprietatea **FontEmbeddingMode** este setată la [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words nu încorporați Niciun font.

Exemplul de mai jos arată cum să setați Aspose.Words pentru a sări peste încorporarea fonturilor Arial și Times New Roman într-un document PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Acest mod este cel mai util atunci când doriți să vizualizați documentele pe aceeași platformă, păstrând aspectul exact al fonturilor în Ieșire PDF.

{{% alert color="primary" %}}

Această setare funcționează numai pentru ANSI (Windows-1252) codificarea textului. Scrierea unui text non - ANSI în PDF necesită încorporarea fontului corespunzător.

{{% /alert %}}
