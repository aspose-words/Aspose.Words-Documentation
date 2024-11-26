---
title: Ce este nou
second_title: Aspose.Words pentru Java
articleTitle: Ce este nou în Aspose.Words pentru Java
linktitle: Ce este nou în Aspose.Words pentru Java
type: docs
description: "Aspose.Words pentru Java extinde și îmbunătățește zilnic. Pe această pagină, puteți afla despre caracteristicile uriașe și cele mai interesante ale produsului."
weight: 2
url: /ro/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

Această pagină descrie cele mai interesante caracteristici noi Aspose.Words introduse în versiunile recente.

## Aspose.Words pentru Java 24.9, 24.10

Aspose.Words 24.9 introduce group shape Inserare și StructuredDocumentTag Inserare prin DocumentBuilder, îmbunătățește randarea diagramelor radiale cu gradații, îmbunătățește semnăturile digitale cu suport XAdES-EPES, adaugă Markdown recunoașterea sublinierii și oferă acces la separatoarele de notă de subsol/notă finală.

Aspose.Words 24.10 introduce suport îmbunătățit pentru controlul ActiveX cu crearea CommandButton, Controlul vizibilității formei noi, capacitatea de a group shapes, exportul Markdown îmbunătățit pentru tabele, formatarea diagramelor pentru graficele Pie și Doughnut, o mai bună manipulare a codificării Big5 și suport pentru fonturile taiwaneze învechite.

### Redare și imprimare

#### Gradații pe diagrame radiale <sup>24.9</sup>

A fost implementată redarea gradărilor pe diagrame radiale.

#### CommandButton Controale ActiveX <sup>24.10</sup>

