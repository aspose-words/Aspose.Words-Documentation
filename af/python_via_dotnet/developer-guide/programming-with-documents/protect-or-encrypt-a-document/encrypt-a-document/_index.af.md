---
title: Enkripteer'n Dokument in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Enkripteer'n Dokument
linktitle: Enkripteer'n Dokument
description: "Enkripteer jou dokument met toepaslike enkripsie-algoritmes vir spesifieke dokumentformate in Python."
type: docs
weight: 20
url: /af/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Enkripsie is die proses wat leesbare teks vertaal na betekenislose volgorde van grepe sodat dit net gelees kan word deur die persoon wat die dekripsie sleutel of die geheime kode het. Hierdie proses speel'n belangrike rol in die beveiliging van u inhoud. Dit help om die inhoud te kodeer, die oorsprong van'n dokument te verifieer, te bewys dat die inhoud nie verander is nadat dit gestuur is nie, en te verseker dat die data van die dokument veilig is.

Hierdie artikel verduidelik hoe Aspose.Words jou toelaat om'n dokument te enkripteer en hoe om te kyk of'n dokument enkripsie het of nie.

## Enkripteer Met Wagwoord

Om'n dokument te enkripteer, gebruik die **password** eienskap om'n wagwoord te verskaf wat as'n enkripsie sleutel funksioneer. Dit sal die inhoud van u dokument verander en dit onleesbaar maak. Die geënkripteerde dokument sal vereis dat hierdie wagwoord ingevoer word voordat dit oopgemaak kan word.

{{% alert color="primary" %}}

U kan die toepaslike **password** eienskap vir die vereiste formaat vind. Elke dokument stoor formaat in die [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) module het'n ooreenstemmende klas wat stoor opsies vir hierdie formaat. Byvoorbeeld, die [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) eienskap in die [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) klas vir DOC, of die [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) eienskap in die [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) klas vir DOCX, DOCM, DOTX, DOTM, en FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Let daarop dat slegs sekere dokumentformate kodering ondersteun. Byvoorbeeld, RTF ondersteun nie enkripsie nie.

{{% /alert %}}

Die tabel hieronder bevat die formate en enkripsie algoritmes ondersteun deur Aspose.Words:

| Formaat | Ondersteunde Enkripsie tydens Laai | Ondersteunde Enkripsie terwyl Gestoor Word |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR enkripsie 40-bit RC4 EncryptionCryptoAPI RC4 Enkripsie | RC4 Enkripsie (40 - bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standaard EncryptionECMA - 376 Agile Enkripsie | ECMA-376 Standaard Enkripsie (AES128 + SHA1) |
| ODT, OTT | ODF Enkripsie (Blowfish/AES) | ODF Enkripsie (AES256 + SHA256) |
| PDF |  | RC4 Enkripsie (40/128 bietjie) |

Die volgende kode voorbeeld toon hoe om'n dokument met'n wagwoord te enkripteer:

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

## Kontroleer Of'n Dokument Geënkripteer Is

In sommige gevalle het u moontlik'n onleesbare dokument en wil u seker wees dat die dokument geënkripteer is en nie beskadig of saamgepers is nie.

Om vas te stel of'n dokument geënkripteer is en as'n wagwoord benodig word, kan jy die [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) eienskap van die [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) klas gebruik. Hierdie eiendom sal jou ook toelaat om'n aksie uit te voer voordat jy'n dokument laai, byvoorbeeld om'n gebruiker in te lig om'n wagwoord te verskaf.

Die volgende kode voorbeeld toon hoe om die dokument enkripsie te ontdek:

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

## Open'n Dokument Met Of Sonder'n Wagwoord

Wanneer ons seker gemaak het dat'n dokument geënkripteer is, kan ons probeer om hierdie dokument sonder'n wagwoord oop te maak, wat tot'n uitsondering moet lei.

Die volgende kode voorbeeld toon hoe om te probeer om'n geïnkripteer dokument oop te maak sonder'n wagwoord:

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

Nadat ons gesien het dat'n geënkripteerde dokument nie sonder'n wagwoord oopgemaak kan word nie, kan ons probeer om dit oop te maak deur die wagwoord in te voer.

Die volgende kode voorbeeld toon hoe om te probeer om'n geïnkripteer dokument met'n wagwoord oop te maak:

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
