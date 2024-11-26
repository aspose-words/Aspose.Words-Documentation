---
title: Lucrul cu Content Control SDT
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu Content Control SDT
linktitle: Lucrul cu Content Control SDT
description: "Managementul conținutului documentelor avansate, cum să creezi și manipulezi controluri de conținut (etichete structurate ale documentului) folosind C#."
type: docs
weight: 390
url: /ro/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

În Microsoft Word poţi crea un formular pornind de la o şablon şi adăugând conţinuturi control, inclusiv casete de selectare, cutii de text, selectoare de date şi liste cu derulare. În Aspose.Words, eticheta de document structurat sau controlul conținutului dintr-un document încărcat în Aspose.Words este importată ca nod StructuredDocumentTag. Etichetele de documente structurate (SDT sau controlul conținutului) permit încorporarea semanticelor definite de client, precum și comportamentul și aspectul său într-un document.

Eticheta StructuredDocument poate apărea într-un document în următoarele locuri:

- Block-level – Printre paragrafe și tabele, ca un copil al unui nod Body, HeaderFooter, Comment, Footnote sau Shape
- Row-level - Printre rânduri într-o tabelă, ca copil al unui nod de tip Tabel
- Nivel celular - Printre celulele din o linie de tabel, ca copil al unui nod de rând
- Inline-level – Printre conținutul în linie, ca copil al unui paragraf
- Încorporat într-o altă StructuredDocumentTag

## Introducerea elementelor de control al conținutului într-un document

În această versiune a Aspose.Words pot fi create următoarele tipuri de SDT sau control al conținutului:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Următorul exemplu de cod arată cum se creează un control al conținutului de tip casetă de selectare:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Exemplul de cod de mai jos prezintă cum se creează un control al conținutului tip rich text box":

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Exemplul de cod de mai jos arată cum se creează un control al conținutului tip combobox:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Cum să actualizezi conţinuturile de control

Această secțiune explică modul de actualizare a valorilor de SDT sau de control al conținutului în mod programatic.

Exemplul de cod următor arată cum se setează starea curentă a casetei de selectare:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Exemplul de cod următor arată cum se modifică controlurile de conținut de tip casetă de text simplu, listă derulantă și imagine:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Legarea de conținut control la părți XML personalizate

Puteți lega controale de conținut cu date XML (*partea XML personalizată*) în documentele Word.

Exemplul de cod următor prezintă modul în care se leagă un control de conținut la părți XML personalizate:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping de interval de etichete de document structurat

Puteți obține mapparea acestui domeniu de etichete structurate de documente către datele XML într-o parte XML personalizată a documentului curent folosind **StructuredDocumentTagRangeStart.XmlMapping proprietate**. Cu toate acestea, metoda [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) poate fi folosită pentru a cartografia un interval de etichete de document structurat la datele XML.

Exemplul următor de cod arată cum să setezi cartografierea XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Șterge conținutul dintr-o controlă de conținut

Puteți șterge conținutul unui control de conținut prin afișarea unui locaș. Metoda **StructuredDocumentTag.Clear** anulează conținutul etichetei de document structurat și afișează un loc rezervat dacă acesta este definit. "Cu toate acestea, nu este posibil să goliți conținutul unui control de conținut dacă acesta are revizuiri." Dacă un control al conținutului nu are un spațiu rezervat, sunt inserate cinci spații, ca și în Microsoft Word, (cu excepția secțiunilor repetate, a elementelor repetate ale secțiunii, a grupurilor, a căsuțelor de selectare și a citațiilor). Dacă un control al conținutului este cartografiat la XML personalizat, nodul XML referit este șters.

Exemplul următor de cod arată cum să ştergeţi conţinutul unui control de conţinut

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Modifică culorile fundalului şi a marginii controalelor de conţinut

Proprietatea `StructuredDocumentTag.Color` îți permite să obții sau să setezi culoarea unui control al conținutului. Culoarea afectează controlul conținutului în două situații:

1. Microsoft Word evidențiază fundalul controlului de conținut atunci când mouse-ul trece peste controlul de conținut. Aceasta ajută la identificarea controlului conținutului. Culoarea de evidențiere este "puțin mai moale" decât cea *Color*. "De exemplu, MS Word pune în evidenţă fundalul cu culoarea roz când *Color* este Roşu."
2. Când interacționezi (editare, selectare etc.) cu controlul conținutului, limita de control al conținutului este colorată în *Color*.

Exemplul de cod următor arată cum se schimbă culoarea unui control de conținut:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Cum să setezi stiluri pentru a formata textul introdus în controlul conținutului

Dacă doriți să setaţi stilul controlului de conținut, puteţi folosi proprietăţile `StructuredDocumentTag.Style` sau `StructuredDocumentTag.StyleName`. Când introduceți textul în controlul conținutului din documentul de ieșire, textul introdus va avea stilul "citat".

{{% alert color="primary" %}}

Notă că numai stilurile "Linkat" și "Caracter" pot fi aplicate unui control al conținutului. O excepție InvalidOperationException ("Nu se poate aplica acest stil la SDT") este aruncată atunci când un stil care există, dar nu este legat sau stil de caracter, este aplicat.

{{% /alert %}}

Exemplul de cod următor arată cum să setăm stilul controlului de conținut:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Lucrul cu conținutul secțiunii repetate control

Controlul conținutului secțiunii repetate permite să se repete conținutul conținut în cadrul acesteia. Folosind Aspose.Words, etichetele nodurilor structurate ale documentului repetitiv și tipurile de elemente repetitive pot fi create, iar în acest scop, [SdtType enumeration type](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) oferă proprietatea **RepeatingSectionItem**.

Exemplul de cod următor arată cum să se lege un conținut de control al secțiunii repetate la o masă.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
