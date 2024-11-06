---
title: Lucrul cu controlul conținutului SDT
second_title: Aspose.Words pentru Python via .NET
articleTitle: Lucrul cu controlul conținutului SDT
linktitle: Lucrul cu controlul conținutului SDT
description: "Folosind python puteți încorpora semantica definită de client, precum și comportamentul și aspectul acestuia într-un document."
type: docs
weight: 390
url: /ro/python-net/working-with-content-control-sdt/
---

În Microsoft Word, puteți crea un formular începând cu un șablon și adăugând controale de conținut, inclusiv checkboxes, casete de text, Selectoare de date și liste derulante. În Aspose.Words, o etichetă de Document structurată sau un control de conținut din orice document încărcat în Aspose.Words este importat ca nod [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Etichetele structurate ale documentelor (SDT sau controlul conținutului) permit încorporarea semanticii definite de client, precum și a comportamentului și aspectului acesteia într-un document. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) poate apărea într-un document în următoarele locuri:

- Bloc-nivel - printre paragrafe și tabele, ca un copil al unui [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) sau un nod [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- Nivel de rând-printre rândurile dintr-un tabel, ca un copil al unui nod [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- Nivel de celulă - printre celulele dintr-un rând de tabel, ca un copil al unui nod [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Inline-level-printre conținutul inline din interior, ca un copil al unui [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Imbricate în interiorul unui alt [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Inserarea controalelor de conținut într-un Document

În această versiune de Aspose.Words, pot fi create următoarele tipuri de SDT sau control de conținut:

- Checkbox
- DropDownList
- ComboBox
- Data
- BuildingBlockGallery
- Grupul
- `Picture`
- RichText
- PlainText

Următorul exemplu de cod demonstrează cum se creează controlul conținutului de tip checkbox.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Următorul exemplu de cod demonstrează modul de creare a controlului de conținut al casetei de text îmbogățit tip.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Următorul exemplu de cod demonstrează cum se creează controlul conținutului casetei combo de tip.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Cum să actualizați controalele de conținut

Această secțiune explică modul de actualizare programatică a valorilor SDT sau controlul conținutului.

Următorul exemplu de cod arată cum să setați starea curentă a checkbox:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Următorul exemplu de cod arată modul de modificare a controalelor de conținut de tip casetă text simplu, listă derulantă și imagine:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestor exemple din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Controlul conținutului obligatoriu la piese personalizate XML

Puteți lega controalele de conținut cu XML date (*custom XML part*) în documentele Word.

Următorul exemplu de cod arată cum să legați controlul conținutului la părțile personalizate XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping din intervalul de etichete pentru documente structurate

Puteți obține maparea acestui interval de etichete de document structurat la XML date într-o parte personalizată XML a documentului curent folosind proprietatea [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Cu toate acestea, metoda [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) poate fi utilizată pentru a mapa un interval de etichete de document structurat la datele XML.

Următorul exemplu de cod arată cum să setați XML mapping:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Ștergeți conținutul unui Control de conținut

Puteți șterge conținutul unui control de conținut cu afișarea unui substituent. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) metoda șterge conținutul acestei etichete de document structurat și afișează un substituent dacă este definit. Cu toate acestea, nu este posibil să ștergeți conținutul unui control de conținut dacă are revizuiri. Dacă un control de conținut nu are un substituent, se introduc cinci spații ca în MS Word (cu excepția secțiunilor repetate, a elementelor de secțiune repetate, a grupurilor, a casetelor de selectare, a citărilor). Dacă un control de conținut este mapat la personalizat XML, nodul XML la care se face referire este șters.

Următorul exemplu de cod arată cum să ștergeți conținutul controlului conținutului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Schimbați fundalul de Control al conținutului și culorile de margine

Proprietatea [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) vă permite să obțineți sau să setați culoarea controlului conținutului. Culoarea afectează controlul conținutului în două situații:

1. MS Word evidențiază fundalul controlului de conținut atunci când mouse-ul se deplasează peste controlul de conținut. Acest lucru ajută la identificarea controlului conținutului. Culoarea evidențierii este puțin "mai moale" decât *color*. De exemplu, MS Word evidențiază fundalul cu culoarea roz, când *color* este roșu.
2. Când interacționați (editare, cules etc.) cu controlul conținutului, marginea controlului conținutului este colorată cu *color*.

Următorul exemplu de cod arată cum să schimbați culoarea controlului conținutului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Cum să setați stilul la formatarea textului introdus în controlul conținutului

Dacă doriți să setați stilul de control al conținutului, puteți utiliza [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) sau [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) proprietăți. Când introduceți textul în controlul conținutului în documentul de ieșire, textul tastat va avea stilul "Citat".

{{% alert color="primary" %}}

Rețineți că numai stilurile legate și de caractere pot fi aplicate controlului conținutului. O excepție ("nu se poate aplica acest stil la SDT") este aruncată atunci când un stil care există, dar nu este legat sau se aplică un stil de caracter.

{{% /alert %}}

Următorul exemplu de cod arată cum să setați stilul de control al conținutului:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Lucrul cu controlul conținutului secțiunii repetate

Controlul conținutului secțiunii repetitive permite repetarea conținutului conținut în acesta. Folosind Aspose.Words, nodurile de etichete de document structurate ale secțiunii repetitive și tipurile de elemente ale secțiunii repetitive pot fi create și în acest scop, [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) Tipul de enumerare oferă [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) proprietate.

Următorul exemplu de cod arată cum să legați un control de conținut al secțiunii repetate la un tabel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
