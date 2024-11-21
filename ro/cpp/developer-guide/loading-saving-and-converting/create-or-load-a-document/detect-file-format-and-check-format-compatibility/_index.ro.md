---
title: Detectați formatul fișierului și verificați compatibilitatea formatului
second_title: Aspose.Words pentru C++
articleTitle: Detectați formatul fișierului și verificați compatibilitatea formatului
linktitle: Detectați formatul fișierului și verificați compatibilitatea formatului
description: "Determinați formatul fișierului în C++ dacă nu sunteți sigur care este conținutul real al fișierului sau pentru a verifica compatibilitatea formatului."
type: docs
weight: 20
url: /ro/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Uneori este necesar să se determine formatul unui document înainte de deschidere, deoarece extensia de fișier nu garantează că conținutul fișierului este adecvat. De exemplu, se știe că Crystal Reports emite adesea documente în format RTF, dar le dă .extensie doc.

Aspose.Words oferă posibilitatea de a obține informații despre tipul de fișier pentru a evita o excepție dacă nu sunteți sigur care este conținutul real al fișierului.

## Detectați formatul de fișier fără excepție

Când aveți de-a face cu mai multe documente în diferite formate de fișiere, poate fi necesar să separați acele fișiere care pot fi procesate de Aspose.Words de cele care nu pot. De asemenea, poate doriți să știți de ce unele dintre documente nu pot fi procesate.

Dacă încercați să încărcați un fișier într-un obiect [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) și Aspose.Words nu poate recunoaște formatul de fișier sau formatul nu este acceptat, Aspose.Words va arunca o excepție. Puteți prinde aceste excepții și le puteți analiza, dar Aspose.Words oferă și metoda [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) care ne permite să determinăm rapid formatul fișierului fără a încărca un document cu posibile excepții. Această metodă returnează un obiect [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) care conține informațiile detectate despre tipul de fișier.

{{% alert color="primary" %}}

DetectFileFormat verifică doar formatul de fișier, dar nu validează formatul de fișier. Nu există nicio garanție că fișierul va fi deschis cu succes, chiar dacă **DetectFileFormat** returnează că este unul dintre formatele acceptate. Acest lucru se datorează faptului că metoda **DetectFileFormat** citește doar date parțiale ale formatului de fișier, suficiente pentru verificarea formatului de fișier, dar nu suficiente pentru validarea completă.

{{% /alert %}}

## Verificați Compatibilitatea Formatului Fișierelor

Putem verifica compatibilitatea formatelor tuturor fișierelor din folderul selectat și le putem sorta după format în subfoldere corespunzătoare.

Deoarece avem de-a face cu conținut într-un folder, primul lucru pe care trebuie să-l facem este să obținem o colecție a tuturor fișierelor din acest folder folosind metoda **GetFiles** a clasei `Directory` (din spațiul de nume `System.IO`).

Următorul exemplu de cod arată cum să obțineți o listă cu toate fișierele din folder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Când toate fișierele sunt colectate, restul lucrării se face prin metoda **DetectFileFormat**, care verifică formatul fișierului.

Următorul exemplu de cod arată cum să iterați lista colectată de fișiere, să verificați formatul fiecărui fișier și să mutați fiecare fișier în folderul corespunzător:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Fișierele sunt mutate în subfoldere corespunzătoare folosind metoda `Move` a clasei `File`, din același spațiu de nume `System.IO`.

Următoarele fișiere sunt utilizate în exemplul de mai sus. Numele fișierului este în stânga și descrierea acestuia este în dreapta:

| Grup de fișiere | Document De Intrare | Tip |
| :- | :- | :- |
| Formate de fișiere acceptate | Test File (DOC).doc | Microsoft Word 95/6.0 sau Microsoft Word 97 – 2003 document. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 sau Microsoft Word 97 – 2003 șablon. |
|  | Test File (DOCX).docx | Office Open XML WordprocessingML document fără macrocomenzi. |
|  | Test File (DOCM).docm | Office Open XML WordprocessingML document cu macrocomenzi. |
|  | Test File (DOTX).dotx | Birou deschis XML WordprocessingML șablon. |
|  | Test File (DOTM).dotm | Office Open XML WordprocessingML șablon cu macrocomenzi. |
|  | Test File (XML).xml | FlatOPC OOXML Document. |
|  | Test File (RTF).rtf | Document în format text îmbogățit. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML document. |
|  | Test File (HTML).html | HTML document. |
|  | Test File (MHTML).mhtml | MHTML (arhivă Web) document. |
|  | Test File (ODT).odt | OpenDocument Text (OpenOffice Scriitor). |
|  | Test File (OTT).ott | OpenDocument Șablon De Document. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 document. |
| Documente criptate | Test File (Enc).doc | Criptate Microsoft Word 95/6.0 sau Microsoft Word 97 – 2003 document. |
|  | Test File (Enc).docx | Birou criptat deschis XML WordprocessingML document. |
| Formate de fișiere neacceptate | Test File (JPG).jpg | JPEG fișier imagine. |

