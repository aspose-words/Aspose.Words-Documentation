---
title: Lucrul cu PDF/A sau PDF/UA
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu PDF/A sau PDF/UA
linktitle: Lucrul cu PDF/A sau PDF/UA
description: "Conversie în PDF/A-1, PDF/A-2, PDF/A-4 și PDF/UA folosind C#. Există câteva probleme atunci când se convertesc în documente PDF/A, și Aspose.Words pentru .NET rezolvă aceste probleme."
type: docs
weight: 28
url: /ro/net/working-with-pdfa-or-pdfua/
timestamp: 2024-07-10-14-38-57
---

Formatele PDF/A și PDF/UA impun mai multe cerințe legate de conținutul documentului care nu pot fi îndeplinite în timpul conversiei automate dintr-un document în format Word într-unul PDF. Aceste cerințe ar trebui verificate și corectate fie într-un document Word înainte de conversie, fie într-un document PDF după conversie, pentru a produce un document conform PDF/A și PDF/UA.

Cerințele de bază sunt pentru structura sau fonturile unui document PDF/A și PDF/UA, care vom considera în următoarele secțiuni.

{{% alert color="primary" %}}

Notă te rog că ieșirea PDF/UA-1 va fi, de asemenea, conformă cu WCAG 2.0 și Secțiunea 508.

{{% /alert %}}

## Cerințe de structură a documentului

Cerințele actuale sunt pentru formatele PDF/A-1a, PDF/A-2a, PDF/A-4 și PDF/UA-1.

Există câteva nuanțe în modul de funcționare a Aspose.Words atunci când se convertește la diferite standarde de formatare PDF. Acestea trebuie luate în calcul dacă vrei să obții rezultatul așteptat.

{{% alert color="primary" %}}

Rețineți că nu există cerințe de structură logică pentru PDF/A-4. Din această cauză, nu luăm în considerare versiunea PDF/A-4 în secțiunea "Cerințe privind structura documentului".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (dezvoltați pentru a vedea detaliile)):</summary>
    <p></p>
    <p>Nu este de dorit ca scriitorii să genereze informații structurale sau semantice utilizând procese automate fără verificare corespunzătoare.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Subsecțiunile de mai jos descriu nuanțele modului în care Aspose.Words funcționează atunci când se convertește la diferite standarde și opțiuni pentru formatul PDF.

### Tip de structură

| Niveluri de conformitate PDF standard în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Un document PDF este o secvență de blocuri, cum ar fi titluri, paragrafe, tabele și altele. Aceste blocuri formează o structură de document – puternică sau slabă.

Ambele structuri puternice și slabe sunt valide pentru PDF/A. Microsoft Word documente au o structură slabă prin proiectare, iar Aspose.Words creează PDF cu structura slabă respectiv și generează, de asemenea, titluri în conformitate cu nivelurile de schiță ale paragrafelor din documentul sursă.

Pentru un document PDF/UA-1 cu o structură slabă, este necesar în plus ca numerele de antet să meargă în ordine fără pauze.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (expandează pentru a vedea detaliile):</summary>
    <p></p>
    <p>Structura de tip bloc poate urma unul din două paradigme principale:</p>
    </ol>
      <li>Structurat puternic. Elementele de grupare se încapsulează pe atât de multe niveluri pe cât este necesar pentru a reflecta organizarea materialului în articole, secțiuni, subsecțiuni și așa mai departe. La fiecare nivel, copiii elementului de grupare trebuie să conţină o rubrică (H), unul sau mai multe paragrafe (P) pentru conţinutul la acest nivel şi poate unul sau mai multe elemente de grupare suplimentare pentru subsecţiunile cu cuib
      <li>Structurat slab. Documentul este relativ plat, având poate doar unul sau două niveluri de elemente de grupare, cu toate antetele, paragrafele și alte EBSL ca copii imediate. În acest caz, organizarea materialului nu este reflectată în structura logică; cu toate acestea, acesta poate fi exprimat prin utilizarea rubricilor cu niveluri specifice (H1)
    </ol>
    <p></p>
    <p>ISO -32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Pentru documentele PDF/UA-1 specificația conține o adăugire legată de nivelurile de antet (expandi pentru a vedea detaliile):</summary>
    <p></p>
    <p>Dacă semantica documentului necesită o secvență descendentă de anteturi, secvența respectivă trebuie să urmeze în ordine numerică strictă și nu trebuie să sară un nivel de antet intermediar. H1 H2 H3 este permis, în timp ce H1 H3 nu este.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Pentru a asigura un rezultat corect, utilizatorii trebuie să se asigure că conținutul documentului sursă este organizat corespunzător și că nivelurile de listă sunt specificate corect pentru paragrafe. În caz contrar, utilizatorul trebuie să verifice și să repare structura documentului PDF rezultat.

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc puteți vedea exemple: cum să setați nivelurile de contur în Microsoft Word sau să verificați și să corectați structura documentului PDF de ieșire (extinde pentru a vedea detaliile)</summary>
    <p></p>
    <p>În Microsoft Word stilurile implicite "Heading X" ar putea fi utilizate pentru a seta nivelul de contur:</p>
        <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>În plus, nivelul de listă ar putea fi verificat sau schimbat în fereastra "Paragraf"</p>
        <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>În Acrobat structura documentului putea fi verificat sau schimbat în secțiunea "Tags"</p>
        <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### "Marcarea conținutului ca artefact"

