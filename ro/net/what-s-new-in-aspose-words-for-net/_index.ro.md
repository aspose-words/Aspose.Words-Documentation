---
title: Ce e nou?
second_title: Aspose.Words pentru .NET
articleTitle: Ce noutăți sunt în Aspose.Words pentru .NET
linktitle: Ce noutăți sunt în Aspose.Words pentru .NET
type: docs
description: "Aspose.Words pentru .NET se extinde și îmbunătățește zilnic. Pe această pagină, puteți învăța despre caracteristicile mari și cele mai interesante ale produsului."
weight: 10
url: /ro/net/what-s-new-in-aspose-words-for-net/
---

Această pagină descrie cele mai interesante noi caracteristici Aspose.Words introduse în versiunile recente.

## Aspose.Words pentru .NET 24.9, 24.10

Aspose.Words 24.9 introduce inserarea formelor de grup și inserarea StructuredDocumentTag prin DocumentBuilder, îmbunătățește redarea diagramelor radiale cu gradări, îmbunătățește semnăturile digitale cu suport XAdES-EPES, adaugă recunoașterea sublinierii Markdown și oferă acces la separatoarele note de subsol/note de final.

Aspose.Words 24.10 introduce suport îmbunătățit de control ActiveX cu crearea CommandButton, nou control al vizibilității formelor, capacitatea de grupare a formelor, export îmbunătățit Markdown pentru tabele, formatare diagramă pentru diagrame Pie și Donut, gestionare mai bună a codificării Big5 și suport pentru fonturile taiwaneze învechite.

### Redare și imprimare

#### Agradări pe diagramele radiale <sup>24.9</sup>

A fost implementată redarea gradațiilor pe diagrame radiale.

#### CommandButton ActiveX controlează <sup>24.10</sup>

Abilitatea de a crea controale CommandButton ActiveX a fost introdusă prin adăugarea unei noi metode publice [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) și a unei noi clase publice [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/).

#### Controlați vizibilitatea formei <sup>24.10</sup>

O nouă proprietate publică [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) a fost adăugată pentru a controla vizibilitatea formelor.

#### Modificări în diagramele piese și gogoși <sup>24.10</sup>

Au fost adăugate mai multe proprietăți publice noi pentru a forma diagramele Pie și Donut.

### Conversia, încărcarea și salvarea documentelor

#### Formatarea sublinierii la încărcarea fișierelor Markdown <sup>24.9</sup>

