---
title: Criptarea unui Document în Java
second_title: Aspose.Words pentru Java
articleTitle: Criptarea unui Document
linktitle: Criptarea unui Document
description: "Criptați documentul utilizând algoritmi de criptare adecvați pentru anumite formate de documente în Java."
type: docs
weight: 20
url: /ro/java/encrypt-a-document/
---

Criptarea este procesul care traduce textul lizibil în secvențe de octeți fără sens, astfel încât să poată fi citit numai de persoana care are cheia de decriptare sau codul secret. Acest proces joacă un rol important în securizarea conținutului dvs. Vă ajută să codificați conținutul, să verificați originea unui document, să dovediți că conținutul nu a fost modificat după ce a fost trimis și să vă asigurați că datele din document sunt sigure.

Acest articol explică modul în care Aspose.Words vă permite să criptați un document și cum să verificați dacă un document are criptare sau nu.

## Criptați cu parolă

Pentru a cripta un document, utilizați proprietatea **Password** pentru a furniza o parolă care funcționează ca o cheie de criptare. Aceasta va modifica conținutul documentului dvs. și îl va face ilizibil. Documentul criptat va necesita introducerea acestei parole înainte de a putea fi deschis.

{{% alert color="primary" %}}

Puteți găsi proprietatea **Password** corespunzătoare pentru formatul dorit. Fiecare format de salvare a documentului are o clasă corespunzătoare care conține opțiuni de salvare pentru acest format. De exemplu, proprietatea [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) din clasa [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) pentru DOC sau proprietatea [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) din clasa [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) pentru DOCX, DOCM, DOTX, DOTM, și FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Rețineți că numai anumite formate de documente acceptă criptarea. De exemplu, RTF nu acceptă criptarea.

{{% /alert %}}

Tabelul de mai jos listează formatele și algoritmii de criptare suportați de Aspose.Words:

| Format | Criptare acceptată în timpul încărcării | Criptare acceptată în timp ce salvați |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR criptare40 de biți RC4 EncryptionCryptoAPI RC4 criptare | RC4 criptare (40 - bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA - 376 Standard EncryptionECMA-376 Criptare Agilă | ECMA - 376 Criptare Standard (AES128 + SHA1) |
| ODT, OTT | ODF Criptare (Blowfish / AES) | ODF criptare (AES256 + SHA256) |
| PDF |  | RC4 criptare (40 / 128 bit) |

Următorul exemplu de cod arată cum să criptați un document cu o parolă:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Verificați dacă un Document este criptat

În unele cazuri, este posibil să aveți un document care nu poate fi citit și doriți să vă asigurați că documentul este criptat și nu este corupt sau comprimat.

Pentru a detecta dacă un document este criptat și dacă este necesară o parolă, puteți utiliza proprietatea [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) a clasei [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/). Această proprietate vă va permite, de asemenea, să efectuați o acțiune înainte de a încărca un document, de exemplu, informând un utilizator să furnizeze o parolă.

Următorul exemplu de cod arată cum să detectați criptarea documentului:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Deschideți un Document cu sau fără parolă

Când ne-am asigurat că un document este criptat, putem încerca să deschidem acest document fără parolă, ceea ce ar trebui să ducă la o excepție.

Următorul exemplu de cod arată cum să încercați să deschideți un document criptat fără o parolă:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

După ce am văzut că un document criptat nu poate fi deschis fără o parolă, putem încerca să îl deschidem introducând parola.

Următorul exemplu de cod arată cum să încercați să deschideți un document criptat cu o parolă:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
