---
title: Opțiuni la conversia în PDF
second_title: Aspose.Words pentru Python via .NET
articleTitle: Specificați opțiunile De redare la conversia în PDF
linktitle: Specificați opțiunile De redare la conversia în PDF
description: "Convertiți un document în PDF cu opțiuni avansate folosind Python. Utilizați PdfSaveOptions pentru a schimba rezultatul salvării unui document în format PDF."
type: docs
weight: 20
url: /ro/python-net/specify-rendering-options-when-converting-to-pdf/
---

Formatul PDF este un format de pagină fixă care este foarte popular în rândul utilizatorilor și este acceptat pe scară largă de diverse aplicații, deoarece un document PDF arată la fel pe orice dispozitiv. Din acest motiv, conversia în PDF este o caracteristică importantă a Aspose.Words.

PDF este un format complex. Sunt necesare mai multe etape de calcule în procesul de conversie a unui document în PDF, inclusiv calculul aspectului. Deoarece aceste etape includ calcule complexe, acestea consumă mult timp. De asemenea, formatul PDF este destul de complex în sine. Are o structură specifică de fișiere, model grafic și încorporare de fonturi. Mai mult, are unele funcționalități complexe de ieșire, cum ar fi etichetele structurii documentelor, criptarea, semnăturile digitale și formularele editabile.

Aspose.Words motorul de aspect imită modul în care funcționează motorul de aspect al paginii Microsoft Word. Prin urmare, Aspose.Words face ca documentele de ieșire PDF să arate cât mai aproape posibil de ceea ce puteți vedea în Microsoft Word. Uneori este necesar să specificați opțiuni suplimentare, care pot afecta rezultatul salvării unui document în formatul PDF. Aceste opțiuni pot fi specificate prin utilizarea clasei [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), care conține proprietățile care determină modul în care va fi afișată ieșirea PDF.

Câteva exemple de utilizare a [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) sunt furnizate mai jos.

{{% alert color="primary" %}}

În prezent, puteți salva și în formatele PDF/A-1 și PDF/A-2. Rețineți că, cu formatul PDF/A, o dimensiune a fișierului de ieșire este mai mare decât o dimensiune obișnuită a fișierului PDF.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) și [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) sunt marcate ca învechite.

Pentru mai multe informații despre PDF/A, consultați articolul următor, "aflați caracteristicile conversiei în PDF/A".

{{% /alert %}}

## Crearea unui Document PDF cu formulare completabile

De asemenea, este posibil să exportați formulare completabile dintr-un document Microsoft Word În ieșire PDF, care are formulare completabile în loc de un text simplu. Utilizați proprietatea [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) pentru a salva un document ca PDF cu formulare completabile.

Rețineți că, spre deosebire de Microsoft Word, formatul PDF are un număr limitat de opțiuni pentru formulare editabile, cum ar fi textbox, combobox și checkbox. Microsoft Word are mai multe tipuri de formulare, de exemplu, calendar data picker. În general, nu este posibil să imităm pe deplin comportamentul Microsoft Word în PDF. Prin urmare, în unele cazuri complexe, ieșirea PDF poate diferi de ceea ce vedeți în Microsoft Word.

Exemplul de cod de mai jos arată cum să salvați un document ca PDF cu formulare completabile cu compresie și calitate Jpeg specificate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Exportarea structurii documentelor și a proprietăților personalizate

Proprietatea [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) vă permite să exportați structura documentului în PDF ieșire.

PDF facilitățile structurii logice oferă un mecanism de încorporare a informațiilor referitoare la structura conținutului documentului într-un fișier PDF. Aspose.Words păstrează informații despre structură dintr-un document Microsoft Word, cum ar fi paragrafe, liste, tabele, note de subsol/note de final etc.

Următorul exemplu demonstrează cum să salvați un document în format PDF, păstrând structura documentului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words vă permite, de asemenea, să exportați Proprietăți personalizate ale documentului în PDF, ceea ce este demonstrat de următorul exemplu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Exportarea contururilor din marcaje și titluri în Ieșire PDF