Opțiunea de a recunoaște formatarea sublinierii la încărcarea documentelor Markdown a fost încorporată prin adăugarea unei noi proprietăți publice [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Exportarea tabelelor ca HTML la salvarea în Markdown <sup>24.10</sup>

O opțiune de exportare a tabelelor ca HTML la salvarea documentelor în format Markdown a fost implementată prin adăugarea unei noi proprietăți publice [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) și o enumerare [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/).

### Semnături digitale

#### Semnați documente cu XAdES-EPES <sup>24.9</sup>

Abilitatea de a semna documente cu semnături XML-DSig la nivel XAdES-EPES a fost introdusă prin adăugarea unei noi proprietăți publice [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) și o nouă enumerare publică [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Altele

* O nouă metodă publică [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) a fost adăugată formelor de grup. <sup>24.9</sup>
* O nouă metodă publică [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) a fost adăugată pentru a insera **StructuredDocumentTags** într-un document. <sup>24.9</sup>
* Accesul public la separatoarele de note de subsol/note de final a fost oferit prin adăugarea câtorva clase și proprietăți publice. <sup>24.9</sup>
* Capacitatea de a grupa forme individuale, de a grupa forme și de a grupa direct ambele forme și forme de grup a fost introdusă prin adăugarea [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1). <sup>24.10</sup>
* Gestionarea codificării Big5 pentru tabelele cmap TrueType a fost îmbunătățită. <sup>24.10</sup>
* Suportul pentru fonturile taiwaneze învechite a fost îmbunătățit. <sup>24.10</sup>

{{% alert color="primary" %}}

Învaţă mai multe despre [Aspose.Words for .NET 24.9 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Învaţă mai multe despre [Aspose.Words for .NET 24.10 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words pentru .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 extinde opțiunile pentru asamblări, îmbunătățește capacitățile de redare și extinde alte câteva opțiuni.

Aspose.Words 24.6 îmbunătățește opțiunile de redare, sporește funcționalitatea de căutare și comparare, și extinde mai multe alte caracteristici.

Aspose.Words 24.7 schimbă modul în care lucrezi cu ActiveX, extinde capacitățile de redare precum și exportul în formate Markdown și XLSX.

Aspose.Words 24.8 îmbunătățește particularizarea diagramelor cu control precis asupra etichetelor axelor, extinde gestionarea fonturilor, îmbunătățește gestionarea structurii documentelor și adaugă noi capacități pentru exportul în HTML/XAML, funcționalitatea PDF, conversia documentelor și semnăturile digitale.

### Formaturi suportate

Din versiunea 24.7, este susținut exportul către PDF/UA-2 pentru a garanta accesibilitatea utilizatorilor cu dizabilități.

### Platforme <sup>24.5</sup>

.NET 7.0/8.0 assembly-uri au fost incluse în Aspose.Words NuGet pachetul.

### Rendierea și imprimarea

#### Modificări în diagrame, forme și DrawingML <sup>24.5</sup>

* Redarea efectelor DrawingML pentru grafică SVG, extinderea funcționalității anterioare limitată la imagini, a fost implementată.
* Suport pentru crearea de diagrame combinate și ajustarea proprietăților precum lățimea spațiului, suprapunerea și scara bulelor în cadrul grupurilor de serii a fost introdus prin adăugarea claselor [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) și [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) și a proprietății [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* Funcționalitatea de a manipula efectul SoftEdge al formelor a fost implementată prin adăugarea clasei [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* Capacitatea de a modifica ajusta valorile formelor a fost implementată prin adăugarea claselor publice [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) și [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) și proprietății [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/).

#### Modificări în diagrame, forme și desenare <sup>24.6</sup>

* Capacitățile de diagramare au fost îmbunătățite. Poți acum să creezi o varietate mai largă de diagrame, inclusiv *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* diagrame, *Box & Whisker* diagrame, *Waterfalls*, și *Funnels*. Acest lucru vă permite să vizualizați datele dumneavoastră într-un mod mai divers și mai informativ.
* Controlul culorilor pentru formatarea umbrelor a fost îmbunătățit. Puteți obține un control mai precis asupra aspectului documentelor dvs. accesând culorile umbră.
* Creşterea performanţei pentru redarea în fundal a fost îmbunătăţită. Puteți să accelerați în mod semnificativ randarea fundalurilor care conțin elemente mici datorită tehnologiei native de plăci.
* Au fost adăugate tranziții realiste pentru formele. "Acum puteți crea forme DML cu gradienturi neliniare, imitând stilul vizual al lui Microsoft Word pentru un aspect mai rafinat."

#### Etichete de date pentru grafice <sup>24.7</sup>

Posibilitatea de a particulariza etichetele de date ale graficului, cum ar fi **Orientation** și **Rotation**, a fost adăugată.

#### Stiluri de numere personalizate pentru nivelurile listei <sup>24.7</sup>

Un setator pentru proprietatea publică [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/) a fost adăugat. Puteți defini acum un stil numeric personalizat pentru nivelurile de listă.

#### Modificări în lucrul cu ActiveX <sup>24.7</sup>

* Proprietățile obiectelor ActiveX pot fi acum modificate, oferindu-vă un control mai bun asupra comportamentului lor.
* Funcționalitatea de a modifica valoarea butonului radio ActiveX control pentru a permite interacțiunea dinamică a fost adăugată.
* A capacitatea de a comuta o casetă de selectare ActiveX pentru "selectat" sau "deselecat" a fost adăugată.

#### Controlul asupra etichetelor axei de grafic și orientarea și rotirea <sup>24.8</sup>

Control precis asupra orientării și rotației etichetelor de axă a graficului a fost adăugat pentru o personalizare mai convenabilă – clasa [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) a fost extinsă cu noile proprietăți [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) și [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Înlocuirea Backslash-ului cu Semnul Yen <sup>24.8</sup>

Funcționalitatea de export HTML și XAML compatibil înapoi pentru înlocuirea caracterului backslash cu semnul Yen a fost îmbunătățită. Pentru a face acest lucru, proprietatea **ReplaceBackslashWithYenSign** a fost adăugată clasei [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) și [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Utilizarea etichetelor SDT ca nume de câmp atunci când se exportează în PDF <sup>24.8</sup>

Exportul PDF cu suport pentru utilizarea etichetelor SDT ca nume de câmp formular a fost îmbunătățit prin adăugarea unei noi proprietăți [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) la clasa [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Conversia, încărcarea și salvarea documentelor

#### Exportarea legăturilor către formatul Markdown <sup>24.7</sup>

Capacitatea de a controla exportul de link-uri în Markdown format a fost adăugată prin implementarea proprietății [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode 24.8 <sup>24.8</sup>

"O nouă [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/) clasă, concepută pentru a furniza un set de metode pentru convertirea diverselor tipuri de documente cu o singură linie de cod, a fost introdusă."

### Căutare și Comparare

#### Opțiuni avansate de comparație <sup>24.6</sup>
Capacitatea de a simplifica fluxurile de lucru de analiză a datelor cu funcționalități îmbunătățite de comparare au fost adăugate. Aceasta include o nouă opțiune [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) și interfața redesenată pentru comparații avansate.

### Altele

* Funcția de eliminare a paginilor goale dintr-un document a fost implementată prin adăugarea metodei [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* Posibilitatea de a verifica prezența macro-urilor VBA fără a încărca un document a fost furnizată prin adăugarea proprietății [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Menținerea numerotării sursei în timp ce se inserează un document folosind motorul de raportare LINQ este acum acceptat. <sup>24.5</sup>
* S-a adăugat o nouă proprietate [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) – aceasta oferă un marcaj de timp mai precis pentru comentarii, îmbunătățind organizarea și urmăritibilitatea. <sup>24.6</sup>
* Motorul de raportare LINQ a fost îmbunătățit. Eliminarea selectivă a paragrafelor goale și definirea de mesaje personalizate pentru membrii obiectului lipsă au fost efectuate, ceea ce duce la rapoarte mai clare și mai informative. <sup>24.6</sup>
* Formatarea dată-oră este acum detectată automat pentru export fără probleme în formatul XLSX <sup>24.7</sup>
* Proprietatea publică [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), care îți permite să verifici dacă un proiect VBA este protejat, a fost adăugată. <sup>24.7</sup>
* Informaţia fontului a fost extinsă cu proprietatea **EmbeddingLicensingRights** adăugată la clasele [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) şi [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* S-a adăugat o metodă eficientă de curățare a anteturilor și subsolului secțiunilor, păstrând în același timp marcajele de apă, pentru a lucra mai precis cu structura documentului. Pentru a curăța anteturile secțiunilor și subsolurile, folosiți noua metodă publică [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* Semnarea digitală a XPS documentelor folosind [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) a fost activată – o nouă proprietate [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) a fost adăugată pentru acest scop. <sup>24.8</sup>

{{% alert color="primary" %}}

Aflaţi mai multe despre [Aspose.Words for .NET 24.5 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Află mai multe despre [Aspose.Words for .NET 24.6 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Învață mai multe despre [Aspose.Words for .NET 24.7 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Învaţă mai multe despre [Aspose.Words for .NET 24.8 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words pentru .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 îmbunătățește experiența în jurul gestionării culorilor de țeapă, îmbunătățirea obiectelor OLE și raportarea LINQ, precum și introducerea unui nou `Bibliography Sources` public API.

Aspose.Words 24.2 a extins Charts API, managementul stilului și opțiunile LINQ. Această versiune de Aspose.Words a introdus și capacitatea de a specifica opțiuni SvgSaveOptions în timpul redării, un control mai flexibil al încărcării fișierelor Markdown, precum și lucrul cu text referențial pentru note de subsol și note finale.

Aspose.Words 24.3 introduce un nou cititor/scriitor TIFF și o emulare a operațiilor binare raster pentru fișierele WMF. Aspose.Words 24.3 continuă, de asemenea, să extindă tabelele cu diagrame API.

Aspose.Words 24.4 îmbunătățește formatarea fișierelor, unele opțiuni de redare, precum și îmbunătățirea muncii cu semnături digitale.

### Formate acceptate <sup>24.4</sup>

Formatul modern **WebP** pentru imagini este acum acceptat în Aspose.Words pentru .NET Framework 4.6.2 și versiuni superioare. Acum puteți să citiți și să introduceți WebP imagini în documente, precum și să salvați imaginile în WebP format.

Vă rugăm să rețineți că WebP este în prezent disponibil doar în .NET Standard și .NET Framework v4.6.2 și versiuni ulterioare.

### Redarea şi imprimarea

#### Control culori de trasare <sup>24.1</sup>

Clasa [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) a fost extinsă cu un set de noi proprietăți publice legate de gestionarea culorilor de contur: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) și [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) și [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/)."

#### DrawingML charts API Extensie <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** continuă să fie extinsă.

#### Fonturi încorporate declarate în reguli @font-face <sup>24.4</sup>

Capabilitatea de a încorpora fonturi declarate în reguli @font-face în definițiile de font ale documentului rezultat, a fost introdusă prin adăugarea unei noi proprietăți [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/)."

#### Lucraţi cu formatarea "Glow and Reflection" <sup>24.4</sup>

Capacitatea de a lucra cu formatarea de lumina și reflexie pentru un obiect desenat a fost implementată.

### Încărcarea şi Salvarea Documentelor

#### Specificați Opțiuni SvgSaveDuring Rendering <sup>24.2</sup>

Capacitatea de a specifica [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) în timpul redării a fost adăugată folosind metodele [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) și [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/).

#### Preservă liniile goale la încărcarea Markdown fișiere <sup>24.2</sup>

Capacitatea de a păstra linii goale în timpul încărcării Markdown fișierelor a fost adăugată.

#### Un nou cititor/scrieator TIF <sup>24.3</sup>

A nou cititor/scriitor TIFF pentru Aspose.Words pentru .NET Standard, .NET 6 și mai târziu a fost dezvoltat. Aspose.Words pentru .NET 24.3 a adăugat suport pentru citirea imaginilor TIFF cu tipuri de compresie JPEG și Old JPEG, și, de asemenea, a îmbunătățit semnificativ calitatea operațiunilor de citire și scriere.

### Altele

:* Capacitatea de a modifica textul controalului OLE `TextBox` a fost introdus prin adăugarea unei noi proprietăți [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) la noua clasă [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
*: Sursa bibliografiei publică API a fost implementată prin adăugarea unui nou spațiu de nume [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) cu clasele și enumerările sale noi, și prin adăugarea unei noi proprietăți [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) la clasa [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* O API pentru a limita accesul la membrii de tip folosind sintaxa șabloanelor pentru `LINQ Reporting Engine` este furnizată. <sup>24.1</sup>
- * Noul proprietăți publice [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) și [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pentru gestionarea stilului îmbunătățit au fost adăugate la clasa [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* Funcționalitatea de a obține textul marcajelor de referință reale pentru note de subsol și note finale a fost îmbunătățită cu proprietatea [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) și metoda [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Compatibilitatea cu diagramele `Word 2016` pentru `LINQ Reporting Engine` a fost activată. <sup>24.2</sup>
* Emularea operațiilor binare raster pentru fișiere WMF a fost implementată. <sup>24.3</sup>
* Posibilitatea de a defini opțiunile semnăturii pentru documente în **SaveOptions** a fost activată prin adăugarea unei noi [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) clase cu noi membri publici, precum și adăugarea unor noi proprietăți la clasele [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) și [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Aflaţi mai multe despre [Aspose.Words for .NET 24.1 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Află mai multe despre [Aspose.Words for .NET 24.2 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Învață mai multe despre [Aspose.Words for .NET 24.3 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Află mai multe despre [Aspose.Words for .NET 24.4 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words pentru .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 extinde opțiunile de redare, emularea randării metafilelor și markdown opțiuni de salvare

Aspose.Words 23.10 îmbunătățește redarea, extinde opțiunile pentru încărcarea și salvarea documentelor, și permite utilizatorilor să combine documente în noi moduri.

Aspose.Words 23.11 îmbunătățește lucrul cu reviziile, formatul XLSX și fonturile pe legenda graficelor cu opțiuni suplimentare.

Aspose.Words 23.12 introduce noi proprietăți și enumerări pentru a lucra cu documentele PDF și OOXML, precum și suport pentru WebP imagini.

### Randare și imprimare

#### "Personalizarea titlurilor axelor în diagrame DrawML <sup>23.9</sup>"

"Capacitatea de a particulariza titlurile axelor în diagramele DrawingML a fost introdusă prin implementarea unei noi clase publice [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) și [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) proprietate."

#### Determinarea poziției verticale a fonturilor în cadrul unui paragraf <sup>23.9</sup>

"Este posibil acum să se definiească poziţia verticală a fonturilor în cadrul unui paragraf folosind noua proprietate publică [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) și noua enumerare [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/)."

#### Control culori din față <sup>23.10</sup>

Capabilitatea de a recupera culoarea din primul plan fără modificatori a fost adăugată la clasele [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) și [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) prin proprietatea **BaseForeColor**.

#### Extinderea funcționalității diagramelor <sup>23.10</sup>

Funcționalitatea claselor [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) și [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) a fost extinsă cu noi metode și proprietăți.

#### Ajustează automat și potrivește o imagine într-o formă <sup>23.10</sup>

O modalitate simplă de a ajusta automat și potrivi o imagine într-o formă specifică a fost furnizată prin noua [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) metodă.

#### Formatare font implicite pentru intrările legendelor diagramei DrawingML <sup>23.11</sup>

Capabilitatea de a specifica formatarea fontului implicit pentru intrările legendei din diagramele DrawingML a fost adăugată prin intermediul proprietății [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Această caracteristică facilitează o apariție mai simplă și mai coerentă pentru elementele de diagramă, îmbunătățind estetica generală a documentului.

#### Specificați aranjarea paginii atunci când deschideți un fișier PDF în cititor <sup>23.12</sup>

Capacitatea de a specifica formatul paginii care urmează să fie utilizat atunci când se deschide un document într-un cititor PDF a fost adăugată prin introducerea unei noi [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) proprietăți la clasa [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) și prin introducerea unei noi [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) enumerare.

### Încărcarea şi salvarea documentelor

#### Specificarea unui nume de folder pentru construirea URI-urilor imaginilor în Markdown <sup>23.9</sup>

Clasa [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) a fost extinsă prin includerea proprietății [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), care permite specificarea numelui folderului utilizat pentru construirea URI-urilor imaginilor scrise în Markdown document.

#### Reducă dimensiunea de ieșire a fișierului PDF <sup>23.10</sup>

Implementate diferite optimizări de redare a PDF pentru a reduce dimensiunea ieșirii atunci când se utilizează setările [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### Recunoașterea hiperlink-urilor atunci când se încarcă documentele TXT <sup>23.10</sup>

Funcția de recunoaștere a hyperlink-urilor la încărcarea fișierelor TXT a fost implementată prin adăugarea unei noi proprietăți [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Altele

* Emularea de redare a metafilelor pentru a determina dimensiunea de rasterizare a fost implementată, în special pentru lățimea stiloului WMF și lățimea stiloului cosmetic EMF. Pentru a realiza acest lucru, proprietatea **ScaleWmfFontsToMetafileSize** a fost înlocuită cu proprietatea [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) iar proprietatea [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) a fost adăugată. <sup>23.9</sup>
:* A simplificată metoda pentru inserarea unui document într-un alt document la poziția curentă a cursorului a fost introdusă folosind metoda [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Capacitatea de a accesa și modifica proprietățile stilului a fost adăugată prin introducerea noului [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) proprietate. <sup>23.10</sup>
* S-a adăugat un parametru de tip generic la metodele clasei [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/). <sup>23.10</sup>
* S-a implementat o metodă de control al momentului în care o anumită revizuire ar trebui acceptată/respinsă sau nu, folosind metodele [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) și [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Această îmbunătățire oferă utilizatorilor un control mai precis asupra procesului de revizuire. <sup>23.11</sup>
* Posibilitatea de a scrie toate secțiunile unui document pe același foi XLSX a fost furnizată prin noul tip de enumerare [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) și noua proprietate [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* O modalitate de a controla cum se utilizează extensii de format ZIP64 pentru documentele OOXML a fost implementată prin noua proprietate Zip64Mode a clasei `OoxmlSaveOptions` și noua enumerare Zip64Mode. <sup>23.12</sup>
* S-a introdus suport pentru WebP imagine Vă rugăm să rețineți că această caracteristică este disponibilă doar pentru versiunile .NetStandard și .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Învață mai multe despre [Aspose.Words for .NET 23.9 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Aflaţi mai multe despre [Aspose.Words for .NET 23.10 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Află mai multe despre [Aspose.Words for .NET 23.11 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Învaţă mai multe despre [Aspose.Words for .NET 23.12 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words pentru .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 îmbunătățește capacitatea de a lucra cu datele seriei de diagrame și capacitatea de a lucra cu documente ODT, precum și îmbunătățirea anteturilor / subsolului și a învelirii textului.

Aspose.Words 23.6 extinde opțiunile de redare, adaugă un nou format de export, îmbunătățește raportarea LINQ și " LowCode instrumente.

Aspose.Words 23.7 îmbunătățește capacitatea de raportare, adaugă un nou format de export și introduce modificări în modul de lucru cu tabelele și semnăturile digitale.

Aspose.Words 23.8 extinde capacitățile diferitelor formate, îmbunătățește randarea și adaugă noi opțiuni de lucru cu câmpurile

### Formate acceptate

* Începând cu versiunea 23.6 este posibil să salvați un document în formatul XLSX Acum puteți converti documentele în format Excel. <sup>23.6</sup>
* Începând din versiunea 23.7 este posibil să salvezi o pagină de document sau un obiect în formatul EPS. <sup>23.7</sup>

### Caracteristici format nou

* Funcționalitatea de a genera automat Tabele de Conținut (TOC) pentru documentele MOBI a fost introdusă. <sup>23.8</sup>
* Constructorul [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) a fost extins cu [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Formarea textului vertical pentru fișiere metafile EMF a fost implementată. <sup>23.8</sup>

### Redarea și imprimarea

#### Obțineți și modificați datele seriei de grafice <sup>23.5</sup>

Funcționalitatea de a obține și modifica datele seriilor din diagrame a fost furnizată prin adăugarea lui:

* noi clase: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* noile tipuri de enumerare: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Compatibilitate pentru tipografie avansată <sup>23.6</sup>

Suport pentru tipografia avansată în WMF, EMF și EMF+ redare a fost adăugat.

#### Conținut colorat pe pagină <sup>23.6</sup>

Proprietatea publică [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), indicând dacă pagina este colorată sau nu, a fost adăugată.

#### Formatarea pentru etichetele de date ale diagramei <sup>23.6</sup>

Capacitatea de a seta umplerea, conturul și formatarea pentru etichetele de date ale graficului a fost implementată.

### Mail Merge și raportare

#### Dynamic HTML Insertion for LINQ Reporting Engine <sup>23.6</sup>

O nouă metodă de inserare dinamică a paginilor pentru motorul de raportare Linq a fost adăugată.

#### Mustache Suport etichete <sup>23.7</sup>

"Etichetele Mustache sunt acum acceptate în metodele [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) și [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion)"

#### LINQ Reporting Engine șablon sintaxă actualizări <sup>23.7</sup>

Sintaxa șablonului motorului de raportare LINQ acceptă acum metodele de extensie "`ElementAt`" și "ElementAtOrDefault".

#### Specificarea dimensiunii imaginilor redimensionate <sup>23.8</sup>

O nouă proprietate publică [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) pentru specificarea dimensiunii imaginilor afișate în pixeli a fost introdusă.

#### Preservă spațiile albe pentru valorile șirului JSON – LINQ <sup>23.8</sup>

A fost adăugată o opțiune la motorul de raportare LINQ pentru a păstra spațiile albe pentru valori de șir JSON.

### LowCode <sup>23.6</sup>

Nouă LowCode metode pentru a uni diferite tipuri de documente într-un singur document de ieșire au fost adăugate.

### Altele

* Suport pentru învelirea textului în anteturi/ subsoluri a fost implementat. <sup>23.5</sup>
:* Capacitatea de a elimina semnăturile digitale din documentele ODT a fost adăugată prin [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) metodă. <sup>23.5</sup>
* Proprietatea publică [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) pentru a obține baza și textul ruby al ghidului fonetic [Run](https://reference.aspose.com/words/net/aspose.words/run/) a fost adăugată. <sup>23.5</sup>
* Posibilitatea de a recupera o valoare de semnătură digitală dintr-un document semnat digital ca un tablou de octeți a fost adăugată prin introducerea unei noi proprietăți [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23.7</sup>
* Clasele [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) și [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) au fost extinse cu noi membri publici – [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) și [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
:* S-a adăugat suport pentru câmpurile "CITARE" și "BIBLIOGRAFIE". <sup>23.8</sup>

{{% alert color="primary" %}}

Află mai multe despre [Aspose.Words for .NET 23.5 Release Notes](/words/net/aspose-words-for-net-23-5-release-notes/).

Află mai multe despre [Aspose.Words for .NET 23.6 Release Notes](/words/net/aspose-words-for-net-23-6-release-notes/).

Aflați mai multe despre [Aspose.Words for .NET 23.7 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

Învaţă mai multe despre [Aspose.Words for .NET 23.8 Release Notes](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words pentru .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 îmbunătățește performanța emulării operațiunilor raster și îmbunătățește calitatea exportului de documente și randarea acestora.

Aspose.Words 23.2 introduce salvarea documentelor în formatul MOBI, îmbunătățește redarea graficelor și produce schimbări notabile la detaliile de aspect ale documentului.

Aspose.Words 23.3 îmbunătățește importul și salvarea documentelor cu noi proprietăți, și îmbunătățește, de asemenea, calitatea muncii cu culori de fundal și prim plan și gradient radial.

Aspose.Words 23.4 îmbunătățește calculul unor parametri și poziționarea tabelelor și textului înconjurător.

### Îmbunătățiri de performanță

#### Emularea operațiilor raster <sup>23.1</sup>

Performanța și calitatea emulării operațiilor raster cu fișiere metafile au fost îmbunătățite semnificativ.

### Formate acceptate

#### Export la MOBI <sup>23.2</sup>

Începând cu versiunea 23.2, este posibil să salvați un document în formatul MOBI (de asemenea numit PRC, AZW – Amazon Kindle's own e-book file format). Acum poți să nu încărca doar documentele MOBI, dar și să exporte fișierele în format MOBI.

### Renderizare

#### Lucrează cu culori de temă de umbrire <sup>23.1</sup>

Capabilitatea de a lucra cu culori tematice de umbrire a fost implementată.

#### Suport pentru coeficientul R pătrat în diagrame DML <sup>23.1</sup>

Sprijinul coeficientului R pătrată în etichetele de linie de tendință a diagramei DML atunci când redarea a fost adăugată.

#### Îmbunătățiri la redarea graficelor <sup>23.2</sup>

De la versiunea 23.2, redarea diagramei a fost îmbunătățită semnificativ.

#### Controlul culorii de fundal și al culorii din față <sup>23.3</sup>

Clasa [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) a fost extinsă cu un set de noi proprietăți publice legate de culorile de fundal și de prim plan: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) și [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) și [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Gradiente radiale cu `SkiaSharp` Nativ Shader <sup>23.3</sup>

Implementarea "gradienților radiali" cu `SkiaSharp` shader nativ pentru .NET Standard a fost finalizată.

#### Distanța dintre masă și textul din jur <sup>23.4</sup>

Posibilitatea de a seta distanța dintre tabel și textul din jur s-a adăugat prin introducerea unor noi proprietăți în clasa [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) și [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Încărcarea și Salvarea Documentelor

#### Generați `TOC` pentru documentele AZW3 <sup>23.1</sup>

Capacitatea de a genera `TOC` (conținutul tabelului) pentru documentele AZW3 a fost adăugată prin utilizarea proprietății [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Exportarea elementelor listei către Markdown <sup>23.1</sup>

O cale de a controla exportul elementelor de listă în formatul Markdown a fost furnizată prin adăugarea proprietății [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) la clasa [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/).

#### Notificări de progres al salvării documentului <sup>23.3</sup>

Salvarea progresului notificărilor pentru formatele MOBI și AZW3 a fost implementată.

#### Ajustarea spațiului de propoziție și cuvânt" " <sup>23.3</sup>

Capacitatea de a specifica dacă se ajustează automat spațierea propozițiilor și cuvintelor la importul documentului a fost adăugată prin introducerea proprietății [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/)..

### Altele

* Abilitatea de a specifica ajustarea spațiului caracterelor unui document a fost adăugată prin implementarea proprietății [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* Calea de a indica Aspose.Words dacă să includă textbox-uri, note la subsol și note la final în statisticile numărării cuvintelor a fost furnizată prin adăugarea proprietății [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* O nouă opțiune pentru un stil de document, care permite specificarea dacă stilul este redefinit automat în funcție de valoarea corespunzătoare, a fost introdusă prin proprietatea [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup>
* Capacitatea de a determina dacă [Run](https://reference.aspose.com/words/net/aspose.words/run/) este o cursă fonetică ghid a fost adăugată folosind proprietatea [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* O metodă simplă de a lucra cu serii și axe de diagrame combinate a fost implementată prin introducerea clasei [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) și adăugarea proprietății [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Proprietăți publice noi conectate cu poziționarea relativă și dimensionarea formei au fost adăugate la clasa [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* Acuratețea și performanța calculării luminozității culorii pentru rezolvarea automată a culorii textului au fost îmbunătățite în conformitate cu versiunile cele mai recente de Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Aflaţi mai multe despre [Aspose.Words for .NET 23.1 Release Notes](/words/net/aspose-words-for-net-23-1-release-notes/).

Află mai multe despre [Aspose.Words for .NET 23.2 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Află mai multe despre [Aspose.Words for .NET 23.3 Release Notes](/words/net/aspose-words-for-net-23-3-release-notes/).

Învaţă mai multe despre [Aspose.Words for .NET 23.4 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words pentru .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 extinde opțiunile de încărcare și salvare a documentelor și îmbunătățește interacțiunea cu unele alte opțiuni.

"Aspose.Words 22.10 îmbunătățește opțiunile de căutare și înlocuire, îmbunătățește obiecte OLE și extinde funcționalitatea listelor."

Aspose.Words 22.11 extinde funcționalitatea cu opțiuni noi pentru o lucru mai convenabil cu obiectele deja familiare: câmpuri, imprimare, OLE și etichete de document structurat.

Aspose.Words 22.12 îmbunătățește capacitățile de redare și introduce opțiuni pentru lucrul cu margini atunci când se încarcă/salvează un document.

### Îmbunătățiri ale performanței <sup>22.12</sup>

O optimizare care reduce semnificativ adâncimea încastrării stării grafice atunci când se redă PDF pentru a menține respectarea specificațiilor a fost introdusă.

### Randare și imprimare

#### Imprimarea paginilor non-colorate pe o imprimantă color <sup>22.11</sup>

Un mod de tipar particularizat colorat/de tonuri de gri a fost implementat prin adăugarea unei noi valori **GrayscaleAuto** în enumerare [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/).

O nouă proprietate de tipar permite utilizatorilor să controleze cum sunt imprimate paginile necolorate, dacă dispozitivul acceptă imprimarea în culori. Această caracteristică poate fi utilă dacă utilizatorii doresc să imprime automat pagini non-color folosind doar modul de imprimare în tonuri de gri.

#### Proprietăți de redare a frontierei noi <sup>22.12</sup>

S-au introdus noile proprietăți publice [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) și [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/).

#### Formula pentru liniar Tendință de trasare pentru DrawingML Redare <sup>22.12</sup>

Formula de redare a tendinței liniare pentru diagramele DrawingML a fost implementată.

#### Setări de font fallback pentru Google Noto Fonturi <sup>22.12</sup>

Setările implicite de redirecționare a fonturilor pentru Google Noto fonturi au fost actualizate.

### Încărcarea și Salvarea Documentelor

#### Cache-uri pentru antet sau subsol pentru reducerea dimensiunii PDF <sup>22.9</sup>

Capacitatea de a memora în cache forme de antet/subsol pentru reducerea dimensiunii fișierului PDF rezultat, a fost implementată prin adăugarea unei noi proprietăți **CacheHeaderFooterShapes**.

#### Detectarea numerotării automate atunci când se încarcă un document <sup>22.9</sup>

Capacitatea de a specifica proprietatea [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) la încărcarea textului a fost implementată prin extensia clasei [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/).

#### Specificarea unui tip de margine particular <sup>22.12</sup>

Capacitatea de a specifica un tip special [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) pentru secțiunea dată a fost implementată.

### Căutare și Comparație <sup>22.10</sup>

Capacitatea de a ignora [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) la opțiunile de căutare și înlocuire a fost implementată prin adăugarea unei noi proprietăți [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) la clasa [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Altele

* O nouă caracteristică de a obține FieldEQ ca un OfficeMath a fost adăugată. <sup>22.9</sup>
* Crearea etichetelor de documente structurate de tip Group la nivel de rând a fost permisă. <sup>22.9</sup>
* Obiectele și controalele OLE sunt acum tratate ca imagini metafile atunci când se convertește un document în HTML. <sup>22.10</sup>
* O nouă caracteristică de verificare a faptului că o anumită listă a fost creată din același șablon ca și lista comparată, a fost adăugată prin introducerea unei noi [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) metodă în clasa [List](https://reference.aspose.com/words/net/aspose.words.lists/list/). <sup>22.10</sup>
:* Capacitatea de a crea noi etichete de document structurat de tipul [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) a fost adăugată. <sup>22.11</sup>
* Capacitatea de a urmări progresul actualizarii câmpului a fost furnizată. <sup>22.11</sup>
* O nouă proprietate **EmbedAttachments** care permite utilizatorilor să încorporeze atașări OLE dintr-un document sursă în documentul PDF de ieșire a fost introdusă. <sup>22.11</sup>

{{% alert color="primary" %}}

Aflaţi mai multe despre [Aspose.Words for .NET 22.9 Release Notes](/words/net/aspose-words-for-net-22-9-release-notes/).

Aflaţi mai multe despre [Aspose.Words for .NET 22.10 Release Notes](/words/net/aspose-words-for-net-22-10-release-notes/).

Află mai multe despre [Aspose.Words for .NET 22.11 Release Notes](/words/net/aspose-words-for-net-22-11-release-notes/).

Învață mai multe despre [Aspose.Words for .NET 22.12 Release Notes](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## A se vedea și

{{% alert color="primary" %}}

Această pagină conține ultimele știri ale lansărilor pentru ultimii 2 ani. Pentru detalii cu privire la versiunile anterioare, vezi [Release Notes'](https://releases.aspose.com/words/net/release-notes/) paginile din secțiunile relevante.

{{% /alert %}}