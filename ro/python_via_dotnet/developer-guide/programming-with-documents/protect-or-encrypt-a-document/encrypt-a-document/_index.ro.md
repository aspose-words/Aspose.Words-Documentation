---
title: Criptarea unui Document în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Criptarea unui Document
linktitle: Criptarea unui Document
description: "Criptați documentul utilizând algoritmi de criptare adecvați pentru anumite formate de documente în Python."
type: docs
weight: 20
url: /ro/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Criptarea este procesul care traduce textul lizibil în secvențe de octeți fără sens, astfel încât să poată fi citit numai de persoana care are cheia de decriptare sau codul secret. Acest proces joacă un rol important în securizarea conținutului dvs. Vă ajută să codificați conținutul, să verificați originea unui document, să dovediți că conținutul nu a fost modificat după ce a fost trimis și să vă asigurați că datele din document sunt sigure.

Acest articol explică modul în care Aspose.Words vă permite să criptați un document și cum să verificați dacă un document are criptare sau nu.

## Criptați cu parolă

Pentru a cripta un document, utilizați proprietatea **password** pentru a furniza o parolă care funcționează ca o cheie de criptare. Aceasta va modifica conținutul documentului dvs. și îl va face ilizibil. Documentul criptat va necesita introducerea acestei parole înainte de a putea fi deschis.

{{% alert color="primary" %}}

Puteți găsi proprietatea **password** corespunzătoare pentru formatul dorit. Fiecare format de salvare a documentului din modulul [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) are o clasă corespunzătoare care conține opțiuni de salvare pentru acest format. De exemplu, proprietatea [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) din clasa [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) pentru DOC sau proprietatea [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) din clasa [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) pentru DOCX, DOCM, DOTX, DOTM, și FlatOpc.

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

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# DocSaveOptions only applies to Doc and Dot save formats.
options = aw.saving.DocSaveOptions(aw.SaveFormat.DOC);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.save(artifacts_dir + "DocSaveOptions.SaveAsDoc.doc", options)
{{< /highlight >}}

## Verificați dacă un Document este criptat

În unele cazuri, este posibil să aveți un document care nu poate fi citit și doriți să vă asigurați că documentul este criptat și nu este corupt sau comprimat.

Pentru a detecta dacă un document este criptat și dacă este necesară o parolă, puteți utiliza proprietatea [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) a clasei [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). Această proprietate vă va permite, de asemenea, să efectuați o acțiune înainte de a încărca un document, de exemplu, informând un utilizator să furnizeze o parolă.

Următorul exemplu de cod arată cum să detectați criptarea documentului:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
saveOptions = aw.saving.OdtSaveOptions(aw.SaveFormat.ODT)
saveOptions.password = "MyPassword"

doc.Save(artifacts_dir + "File.DetectDocumentEncryption.odt", saveOptions)
            
# Create a `FileFormatInfo` object for this document.
info = aw.FileFormatUtil.detect_file_format(artifacts_dir + "File.DetectDocumentEncryption.odt")

# Verify the encryption status of our document.
self.assertTrue(info.is_encrypted)
{{< /highlight >}}

## Deschideți un Document cu sau fără parolă

Când ne-am asigurat că un document este criptat, putem încerca să deschidem acest document fără parolă, ceea ce ar trebui să ducă la o excepție.

Următorul exemplu de cod arată cum să încercați să deschideți un document criptat fără o parolă:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# We will not be able to open this document with Microsoft Word or
# Aspose.Words without providing the correct password.
# The following line will throw an exception.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx"))
{{< /highlight >}}

După ce am văzut că un document criptat nu poate fi deschis fără o parolă, putem încerca să îl deschidem introducând parola.

Următorul exemplu de cod arată cum să încercați să deschideți un document criptat cu o parolă:

{{< highlight python >}}
import aspose.words as aw

# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.write("Hello world!")

# OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
options = aw.saving.OoxmlSaveOptions(aw.SaveFormat.DOCX)

# Set a password with which the document will be encrypted, and which will be required to open it.
options.password = "MyPassword"
doc.Save(artifacts_dir + "OoxmlSaveOptions.SaveAsDocx.docx", options)

# Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = aw.Document(artifacts_dir + "OoxmlSaveOptions.Password.docx", aw.loading.LoadOptions("MyPassword"))

self.assertEqual("Hello world!", doc.get_text().strip())
{{< /highlight >}}