Dacă doriți să exportați marcaje ca contururi în ieșire PDF, puteți utiliza proprietatea [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/). Această proprietate specifică nivelul implicit în schița documentului, la care sunt afișate marcajele Microsoft Word. Dacă documentul conține marcaje în antetul / subsolul documentului, puteți seta proprietatea [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) la [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) sau [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) pentru a specifica modul în care sunt exportate în ieșire PDF. Marcajele din anteturi / subsoluri nu sunt exportate atunci când valoarea [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) este [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

Exemplul de cod de mai jos arată cum să exportați marcaje din primul antet/subsol al unei secțiuni:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Rezultatul PDF al acestui exemplu este prezentat mai jos:

![specify-rendering-options-when-converting-to-pdf_1](specify-rendering-options-when-converting-to-pdf-1.png)

Când [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) este setat la [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) și documentul are anteturi/subsoluri pare și impare sau un antet/subsol diferit de prima pagină, marcajele sunt exportate pentru primele anteturi/subsoluri unice dintr-o secțiune.

De asemenea, puteți exporta titluri în Ieșire PDF, folosind proprietatea [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/). Această proprietate specifică câte niveluri de titluri sunt incluse în schița documentului.

Exemplul de cod de mai jos arată cum să exportați titluri cu trei niveluri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Rezultatul PDF al acestui exemplu este prezentat mai jos:

![specify-rendering-options-when-converting-to-pdf_2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

O navigare de marcaj sau de titlu poate avea apariții diferite în diferite vizualizatoare PDF. Mai mult, în unele aplicații, marcajele și navigarea la titlu nu sunt disponibile în UI.

{{% /alert %}}

## Reducerea eșantionării imaginilor pentru a Reduce dimensiunea documentului

Aspose.Words oferă posibilitatea de a reduce eșantionarea imaginilor pentru a reduce dimensiunea de ieșire PDF, folosind proprietatea [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/). Downsampling este activat în mod implicit în proprietatea [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/).

Rețineți că este, de asemenea, posibil să setați o rezoluție specifică în proprietatea [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) sau un prag de rezoluție în proprietatea [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/). În al doilea caz, dacă rezoluția imaginii este mai mică decât valoarea pragului, atunci nu se va aplica eșantionarea descendentă.

Exemplul de cod de mai jos afișează modul de modificare a rezoluției imaginilor într-un document de ieșire PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Rezoluția este calculată în funcție de dimensiunea reală a imaginii de pe pagină.

## Încorporarea fonturilor în format Adobe PDF

Aspose.Words de asemenea, vă permite să controlați modul în care fonturile sunt încorporate în documentele PDF rezultate. Fonturile trebuie să fie încorporate în orice document Adobe PDF pentru a vă asigura că documentul poate fi redat corect pe orice mașină (consultați mai multe detalii despre redarea fontului în secțiune [Folosind TrueType Fonturi](/words/python-net/using-truetype-fonts/)). În mod implicit, Aspose.Words încorporează un subset de fonturi utilizate în document în PDF generat. În acest caz, numai glifele (caracterele) utilizate în document sunt salvate în PDF.

### Când să utilizați fonturi complete și când să Subsetați

Există o modalitate de a specifica o opțiune pentru Aspose.Words pentru a încorpora fonturi complete. Mai multe detalii, împreună cu unele avantaje și dezavantaje ale fiecărei setări sunt descrise în tabelul de mai jos.

| Modul De Încorporare A Fonturilor | Avantaje | Dezavantaje |
| :- | :- | :- |
| `Full` | Util atunci când doriți să editați rezultatul PDF mai târziu prin adăugarea sau modificarea textului. Toate fonturile sunt incluse, prin urmare, toate glifele sunt prezente. | Deoarece unele fonturi sunt mari (mai multe megaocteți), încorporarea lor fără subsetare poate duce la fișiere de ieșire mari. |
| `Subset` | Subsetarea este utilă dacă doriți să păstrați Dimensiunea fișierului de ieșire mai mică. | <p>Utilizatorul nu poate adăuga sau edita complet text folosind fontul subsetat din documentul de ieșire PDF. Acest lucru se datorează faptului că nu toate glifele fontului sunt prezente.</p><p>Dacă mai multe PDFs sunt salvate cu fonturi subsetate și asamblate împreună, atunci documentul combinat PDF poate avea un font care conține multe subseturi inutile.</p> |

### Încorporarea fonturilor complete în PDF

Proprietatea [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) vă permite să specificați modul în care Aspose.Words încorporează fonturile într-un document de ieșire PDF.

- Pentru a încorpora fonturi complete în documentul de ieșire PDF, Setați [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) la *True*
- Pentru a subseta fonturile când salvați în PDF, Setați [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) la *False*

Următorul exemplu demonstrează cum să încorporați fonturi complete în documentul de ieșire PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Următorul exemplu demonstrează cum să setați Aspose.Words la subset fonturi în Ieșire PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon pentru aceste exemple din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Cum să controlați încorporarea fonturilor de bază și a fonturilor standard Windows

Fonturile de bază și fonturile standard Windows sunt seturile de fonturi "standard", care sunt de obicei prezente pe mașina țintă sau furnizate de cititorul de documente, prin urmare nu trebuie să fie încorporate în ieșirea PDF. Prin faptul că nu încorporați aceste fonturi, puteți reduce dimensiunea documentelor redate PDF și totuși puteți menține portabilitatea.

Aspose.Words oferă opțiuni pentru a alege modul în care fonturile sunt exportate în PDF. Puteți alege fie să încorporați fonturile core și standard în ieșirea PDF, fie să săriți încorporarea lor și să utilizați fonturi standard core PDF sau fonturi de sistem pe mașina țintă. Utilizarea oricăreia dintre aceste opțiuni are ca rezultat în mod normal o reducere semnificativă a dimensiunii fișierului pentru documentele PDF generate de Aspose.Words.

- Deoarece aceste opțiuni se exclud reciproc, ar trebui să alegeți doar una câte una.
- Când salvați cu PDF/A-1 conformitate, toate fonturile utilizate trebuie să fie încorporate cu documentul PDF. Când salvați cu această conformitate, proprietatea [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) trebuie setată la *False* și proprietatea [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) trebuie setată la [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Încorporarea Fonturilor De Bază

Opțiunea de a încorpora fonturi de bază poate fi activată sau dezactivată utilizând proprietatea [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/). Când este setat la true, următoarele fonturi "True Type" cele mai populare (fonturi de bază 14) nu sunt încorporate în documentul de ieșire PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Aceste fonturi sunt înlocuite cu fonturile corespunzătoare de tip de bază 1, care sunt furnizate de un cititor atunci când PDF este deschis.

Exemplul de mai jos arată cum să setați Aspose.Words pentru a evita încorporarea fonturilor de bază și lăsați cititorul să le înlocuiască cu PDF Tastați 1 fonturi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon pentru acest exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Deoarece vizualizatorii PDF furnizează fonturi de bază pe orice platformă acceptată, această opțiune este utilă și atunci când este necesară o portabilitate mai mare a documentelor. Cu toate acestea, fonturile de bază pot arăta diferit de fonturile de sistem.

{{% alert color="primary" %}}

Această setare funcționează numai pentru ANSI (Windows-1252) codificarea textului. Scrierea unui text non - ANSI în PDF va necesita întotdeauna încorporarea fonturilor corespunzătoare.

{{% /alert %}}

### Încorporarea Fonturilor De Sistem

Această opțiune poate fi activată sau dezactivată utilizând [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Când această proprietate este setată la [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), fonturile de tip adevărat" Arial " și "Times New Roman" nu sunt încorporate într-un document PDF. În acest caz, vizualizatorul client se bazează pe fonturile instalate pe sistemul de operare al clientului. Când proprietatea [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) este setată la [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words nu încorporați Niciun font.

Exemplul de mai jos arată cum să setați Aspose.Words pentru a sări peste încorporarea fonturilor Arial și Times New Roman într-un document PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Acest mod este cel mai util atunci când doriți să vizualizați documentele pe aceeași platformă, păstrând aspectul exact al fonturilor în Ieșire PDF.

{{% alert color="primary" %}}

Această setare funcționează numai pentru ANSI (Windows-1252) codificarea textului. Scrierea unui text non - ANSI în PDF necesită încorporarea fontului corespunzător.

{{% /alert %}}
