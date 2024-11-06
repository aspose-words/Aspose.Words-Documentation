---
title: Lucrul cu documentul Text în Java
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu documentul Text
linktitle: Lucrul cu documentul Text
description: "Avansat TXT procesarea documentelor, liste, BiDi, anteturi/subsol, folosind Java."
type: docs
weight: 430
url: /ro/java/working-with-text-document/
---

În acest articol, vom afla ce opțiuni pot fi utile pentru lucrul cu un document text prin Aspose.Words. Vă rugăm să rețineți că aceasta nu este o listă completă a opțiunilor disponibile, ci doar un exemplu de lucru cu unele dintre ele.

## Adăugați Semne Bidirecționale

Puteți utiliza proprietatea [AddBidiMarks](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getAddBidiMarks) pentru a specifica dacă să adăugați mărci bidirecționale înainte de fiecare rulare BiDi atunci când exportați în format text simplu. Aspose.Words inserează caracterul Unicode'RIGHT-TO-LEFT MARK' (U+200F) înainte de fiecare rulare bidirecțională în text. Această opțiune corespunde opțiunii" adăugați marcaje bidirecționale " din dialogul de conversie a fișierelor MS Word atunci când exportați într-un format text simplu. Rețineți că apare în dialog numai dacă oricare dintre limbile de editare arabă sau ebraică sunt adăugate în MS Word.

Următorul exemplu de cod arată cum să utilizați proprietatea `TxtSaveOptions.AddBidiMarks`. Valoarea implicită a acestei proprietăți este *true*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-AddBidiMarks.java" >}}

## Recunoașteți Elementele Din Listă În Timpul Încărcării TXT

Aspose.Words poate importa elementul de listă al unui fișier text ca numere de listă sau text simplu în modelul său de obiect document. Proprietatea [DetectNumberingWithWhitespaces](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectNumberingWithWhitespaces) permite specificarea modului în care elementele de listă numerotate sunt recunoscute atunci când un document este importat din format text simplu:

* Dacă această opțiune este setată la *true*, spațiile albe sunt, de asemenea, utilizate ca delimitatori de numere de listă: algoritm de recunoaștere a listei pentru numerotarea în stil arab (1., 1.1.2.) utilizează atât spații albe, cât și simboluri punct (".").
* Dacă această opțiune este setată la *false*, algoritmul de recunoaștere a listelor detectează paragrafele listei, când numerele listei se termină fie cu punct, paranteză dreaptă sau simboluri glonț (cum ar fi "•", "*", "-" sau "o").

Următorul exemplu de cod arată cum să utilizați această proprietate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DetectNumberingWithWhitespaces.java" >}}

## Manipulați spațiile din față și din spate în timpul încărcării TXT

Puteți controla modul de manipulare a spațiilor de conducere și de final în timpul încărcării fișierelor TXT. Spațiile din față ar putea fi tăiate, conservate sau convertite în indentare, iar spațiile din spate ar putea fi tăiate sau conservate.

Exemplul de cod dat mai jos arată cum să tăiați spațiile de început și de sfârșit în timp ce importați fișierul TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-HandleSpacesOptions.java" >}}

## Detectați Direcția Textului Documentului

Aspose.Words oferă proprietatea [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDocumentDirection) în clasa [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) pentru a detecta direcția textului (RTL / LTR) în document. Această proprietate setează sau primește instrucțiunile textului documentului furnizate în [DocumentDirection](https://reference.aspose.com/words/java/com.aspose.words/documentdirection/) enumerare. Valoarea implicită este de la stânga la dreapta.

Următorul exemplu de cod arată cum să detectați direcția textului documentului în timp ce importați fișierul TXT:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-DocumentTextDirection.java" >}}

## Export antet și subsol în Ieșire TXT fișier

Dacă doriți să exportați antetul și subsolul în documentul de ieșire TXT, puteți utiliza proprietatea [ExportHeadersFootersMode](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getExportHeadersFootersMode). Această proprietate specifică modul în care anteturile și subsolurile sunt exportate în formatul text simplu.

Următorul exemplu de cod arată cum să exportați anteturi și subsoluri în format text simplu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-ExportHeadersFootersMode.java" >}}

## Indentarea listei de Export în Ieșire TXT

Aspose.Words a introdus clasa [TxtListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtlistindentation/) care permite specificarea modului în care nivelurile listei sunt indentate în timp ce se exportă într-un format de text simplu. În timp ce lucrați cu [TxtSaveOption](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/), proprietatea [ListIndentation](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getListIndentation) este furnizată pentru a specifica caracterul care va fi utilizat pentru indentarea nivelurilor listei și pentru a număra specificând câte caractere să utilizați ca indentare pentru un nivel de listă.

Valoarea implicită pentru proprietatea caracter este '\0' indicând faptul că nu există indentare. Pentru proprietatea count, valoarea implicită este 0, ceea ce înseamnă că nu există indentare.

### Utilizarea Caracter Tab

Următorul exemplu de cod arată cum să exportați nivelurile listei folosind caractere de filă:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useTabCharacterPerLevelForListIndentation.java" >}}

### Utilizarea Caracterului Spațial

Următorul exemplu de cod arată cum să exportați nivelurile listei folosind caractere spațiale:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-useSpaceCharacterPerLevelForListIndentation.java" >}}

### Utilizarea Indentării Implicite

Următorul exemplu de cod arată cum să exportați nivelurile listei utilizând indentarea implicită:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithTxt-defaultLevelForListIndentation.java" >}}
