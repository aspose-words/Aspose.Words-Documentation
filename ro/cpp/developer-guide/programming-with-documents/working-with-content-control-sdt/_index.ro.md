---
title: Lucrul cu controlul conținutului SDT
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu controlul conținutului SDT
linktitle: Lucrul cu controlul conținutului SDT
type: docs
description: "Gestionarea avansată a conținutului documentelor, modul de creare și manipulare a controalelor de conținut (etichete de documente structurate) folosind C++."
weight: 390
url: /ro/cpp/structured-document-tags-or-content-control/
---

În Microsoft Word, puteți crea un formular începând cu un șablon și adăugând controale de conținut, inclusiv casete de selectare, casete de text, Selectoare de date și liste derulante. În Aspose.Words, o etichetă de Document structurată sau un control de conținut din orice document încărcat în Aspose.Words este importat ca nod StructuredDocumentTag. Etichetele de documente structurate (SDT sau controlul conținutului) permit încorporarea semanticii definite de client, precum și comportamentul și aspectul acesteia într-un document. StructuredDocumentTag poate apărea într-un document în următoarele locuri:

- Nivel de bloc - printre paragrafe și tabele, ca un copil al unui corp, HeaderFooter, Comentariu, notă de subsol sau un nod de formă
- Nivel de rând - printre rândurile dintr-un tabel, ca un copil al unui nod de tabel
- Nivel de celulă - printre celulele dintr-un rând de tabel, ca un copil al unui nod de rând
- Inline-level-printre conținutul inline din interior, ca un copil al unui paragraf
- Imbricate în interiorul unui alt StructuredDocumentTag

## Cum să setați stilul la formatarea textului introdus în controlul conținutului

Dacă doriți să setați stilul de control al conținutului, puteți utiliza `StructuredDocumentTag.Style` sau `StructuredDocumentTag.StyleName` proprietăți. Când tastați textul în controlul conținutului în documentul de ieșire, textul tastat va avea stil "Citat".

{{% alert color="primary" %}}

Rețineți că numai stilurile legate și de caractere pot fi aplicate controlului conținutului. Un InvalidOperationException ("nu se poate aplica acest stil la SDT") este aruncat atunci când un stil care există, dar nu este legat sau se aplică un stil de caracter.

{{% /alert %}}

Următorul exemplu de cod arată cum să setați stilul de control al conținutului:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Lucrul cu controlul conținutului secțiunii repetate

Controlul conținutului secțiunii repetitive permite repetarea conținutului conținut în acesta. Folosind Aspose.Words, nodurile de etichete de document structurate ale secțiunii repetitive și tipurile de elemente ale secțiunii repetitive pot fi create și în acest scop, SdtType Tipul de enumerare oferă **RepeatingSectionItem** proprietate.

Următorul exemplu de cod arată cum să legați un control de conținut al secțiunii repetate la un tabel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
