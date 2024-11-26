---
title: Lucrul cu controlul conținutului SDT în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu controlul conținutului SDT
linktitle: Lucrul cu controlul conținutului SDT
type: docs
description: "Gestionarea avansată a conținutului documentelor, modul de creare și manipulare a controalelor de conținut (etichete de documente structurate) folosind Java."
weight: 390
url: /ro/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

În Microsoft Word, puteți crea un formular începând cu un șablon și adăugând controale de conținut, inclusiv checkboxes, casete de text, Selectoare de date și liste derulante. În Aspose.Words, o etichetă de Document structurată sau un control de conținut din orice document încărcat în Aspose.Words este importat ca nod StructuredDocumentTag. Etichetele structurate ale documentelor (SDT sau controlul conținutului) permit încorporarea semanticii definite de client, precum și a comportamentului și aspectului acesteia într-un document.

StructuredDocumentTag poate apărea într-un document în următoarele locuri:

- Nivel de bloc - printre paragrafe și tabele, ca un copil al unui corp, HeaderFooter, Comentariu, notă de subsol sau un nod de formă.
- Nivel de rând-printre rândurile dintr-un tabel, ca un copil al unui nod de tabel.
- Nivel de celulă - printre celulele dintr-un rând de tabel, ca un copil al unui nod de rând.
- Nivel Inline - printre conținutul inline din interior, ca un copil al unui paragraf.
- Cuibărit în interiorul altui StructuredDocumentTag.

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

Următorul exemplu de cod arată cum se creează controlul conținutului de tip checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Următorul exemplu de cod arată cum să creați controlul conținutului de tip casetă text îmbogățit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Următorul exemplu de cod arată cum se creează controlul conținutului casetei combo de tip:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Cum să actualizați controalele de conținut

Această secțiune explică modul de actualizare programatică a valorilor SDT sau controlul conținutului.

Următorul exemplu de cod arată cum să setați starea curentă a checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Următorul exemplu de cod arată modul de modificare a controalelor de conținut de tip casetă text simplu, listă derulantă și imagine:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul eșantion al acestor exemple din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Controlul conținutului obligatoriu la piese personalizate XML

Puteți lega controalele de conținut cu XML date (*custom XML part*) în documentele Word.

Următorul exemplu de cod arată cum să legați controlul conținutului la părțile personalizate XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Ștergeți conținutul unui Control de conținut

Puteți șterge conținutul unui control de conținut cu afișarea unui substituent. **StructuredDocumentTag.clear()** metoda șterge conținutul acestei etichete de document structurat și afișează un substituent dacă este definit. Cu toate acestea, nu este posibil să ștergeți conținutul unui control de conținut dacă are revizuiri. Dacă un control de conținut nu are un substituent, se introduc cinci spații ca în MS Word (cu excepția secțiunilor repetate, a elementelor de secțiune repetate, a grupurilor, a casetelor de selectare, a citărilor). Dacă un control de conținut este mapat la personalizat XML, nodul XML la care se face referire este șters.

Următorul exemplu de cod arată cum să ștergeți conținutul controlului conținutului:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Schimbați fundalul de Control al conținutului și culorile de margine

Proprietatea `StructuredDocumentTag.Color` vă permite să obțineți sau să setați culoarea controlului conținutului. Culoarea afectează controlul conținutului în două situații:

1. MS Word evidențiază fundalul controlului de conținut atunci când mouse-ul se deplasează peste controlul de conținut. Acest lucru ajută la identificarea controlului conținutului. Culoarea evidențierii este puțin "mai moale" decât *Color*. De exemplu, MS Word evidențiază fundalul cu culoarea roz, când *Color* este roșu.
2. Când interacționați (editare, cules etc.) cu controlul conținutului, marginea controlului conținutului este colorată cu *Color*.

Următorul exemplu de cod arată cum să schimbați culoarea controlului conținutului:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Cum să setați stilul la formatarea textului introdus în controlul conținutului

Dacă doriți să setați stilul de control al conținutului, puteți utiliza `StructuredDocumentTag.Style` sau `StructuredDocumentTag.StyleName` proprietăți. Când introduceți textul în controlul conținutului în documentul de ieșire, textul tastat va avea stilul "Citat".

{{% alert color="primary" %}}

Rețineți că numai stilurile legate și de caractere pot fi aplicate controlului conținutului. Un InvalidOperationException ("nu se poate aplica acest stil la SDT") este aruncat atunci când un stil care există, dar nu este legat sau se aplică un stil de caracter.

{{% /alert %}}

Următorul exemplu de cod arată cum să setați stilul de control al conținutului:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Lucrul cu controlul conținutului secțiunii repetate

Controlul conținutului secțiunii repetitive permite repetarea conținutului conținut în acesta. Folosind Aspose.Words, nodurile de etichete de document structurate ale secțiunii repetitive și tipurile de elemente ale secțiunii repetitive pot fi create și în acest scop, [SdtType enumeration type](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) oferă REPEATING_SECTION_ITEM membru.

Următorul exemplu de cod arată cum să legați un control de conținut al secțiunii repetate la un tabel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

