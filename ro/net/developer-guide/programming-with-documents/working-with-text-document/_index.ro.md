---
title: Lucrul cu `Text Document` în C#
second_title: Aspose.Words pentru .NET
articleTitle: Lucrul cu documentul text
linktitle: Lucrul cu documentul text
description: "Procesarea avansată a documentelor TXT, liste, BiDi, antet/post-foot, folosind C#."
type: docs
weight: 430
url: /ro/net/working-with-text-document/
---

În acest articol vom învăța ce opțiuni pot fi utile pentru lucrul cu un document text folosind Aspose.Words. Vă rugăm să rețineți că aceasta nu este o listă completă a opțiunilor disponibile, ci doar un exemplu de lucru cu unele dintre ele.

## Adăugaţi semne bidirecţionale

Puteți folosi proprietatea [AddBidiMarks](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/addbidimarks/) pentru a specifica dacă să adăugați semne bidirecționale înainte de fiecare rulare BiDi atunci când exportați în format de text simplu. Aspose.Words inserează caracterul Unicode 'MARKA DE LA DREAPTA LA stângă' (U+200F) înainte de fiecare rulare bi-direcțională în text. Această opțiune corespunde "Adăugare semne bidirecționale" opțiune în MS Word conversie fișier dialog atunci când se exportează la un format de text simplu. Observați că apare doar în dialog dacă sunt adăugate orice limbi de editare arabă sau ebraică în MS Word.

Fragmentul de cod următor arată cum să folosești proprietatea **AddBidiMarks**. Valoarea implicită a acestei proprietăți este *false*:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-AddBidiMarks.cs" >}}

## Recunoașteți elementele de listă în timpul încărcării TXT

Aspose.Words poate importa elementele de listă dintr-un fișier text ca numere de listă sau text simplu în modelul său de obiect al documentului. Proprietatea [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detectnumberingwithwhitespaces/) permite specificarea modului în care elementele numerotate sunt recunoscute atunci când un document este importat din formatul simplu de text:

* Dacă această opțiune este setată la *true*, spațiile albe sunt, de asemenea, utilizate ca delimitatori pentru numerotarea listelor: algoritmul de recunoaștere a listelor pentru numerotare în stil arab (1., 1.1.2.) utilizează atât spații albe, cât și simbolul punctului "."

* Dacă această opțiune este setată la *false*, recunoașterea algoritmului de listă detectează paragrafele de listă atunci când numerele de listă se termină cu fie punctul, fie paranteza dreaptă sau simbolul punctului (cum ar fi "•", "*", "-" sau "o").

Exemplul de cod următor arată cum să folosiți această proprietate:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DetectNumberingWithWhitespaces.cs" >}}

## Gestiona spațiile de la început și de la sfârșit în timpul încărcării fișierului TXT

Puteți controla modul de gestionare a spațiilor din antet și coadă în timpul încărcării fișierului TXT. Spațiile inițiale ar putea fi tăiate, păstrate sau convertite în spații albe, iar spațiile finale ar putea fi tăiate sau păstrate.

Exemplul de cod următor arată cum se taie spațiile din partea stângă și din partea dreaptă în timp ce se importă fișierul TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-HandleSpacesOptions.cs" >}}

## Detectarea direcției textului documentului

Aspose.Words oferă proprietatea [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/documentdirection/) în clasa [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) pentru a detecta direcţia textului (RTL / LTR) în document. Această proprietate stabilește sau obține orientarea textului documentului furnizată în enumerarea [DocumentDirection](https://reference.aspose.com/words/net/aspose.words.loading/documentdirection/). Valoarea implicită este lăsată la *right*.

Exemplul următor de cod arată cum să detecteze direcția textului documentului în timp ce se importă fișierul TXT:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DocumentTextDirection.cs" >}}

## Export antet și subsol în Output TXT

Dacă doriți să exportați antetul și subsolul în documentul de ieșire TXT, puteți folosi proprietatea [ExportHeadersFootersMode](https://reference.aspose.com/words/net/aspose.words.saving/exportheadersfootersmode/). Această proprietate specifică modul de exportare a anteturilor și a subsolului în formatul text simplu.

Exemplul de cod următor arată cum se exportă anteturile și subsolurile în format text simplu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-ExportHeadersFootersMode.cs" >}}

## Export List Indentare în Output TXT

Aspose.Words a introdus clasa [TxtListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtlistindentation/) care permite specificarea modului în care sunt indentate nivelurile de listă la exportarea într-un format text simplu. În timp ce lucrezi cu [TxtSaveOption](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/), proprietatea [ListIndentation](https://reference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/listindentation/) este furnizată pentru a specifica caracterul de utilizat pentru indentarea nivelurilor de listă și numărătoarea specificând câte caractere să se utilizeze ca indentare pe un nivel de listă.

Valoarea implicită pentru proprietatea caracterului este '\0', indicând că nu există indentare. Pentru proprietatea count, valoarea implicită este 0 ceea ce înseamnă că nu există indentare.

### Folosind caracterul Tab

Exemplul de cod următor arată cum să exportați nivelurile de listă folosind caractere tabulație:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseTabCharacterPerLevelForListIndentation.cs" >}}

### Utilizarea caracterului Spațiu

Exemplul de cod următor arată cum se exportează nivelurile de listă folosind caracterele de spațiu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-UseSpaceCharacterPerLevelForListIndentation.cs" >}}

### Utilizare indentare implicită

Exemplul următor de cod arată cum să exporți niveluri de listă folosind indentare implicită:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingwithTxt-DefaultLevelForListIndentation.cs" >}}
