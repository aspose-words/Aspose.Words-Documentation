---
title: Ce este nou
second_title: Aspose.Words pentru C++
articleTitle: Ce este nou în Aspose.Words pentru C++
linktitle: Ce este nou în Aspose.Words pentru C++
type: docs
description: "Aspose.Words pentru C++ extinde și îmbunătățește zilnic. Pe această pagină, puteți afla despre caracteristicile uriașe și cele mai interesante ale produsului."
weight: 2
url: /ro/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Această pagină descrie cele mai interesante caracteristici noi Aspose.Words introduse în versiunile recente.

## Aspose.Words pentru C++ 24.9, 24.10

Aspose.Words 24.9 introduce group shape Inserare și StructuredDocumentTag Inserare prin DocumentBuilder, îmbunătățește randarea diagramelor radiale cu gradații, îmbunătățește semnăturile digitale cu suport XAdES-EPES, adaugă Markdown recunoașterea sublinierii și oferă acces la separatoarele de notă de subsol/notă finală.

Aspose.Words 24.10 introduce suport îmbunătățit pentru controlul ActiveX cu crearea CommandButton, Controlul vizibilității formei noi, capacitatea de a group shapes, exportul Markdown îmbunătățit pentru tabele, formatarea diagramelor pentru graficele Pie și Doughnut, o mai bună manipulare a codificării Big5 și suport pentru fonturile taiwaneze învechite.

### Redare și imprimare

#### Gradații pe diagrame radiale <sup>24.9</sup>

A fost implementată redarea gradărilor pe diagrame radiale.

#### CommandButton Controale ActiveX <sup>24.10</sup>

Abilitatea de a crea CommandButton controale ActiveX a fost introdusă prin adăugarea unei noi metode publice [InsertForms2OleControl]() și a unei noi clase publice [Forms2OleControl]().

#### Controlați Vizibilitatea Formei <sup>24.10</sup>

O nouă proprietate publică [Hidden]() a fost adăugată pentru a controla vizibilitatea formelor.

#### Modificări în graficele Pie și Doughnut <sup>24.10</sup>

Mai multe proprietăți publice noi au fost adăugate la graficele format Pie și Doughnut.

### Conversia, încărcarea și salvarea documentelor

#### Subliniați formatarea la încărcarea fișierelor Markdown <sup>24.9</sup>

Opțiunea de a recunoaște formatarea sublinierii la încărcarea documentelor Markdown a fost încorporată prin adăugarea unei noi proprietăți publice [ImportUnderlineFormatting]().

#### Exportarea tabelelor ca HTML la salvarea în Markdown <sup>24.10</sup>

O opțiune de a exporta tabele ca HTML la salvarea documentelor în format Markdown a fost implementată prin adăugarea unei noi proprietăți publice [ExportAsHtml]() și a unei enumerări [MarkdownExportAsHtml]().

### Semnături Digitale

#### Semnați documente cu XAdES-EPES <sup>24.9</sup>

Abilitatea de a semna documente cu XAdES-EPES nivel XML-DSig semnături a fost introdusă prin adăugarea unei noi proprietăți publice [XmlDsigLevel]() și a unei noi enumerări publice [XmlDsigLevel]().

### Altele

* O nouă metodă publică [InsertGroupShape]() a fost adăugată la group shapes. <sup>24.9</sup>
* O nouă metodă publică [InsertStructuredDocumentTag]() a fost adăugată pentru a insera **StructuredDocumentTags** într-un document. <sup>24.9</sup>
* Accesul Public la separatoarele de note de subsol/note de final a fost asigurat prin adăugarea câtorva clase și proprietăți publice. <sup>24.9</sup>
* Capacitatea de a grupa forme individuale, group shapes împreună și de a grupa direct ambele forme și group shapes a fost introdusă prin adăugarea metodei [InsertGroupShape](). <sup>24.10</sup>
* Manipularea codificării Big5 pentru TrueType tabele cmap a fost îmbunătățită. <sup>24.10</sup>
* Suportul pentru fonturile taiwaneze învechite a fost îmbunătățit. <sup>24.10</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru C++ 24.9 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