| Niveluri de conformitate cu standardul PDF în cadrul Aspose.Words | Prezența cerințelor |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

În acest moment, Aspose.Words marchează anteturi și subsoluri de pagină, separatoare de notă, celule de antet al tabelelor repetate și imagini decorative ca fiind artefacte. Notă că această listă ar putea fi actualizată în viitor.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele ( extinde pentru a vedea detaliile ):</summary>
    <p></p>
    <p>Obiectele grafice dintr-un document pot fi împărțite în două clase:</p>
    </ol>
      <li>Conținutul real al unui document cuprinde obiecte reprezentând materiale introduse inițial de autorul documentului.</li>
      <li>Artefactele sunt obiecte grafice care nu fac parte din conținutul original al autorului, ci sunt generate de către scriitorul conformant în cursul paginării, al aranjării sau altor procese mecanice strict necesare.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Dacă un document conține orice alt conținut care ar trebui marcat ca artefact sau dacă vreunul din conținutul artefactat este un conținut real, clienții ar trebui să repare acest lucru în PDF-ul de ieșire.

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc puteți vedea exemple: cum să marcați forme ca fiind decorative în Microsoft Word sau să marcați o formă ca un artefact în documentul PDF de ieșire (expandați pentru a vedea detaliile).</summary>
    <p></p>"
    <p>De exemplu, formele ar putea fi marcate ca "decorative" în Microsoft Word, deci vor fi exportate în PDF ca un artefact:</p>
        <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Puteți marca forma ca un artefact în PDF-ul de ieșire:</p>
      <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>De asemenea, poți comuta textul dintr-o antet de la artefact la conținut real în PDF-ul rezultat:</p>
        <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specificația Limbajului Natural

| Nivelurile de conformitate PDF-uri în cadrul Aspose.Words | Prezența cerințelor |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Limba text este specificată în Microsoft Word documente. Aspose.Words exportă limba specificată într-un fișier PDF de ieșire cu atributul *Lang* atașat la o secvență de conținut marcat sau la o etichetă Span – acesta este controlat de proprietatea [ExportLanguageToSpanTag](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/). În general nu sunt probleme legate de limbă atunci când textul este introdus de utilizator prin Microsoft Word. Dar există posibilitatea ca limbajul să fie inexact dacă textul este generat automat.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (expandează pentru detalii):</summary>
    <p></p>
    <p>Limba naturală implicită pentru toate textele dintr-un fișier ar trebui specificată prin intrarea de limbă în dicționarul catalogului documentului.</p>
    <p>Toate conținuturile textuale dintr-un fișier care diferă de limba implicită ar trebui să fie indicate prin utilizarea unei proprietăți `Lang` atașate unei secvențe de conținut marcat sau printr-o intrare Lang într-un dicționar al elementelor structurale...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În plus pentru PDF/UA-1, specificația ne spune următoarele (expandați pentru a vedea detaliile):</summary>
    <p></p>
    <p>Limba naturală va fi declarată… Modificările în limbajul natural vor fi declarate.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să asigurați că limba este specificată corect (expandează pentru a vedea detalii)</summary>
    <p></p>
    <p>Utilizatorii ar trebui să se asigure că limba este specificată corect în fiecarul document Word sursă:</p>
        <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Sau documentul PDF rezultat:</p>
        <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Figură caption

| Niveluri de conformitate PDF standard în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word documente permite utilizatorilor să adauge legendă de figură

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (expandi pentru a vedea detaliile):</summary>
    <p></p>
    <p>O legendă care însoțește o figură trebuie etichetată cu eticheta "Caption"</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

