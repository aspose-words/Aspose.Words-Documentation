---
title: Detectați Formatul Fișierului La Încărcare
second_title: Aspose.Words pentru Python via .NET
articleTitle: Detectați formatul fișierului și verificați compatibilitatea formatului
linktitle: Detectați formatul fișierului și verificați compatibilitatea formatului
description: "Determinați formatul fișierului în Python dacă nu sunteți sigur care este conținutul real al fișierului sau pentru a verifica compatibilitatea formatului."
type: docs
weight: 20
url: /ro/python-net/detect-file-format-and-check-format-compatibility/
---

Uneori este necesar să se determine formatul unui document înainte de deschidere, deoarece extensia de fișier nu garantează că conținutul fișierului este adecvat. De exemplu, se știe că Crystal Reports emite adesea documente în format RTF, dar le dă .extensie doc.

Aspose.Words oferă posibilitatea de a obține informații despre tipul de fișier pentru a evita o excepție dacă nu sunteți sigur care este conținutul real al fișierului.

## Detectați formatul de fișier fără excepție

Când aveți de-a face cu mai multe documente în diferite formate de fișiere, poate fi necesar să separați acele fișiere care pot fi procesate de Aspose.Words de cele care nu pot. De asemenea, poate doriți să știți de ce unele dintre documente nu pot fi procesate.

Dacă încercați să încărcați un fișier într-un obiect [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) și Aspose.Words nu poate recunoaște formatul de fișier sau formatul nu este acceptat, Aspose.Words va arunca o excepție. Puteți prinde aceste excepții și le puteți analiza, dar Aspose.Words oferă și metoda [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) care ne permite să determinăm rapid formatul fișierului fără a încărca un document cu posibile excepții. Această metodă returnează un obiect [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) care conține informațiile detectate despre tipul de fișier.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) verifică doar formatul de fișier, dar nu validează formatul de fișier. Nu există nicio garanție că fișierul va fi deschis cu succes, chiar dacă [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) returnează că este unul dintre formatele acceptate. Acest lucru se datorează faptului că metoda [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) citește doar date parțiale ale formatului de fișier, suficiente pentru verificarea formatului de fișier, dar nu suficiente pentru validarea completă.

{{% /alert %}}

## Verificați Compatibilitatea Formatului Fișierelor

Putem verifica compatibilitatea formatelor tuturor fișierelor din folderul selectat și le putem sorta după format în subfoldere corespunzătoare.

Deoarece avem de-a face cu conținutul dintr-un folder, primul lucru pe care trebuie să-l facem este să obținem o colecție a tuturor fișierelor din acest folder folosind metoda **listdir** a modulului **os**.

Următorul exemplu de cod arată cum să obțineți o listă cu toate fișierele din folder:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Când toate fișierele sunt colectate, restul lucrării se face prin metoda [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), care verifică formatul fișierului.

Următorul exemplu de cod arată cum să iterați lista colectată de fișiere, să verificați formatul fiecărui fișier și să mutați fiecare fișier în folderul corespunzător:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Fișierele sunt mutate în subfoldere corespunzătoare folosind metoda **copyfile** a modulului **shutil**.

Următoarele fișiere sunt utilizate în exemplul de mai sus. Numele fișierului este în stânga și descrierea acestuia este în dreapta:

| Grup de fișiere | Document De Intrare | Tip |
| :- | :- | :- |
| Formate de fișiere acceptate | Test File (Doc).doc | Microsoft Word 95/6.0 sau Microsoft Word 97 – 2003 document. |
|  | Fișier De Testare (`Dot`).punct | Microsoft Word 95/6.0 sau Microsoft Word 97 – 2003 șablon. |
|  | Test File (Docx).docx | Office Open XML WordprocessingML document fără macrocomenzi. |
|  | Test File (Docm).docm | Office Open XML WordprocessingML document cu macrocomenzi. |
|  | Test File (Dotx).dotx | Birou deschis XML WordprocessingML șablon. |
|  | Test File (Dotm).dotm | Office Open XML WordprocessingML șablon cu macrocomenzi. |
|  | Test File (XML).xml | FlatOPC OOXML Document. |
|  | Test File (RTF).rtf | Document în format text îmbogățit. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML document. |
|  | Test File (HTML).html | HTML document. |
|  | Test File (MHTML).mhtml | MHTML (arhivă Web) document. |
|  | Test File (Odt).odt | OpenDocument Text (OpenOffice Scriitor). |
|  | Test File (Ott).ott | OpenDocument Șablon De Document. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 document. |
| Documente criptate | Test File (Enc).doc | Criptate Microsoft Word 95/6.0 sau Microsoft Word 97 – 2003 document. |
|  | Test File (Enc).docx | Birou criptat deschis XML WordprocessingML document. |
| Formate de fișiere neacceptate | Test File (JPG).jpg | JPEG fișier imagine. |