Aflați mai multe despre [Aspose.Words pentru C++ 24.10 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words pentru C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 extinde opțiunile pentru ansambluri, îmbunătățește capacitățile de redare și extinde alte opțiuni.

Aspose.Words 24.6 îmbunătățește opțiunile de redare, îmbunătățește funcționalitatea de căutare și comparare și extinde alte câteva caracteristici.

Aspose.Words 24.7 modifică modul în care lucrați cu ActiveX, extinde capacitățile de redare, precum și exportul în formatele Markdown și XLSX.

### Formate Acceptate

Începând cu versiunea 24.7, exportul în PDF/UA-2 este acceptat pentru a asigura accesibilitatea utilizatorilor cu dizabilități.

### Redare și imprimare

#### Modificări în diagrame, forme și DrawingML <sup>24.5</sup>

- DrawingML a fost implementată redarea efectelor pentru SVG grafică, extinzând funcționalitatea anterioară limitată la imagini.
- Suportul pentru crearea diagramelor combinate și ajustarea proprietăților, cum ar fi lățimea decalajului, suprapunerea și scala de bule în cadrul grupurilor de serii, a fost introdus prin adăugarea claselor **ChartSeriesGroup** și **ChartSeriesGroupCollection** și a proprietății **SeriesGroups**.
- Funcționalitatea de manipulare a efectului SoftEdge al formelor a fost implementată prin adăugarea clasei **SoftEdgeFormat**.
- Abilitatea de a modifica valorile de ajustare a formelor a fost implementată prin adăugarea claselor publice **AdjustmentCollection** și **Adjustment** și a proprietății **Adjustments**.

#### Modificări în diagrame, forme și desen <sup>24.6</sup>

- Capacitățile de cartografiere au fost îmbunătățite. Acum Puteți crea o varietate mai mare de diagrame, inclusiv *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* diagrame, *Box & Whisker* diagrame, *Waterfalls* și *Funnels*. Acest lucru vă permite să vizualizați datele într-un mod mai divers și mai informativ.
- Controlul culorilor pentru formatarea umbrelor a fost îmbunătățit. Puteți obține un control mai precis asupra aspectului documentelor dvs. accesând culorile umbrelor.
- Creșterea performanței pentru redarea fundalului a fost îmbunătățită. Puteți accelera semnificativ redarea fundalurilor care conțin elemente mici datorită tehnologiei native de placare.
- Au fost adăugate gradiente realiste pentru forme. Acum Puteți crea DML forme cu gradiente neliniare, imitând stilul vizual al Microsoft Word pentru un aspect mai lustruit.

#### Personalizarea Etichetelor De Date Grafice <sup>24.7</sup>

A fost adăugată posibilitatea de a personaliza etichetele de date grafice, cum ar fi **Orientation** și **Rotation**.

#### Styling număr personalizat pentru nivelurile de listă <sup>24.7</sup>

A fost adăugat un setter pentru proprietatea publică [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/). Acum Puteți defini un stil de număr personalizat pentru nivelurile listei.

#### Modificări în lucrul cu ActiveX <sup>24.7</sup>

- Proprietățile obiectelor ActiveX pot fi acum modificate, oferindu-vă mai mult control asupra comportamentului lor.
- A fost adăugată posibilitatea de a modifica valoarea butonului Radio ActiveX control pentru a permite interacțiunea dinamică.
- A fost adăugată posibilitatea de a comuta un ActiveX checkbox la "verificat" sau "debifat".

### Încărcarea și salvarea documentelor

#### Exportarea linkurilor în format Markdown <sup>24.7</sup>

Capacitatea de a controla exportul de link-uri în format Markdown a fost adăugată prin implementarea proprietății [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Căutați și comparați

#### Opțiuni Avansate De Comparație <sup>24.6</sup>

A fost adăugată capacitatea de a eficientiza fluxurile de lucru de analiză a datelor cu funcționalitate îmbunătățită de comparație. Aceasta include o nouă opțiune **IgnoreStoreItemId** și o interfață reproiectată pentru comparații avansate.

### Altele

- Funcția de eliminare a paginilor goale dintr-un document a fost implementată prin adăugarea metodei [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- Capacitatea de a verifica prezența macrocomenzilor VBA fără a încărca un document a fost furnizată prin adăugarea proprietății **HasMacros**. <sup>24.5</sup>
- A fost adăugată o nouă proprietate **DateTimeUtc** - Aceasta oferă un marcaj de timp mai precis pentru comentarii, îmbunătățind organizarea și trasabilitatea. <sup>24.6</sup>
- Formatul datetime este acum detectat automat pentru export fără sudură în format XLSX. <sup>24.7</sup>
- Proprietatea publică [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), care vă permite să verificați dacă un proiect VBA este protejat, a fost adăugat. <sup>24.7</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru C++ 24.5 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Aflați mai multe despre [Aspose.Words pentru C++ 24.6 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Aflați mai multe despre [Aspose.Words pentru C++ 24.7 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words pentru C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 îmbunătățește experiența în jurul gestionarea culorilor accident vascular cerebral, îmbunătățește OLE obiecte,precum și introduce o nouă Bibliografie surse publice API.

Aspose.Words 24.2 diagrame extinse API și gestionarea stilului. Această versiune a Aspose.Words a introdus, de asemenea, capacitatea de a specifica SvgSaveOptions în timpul redării, controlul mai flexibil al încărcării fișierelor Markdown și lucrul cu textul de referință pentru notele de subsol și notele de final.

Aspose.Words 24.3 introduce emularea operațiunilor raster binare pentru WMF metafișiere și, de asemenea, continuă să extindă graficele API.

Aspose.Words 24.4 îmbunătățește unele opțiuni de redare, precum și îmbunătățește lucrul cu semnăturile digitale.

### Redare și imprimare

#### Controlul Culorii Cursei <sup>24.1</sup>

Clasa [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) a fost extinsă cu un set de noi proprietăți publice legate de gestionarea culorilor stroke: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) și [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) și [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### DrawingML Grafice API Extensie <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** continuă să fie extins.

#### Încorporați fonturile declarate în @font-face reguli <sup>24.4</sup>

Adaugata o capacitate de a încorpora fonturile declarate în @font-face Reguli în definițiile font documentului rezultat a fost introdus prin adăugarea unui nou [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) proprietate.

#### Lucrați cu formatarea strălucirii și reflecției <sup>24.4</sup>

A fost implementată capacitatea de a lucra cu formatarea strălucirii și reflexiei pentru un obiect de desen.

### Încărcarea și salvarea documentelor

#### Specificați SvgSaveOptions În Timpul Redării <sup>24.2</sup>

Capacitatea de a specifica [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) în timpul randării a fost adăugată folosind [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) și [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) metode.

#### Păstrați liniile goale la încărcarea fișierelor Markdown <sup>24.2</sup>

A fost adăugată posibilitatea de a păstra liniile goale la încărcarea fișierelor Markdown.

### Altele

- Capacitatea de a modifica textul controlului `TextBox` OLE a fost introdusă prin adăugarea unei noi proprietăți **Text** la noua clasă **TextBoxControl**. <sup>24.1</sup>
- Bibliografia publică API a fost implementată prin adăugarea unui nou spațiu de nume [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) cu noile sale clase și enumerări și prin adăugarea unei noi proprietăți [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) la clasa [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- Noile proprietăți publice [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) și [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) pentru gestionarea îmbunătățită a stilului au fost adăugate la clasa [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). <sup>24.2</sup>
- Funcționalitatea de a prelua textul real al marcajului de referință pentru notele de subsol și notele de final a fost îmbunătățită cu proprietatea [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) și metoda [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- A fost implementată emularea operațiilor raster binare pentru WMF metafișiere. <sup>24.3</sup>
- Capacitatea de a defini opțiunile de semnătură pentru documentele din **SaveOptions** a fost activată prin adăugarea unei noi clase **DigitalSignatureDetails** cu noi Membri publici, precum și prin adăugarea de noi proprietăți la clasele [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) și [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru C++ 24.1 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Aflați mai multe despre [Aspose.Words pentru C++ 24.2 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Aflați mai multe despre [Aspose.Words pentru C++ 24.3 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Aflați mai multe despre [Aspose.Words pentru C++ 24.4 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words pentru C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 extinde opțiunile de redare, emularea De redare metafile și markdown opțiuni de salvare.

Aspose.Words 23.10 îmbunătățește redarea, extinde opțiunile pentru încărcarea și salvarea documentelor și permite utilizatorilor să îmbine documente în moduri noi.

Aspose.Words 23.11 îmbunătățește lucrul cu revizii, XLSX format și fonturi pe legenda diagramei cu opțiuni suplimentare.

Aspose.Words 23.12 introduce noi proprietăți și enumerări pentru lucrul cu documentele PDF și OOXML, precum și suport pentru imaginile WebP.

### Redare și imprimare

#### Personalizarea titlurilor axelor în DrawingML diagrame <sup>23.9</sup>

Capacitatea de a personaliza titlurile Axei în graficele DrawingML a fost introdusă prin implementarea unei noi clase publice **ChartAxisTitle** și [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) proprietate.

#### Determinarea poziției verticale a fonturilor într - un paragraf <sup>23.9</sup>

Acum este posibil să se definească poziția verticală a fonturilor într-un paragraf folosind noua proprietate publică [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) și Noua enumerare [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### Controlul Culorilor Din Prim Plan <sup>23.10</sup>

Capacitatea de a prelua culoarea din prim plan fără modificatori a fost adăugată la clasele [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) și [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) prin proprietatea **BaseForeColor**.

#### Extinderea funcționalității diagramelor <sup>23.10</sup>

Funcționalitatea claselor [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) și [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) a fost extinsă cu noi metode și proprietăți.

#### Reglați automat și potriviți o imagine într-o formă <sup>23.10</sup>

O modalitate simplă de a regla și potrivi automat o imagine într-o anumită formă a fost furnizată prin noua metodă [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formatarea implicită a fontului pentru DrawingML intrările din legenda diagramei <sup>23.11</sup>

Abilitatea de a specifica formatarea implicită a fontului pentru intrările de legendă ale graficelor DrawingML a fost adăugată prin proprietatea [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Această caracteristică facilitează un aspect mai raționalizat și mai consistent pentru elementele graficului, îmbunătățind estetica generală a documentului.

#### Specificați aspectul paginii la deschiderea PDF În Reader <sup>23.12</sup>

Abilitatea de a specifica aspectul paginii care va fi utilizat la deschiderea unui document într-un cititor PDF a fost adăugată prin introducerea unei noi proprietăți **PageLayout** la clasa [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) și introducerea unei noi enumerări **PdfPageLayout**.

### Încărcarea și salvarea documentelor

#### Specificarea unui nume de Folder pentru a construi imaginea URIs în Markdown <sup>23.9</sup>

Clasa [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) a fost extinsă prin includerea proprietății [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), care permite specificarea numelui folderului folosit pentru a construi imaginea URIs scrisă în documentul Markdown.

#### Reduceți Dimensiunea De Ieșire PDF <sup>23.10</sup>

Au fost implementate diferite optimizări de redare PDF pentru a reduce dimensiunea ieșirii atunci când se utilizează setările [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/).

#### Recunoașteți Hyperlink-urile la încărcarea documentelor TXT <sup>23.10</sup>

Caracteristica de recunoaștere a hyperlink-urilor la încărcarea documentelor TXT a fost implementată prin adăugarea unei noi proprietăți [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/).

### Altele

- A fost implementată emularea De redare Metafile pentru a determina dimensiunea rasterizării, în special pentru WMF lățimea stiloului și EMF lățimea stiloului cosmetic. Pentru a realiza acest lucru, proprietatea **ScaleWmfFontsToMetafileSize** a fost înlocuită cu proprietatea [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) și proprietatea [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) a fost adăugată. <sup>23.9</sup>
* O metodă simplificată pentru inserarea unui document într-un alt document la poziția curentă a cursorului a fost introdusă folosind metoda [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Abilitatea de a accesa și modifica proprietățile stilului a fost adăugată prin introducerea noii proprietăți [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/). <sup>23.10</sup>
* Un parametru de tip generic a fost adăugat la metodele clasei [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/). <sup>23.10</sup>
* O modalitate de a controla când o anumită revizuire ar trebui acceptată/respinsă sau nu a fost implementată prin utilizarea metodelor [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) și [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/). Această îmbunătățire oferă utilizatorilor un control mai fin asupra procesului de revizuire. <sup>23.11</sup>
* Abilitatea de a scrie toate secțiunile unui document pe aceeași foaie de lucru XLSX a fost furnizată prin noul tip de enumerare [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) și noua proprietate [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/). <sup>23.11</sup>
* O modalitate de a controla modul în care vor fi utilizate extensiile de format ZIP64 pentru documentele OOXML a fost implementată prin noua proprietate Zip64Mode a clasei `OoxmlSaveOptions` și Noua enumerare Zip64Mode. <sup>23.12</sup>
* A fost introdus suport pentru imaginea WebP. Vă rugăm să rețineți că această caracteristică este disponibilă numai pentru .NetStandart și .NET6+ versiuni. <sup>23.12</sup>

{{% alert color="primary" %}}

Aflați mai multe despre [Aspose.Words pentru C++ 23.9 Note De Lansare](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Aflați mai multe despre [Aspose.Words pentru C++ 23.10 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Aflați mai multe despre [Aspose.Words pentru C++ 23.11 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Aflați mai multe despre [Aspose.Words pentru C++ 23.12 Note De Lansare](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Vezi Și

{{% alert color="primary" %}}

Această pagină conține cele mai recente știri de lansare din ultimii 2 ani. Pentru detalii despre versiunile anterioare, consultați [Note De Lansare](/words/cpp/release-notes/) paginile din secțiunile relevante.

{{% /alert %}}
