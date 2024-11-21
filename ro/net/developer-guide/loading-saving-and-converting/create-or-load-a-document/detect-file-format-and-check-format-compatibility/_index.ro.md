---
title: Detectează formatul fișierului la încărcare
second_title: Aspose.Words pentru .NET
articleTitle: Detectează formatul fișierului și compatibilitatea formatului
linktitle: Detectează formatul fișierului și compatibilitatea formatului
description: "Determină formatul fișierului în C# dacă nu ești sigur de conținutul efectiv al fișierului sau pentru a verifica compatibilitatea formatului."
type: docs
weight: 20
url: /ro/net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Uneori este necesar să determini formatul unui document înainte de deschidere, deoarece extensia fișierului nu garantează că conținutul fișierului este potrivit. De exemplu se ştie că Crystal Reports adesea scoate documente în format RTF dar le dă extensia .doc.

Aspose.Words oferă posibilitatea de a obține informații despre tipul fișierului pentru a evita o excepție dacă nu sunteți siguri de conținutul real al fișierului.

## Detectează formatul fișierului fără excepție

Când tratezi cu mai multe documente în diferite formate de fișiere ai nevoie să separi acele fișiere care pot fi procesate de Aspose.Words de cele care nu pot. Vă puteți dori, de asemenea, să știți de ce unele documente nu pot fi procesate.

Dacă încerci să încarci un fişier într-un obiect [Document](https://reference.aspose.com/words/net/aspose.words/document/) şi Aspose.Words nu poate recunoaşte formatul fişierului sau formatul nu este acceptat, Aspose.Words va arunca o excepţie. Puteți captura aceste excepții și le puteți analiza, dar Aspose.Words oferă, de asemenea, metoda [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/) care ne permite să determinăm rapid formatul fișierului fără a încărca un document cu posibile excepții. Această metodă returnează un obiect [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) care conține informațiile detectate despre tipul de fişier.

{{% alert color="primary" %}}

DetectFileFormat doar verifică formatul fișierului, dar nu și validarea acestuia. Nu există nicio garanție că fișierul se va deschide cu succes, chiar dacă **DetectFileFormat** returnează că este unul din formate acceptate. Aceasta este din cauza metodei **DetectFileFormat** citeste doar datele parțiale de format de fişier, suficiente pentru verificarea formatului fișierului, dar nu suficientă pentru validare completă.

{{% /alert %}}

## Verifica compatibilitatea formatelor fișierelor

Putem verifica compatibilitatea formatului tuturor fișierelor din folderul selectat și le putem sorta după format în subfolderele corespunzătoare.

Din moment ce lucrăm cu conținut într-un folder, primul lucru pe care trebuie să-l facem este să obținem o colecție de toate fișierele din acest folder folosind metoda **GetFiles** a clasei `Directory` (din spațiul de nume `System.IO`).

Exemplul următor de cod arată cum să obții o listă cu toate fișierele din dosar:

{{< gist "aspose-words-gists" "7fe3fc4004f081628a63608db70332b3" "get-files.cs" >}}

Când toate fișierele sunt colectate, restul muncii este făcut de **DetectFileFormat** metoda care verifică formatul fișierului.

Exemplul de cod de mai jos arată cum să parcurgem lista colectată de fișiere, să verificăm formatul fiecărui fișier și să mutăm fiecare fișier în folderul corespunzător:

{{< gist "aspose-words-gists" "7fe3fc4004f081628a63608db70332b3" "check-format-compatibility.cs" >}}

Fișierele sunt mutate în subfoldere adecvate folosind metoda `Move` a clasei `File`, din același spațiu de nume `System.IO`.

Următoarele fișiere sunt folosite în exemplul de mai sus. Numele fișierului este pe stânga și descrierea sa este pe dreapta:

| Group din fișiere | Document de intrare | Tip |
| :- | :- | :- |
| Formatelor de fișiere suportate | Test File (Doc).doc | Microsoft Word 95/6.0 sau Microsoft Word 97 - 2003 document. |
|  | Test File (`Dot`).dot | Microsoft Word 95/6.0 sau Microsoft Word 97-2003 șablon. |
|  | Test File (Docx).docx | Office Open XML WordprocessingML document fără macro comenzi. |
|  | Test File (Docm)".docm | Document de procesare a textului Office Open XML cu macro-uri. |
|  | Test File (Dotx).dotx | Office Open XML WordprocessingML șablon. |
|  | Test File (Dotm).dotm | Office Open XML WordprocessingML șablon cu macro-uri. |
|  | Test File (XML).xml | Document FlatOPC OOXML. |
|  | Test File (RTF) | Documente în format RichText. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML document. |
|  | Test File (HTML).html | Document HTML. |
|  | Test File (MHTML).mhtml | Document de arhivă web. |
|  | Test File (Odt)".odt | OpenDocument Text (OpenOffice Writer). |
|  | Test fișier (Ott). ott | OpenDocument Template. |
|  | Fișier Test (DocPreWord60). doc | Microsoft Word 2.0 document. |
| Documente criptate | Test File (Enc). doc | Encryptat Microsoft Word 95/6.0 sau Microsoft Word 97 – 2003 document. |
|  | Test File (Enc).docx | Document Microsoft Office Open XML criptat WordprocessingML. |
| Formate de fişier neacceptate | Test File (JPG).jpg | Fișier imagine JPEG. |

