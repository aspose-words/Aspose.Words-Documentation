---
title: Ce este nou
second_title: Aspose.Words pentru .NET
articleTitle: What ' s new in Aspose.Words pentru .NET
linktitle: What ' s new in Aspose.Words pentru .NET
type: docs
description: "Aspose.Words pentru .NET se extinde și îmbunătățește zilnic. Pe această pagină, puteți afla despre caracteristicile uriașe și cele mai interesante ale produsului."
weight: 10
url: /ro/net/what-s-new-in-aspose-words-for-net/
---

Această pagină descrie cele mai interesante caracteristici noi Aspose.Words introduse în versiunile recente.

## Aspose.Words pentru .NET 24.9, 24.10, 24.11

Aspose.Words 24.9 introduce group shape Inserare și StructuredDocumentTag Inserare prin DocumentBuilder, îmbunătățește randarea diagramelor radiale cu gradații, îmbunătățește semnăturile digitale cu suport XAdES-EPES, adaugă Markdown recunoașterea sublinierii și oferă acces la separatoarele de notă de subsol/notă finală.

Aspose.Words 24.10 introduce suport îmbunătățit pentru controlul ActiveX cu crearea CommandButton, Controlul vizibilității formei noi, capacitatea de a group shapes, exportul Markdown îmbunătățit pentru tabele, formatarea diagramelor pentru graficele Pie și Doughnut, o mai bună manipulare a codificării Big5 și suport pentru fonturile taiwaneze învechite.

Aspose.Words 24.11 introduce rezumatul documentelor alimentat de AI, opțiuni de redare îmbunătățite, acces îmbunătățit la proprietățile documentului și subtitrarea ActiveX control.

### AI - funcții alimentate <sup>24.11</sup>

Suportul pentru rezumarea documentelor folosind **OpenAI** și **Google** modele de limbaj generativ a fost integrat prin adăugarea spațiului de nume [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) cu membrii săi publici.

### Redare și imprimare

#### Gradații pe diagrame radiale <sup>24.9</sup>

A fost implementată redarea gradărilor pe diagrame radiale.

#### CommandButton Controale ActiveX <sup>24.10</sup>

Abilitatea de a crea CommandButton controale ActiveX a fost introdusă prin adăugarea unei noi metode publice [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) și a unei noi clase publice [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/).

#### Controlați Vizibilitatea Formei <sup>24.10</sup>

O nouă proprietate publică [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) a fost adăugată pentru a controla vizibilitatea formelor.

#### Modificări în graficele Pie și Doughnut <sup>24.10</sup>

Mai multe proprietăți publice noi au fost adăugate la graficele format Pie și Doughnut.

#### Controlați redarea PDF frontiere câmp formular alegere <sup>24.11</sup>

O nouă opțiune pentru a controla redarea PDF choice form field borders a fost implementată prin adăugarea unei noi opțiuni publice [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/).

#### Obțineți și setați codurile de Format pentru datele grafice <sup>24.11</sup>

Abilitatea de a obține și seta coduri de format pentru datele grafice a fost adăugată prin implementarea proprietății [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) în clasele [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/) și [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/).

#### Render diagrame histograma cu pubele și etichete <sup>24.11</sup>

Histograma diagramă De redare a fost îmbunătățită prin a permite un anumit număr de containere și etichete.

### Conversia, încărcarea și salvarea documentelor

#### Subliniați formatarea la încărcarea fișierelor Markdown <sup>24.9</sup>