În prezent Aspose.Words nu poate exporta subtitrări cu eticheta Captioane, deci trebuie semnalate în PDF-ul de ieșire.

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să inserați legenda (expandiți pentru a vedea detaliile)</summary>
    <p></p>
    <p>În Microsoft Word, legenda poate fi inserată prin meniul contextual:</p>
        <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>În Acrobat legenda poate fi adăugată sau schimbată prin intermediul casetei de dialog `Object` Proprietăți:</p>
        <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Descrieri alternative

| Niveluri de conformitate PDF în cadrul Aspose.Words | Prezența cerințelor |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word documente permit utilizatorilor să adauge text alternativ la imagini, forme și tabele. " Aspose.Words exportă astfel de text alternativ în fișierul PDF rezultat.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extinde pentru a vedea detalii):</summary>
    <p></p>
    <p>Toate elementele structurale ale căror conținut nu are un analog textual natural predefinit, de exemplu imagini, formule, etc., ar trebui să furnizeze o descriere alternativă a textului folosind intrarea Alt din dicționarul elementelor structurale...</p>
    <p>NOTĂ Descrierile alternative oferă descrieri textuale care ajută la interpretarea corectă a conținutului non-textual altfel opac.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc puteți vedea exemple: cum să asigurați că toate elementele au un text alternativ ( extinde pentru a vedea detaliile)</summary>
    <p></p>
    <p>Utilizatorii trebuie să se asigure că toate elementele au un text alternativ în fieșce document Word sursă:</p>
        <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Sau documentul de ieșire PDF:</p>
        <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descrieri alternative pentru hyperlinkuri

| Niveluri de conformitate PDF standard în interiorul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

În plus față de punctul anterior, Microsoft Word documente permit utilizatorilor să adauge text alternativ pentru linkuri. Aspose.Words exportă un astfel de text alternativ în fișierul PDF rezultat.

Din păcate, nu fiecare aplicație îți permite să introduci o descriere alternativă. De exemplu, Adobe Acrobat în prezent nu permite să se configureze o astfel de descriere pentru hyperlink-uri. Dar în Microsoft Word, poți face asta după cum urmează:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Uneori există o problemă că nu este posibil să se stabilească text alternativ pentru hiperlinkuri automate în tabelul de conținut (TOC) prin intermediul Microsoft Word interfeței grafice. Aspose.Words ar putea actualiza aceste câmpuri și genera legăturile pe cont propriu.

Urmează exemplul de cod pentru a actualiza `TOC` câmpuri utilizând Aspose.Words Document Object Model (DOM):

{{< gist "aspose-words-gists" "8b0ab362f95040ada1255a0473acefe2" "update-screen-tip.cs" >}}

### Anteturi de masă

| Nivelurile de conformitate cu standardele PDF în interiorul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Tabelurile din documentele PDF/UA-1 trebuie să aibă anteturi – coloană, rând sau ambele. PDF/A necesită doar marcarea tabelului standard, care nu are restricții suplimentare. Observați că Aspose.Words generează automat marcajul tabelului standard.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (expandează pentru a vedea detaliile):</summary>
    <p></p>
    <p>Mesele ar trebui să includă anteturi ... Mesele pot conține anteturi de coloană, anteturi de rând sau ambele.</p>
    <p>ISO -14289 -1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc puteți vedea exemple cum să setați antetul de masă (expandați pentru a vedea detaliile)</summary>
    <p></p>
    <p>Antetul tabelului poate fi setat fie pe documentul sursă Microsoft Word</p>
        <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Sau fişierul PDF de ieşire:</p>
        <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Text de înlocuire

| Niveluri de conformitate PDF standard în Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (expanse pentru a vedea detaliile):</summary>
    <p></p>
    <p>Specificația ne spune următoarele:</p>
    <p>Toate elementele structurale textuale care sunt reprezentate într-un mod nestandardizat, de exemplu, caractere personalizate sau grafică în linie, ar trebui să furnizeze text de rezervă folosind `ActualText` intrarea în dicționarul elementului structural...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Documentul Microsoft Word nu permite utilizatorilor să introducă text de înlocuire. Așadar, aceasta trebuie verificată și corectată în fișierul PDF de ieșire:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abrevieri și acronime Expanțiuni

| Nivelurile de conformitate cu standardul PDF în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (expandează pentru a vedea detaliile):</summary>
    <p></p>
    <p>Toate instanțele de abrevierile și acronime din conținutul textului ar trebui să fie plasate într-o secvență de conținut marcat cu o etichetă "span" a cărei proprietate "e" oferă o expansiune textuală a abrevierii sau acronimul...</p>
