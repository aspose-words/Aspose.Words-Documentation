---
title: Lucrul cu PDF/A sau PDF/UA
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu PDF/A sau PDF/UA
linktitle: Lucrul cu PDF/A sau PDF/UA
description: "Conversia la PDF/A-1, PDF/A-2, PDF/A-4 și PDF/UA folosind Java. Există câteva probleme la conversia în documente PDF/A și Aspose.Words pentru Java le rezolvă."
type: docs
weight: 28
url: /ro/java/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

Formatul PDF/A și PDF/UA impune mai multe cerințe legate de conținutul documentului care nu pot fi îndeplinite în timpul conversiei automate dintr-un document în format Word în PDF. Aceste cerințe trebuie verificate și corectate fie într-un document Word înainte de conversie, fie într-un document PDF după conversie, pentru a produce un document complet compatibil PDF/A și PDF/UA.

Cerințele de bază sunt pentru structura sau fonturile unui document PDF/A și PDF/UA, pe care le vom lua în considerare în secțiunile următoare.

{{% alert color="primary" %}}

Vă rugăm să rețineți că PDF/UA-1 de ieșire va fi, de asemenea, WCAG 2.0 și Secțiunea 508 conforme.

{{% /alert %}}

## Cerințe Privind Structura Documentelor

Cerințele actuale sunt pentru PDF/A-1a, PDF/A-2a, PDF/A-4, și PDF/UA-1 formate.

Există câteva nuanțe ale modului în care funcționează Aspose.Words atunci când se convertesc la diferite standarde de format PDF. Acestea trebuie luate în considerare dacă doriți să obțineți rezultatul scontat.

{{% alert color="primary" %}}

Rețineți că nu există cerințe de structură logică pentru PDF/A-4. Din acest motiv, nu luăm în considerare versiunea PDF/A-4 în această secțiune "cerințe privind structura documentului".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Nu este recomandabil ca scriitorii să genereze informații structurale sau semantice folosind procese automatizate fără o verificare adecvată.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Subsecțiunile de mai jos descriu nuanțele modului în care funcționează Aspose.Words atunci când se convertesc la diferite standarde de format PDF și opțiuni pentru soluția lor.

### Tipul Structurii

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Un document PDF este o secvență de blocuri, cum ar fi titluri, paragrafe, tabele și altele. Aceste blocuri formează o structură de document-puternic sau slab.

Atât structurile puternice, cât și cele slabe sunt valabile pentru PDF/A. Microsoft Word documentele au o structură slabă prin proiectare, iar Aspose.Words creează PDF cu structura slabă, respectiv, și generează, de asemenea, titluri în funcție de nivelurile de schiță ale paragrafelor din documentul sursă.

