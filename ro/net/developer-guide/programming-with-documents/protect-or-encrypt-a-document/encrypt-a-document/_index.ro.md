---
title: Criptați un document în C#
second_title: Aspose.Words pentru .NET
articleTitle: Criptați un document
linktitle: Criptați un document
description: "Criptați documentul folosind algoritmi de criptare potriviți pentru formate specifice de documente în C#."
type: docs
weight: 20
url: /ro/net/encrypt-a-document/
---

Encriptarea este procesul care traduce textul lizibil în secvențe de octeți fără sens astfel încât poate fi citit numai de persoana care are cheia de decriptare sau codul secret. Acest proces joacă un rol important în securizarea conținutului tău. "O ajută să encodeze conținutul, să verifice originea unui document, să dovedească că conținutul nu a fost modificat după ce a fost trimis, și să asigure că datele din document sunt în siguranță."

Acest articol explică cum Aspose.Words îți permite să criptezi un document și cum să verifici dacă un document este criptat sau nu.

## Criptează cu parolă

Pentru a cripta un document, folosiți proprietatea **Password** pentru a furniza o parolă care funcționează ca o cheie de criptare. Aceasta va modifica conținutul documentului și îl va face necitibil. "Documentul criptat va cere introducerea acestui parola înainte de a putea fi deschis."

{{% alert color="primary" %}}

Poţi găsi proprietatea corespunzătoare **Password** pentru formatul necesar. Fiecare format de salvare de documente în [Saving Namespace](https://reference.aspose.com/words/net/aspose.words.saving/) are o clasă corespunzătoare care conține opțiuni de salvare pentru acest format. De exemplu, proprietatea [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) în clasa [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) pentru DOC, sau proprietatea [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) în clasa [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) pentru DOCX, DOCM, DOTX, DOTM și FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Rețineți că doar anumite formate de documente acceptă criptare. De exemplu, RTF nu acceptă criptarea.

{{% /alert %}}

Tabelul de mai jos prezintă formatul și algoritmii de criptare acceptați de Aspose.Words":

| Formatul | Criptare suportată în timpul încărcării | Criptare suportată în timp ce salvezi |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR criptare40-bit RC4 CriptareCryptoAPI RC4 Criptare | RC4 Cryptare (40-biți) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standard CriptareECMA-376 Criptare Agilă | Standardul de criptare ECMA-376 (AES128 + SHA1) |
| ODT, OTH | ODF Encryption (Blowfish/AES) | ODF Criptare (AES256 + SHA256) |
| PDF | - | RC4 criptare (40/128 biți) |

Exemplul de cod următor arată cum se criptează un document cu o parolă:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Verifică dacă un document este criptat

În unele cazuri, s-ar putea să aveți un document nedecit și doriți să fiți siguri că documentul este criptat și nu este corupt sau comprimat.

Pentru a detecta dacă un document este criptat și dacă este necesar un parole, puteți folosi proprietatea [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) a clasei [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/). Această proprietate va permite, de asemenea, să efectuați o acțiune înainte de încărcarea unui document, de exemplu, informarea unui utilizator pentru a furniza un parolă.

Exemplul de cod următor arată cum să detectăm criptarea documentului:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Deschide un document cu sau fără parolă

Când ne asigurăm că un document este criptat, putem încerca să deschidem acest document fără o parolă, ceea ce ar trebui să ducă la o excepție.

Exemplul următor de cod arată cum să încerci să deschizi un document criptat fără o parolă:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

După ce am văzut că un document criptat nu poate fi deschis fără o parolă, putem încerca să-l deschidem introducând parola.

Exemplul de cod următor arată cum să încercați deschiderea unui document criptat cu o parolă:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