<p>ISO-19005-2," 6.7.8</p>
</details>
{{% /alert %}}

Documentul Microsoft Word nu permite utilizatorilor să stabilească expansiuni de abrevierile și acronime Deci, trebuie verificat și reparat în PDF-ul de ieșire:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titlul documentului

| Niveluri de conformitate cu PDF standard în Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}} <br /> Documentele în PDF/UA-1 ar trebui să aibă un titlu. |

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (expandează pentru a vedea detaliile)</summary>
    <p></p>
    <p>Specificația ne spune următoarele:</p>
    <p>Streamul de metadate în dicționarul de catalog al documentului trebuie să conțină o intrare dc:title, unde dc este prefixul recomandat pentru schema de metadate Dublin Core...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc puteți vedea exemple: cum să setați titlul documentului ( expansionați pentru a vedea detaliile)</summary>
    <p></p>
    <p>Titlul documentului ar putea fi configurat fie în documentul sursă Microsoft Word</p>":
        <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Sau fișierul PDF rezultat:</p>
        <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Cerințe de font

| Nivelurile de conformitate cu standardele PDF în cadrul Aspose.Words | Prezența cerințelor |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2u | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Există și o serie de nuanțe în lucrul cu fonturile la conversia în formatul PDF/A-1, PDF/A-2, PDF/A-4 sau PDF/UA-1 folosind Aspose.Words. Acestea trebuie luate în considerare dacă vrei să eviți posibile probleme cu documentul de ieșire.

Secțiunile de mai jos descriu astfel de nuanțe și opțiuni pentru rezolvarea lor.

### Cerințe de tip font

| Nivelurile de conformitate PDF în interiorul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2u | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words nu verifică restricțiile legale ale fonturilor utilizate – este responsabilitatea utilizatorilor. "În alte cuvinte, utilizatorul nu ar trebui să furnizeze fonturi nepotrivite pentru conversia PDF folosind Aspose.Words."

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extinde pentru a vedea detaliile)):</summary>
    <p></p>
    <p>Doar programele de tip font care pot fi încorporat legal într-un fișier pentru o randare nelimitată și universală trebuie folosite.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 ( exact același citat în două specificații)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| Niveluri de conformitate cu standardul PDF în cadrul Aspose.Words | Prezența cerințelor |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2u | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Utilizarea `.notdef` glyph este interzisă. The `.notdef` glyph va apărea dacă un document conține caractere care nu sunt prezente în fontul selectat și nici nu pot fi rezolvate prin mecanismul de cădere a fontului.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extinde pentru a vedea detaliile):</summary>
    <p></p>
    <p>Un document conformant nu trebuie să conțină o referință la .notdef glyph din niciunul dintre operatorii de afișare a textului, indiferent de modul de redare a textului, în niciun flux de conținut.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (aceleași ghilimele în două specificații)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc puteți vedea exemple: cum să eliminați sau înlocuiți aceste caractere (expandi pentru a vedea detalii)</summary>
    <p></p>
    <p>Utilizatorii ar trebui să elimine sau să înlocuiască aceste caractere în atât în documentul sursă Word:</p>
        <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Sau documentul PDF rezultat folosind instrumentul "Editare PDF":</p>
        <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Zona de utilizare privată (PUA)

| Nivelurile de conformitate PDF în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2u | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Caracterele Private Use Area (PUA) apar în general pentru Windows fonturi simbolice precum "Symbol", "Wingdings", "Webdings" și altele. Microsoft Word formate nu oferă o opțiune de a stoca textul real pentru caractere.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele ( extinde pentru a vedea detaliile):</summary>
    <p></p>
    <p>Pentru conformitatea doar la nivel A, pentru orice caracter ... care este mapat la un sau mai multe coduri din zona privată Unicode (PUA), o intrare ActualText ... trebuie să fie prezentă pentru acest caracter sau pentru o secvență de caractere din care acesta face parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Simbol" este un Windows Font unicode care ar putea fi folosit ca alternativă la fonturi simbolice.

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc puteți vedea exemple: ce ar trebui să facă un utilizator pentru a rezolva problema cu fonturile simbolice (expandi pentru a vedea detaliile)</summary>
    <p></p>
    <p>Înlocuiți fontul simbolic cu un font Unicode în documentul sursă Word:</p>
        <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Sau adăugați o intrare ActualText la caracterele problematice din documentul PDF de ieșire:</p>
        <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
