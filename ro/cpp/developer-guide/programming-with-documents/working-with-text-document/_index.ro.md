---
title: Lucrul cu documentul Text în C++
second_title: Aspose.Words pentru C++
articleTitle: Lucrul cu documentul Text
linktitle: Lucrul cu documentul Text
description: "Avansat TXT procesarea documentelor, liste, BiDi, anteturi/subsol, folosind C++."
type: docs
weight: 430
url: /ro/cpp/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

În acest articol, vom afla ce opțiuni pot fi utile pentru lucrul cu un document text prin Aspose.Words. Vă rugăm să rețineți că aceasta nu este o listă completă a opțiunilor disponibile, ci doar un exemplu de lucru cu unele dintre ele.

## Adăugați Semne Bidirecționale

Puteți utiliza proprietatea [AddBidiMarks](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_addbidimarks/) pentru a specifica dacă să adăugați mărci bidirecționale înainte de fiecare rulare BiDi atunci când exportați în format text simplu. Aspose.Words inserează caracterul Unicode'RIGHT-TO-LEFT MARK' (U+200F) înainte de fiecare rulare bidirecțională în text. Această opțiune corespunde opțiunii" adăugați mărci bidirecționale " din dialogul de conversie a fișierelor MS Word atunci când exportați într-un format text simplu. Rețineți că apare în dialog numai dacă oricare dintre limbile de editare arabă sau ebraică este adăugată în MS Word.

Următorul exemplu de cod arată cum să utilizați proprietatea **AddBidiMarks**. Valoarea implicită a acestei proprietăți este *false*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-AddBidiMarks.cpp" >}}

## Recunoașteți Elementele Din Listă În Timpul Încărcării TXT

Aspose.Words poate importa elementul de listă al unui fișier text ca numere de listă sau text simplu în modelul său de obiect document. Proprietatea [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detectnumberingwithwhitespaces/) permite specificarea modului în care elementele de listă numerotate sunt recunoscute atunci când un document este importat din format text simplu:

* Dacă această opțiune este setată la *true*, spațiile albe sunt, de asemenea, utilizate ca delimitatori de numere de listă: algoritm de recunoaștere a listei pentru numerotarea în stil arab (1., 1.1.2.) utilizează atât spații albe, cât și simboluri punct (".").
* Dacă această opțiune este setată la *false*, algoritmul de recunoaștere a listelor detectează paragrafele listei, când numerele listei se termină fie cu punct, paranteză dreaptă sau simboluri glonț (cum ar fi "•", "*", "-" sau "o").

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DetectNumberingWithWhitespaces.cpp" >}}

## Cum să gestionați spațiile de conducere și de sfârșit în timpul încărcării TXT

Puteți controla modul de manipulare a spațiilor de conducere și de final în timpul încărcării fișierului TXT. Spațiile din față ar putea fi tăiate, conservate sau convertite în indentare, iar spațiile din spate ar putea fi tăiate sau conservate.

Următorul exemplu de cod arată cum să tăiați spațiile de început și de sfârșit în timp ce importați fișierul TXT:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-HandleSpacesOptions.cpp" >}}

## Export antet și subsol în Ieșire TXT

Dacă doriți să exportați antetul și subsolul în documentul de ieșire TXT, puteți utiliza proprietatea [ExportHeadersFootersMode](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptionsbase/get_exportheadersfootersmode/). Această proprietate specifică modul în care anteturile și subsolurile sunt exportate în formatul text simplu.

Următorul exemplu de cod arată cum să exportați anteturi și subsoluri în format text simplu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-ExportHeadersFootersMode.cpp" >}}

## Indentarea listei de Export în Ieșire TXT

Aspose.Words a introdus clasa [TxtListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtlistindentation/) care permite specificarea modului în care nivelurile listei sunt indentate în timp ce se exportă într-un format de text simplu. În timp ce lucrați cu [TxtSaveOption](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/), proprietatea [ListIndentation](https://reference.aspose.com/words/cpp/aspose.words.saving/txtsaveoptions/get_listindentation/) este furnizată pentru a specifica caracterul care va fi utilizat pentru indentarea nivelurilor listei și pentru a număra specificând câte caractere să utilizați ca indentare pentru un nivel de listă.

Valoarea implicită pentru proprietatea caracterelor este' \0 ' indicând că nu există indentare. Pentru proprietatea count, valoarea implicită este 0, ceea ce înseamnă că nu există indentare.

### Utilizarea Caracter Tab

Următorul exemplu de cod arată cum să exportați nivelurile listei folosind caractere de filă:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseTabCharacterPerLevelForListIndentation.cpp" >}}

### Utilizarea Caracterului Spațial

Următorul exemplu de cod arată cum să exportați nivelurile listei folosind caractere spațiale:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-UseSpaceCharacterPerLevelForListIndentation.cpp" >}}

### Utilizarea Indentării Implicite

Următorul exemplu de cod arată cum să exportați nivelurile listei utilizând indentarea implicită:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithTxt-DefaultLevelForListIndentation.cpp" >}}