Opțiunea de a recunoaște formatarea sublinierii la încărcarea documentelor Markdown a fost încorporată prin adăugarea unei noi proprietăți publice [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

#### Exportarea tabelelor ca HTML la salvarea în Markdown <sup>24.10</sup>

O opțiune de a exporta tabele ca HTML la salvarea documentelor în format Markdown a fost implementată prin adăugarea unei noi proprietăți publice [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) și a unei enumerări [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/).

#### Export PDF cu structură logică actualizată <sup>24.11</sup>

PDF exportul a fost îmbunătățit prin includerea proprietăților titlului tabelului ca PDF titluri de elemente de structură logică.

### Semnături Digitale

#### Semnați documente cu XAdES-EPES <sup>24.9</sup>

Abilitatea de a semna documente cu XAdES-EPES Nivel XML-DSig semnături a fost introdusă prin adăugarea unei noi proprietăți publice [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) și a unei noi enumerări publice [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Altele

* O nouă metodă publică [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) a fost adăugată la group shapes. <sup>24.9</sup>
* O nouă metodă publică [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) a fost adăugată pentru a insera **StructuredDocumentTags** într-un document. <sup>24.9</sup>
* Accesul Public la separatoarele de note de subsol/note de final a fost asigurat prin adăugarea câtorva clase și proprietăți publice. <sup>24.9</sup>
* Capacitatea de a grupa forme individuale, group shapes împreună și de a grupa direct ambele forme și group shapes a fost introdusă prin adăugarea metodei [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1). <sup>24.10</sup>
* Manipularea codificării Big5 pentru TrueType tabele cmap a fost îmbunătățită. <sup>24.10</sup>
* Suportul pentru fonturile taiwaneze învechite a fost îmbunătățit. <sup>24.10</sup>
* Pentru a accesa proprietățile extinse ale documentului, proprietățile numai în citire au fost adăugate la clasa [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/). <sup>24.11</sup>
* Setarea subtitrărilor pentru controalele ActiveX a fost activată prin adăugarea unui nou setter public la proprietatea [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru .NET 24.9 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 24.10 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 24.11 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/).

{{% /alert %}}

## Aspose.Words Pentru .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 extinde opțiunile pentru ansambluri, îmbunătățește capacitățile de redare și extinde alte opțiuni.

Aspose.Words 24.6 îmbunătățește opțiunile de redare, îmbunătățește funcționalitatea de căutare și comparare și extinde alte câteva caracteristici.

Aspose.Words 24.7 modifică modul în care lucrați cu ActiveX, extinde capacitățile de redare, precum și exportul în formatele Markdown și XLSX.

Aspose.Words 24.8 îmbunătățește personalizarea diagramelor cu un control precis asupra etichetelor axelor, extinde gestionarea fonturilor, îmbunătățește manipularea structurii documentelor și adaugă noi capabilități pentru exportul HTML/XAML, funcționalitatea PDF, conversia documentelor și semnăturile digitale.

### Formate Acceptate

Începând cu versiunea 24.7, exportul în PDF/UA-2 este acceptat pentru a asigura accesibilitatea utilizatorilor cu dizabilități.

### Platforme <sup>24.5</sup>

.NET 7.0/8.0 ansamblurile au fost incluse în pachetul Aspose.Words NuGet.

### Redare și imprimare

#### Modificări în diagrame, forme și DrawingML <sup>24.5</sup>

* DrawingML a fost implementată redarea efectelor pentru SVG grafică, extinzând funcționalitatea anterioară limitată la imagini.
* Suportul pentru crearea diagramelor combinate și ajustarea proprietăților, cum ar fi lățimea decalajului, suprapunerea și scala de bule în cadrul grupurilor de serii, a fost introdus prin adăugarea claselor [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) și [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) și a proprietății [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* Funcționalitatea de manipulare a efectului SoftEdge al formelor a fost implementată prin adăugarea clasei [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* Abilitatea de a modifica valorile de ajustare a formelor a fost implementată prin adăugarea claselor publice [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) și [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) și a proprietății [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/).

#### Modificări în diagrame, forme și desen <sup>24.6</sup>

* Capacitățile de cartografiere au fost îmbunătățite. Acum Puteți crea o varietate mai mare de diagrame, inclusiv *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* diagrame, *Box & Whisker* diagrame, *Waterfalls* și *Funnels*. Acest lucru vă permite să vizualizați datele într-un mod mai divers și mai informativ.
* Controlul culorilor pentru formatarea umbrelor a fost îmbunătățit. Puteți obține un control mai precis asupra aspectului documentelor dvs. accesând culorile umbrelor.
* Creșterea performanței pentru redarea fundalului a fost îmbunătățită. Puteți accelera semnificativ redarea fundalurilor care conțin elemente mici datorită tehnologiei native de placare.
* Au fost adăugate gradiente realiste pentru forme. Acum Puteți crea DML forme cu gradiente neliniare, imitând stilul vizual al Microsoft Word pentru un aspect mai lustruit.

#### Personalizarea Etichetelor De Date Grafice <sup>24.7</sup>

A fost adăugată posibilitatea de a personaliza etichetele de date grafice, cum ar fi **Orientation** și **Rotation**.

#### Styling număr personalizat pentru nivelurile de listă <sup>24.7</sup>

A fost adăugat un setter pentru proprietatea publică [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/). Acum Puteți defini un stil de număr personalizat pentru nivelurile listei.

#### Modificări în lucrul cu ActiveX <sup>24.7</sup>

* Proprietățile obiectelor ActiveX pot fi acum modificate, oferindu-vă mai mult control asupra comportamentului lor.
* A fost adăugată posibilitatea de a modifica valoarea butonului Radio ActiveX control pentru a permite interacțiunea dinamică.
* A fost adăugată posibilitatea de a comuta un ActiveX checkbox la "verificat" sau "debifat".

#### Controlul asupra axei diagramei bifați etichetele orientare și rotație <sup>24.8</sup>

A fost adăugat un control precis asupra orientării și rotației etichetelor de bifare a axei diagramei pentru o personalizare mai convenabilă a diagramei – clasa [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) a fost extinsă cu noi proprietăți [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) și [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Înlocuirea Backslash-ului cu semnul Yen <sup>24.8</sup>

Exportul compatibil cu HTML și XAML pentru înlocuirea caracterului backslash cu semnul Yen a fost îmbunătățit. Pentru a realiza acest lucru, proprietatea **ReplaceBackslashWithYenSign** a fost adăugată la clasele [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) și [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Utilizarea etichetelor SDT ca nume de câmpuri de formular atunci când exportați în PDF <sup>24.8</sup>

PDF exportul cu suport pentru utilizarea etichetelor SDT ca nume de câmpuri de formular a fost îmbunătățit prin adăugarea unei noi proprietăți [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) la clasa [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Conversia, încărcarea și salvarea documentelor

#### Exportarea linkurilor în format Markdown <sup>24.7</sup>

Capacitatea de a controla exportul de link-uri în format Markdown a fost adăugată prin implementarea proprietății [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode 24.8 <sup>24.8</sup>

A fost introdusă o nouă clasă [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), concepută pentru a oferi un set de metode pentru conversia diferitelor tipuri de documente cu o singură linie de cod.

### Căutați și comparați

#### Opțiuni Avansate De Comparație <sup>24.6</sup>
A fost adăugată capacitatea de a eficientiza fluxurile de lucru de analiză a datelor cu funcționalitate îmbunătățită de comparație. Aceasta include o nouă opțiune [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) și o interfață reproiectată pentru comparații avansate.

### Altele

* Funcția de eliminare a paginilor goale dintr-un document a fost implementată prin adăugarea metodei [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24.5</sup>
* Capacitatea de a verifica prezența macrocomenzilor VBA fără a încărca un document a fost furnizată prin adăugarea proprietății [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24.5</sup>
* Păstrarea numerotare sursă în timp ce inserarea unui document folosind LINQ motor de raportare este acum susținută. <sup>24.5</sup>
* A fost adăugată o nouă proprietate [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) - Aceasta oferă un marcaj de timp mai precis pentru comentarii, îmbunătățind organizarea și trasabilitatea. <sup>24.6</sup>
* Motorul de raportare LINQ a fost îmbunătățit. S-a făcut eliminarea selectivă a paragrafelor goale și definirea mesajelor personalizate pentru membrii obiectelor lipsă, ceea ce a dus la rapoarte mai curate și mai informative. <sup>24.6</sup>
* Formatul datetime este acum detectat automat pentru export fără sudură în format XLSX. <sup>24.7</sup>
* Proprietatea publică [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), care vă permite să verificați dacă un proiect VBA este protejat, a fost adăugat. <sup>24.7</sup>
* Informațiile despre fonturi au fost extinse cu proprietatea **EmbeddingLicensingRights** adăugată la clasele [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) și [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* A fost adăugată o modalitate de a șterge eficient anteturile și subsolurile secțiunilor, păstrând în același timp filigranele, pentru a lucra mai precis cu structura documentelor. Pentru a șterge anteturile și subsolurile secțiunilor, utilizați noua metodă publică [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* Semnarea digitală a documentelor XPS folosind [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) a fost activată – o nouă proprietate [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) a fost adăugată în acest scop. <sup>24.8</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru .NET 24.5 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 24.6 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 24.7 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 24.8 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words Pentru .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 îmbunătățește experiența în ceea ce privește gestionarea culorilor cursei, îmbunătățește obiectele OLE și raportarea LINQ, precum și introduce un nou `Bibliography Sources` public API.

Aspose.Words 24.2 diagrame extinse API, gestionarea stilului și LINQ opțiuni. Această versiune a Aspose.Words a introdus, de asemenea, capacitatea de a specifica SvgSaveOptions în timpul redării, controlul mai flexibil al încărcării fișierelor Markdown și lucrul cu textul de referință pentru notele de subsol și notele de final.

Aspose.Words 24.3 introduce un nou TIFF cititor / scriitor și emularea operațiilor raster binare pentru WMF metafișiere. Aspose.Words 24.3 continuă, de asemenea, să extindă graficele API.

Aspose.Words 24.4 îmbunătățește formatele de salvare, unele opțiuni de redare, precum și îmbunătățește lucrul cu semnăturile digitale.

### Formate Acceptate <sup>24.4</sup>

Formatul modern de imagine **WebP** este acum acceptat în Aspose.Words Pentru .NET Framework 4.6.2 și mai mare. Acum Puteți citi și insera WebP imagini în documente, precum și salva imagini în format WebP.

Vă rugăm să rețineți că WebP este disponibil în prezent numai în .NET Standard și .NET Framework V4.6.2 și mai sus.

### Redare și imprimare

#### Controlul Culorii Cursei <sup>24.1</sup>

Clasa [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) a fost extinsă cu un set de noi proprietăți publice legate de gestionarea culorilor stroke: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) și [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) și [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### DrawingML Grafice API Extensie <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** continuă să fie extins.

#### Încorporați fonturile declarate în @font-face reguli <sup>24.4</sup>

Adaugata o capacitate de a încorpora fonturile declarate în @font-face Reguli în definițiile font documentului rezultat a fost introdus prin adăugarea unui nou [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) proprietate.

#### Lucrați cu formatarea strălucirii și reflecției <sup>24.4</sup>

A fost implementată capacitatea de a lucra cu formatarea strălucirii și reflexiei pentru un obiect de desen.

### Încărcarea și salvarea documentelor

#### Specificați SvgSaveOptions În Timpul Redării <sup>24.2</sup>

Capacitatea de a specifica [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) în timpul randării a fost adăugată folosind [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) și [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) metode.

#### Păstrați liniile goale la încărcarea fișierelor Markdown <sup>24.2</sup>

A fost adăugată posibilitatea de a păstra liniile goale la încărcarea fișierelor Markdown.

#### Un Nou TIFF Cititor / Scriitor <sup>24.3</sup>

A fost dezvoltat un nou cititor/scriitor TIFF pentru Aspose.Words Pentru .NET Standard, .NET 6 și mai târziu. Aspose.Words pentru .NET 24.3 a adăugat suport pentru citirea imaginilor TIFF cu JPEG și vechi JPEG tipuri de compresie și, de asemenea, a îmbunătățit semnificativ calitatea operațiilor de citire și scriere.

### Altele

* Capacitatea de a modifica textul controlului `TextBox` OLE a fost introdusă prin adăugarea unei noi proprietăți [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) la noua clasă [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* Bibliografia publică API a fost implementată prin adăugarea unui nou spațiu de nume [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) cu noile sale clase și enumerări și prin adăugarea unei noi proprietăți [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) la clasa [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* A fost furnizat un API pentru a limita accesul la membrii de tip folosind sintaxa șablonului pentru `LINQ Reporting Engine`. <sup>24.1</sup>
* Noile proprietăți publice [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) și [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pentru gestionarea îmbunătățită a stilului au fost adăugate la clasa [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* Funcționalitatea de a prelua textul real al marcajului de referință pentru notele de subsol și notele de final a fost îmbunătățită cu proprietatea [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) și metoda [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Compatibilitatea cu graficele `Word 2016` pentru `LINQ Reporting Engine` a fost activată. <sup>24.2</sup>
* A fost implementată emularea operațiilor raster binare pentru WMF metafișiere. <sup>24.3</sup>
* Capacitatea de a defini opțiunile de semnătură pentru documentele din **SaveOptions** a fost activată prin adăugarea unei noi clase [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) cu noi Membri publici, precum și prin adăugarea de noi proprietăți la clasele [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) și [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru .NET 24.1 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 24.2 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 24.3 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 24.4 Note de lansare](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words pentru .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 extinde opțiunile de redare, emularea De redare metafile și markdown opțiuni de salvare.

Aspose.Words 23.10 îmbunătățește redarea, extinde opțiunile pentru încărcarea și salvarea documentelor și permite utilizatorilor să îmbine documente în moduri noi.

Aspose.Words 23.11 îmbunătățește lucrul cu revizii, XLSX format și fonturi pe legenda diagramei cu opțiuni suplimentare.

Aspose.Words 23.12 introduce noi proprietăți și enumerări pentru lucrul cu documentele PDF și OOXML, precum și suport pentru imaginile WebP.

### Redare și imprimare

#### Personalizarea titlurilor axelor în DrawingML diagrame <sup>23.9</sup>

Capacitatea de a personaliza titlurile Axei în graficele DrawingML a fost introdusă prin implementarea unei noi clase publice [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) și [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) proprietate.

#### Determinarea poziției verticale a fonturilor într - un paragraf <sup>23.9</sup>

Acum este posibil să se definească poziția verticală a fonturilor într-un paragraf folosind noua proprietate publică [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) și Noua enumerare [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/).

#### Controlul Culorilor Din Prim Plan <sup>23.10</sup>

Capacitatea de a prelua culoarea din prim plan fără modificatori a fost adăugată la clasele [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) și [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) prin proprietatea **BaseForeColor**.

#### Extinderea funcționalității diagramelor <sup>23.10</sup>

Funcționalitatea claselor [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) și [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) a fost extinsă cu noi metode și proprietăți.

#### Reglați automat și potriviți o imagine într-o formă <sup>23.10</sup>

O modalitate simplă de a regla și potrivi automat o imagine într-o anumită formă a fost furnizată prin noua metodă [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formatarea implicită a fontului pentru DrawingML intrările din legenda diagramei <sup>23.11</sup>

Abilitatea de a specifica formatarea implicită a fontului pentru intrările de legendă ale graficelor DrawingML a fost adăugată prin proprietatea [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Această caracteristică facilitează un aspect mai raționalizat și mai consistent pentru elementele graficului, îmbunătățind estetica generală a documentului.

#### Specificați aspectul paginii la deschiderea PDF În Reader <sup>23.12</sup>

Abilitatea de a specifica aspectul paginii care va fi utilizat la deschiderea unui document într-un cititor PDF a fost adăugată prin introducerea unei noi proprietăți [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) la clasa [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) și introducerea unei noi enumerări [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/).

### Încărcarea și salvarea documentelor

#### Specificarea unui nume de Folder pentru a construi imaginea URIs în Markdown <sup>23.9</sup>

Clasa [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) a fost extinsă prin includerea proprietății [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), care permite specificarea numelui folderului folosit pentru a construi imaginea URIs scrisă în documentul Markdown.

#### Reduceți Dimensiunea De Ieșire PDF <sup>23.10</sup>

Au fost implementate diferite optimizări de redare PDF pentru a reduce dimensiunea ieșirii atunci când se utilizează setările [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### Recunoașteți Hyperlink-urile la încărcarea documentelor TXT <sup>23.10</sup>

Caracteristica de recunoaștere a hyperlink-urilor la încărcarea documentelor TXT a fost implementată prin adăugarea unei noi proprietăți [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Altele

* A fost implementată emularea De redare Metafile pentru a determina dimensiunea rasterizării, în special pentru WMF lățimea stiloului și EMF lățimea stiloului cosmetic. Pentru a realiza acest lucru, proprietatea **ScaleWmfFontsToMetafileSize** a fost înlocuită cu proprietatea [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) și proprietatea [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) a fost adăugată. <sup>23.9</sup>
* O metodă simplificată pentru inserarea unui document într-un alt document la poziția curentă a cursorului a fost introdusă folosind metoda [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Abilitatea de a accesa și modifica proprietățile stilului a fost adăugată prin introducerea noii proprietăți [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/). <sup>23.10</sup>
* Un parametru de tip generic a fost adăugat la metodele clasei [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/). <sup>23.10</sup>
* O modalitate de a controla când o anumită revizuire ar trebui acceptată/respinsă sau nu a fost implementată prin utilizarea metodelor [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) și [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Această îmbunătățire oferă utilizatorilor un control mai fin asupra procesului de revizuire. <sup>23.11</sup>
* Abilitatea de a scrie toate secțiunile unui document pe aceeași foaie de lucru XLSX a fost furnizată prin noul tip de enumerare [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) și noua proprietate [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* O modalitate de a controla modul în care vor fi utilizate extensiile de format ZIP64 pentru documentele OOXML a fost implementată prin noua proprietate Zip64Mode a clasei `OoxmlSaveOptions` și Noua enumerare Zip64Mode. <sup>23.12</sup>
* A fost introdus suport pentru imaginea WebP. Vă rugăm să rețineți că această caracteristică este disponibilă numai pentru .NetStandart și .NET6+ versiuni. <sup>23.12</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru .NET 23.9 Note de lansare](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 23.10 Note de lansare](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 23.11 Note de lansare](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 23.12 Note de lansare](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words Pentru .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 îmbunătățește capacitatea de a lucra cu date din seria de diagrame și capacitatea de a lucra cu documente ODT, precum și de a îmbunătăți anteturile/subsolurile și împachetarea textului acestora.

Aspose.Words 23.6 extinde opțiunile de redare, adaugă un nou format de export, îmbunătățește LINQ raportare și LowCode Instrumente.

Aspose.Words 23.7 îmbunătățește capacitățile de raportare, adaugă un nou format de export și introduce modificări în lucrul cu tabele și semnături digitale.

Aspose.Words 23.8 extinde capacitățile diferitelor formate, îmbunătățește redarea și adaugă noi opțiuni pentru lucrul cu câmpurile.

### Formate Acceptate

* Începând cu versiunea 23.6, este posibil să salvați un document în format XLSX. Acum Puteți converti documentele în format Excel. <sup>23.6</sup>
* Începând cu versiunea 23.7, este posibil să salvați o pagină sau o formă de document în format EPS. <sup>23.7</sup>

### Caracteristici Noi De Format

* A fost introdusă funcționalitatea de a genera automat cuprins (TOC) pentru documentele MOBI. <sup>23.8</sup>
* Constructorul [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) a fost extins cu [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Modelarea textului vertical pentru EMF metafișiere a fost implementată. <sup>23.8</sup>

### Redare și imprimare

#### Obțineți și modificați datele din seria diagramelor <sup>23.5</sup>

Caracteristica de a obține și modifica datele din seria de diagrame a fost furnizată prin adăugarea:

* clase noi: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* noi tipuri de enum: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Suport pentru Tipografie avansată <sup>23.6</sup>

A fost adăugat suport pentru Tipografie avansată în WMF, EMF și EMF+ redare.

#### Conținut colorat pe pagină <sup>23.6</sup>

Proprietatea publică [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), care indică dacă pagina este colorată sau nu, a fost adăugată.

#### Formatarea etichetelor de date grafice <sup>23.6</sup>

A fost implementată posibilitatea de a seta formatarea de umplere, stroke și callout pentru etichetele de date grafice.

### Mail Merge și raportare

#### Inserare dinamică HTML pentru motorul de raportare LINQ <sup>23.6</sup>

A fost adăugat un nou mod de inserare dinamică HTML pentru motorul de raportare LINQ.

#### Mustache Suport Etichete <sup>23.7</sup>

Etichetele Mustache sunt acum acceptate în metodele [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) și [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### LINQ Raportarea Actualizărilor De Sintaxă A Șablonului Motorului <sup>23.7</sup>

Sintaxa șablonului motorului de raportare LINQ acceptă acum metodele de extensie `ElementAt` și ElementAtOrDefault.

#### Specificarea dimensiunii imaginilor redate <sup>23.8</sup>

A fost introdusă o nouă proprietate publică [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) pentru specificarea dimensiunii imaginilor redate în pixeli.

#### Păstrați spațiile albe pentru valorile șirului JSON - LINQ <sup>23.8</sup>

O opțiune a fost adăugată la motorul de raportare LINQ pentru a păstra spațiile albe pentru valorile șirului JSON.

### LowCode <sup>23.6</sup>

Au fost adăugate noi metode LowCode menite să îmbine diferite tipuri de documente într-un singur document de ieșire.

### Altele

* A fost implementat suport pentru împachetarea textului în anteturi/subsoluri. <sup>23.5</sup>
* Capacitatea de a elimina semnăturile digitale din documentele ODT a fost adăugată prin metoda [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23.5</sup>
* Proprietatea publică [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) pentru a obține textul de bază și rubin al Ghidului fonetic [Run](https://reference.aspose.com/words/net/aspose.words/run/) a fost adăugată. <sup>23.5</sup>
* Capacitatea de a prelua o valoare de semnătură digitală dintr-un document semnat digital ca matrice de octeți a fost adăugată prin introducerea unei noi proprietăți [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23.7</sup>
* Clasele [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) și [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) au fost extinse cu noi Membri publici– [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), și [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* A fost adăugat suport pentru câmpurile CITATION și BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words Pentru .NET 23.5 Note de lansare](/words/net/aspose-words-for-net-23-5-release-notes/).

Aflați mai multe despre [Aspose.Words Pentru .NET 23.6 Note de lansare](/words/net/aspose-words-for-net-23-6-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 23.7 Note de lansare](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/).

Aflați mai multe despre [Aspose.Words Pentru .NET 23.8 Note de lansare](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words Pentru .NET 23.1, 23.2, 23.3, 23.4

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

Clasa [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) a fost extinsă cu un set de noi proprietăți publice legate de culorile de fundal și prim plan: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) și [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) și [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Gradienți radiali cu Shader-ul nativ `SkiaSharp` <sup>23.3</sup>

A fost implementată redarea gradienților radiali cu shader-ul nativ `SkiaSharp` Pentru .NET Standard.

#### Distanța dintre tabel și textul înconjurător <sup>23.4</sup>

Capacitatea de a seta distanța dintre tabel și textul înconjurător a fost adăugată prin introducerea de noi proprietăți în clasa [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), și [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Încărcarea și salvarea documentelor

#### Generați `TOC` pentru AZW3 documente <sup>23.1</sup>

Capacitatea de a genera `TOC` (Cuprins) pentru documentele AZW3 a fost adăugată prin utilizarea proprietății [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Exportarea articolelor din listă în Markdown <sup>23.1</sup>

O modalitate de a controla exportul articolelor din listă în formatul Markdown a fost furnizată prin adăugarea proprietății [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) la clasa [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/).

#### Notificări Privind Progresul Salvării Documentelor <sup>23.3</sup>

Salvarea notificărilor de progres pentru formatele MOBI și AZW3 a fost implementată.

#### Ajustarea spațiului dintre propoziții și cuvinte <sup>23.3</sup>

Capacitatea de a specifica dacă se ajustează automat propoziția și spațierea cuvintelor la importul documentului a fost adăugată prin introducerea proprietății [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Altele

* Capacitatea de a specifica ajustarea spațierea caracterelor unui document a fost adăugat prin [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) implementarea proprietății <sup>23.2</sup>
* Modul de a instrui Aspose.Words dacă să includă casete de text, note de subsol și note de final în Statisticile numărului de cuvinte a fost furnizat prin adăugarea proprietății [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* O nouă opțiune pentru un stil de document, care permite specificarea dacă stilul este redefinit automat pe baza valorii corespunzătoare, a fost introdusă prin proprietatea [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup>
* Abilitatea de a determina dacă [Run](https://reference.aspose.com/words/net/aspose.words/run/) este o rulare a ghidului fonetic a fost adăugată folosind proprietatea [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* O modalitate simplă de a lucra cu serii și axe de diagrame combinate a fost implementată prin introducerea clasei [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) și adăugarea proprietății [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Noi proprietăți publice conectate la poziționarea relativă a formei și dimensionarea au fost adăugate la clasa [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* Precizia și performanța calculului luminozității culorii pentru rezoluția automată a culorilor textului au fost îmbunătățite în conformitate cu cele mai recente versiuni ale Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru .NET 23.1 Note de lansare](/words/net/aspose-words-for-net-23-1-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 23.2 Note de lansare](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/).

Aflați mai multe despre [Aspose.Words Pentru .NET 23.3 Note de lansare](/words/net/aspose-words-for-net-23-3-release-notes/).

Aflați mai multe despre [Aspose.Words pentru .NET 23.4 Note de lansare](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Vezi Și

{{% alert color="primary" %}}

Această pagină conține cele mai recente știri de lansare din ultimii 2 ani. Pentru detalii despre versiunile anterioare, consultați [Note De Lansare](https://releases.aspose.com/words/net/release-notes/) paginile din secțiunile relevante.

{{% /alert %}}