Pentru un document PDF/UA-1 cu o structură slabă, este necesar în plus ca numerele de titlu să meargă în ordine fără goluri.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Structura la nivel de bloc poate urma una dintre cele două paradigme principale:</p>
    </ol>
      <li>Puternic structurat. Elementele de grupare cuibăresc la câte niveluri este necesar pentru a reflecta organizarea materialului în articole, secțiuni, subsecțiuni și așa mai departe. La fiecare nivel, copiii elementului de grupare ar trebui să fie alcătuiți dintr-un titlu (H), unul sau mai multe paragrafe (P) pentru conținutul de la acel nivel și poate unul sau mai multe elemente de grupare suplimentare pentru subsecțiunile imbricate.</li>
      <li>Slab structurat. Documentul este relativ plat, având poate doar unul sau două niveluri de elemente de grupare, cu toate titlurile, paragrafele și alte BLSEs ca copii imediati. În acest caz, organizarea materialului nu se reflectă în structura logică; cu toate acestea, poate fi exprimată prin utilizarea titlurilor cu niveluri specifice (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Pentru documentele PDF/UA-1, specificația conține o adăugare legată de nivelurile de titlu (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Dacă semantica documentelor necesită o secvență descendentă de anteturi, o astfel de secvență trebuie să se desfășoare în ordine numerică strictă și nu trebuie să treacă peste un nivel de antet intermediar. H1 H2 H3 este permis, în timp ce H1 H3 nu este.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Pentru a asigura ieșirea corectă, utilizatorii trebuie să se asigure că conținutul documentului sursă este organizat corespunzător și că nivelurile de schiță sunt specificate corect pentru paragrafe. În caz contrar, utilizatorul ar trebui să verifice și să stabilească structura documentului de ieșire PDF.

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să setați nivelurile de contur în Microsoft Word sau să verificați și să remediați structura documentului de ieșire PDF (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>În Microsoft Word stilurile implicite "Heading X" ar putea fi folosite pentru a seta nivelul conturului:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>În plus, nivelul conturului ar putea fi verificat sau modificat în fereastra " paragraf:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>În Acrobat, structura documentului ar putea fi verificată sau modificată în panoul " etichete:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Marcarea conținutului ca artefact

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

În acest moment, Aspose.Words marchează anteturile și subsolurile paginilor, separatoarele de note, celulele antetului tabelului repetate și imaginile decorative ca artefacte. Rețineți că această listă poate fi actualizată în viitor.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Obiectele grafice dintr-un document pot fi împărțite în două clase:</p>
    </ol>
      <li>Conținutul real al unui document cuprinde obiecte care reprezintă material introdus inițial de autorul documentului.</li>
      <li>Artefactele sunt obiecte grafice care nu fac parte din conținutul original al autorului, ci mai degrabă sunt generate de scriitorul Conform în cursul paginării, aspectului sau altor procese strict mecanice.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Dacă un document conține orice alt conținut care ar trebui marcat ca un artefact sau dacă oricare dintre conținutul artifacted este un conținut real, clienții ar trebui să remedieze acest lucru în rezultatul PDF.

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să marcați formele ca decorative în Microsoft Word sau să marcați forma ca artefact în documentul de ieșire PDF (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>De exemplu, formele ar putea fi marcate ca decorative în Microsoft Word, astfel încât acestea vor fi exportate în PDF ca artefact:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Puteți marca forma ca un artefact în Ieșire PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>De asemenea, puteți comuta textul dintr-un antet de la artefact la conținut real în Ieșire PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Specificația Limbajului Natural

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Limba textului este specificată în documentele Microsoft Word. Aspose.Words exportă limba specificată la o ieșire PDF cu atributul *Lang* atașat la o secvență de conținut marcat sau la o etichetă Span-este controlată de proprietatea [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag). În general, nu există probleme de limbă atunci când textul este introdus de utilizator prin Microsoft Word. Dar există posibilitatea ca limba să fie inexactă dacă textul este generat automat.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Limbajul natural implicit pentru tot textul dintr-un fișier trebuie specificat prin intrarea Lang din Dicționarul de Catalog al documentului.</p>
    <p>Tot conținutul textual dintr-un fișier care diferă de limba implicită trebuie indicat prin utilizarea unei proprietăți `Lang` atașate unei secvențe de conținut marcat sau printr-o intrare Lang într-un dicționar de elemente de structură ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În plus, pentru PDF/UA-1, specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Limbajul Natural va fi declarat ... modificările limbajului natural vor fi declarate.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să vă asigurați că limba este specificată corect (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>Utilizatorii trebuie să se asigure că limba este specificată corect în documentul Word sursă:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Sau documentul de ieșire PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Legenda Figurii

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word documentele permit utilizatorilor să adauge legenda figurii.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>O legendă care însoțește o figură este etichetată cu o etichetă de legendă.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

În prezent, Aspose.Words nu poate exporta subtitrări cu eticheta de subtitrare, deci trebuie să fie marcate în rezultatul PDF.

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să inserați legenda (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>În Microsoft Word, legenda ar putea fi introdusă prin meniul contextual:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>În Acrobat legenda ar putea fi adăugată sau modificată prin dialogul de proprietăți `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Descrieri Alternative

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word documentele permit utilizatorilor să adauge text alternativ la imagini, forme și tabele. Aspose.Words exportă un astfel de text alternativ la ieșire PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Toate elementele de structură al căror conținut nu are un analog textual predeterminat natural, de exemplu imagini, formule etc., ar trebui să furnizeze o descriere alternativă a textului utilizând intrarea Alt din dicționarul elementelor de structură...</p>
    <p>NOTE descrierile alternative oferă descrieri textuale care ajută la interpretarea corectă a conținutului non-textual opac.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să vă asigurați că toate elementele au un text alternativ (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>Utilizatorii ar trebui să se asigure că toate elementele au un text alternativ în documentul Word sursă:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Sau documentul de ieșire PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descrieri alternative pentru hyperlink-uri

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

În plus față de punctul anterior, documentele Microsoft Word permit, de asemenea, utilizatorilor să adauge text alternativ la hyperlink-uri. Aspose.Words exportă un astfel de text alternativ la ieșire PDF.

Din păcate, nu orice aplicație vă permite să configurați o descriere alternativă. De exemplu, Adobe Acrobat în prezent nu permite configurarea unei astfel de descrieri pentru hyperlink-uri. Dar în Microsoft Word, puteți face acest lucru după cum urmează:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Uneori există o problemă că nu este posibil să setați text alternativ pentru hyperlink-uri autogenerate în cuprins (TOC) Prin Microsoft Word GUI. Aspose.Words ar putea actualiza astfel de câmpuri și de a genera link-uri pe cont propriu.

Urmați exemplul de cod pentru a actualiza câmpurile `TOC` utilizând modelul de obiect Document Aspose.Words (DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Anteturile Tabelului

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Tabelele din documentele PDF/UA-1 trebuie să aibă anteturi-coloană, rând sau ambele. PDF/A necesită doar marcarea tabelului standard, care nu are restricții suplimentare. Rețineți că Aspose.Words generează automat marcajul standard al tabelului.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Tabelele ar trebui să includă anteturi ... Tabelele pot conține anteturi de coloane, anteturi de rânduri sau ambele.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să setați antetul tabelului (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>Antetul tabelului ar putea fi configurat fie documentul sursă Microsoft Word:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Sau ieșirea PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Text De Înlocuire

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Specificația ne spune următoarele::</p>
    <p>Toate elementele de structură textuală care sunt reprezentate într-un mod nestandard, de exemplu, caractere personalizate sau grafică în linie, ar trebui să furnizeze text de înlocuire utilizând intrarea `ActualText` din dicționarul elementelor de structură...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word documentul nu permite utilizatorilor să seteze text de înlocuire. Deci, acest lucru trebuie verificat și fixat în ieșirea PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abrevieri și acronime expansiuni

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Toate instanțele de abrevieri și acronime în conținut textual ar trebui plasate într-o secvență de conținut marcat cu o etichetă de interval a cărei proprietate E oferă o extindere textuală a abrevierii sau acronimului...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word documentul nu permite utilizatorilor să stabilească abrevieri și acronime expansiuni. Deci, acest lucru trebuie verificat și fixat în ieșirea PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titlul Documentului

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Documentul din PDF/UA-1 ar trebui să aibă un titlu. |

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Specificația ne spune următoarele::</p>
    <p>Fluxul de metadate din Dicționarul de catalog al documentului trebuie să conțină o intrare dc:title, unde dc este prefixul recomandat pentru schema de metadate Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să setați titlul documentului (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>Titlul documentului ar putea fi configurat fie documentul sursă Microsoft Word:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Sau ieșirea PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Cerințe De Font

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Există, de asemenea, o serie de nuanțe de lucru cu fonturi la conversia în PDF/A-1, PDF/A-2, PDF/A-4 sau PDF/UA-1 formate folosind Aspose.Words. Acestea trebuie luate în considerare dacă doriți să evitați posibilele probleme cu documentul de ieșire.

Secțiunile de mai jos descriu astfel de nuanțe și opțiuni pentru soluția lor.

### Cerințe Legale Privind Fontul

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words nu verifică restricțiile legale ale fonturilor utilizate-depinde de utilizatori. Cu alte cuvinte, un utilizator nu ar trebui să furnizeze fonturi nepotrivite pentru Conversia PDF Folosind Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Vor fi utilizate numai programele de fonturi care pot fi încorporate legal într-un fișier pentru redare nelimitată și universală.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exact aceleași citate în două specificații)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Utilizarea glifului `.notdef` este interzisă. Simbolul `.notdef` va apărea dacă un document conține caractere care nu sunt prezente în fontul selectat și care, de asemenea, nu pot fi rezolvate prin mecanismul de rezervă a fontului.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Un document conform nu trebuie să conțină o trimitere la .notdef glyph de la oricare dintre operatorii care arată textul, indiferent de modul de redare a textului, în orice flux de conținut.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exact aceleași citate în două specificații)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: cum să eliminați sau să înlocuiți aceste caractere (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>Utilizatorii ar trebui să elimine sau să înlocuiască aceste caractere în documentul Word sursă:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Sau documentul de ieșire PDF folosind instrumentul" Editare PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Zona De Utilizare Privată (PUA)

| PDF niveluri standard de conformitate în cadrul Aspose.Words | Prezența cerinței |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Caracterele din zona de utilizare privată (PUA) apar în principal pentru Windows fonturi simbolice precum "Symbol", "Wingdings", "Webdings" și altele. Microsoft Word formatele nu oferă o opțiune de stocare a textului real pentru caractere.

{{% alert color="secondary" %}}
<details>
    <summary>Specificația ne spune următoarele (extindeți pentru a vedea detalii):</summary>
    <p></p>
    <p>Doar pentru conformitatea de nivel A, pentru orice personaj ... care este mapat la un cod sau coduri din zona de utilizare privată Unicode (PUA), o intrare ActualText... trebuie să fie prezent pentru acest caracter sau o succesiune de caractere din care un astfel de caracter face parte.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" este un font Unicode Windows care ar putea fi folosit ca alternativă la fonturile simbolice.

{{% alert color="secondary" %}}
<details>
    <summary>În acest bloc, puteți vedea exemple: ce ar trebui să facă utilizatorul pentru a rezolva problema cu fonturile simbolice (extindeți pentru a vedea detalii).</summary>
    <p></p>
    <p>Înlocuiți fontul simbolic cu unul Unicode în documentul sursă Word:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Sau adăugați o intrare ActualText la caracterele problematice din documentul de ieșire PDF:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