Abilitatea de a crea CommandButton controale ActiveX a fost introdusă prin adăugarea unei noi metode publice [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl) și a unei noi clase publice [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### Controlați Vizibilitatea Formei <sup>24.10</sup>

O nouă proprietate publică [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden) a fost adăugată pentru a controla vizibilitatea formelor.

#### Modificări în graficele Pie și Doughnut <sup>24.10</sup>

Mai multe proprietăți publice noi au fost adăugate la graficele format Pie și Doughnut.

### Conversia, încărcarea și salvarea documentelor

#### Subliniați formatarea la încărcarea fișierelor Markdown <sup>24.9</sup>

Opțiunea de a recunoaște formatarea sublinierii la încărcarea documentelor Markdown a fost încorporată prin adăugarea unei noi proprietăți publice [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### Exportarea tabelelor ca HTML la salvarea în Markdown <sup>24.10</sup>

O opțiune de a exporta tabele ca HTML la salvarea documentelor în format Markdown a fost implementată prin adăugarea unei noi proprietăți publice [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml) și a unei enumerări [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### Semnături Digitale

#### Semnați documente cu XAdES-EPES <sup>24.9</sup>

Abilitatea de a semna documente cu XAdES-EPES Nivel XML-DSig semnături a fost introdusă prin adăugarea unei noi proprietăți publice [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) și a unei noi enumerări publice [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Altele

* O nouă metodă publică [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) a fost adăugată la group shapes. <sup>24.9</sup>
* O nouă metodă publică [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) a fost adăugată pentru a insera **StructuredDocumentTags** într-un document. <sup>24.9</sup>
* Accesul Public la separatoarele de note de subsol/note de final a fost asigurat prin adăugarea câtorva clase și proprietăți publice. <sup>24.9</sup>
* Capacitatea de a grupa forme individuale, group shapes împreună și de a grupa direct ambele forme și group shapes a fost introdusă prin adăugarea metodei [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...). <sup>24.10</sup>
* Manipularea codificării Big5 pentru TrueType tabele cmap a fost îmbunătățită. <sup>24.10</sup>
* Suportul pentru fonturile taiwaneze învechite a fost îmbunătățit. <sup>24.10</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru Java 24.9 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 24.10 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words pentru Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 extinde opțiunile pentru ansambluri, îmbunătățește capacitățile de redare și extinde alte opțiuni.

Aspose.Words 24.6 îmbunătățește opțiunile de redare, îmbunătățește funcționalitatea de căutare și comparare și extinde alte câteva caracteristici.

Aspose.Words 24.7 modifică modul în care lucrați cu ActiveX, extinde capacitățile de redare, precum și exportul în formatele Markdown și XLSX.

Aspose.Words 24.8 îmbunătățește personalizarea diagramelor cu un control precis asupra etichetelor axelor, extinde gestionarea fonturilor, îmbunătățește manipularea structurii documentelor și adaugă noi capabilități pentru exportul HTML/XAML, funcționalitatea PDF, conversia documentelor și semnăturile digitale.

### Formate Acceptate

Începând cu versiunea 24.7, exportul în PDF/UA-2 este acceptat pentru a asigura accesibilitatea utilizatorilor cu dizabilități.

### Redare și imprimare

#### Modificări în diagrame, forme și DrawingML <sup>24.5</sup>

- DrawingML a fost implementată redarea efectelor pentru SVG grafică, extinzând funcționalitatea anterioară limitată la imagini.
- Suportul pentru crearea diagramelor combinate și ajustarea proprietăților, cum ar fi lățimea decalajului, suprapunerea și scala de bule în cadrul grupurilor de serii, a fost introdus prin adăugarea claselor [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) și [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) și a proprietății [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups).
- Funcționalitatea de manipulare a efectului SoftEdge al formelor a fost implementată prin adăugarea clasei [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- Abilitatea de a modifica valorile de ajustare a formelor a fost implementată prin adăugarea claselor publice [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) și [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) și a proprietății [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments).

#### Modificări în diagrame, forme și desen <sup>24.6</sup>

- Capacitățile de cartografiere au fost îmbunătățite. Acum Puteți crea o varietate mai mare de diagrame, inclusiv *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* diagrame, *Box & Whisker* diagrame, *Waterfalls* și *Funnels*. Acest lucru vă permite să vizualizați datele într-un mod mai divers și mai informativ.
- Controlul culorilor pentru formatarea umbrelor a fost îmbunătățit. Puteți obține un control mai precis asupra aspectului documentelor dvs. accesând culorile umbrelor.
- Creșterea performanței pentru redarea fundalului a fost îmbunătățită. Puteți accelera semnificativ redarea fundalurilor care conțin elemente mici datorită tehnologiei native de placare.
- Au fost adăugate gradiente realiste pentru forme. Acum Puteți crea DML forme cu gradiente neliniare, imitând stilul vizual al Microsoft Word pentru un aspect mai lustruit.

#### Personalizarea Etichetelor De Date Grafice <sup>24.7</sup>

A fost adăugată posibilitatea de a personaliza etichetele de date grafice, cum ar fi **Orientation** și **Rotation**.

#### Styling număr personalizat pentru nivelurile de listă <sup>24.7</sup>

A fost adăugat un setter pentru proprietatea publică [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Acum Puteți defini un stil de număr personalizat pentru nivelurile listei.

#### Modificări în lucrul cu ActiveX <sup>24.7</sup>

* Proprietățile obiectelor ActiveX pot fi acum modificate, oferindu-vă mai mult control asupra comportamentului lor.
* A fost adăugată posibilitatea de a modifica valoarea butonului Radio ActiveX control pentru a permite interacțiunea dinamică.
* A fost adăugată posibilitatea de a comuta un ActiveX checkbox la "verificat" sau "debifat".

#### Controlul asupra axei diagramei bifați etichetele orientare și rotație <sup>24.8</sup>

A fost adăugat un control precis asupra orientării și rotației etichetelor de bifare a axei diagramei pentru o personalizare mai convenabilă a diagramei – clasa [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) a fost extinsă cu noi proprietăți **Orientation** și **Rotation**.

#### Înlocuirea Backslash-ului cu semnul Yen <sup>24.8</sup>

Exportul compatibil cu HTML și XAML pentru înlocuirea caracterului backslash cu semnul Yen a fost îmbunătățit. Pentru a realiza acest lucru, proprietatea **ReplaceBackslashWithYenSign** a fost adăugată la clasele [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) și [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Utilizarea etichetelor SDT ca nume de câmpuri de formular atunci când exportați în PDF <sup>24.8</sup>

PDF exportul cu suport pentru utilizarea etichetelor SDT ca nume de câmpuri de formular a fost îmbunătățit prin adăugarea unei noi proprietăți **UseSdtTagAsFormFieldName** la clasa [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Conversia, încărcarea și salvarea documentelor

#### Exportarea linkurilor în format Markdown <sup>24.7</sup>

Capacitatea de a controla exportul de link-uri în format Markdown a fost adăugată prin implementarea proprietății [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode 24.8 <sup>24.8</sup>

A fost introdusă o nouă clasă **LowCode.Converter**, concepută pentru a oferi un set de metode pentru conversia diferitelor tipuri de documente cu o singură linie de cod.

### Căutați și comparați

#### Opțiuni Avansate De Comparație <sup>24.6</sup>

A fost adăugată capacitatea de a eficientiza fluxurile de lucru de analiză a datelor cu funcționalitate îmbunătățită de comparație. Aceasta include o nouă opțiune [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) și o interfață reproiectată pentru comparații avansate.

### Altele

* Funcția de eliminare a paginilor goale dintr-un document a fost implementată prin adăugarea metodei [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* Capacitatea de a verifica prezența macrocomenzilor VBA fără a încărca un document a fost furnizată prin adăugarea proprietății [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros). <sup>24.5</sup>
* Păstrarea numerotare sursă în timp ce inserarea unui document folosind motorul de raportare LINQ este acum susținută. <sup>24.5</sup>
* A fost adăugată o nouă proprietate [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) - Aceasta oferă un marcaj de timp mai precis pentru comentarii, îmbunătățind organizarea și trasabilitatea. <sup>24.6</sup>
* Motorul de raportare LINQ a fost îmbunătățit. S-a făcut eliminarea selectivă a paragrafelor goale și definirea mesajelor personalizate pentru membrii obiectelor lipsă, ceea ce a dus la rapoarte mai curate și mai informative. <sup>24.6</sup>
* Formatul datetime este acum detectat automat pentru export fără sudură în format XLSX. <sup>24.7</sup>
* Proprietatea publică [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), care vă permite să verificați dacă un proiect VBA este protejat, a fost adăugat. <sup>24.7</sup>
* Informațiile despre fonturi au fost extinse cu proprietatea **EmbeddingLicensingRights** adăugată la clasele [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) și [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* A fost adăugată o modalitate de a șterge eficient anteturile și subsolurile secțiunilor, păstrând în același timp filigranele, pentru a lucra mai precis cu structura documentelor. Pentru a șterge anteturile și subsolurile secțiunilor, utilizați noua metodă publică **ClearHeadersFooters**. <sup>24.8</sup>
* Semnarea digitală a documentelor XPS folosind [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) a fost activată – o nouă proprietate **DigitalSignatureDetails** a fost adăugată în acest scop. <sup>24.8</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru Java 24.5 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 24.6 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 24.7 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 24.8 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words pentru Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 îmbunătățește experiența în jurul gestionarea culorilor accident vascular cerebral, îmbunătățește OLE obiecte și LINQ raportare,precum și introduce o nouă Bibliografie surse publice API.

Aspose.Words 24.2 diagrame extinse API, gestionarea stilului și LINQ opțiuni. Această versiune a Aspose.Words a introdus, de asemenea, capacitatea de a specifica SvgSaveOptions în timpul redării, controlul mai flexibil al încărcării fișierelor Markdown și lucrul cu textul de referință pentru notele de subsol și notele de final.

Aspose.Words 24.3 introduce un nou TIFF cititor / scriitor și emularea operațiilor raster binare pentru WMF metafișiere. Aspose.Words 24.3 continuă, de asemenea, să extindă graficele API.

Aspose.Words 24.4 îmbunătățește formatele de salvare, unele opțiuni de redare, precum și îmbunătățește lucrul cu semnăturile digitale.

### Formate Acceptate <sup>24.4</sup>

Formatul modern de imagine **WebP** este acum acceptat în Aspose.Words. Acum Puteți citi și insera imagini WebP în documente, precum și puteți salva imagini în format WebP.

### Redare și imprimare

#### Controlul Culorii Cursei <sup>24.1</sup>

Clasa [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) a fost extinsă cu un set de noi proprietăți publice legate de gestionarea culorilor stroke: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) și [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) și [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### DrawingML Grafice API Extensie <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** continuă să fie extins.

#### Încorporați fonturile declarate în @font-face reguli <sup>24.4</sup>

Adaugata o capacitate de a încorpora fonturile declarate în @font-face Reguli în definițiile font documentului rezultat a fost introdus prin adăugarea unui nou [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules) proprietate.

#### Lucrați cu formatarea strălucirii și reflecției <sup>24.4</sup>

A fost implementată capacitatea de a lucra cu formatarea strălucirii și reflexiei pentru un obiect de desen.

### Încărcarea și salvarea documentelor

#### Specificați SvgSaveOptions În Timpul Redării <sup>24.2</sup>

Capacitatea de a specifica [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) în timpul randării a fost adăugată folosind [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) și [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) metode.

#### Păstrați liniile goale la încărcarea fișierelor Markdown <sup>24.2</sup>

A fost adăugată posibilitatea de a păstra liniile goale la încărcarea fișierelor Markdown.

#### Un Nou TIFF Cititor / Scriitor <sup>24.3</sup>

Un nou TIFF cititor / scriitor pentru Aspose.Words pentru .NET Standard, .NET 6 și mai târziu a fost dezvoltat. Aspose.Words pentru .NET 24.3 s-a adăugat suport pentru citirea imaginilor TIFF cu tipurile de compresie JPEG și vechi JPEG și, de asemenea, a îmbunătățit semnificativ calitatea operațiilor de citire și scriere.

### Altele

* Capacitatea de a modifica textul controlului `TextBox` OLE a fost introdusă prin adăugarea unei noi proprietăți [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) la noua clasă [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/). 24.1 <sup>24.1</sup>
* Bibliografia surse publice API a fost implementat prin adăugarea de câteva noi [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) și [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) clase și o enumerare [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/), precum și prin adăugarea unei noi proprietăți [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) la clasa [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). <sup>24.1</sup>
* A fost furnizat un API pentru a limita accesul la membrii de tip folosind sintaxa șablonului pentru motorul de raportare LINQ. <sup>24.1</sup>
* Noile proprietăți publice [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) și [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pentru gestionarea îmbunătățită a stilului au fost adăugate la clasa [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* Funcționalitatea de a prelua textul real al marcajului de referință pentru notele de subsol și notele de final a fost îmbunătățită cu proprietatea [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) și metoda [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Compatibilitatea cu graficele `Word 2016` pentru `LINQ Reporting Engine` a fost activată. <sup>24.2</sup>
* A fost implementată emularea operațiilor raster binare pentru WMF metafișiere. <sup>24.3</sup>
* Capacitatea de a defini opțiunile de semnătură pentru documentele din **SaveOptions** a fost activată prin adăugarea unei noi clase [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) cu noi Membri publici, precum și prin adăugarea de noi proprietăți la clasele [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) și [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru Java 24.1 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 24.2 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 24.3 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 24.4 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words pentru Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 extinde opțiunile de redare, emularea De redare metafile și markdown opțiuni de salvare.

Aspose.Words 23.10 îmbunătățește redarea, extinde opțiunile pentru încărcarea și salvarea documentelor și permite utilizatorilor să îmbine documente în moduri noi.

Aspose.Words 23.11 îmbunătățește lucrul cu revizii, XLSX format și fonturi pe legenda diagramei cu opțiuni suplimentare.

Aspose.Words 23.12 introduce noi proprietăți și enumerări pentru lucrul cu documentele PDF, Suport pentru imaginile WebP și Biblioteca Bouncy Castle actualizată.

### Redare și imprimare

#### Personalizarea titlurilor axelor în DrawingML diagrame <sup>23.9</sup>

Capacitatea de a personaliza titlurile Axei în graficele DrawingML a fost introdusă prin implementarea unei noi clase publice [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) și [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) proprietate.

#### Determinarea poziției verticale a fonturilor într - un paragraf <sup>23.9</sup>

Acum este posibil să se definească poziția verticală a fonturilor într-un paragraf folosind noua proprietate publică [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) și Noua enumerare [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/).

#### Controlul Culorilor Din Prim Plan <sup>23.10</sup>

Capacitatea de a prelua culoarea din prim plan fără modificatori a fost adăugată la clasele [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) și [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) prin proprietatea **BaseForeColor**.

#### Extinderea funcționalității diagramelor <sup>23.10</sup>

Funcționalitatea claselor [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) și [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) a fost extinsă cu noi metode și proprietăți.

#### Reglați automat și potriviți o imagine într-o formă <sup>23.10</sup>

O modalitate simplă de a regla și potrivi automat o imagine într-o anumită formă a fost furnizată prin noua metodă [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape).

#### Formatarea implicită a fontului pentru DrawingML intrările din legenda diagramei <sup>23.11</sup>

Abilitatea de a specifica formatarea implicită a fontului pentru intrările de legendă ale graficelor DrawingML a fost adăugată prin proprietatea **Font**. Această caracteristică facilitează un aspect mai raționalizat și mai consistent pentru elementele graficului, îmbunătățind estetica generală a documentului.

#### Specificați aspectul paginii la deschiderea PDF În Reader <sup>23.12</sup>

Abilitatea de a specifica aspectul paginii care va fi utilizat la deschiderea unui document într-un cititor PDF a fost adăugată prin introducerea unei noi proprietăți [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) la clasa [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) și introducerea unei noi enumerări [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/).

### Încărcarea și salvarea documentelor

#### Specificarea unui nume de Folder pentru a construi imaginea URIs în Markdown <sup>23.9</sup>

Clasa [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) a fost extinsă prin includerea proprietății [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias), care permite specificarea numelui folderului folosit pentru a construi imaginea URIs scrisă în documentul Markdown.

#### Reduceți Dimensiunea De Ieșire PDF <sup>23.10</sup>

Au fost implementate diferite optimizări de redare PDF pentru a reduce dimensiunea ieșirii atunci când se utilizează setările [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput).

#### Recunoașteți Hyperlink-urile la încărcarea documentelor TXT <sup>23.10</sup>

Caracteristica de recunoaștere a hyperlink-urilor la încărcarea documentelor TXT a fost implementată prin adăugarea unei noi proprietăți [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks).

### Altele

- A fost implementată emularea De redare Metafile pentru a determina dimensiunea rasterizării, în special pentru WMF lățimea stiloului și EMF lățimea stiloului cosmetic. Pentru a realiza acest lucru, proprietatea **ScaleWmfFontsToMetafileSize** a fost înlocuită cu proprietatea [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) și proprietatea [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) a fost adăugată. <sup>23.9</sup>
- O metodă simplificată pentru inserarea unui document într-un alt document la poziția curentă a cursorului a fost introdusă folosind metoda [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions). <sup>23.10</sup>
- Abilitatea de a accesa și modifica proprietățile stilului a fost adăugată prin introducerea noii proprietăți [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked). <sup>23.10</sup>
- Un parametru de tip generic a fost adăugat la metodele clasei [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/). <sup>23.10</sup>
- O modalitate de a controla când o anumită revizuire ar trebui acceptată/respinsă sau nu a fost implementată prin utilizarea metodelor [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) și [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria). Această îmbunătățire oferă utilizatorilor un control mai fin asupra procesului de revizuire. <sup>23.11</sup>
- Abilitatea de a scrie toate secțiunile unui document pe aceeași foaie de lucru XLSX a fost furnizată prin noul tip de enumerare [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) și noua proprietate [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode). <sup>23.11</sup>
- A fost introdus suport pentru imaginea WebP. Vă rugăm să rețineți că această caracteristică este disponibilă numai pentru .NetStandart și .NET6+ versiuni. <sup>23.12</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru Java 23.9 Note De Lansare](/words/java/aspose-words-for-java-23-9-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.10 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.11 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.12 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words pentru Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 îmbunătățește capacitatea de a lucra cu date din seria de diagrame și capacitatea de a lucra cu documente ODT, precum și de a îmbunătăți anteturile/subsolurile și împachetarea textului acestora.

Aspose.Words 23.6 extinde opțiunile de redare, adaugă un nou format de export, îmbunătățește LINQ raportare și LowCode Instrumente.

Aspose.Words 23.7 îmbunătățește capacitățile de raportare, adaugă un nou format de export și introduce modificări în lucrul cu tabele și semnături digitale.

Aspose.Words 23.8 extinde capacitățile diferitelor formate, îmbunătățește redarea și adaugă noi opțiuni pentru lucrul cu câmpurile.

### Formate Acceptate

* Începând cu versiunea 23.6, este posibil să salvați un document în format XLSX. Acum Puteți converti documentele în format Excel. <sup>23.6</sup>

* Începând cu versiunea 23.7, este posibil să salvați o pagină sau o formă de document în format EPS. <sup>23.7</sup>

* ### Caracteristici De Format Nou

  - A fost introdusă funcționalitatea de a genera automat cuprins (TOC) pentru documentele MOBI. <sup>23.8</sup>
  - Constructorul [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) a fost extins cu [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - Modelarea textului vertical pentru EMF metafișiere a fost implementată. <sup>23.8</sup>

### Redare

#### Obțineți și modificați datele din seria diagramelor <sup>23.5</sup>

Caracteristica de a obține și modifica datele din seria de diagrame a fost furnizată prin adăugarea:

- clase noi: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- noi tipuri de enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Suport pentru Tipografie avansată <sup>23.6</sup>

A fost adăugat suport pentru Tipografie avansată în WMF, EMF și EMF+ redare.

#### Conținut colorat pe pagină <sup>23.6</sup>

Proprietatea publică [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), care indică dacă pagina este colorată sau nu, a fost adăugată.

#### Formatarea etichetelor de date grafice <sup>23.6</sup>

A fost implementată posibilitatea de a seta formatarea de umplere, stroke și callout pentru etichetele de date grafice.

### Mail Merge și raportare

#### Inserare dinamică HTML pentru motorul de raportare LINQ <sup>23.6</sup>

A fost adăugat un nou mod de inserare dinamică HTML pentru motorul de raportare LINQ.

#### Mustache Suport Etichete <sup>23.7</sup>

Etichetele Mustache sunt acum acceptate în metodele [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) și [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String).

#### LINQ Raportarea Actualizărilor De Sintaxă A Șablonului Motorului <sup>23.7</sup>

Sintaxa șablonului motorului de raportare LINQ acceptă acum metodele de extensie `ElementAt` și ElementAtOrDefault.

#### Specificarea dimensiunii imaginilor redate <sup>23.8</sup>

A fost introdusă o nouă proprietate publică **ImageSize** pentru specificarea dimensiunii imaginilor redate în pixeli.

#### Păstrați spațiile albe pentru valorile șirului JSON – LINQ <sup>23.8</sup>

O opțiune a fost adăugată la motorul de raportare LINQ pentru a păstra spațiile albe pentru valorile șirului JSON.

### LowCode <sup>23.6</sup>

Au fost adăugate noi metode LowCode menite să îmbine diferite tipuri de documente într-un singur document de ieșire.

### Altele

- A fost implementat suport pentru împachetarea textului în anteturi/subsoluri. <sup>23.5</sup>
- Capacitatea de a elimina semnăturile digitale din documentele ODT a fost adăugată prin metoda [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream). <sup>23.5</sup>
- Proprietatea publică [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) pentru a obține textul de bază și rubin al Ghidului fonetic [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) a fost adăugată. <sup>23.5</sup>
- Capacitatea de a prelua o valoare de semnătură digitală dintr-un document semnat digital ca matrice de octeți a fost adăugată prin introducerea unei noi proprietăți [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue). <sup>23.7</sup>
- Clasele [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) și [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) au fost extinse cu noi Membri publici– [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), și [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- A fost adăugat suport pentru câmpurile CITATION și BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru Java 23.5 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.6 Note De Lansare](/words/java/aspose-words-for-java-23-6-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.7 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.8 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words pentru Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 îmbunătățește performanța emulării operațiilor raster, precum și îmbunătățește exportul și calitatea redării documentelor.

Aspose.Words 23.2 introduce salvarea documentelor în formatul MOBI, îmbunătățește redarea diagramei și face modificări notabile la detaliile aspectului documentului.

Aspose.Words 23.3 îmbunătățește importul și salvarea documentelor cu proprietăți noi și, de asemenea, îmbunătățește calitatea muncii cu culoarea de fundal și prim plan și gradientul radial.

Aspose.Words 23.4 îmbunătățește calculul unor parametri și poziționarea tabelului și a textului înconjurător.

### Îmbunătățiri Ale Performanței

#### Emularea operațiilor Raster <sup>23.1</sup>

Performanța și calitatea emulării operațiilor raster cu Metafile au fost îmbunătățite semnificativ.

### Formate Acceptate

#### Export în MOBI <sup>23.2</sup>

Începând cu versiunea 23.2, este posibil să salvați un document în format MOBI (numit șiPRC, AZW – Amazon formatul de fișier al cărții electronice Kindle). Acum Puteți nu numai să încărcați documente MOBI, ci și să exportați fișierele în format MOBI.

### Redare

#### Lucrați cu culori tematice de umbrire <sup>23.1</sup>

A fost implementată capacitatea de a lucra cu culori tematice de umbrire.

#### Suport pentru coeficientul R-pătrat în DML diagrame <sup>23.1</sup>

Suport de coeficient R-pătrat în DML etichete Trendline diagramă atunci când a fost adăugat De redare.

#### Îmbunătățiri De Redare A Diagramelor <sup>23.2</sup>

De la 23.2 redarea graficului a fost îmbunătățită semnificativ.

#### Controlul culorilor de fundal și prim plan <sup>23.3</sup>

Clasa [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) a fost extinsă cu un set de noi proprietăți publice legate de culorile de fundal și prim plan: **ForeThemeColor** și **BackThemeColor**, **ForeTintAndShade** și **BackTintAndShade**.

#### Gradienți radiali cu Shader-ul nativ `SkiaSharp` <sup>23.3</sup>

A fost implementată redarea gradienților radiali cu shader-ul nativ `SkiaSharp` Pentru .NET Standard.

#### Distanța dintre tabel și textul înconjurător <sup>23.4</sup>

Capacitatea de a seta distanța dintre tabel și textul înconjurător a fost adăugată prin introducerea de noi proprietăți în clasa [Table](https://reference.aspose.com/words/java/com.aspose.words/table/): [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), și [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Încărcarea și salvarea documentelor

#### Generați `TOC` pentru AZW3 documente <sup>23.1</sup>

Capacitatea de a genera `TOC` (Cuprins) pentru documentele AZW3 a fost adăugată prin utilizarea proprietății [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel).

#### Exportarea articolelor din listă în Markdown <sup>23.1</sup>

O modalitate de a controla exportul articolelor din listă în formatul Markdown a fost furnizată prin adăugarea proprietății [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) la clasa [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/).

#### Notificări Privind Progresul Salvării Documentelor <sup>23.3</sup>

Salvarea notificărilor de progres pentru formatele MOBI și AZW3 a fost implementată.

#### Ajustarea spațiului dintre propoziții și cuvinte <sup>23.3</sup>

Capacitatea de a specifica dacă se ajustează automat propoziția și spațierea cuvintelor la importul documentului a fost adăugată prin introducerea proprietății **AdjustSentenceAndWordSpacing**.

### Altele

- Capacitatea de a specifica ajustarea spațierea caracterelor unui document a fost adăugat prin [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) implementarea proprietății <sup>23.2</sup>
- Modul de a instrui Aspose.Words dacă să includă casete de text, note de subsol și note de final în Statisticile numărului de cuvinte a fost furnizat prin adăugarea proprietății [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) <sup>23.2</sup>
- O nouă opțiune pentru un stil de document, care permite specificarea dacă stilul este redefinit automat pe baza valorii corespunzătoare, a fost introdusă prin proprietatea [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) <sup>23.2</sup>
- Abilitatea de a determina dacă [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) este o rulare a ghidului fonetic a fost adăugată folosind proprietatea **IsPhoneticGuide** <sup>23.4</sup>
- O modalitate simplă de a lucra cu serii și axe de diagrame combinate a fost implementată prin introducerea clasei **ChartAxisCollection** și adăugarea proprietății **Chart.Axes** <sup>23.4</sup>
- Noi proprietăți publice conectate la poziționarea relativă a formei și dimensionarea au fost adăugate la clasa [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) <sup>23.4</sup>
- Precizia și performanța calculului luminozității culorii pentru rezoluția automată a culorilor textului au fost îmbunătățite în conformitate cu cele mai recente versiuni ale Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru Java 23.1 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.2 Note De Lansare](/words/java/aspose-words-for-java-23-2-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.3 Note De Lansare](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

Aflați mai multe despre [Aspose.Words pentru Java 23.4 Note De Lansare](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Vezi Și

{{% alert color="primary" %}}

Această pagină conține cele mai recente știri de lansare din ultimii 2 ani. Pentru detalii despre versiunile anterioare, consultați [Note De Lansare](https://releases.aspose.com/words/java/release-notes/) paginile din secțiunile relevante.

{{% /alert %}}
