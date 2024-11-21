---
title: Zašifrovat dokument Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Zašifrovat dokument
linktitle: Zašifrovat dokument
description: "Zašifrujte svůj dokument pomocí vhodných šifrovacích algoritmů pro konkrétní formáty dokumentů v Python."
type: docs
weight: 20
url: /cs/python-net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Šifrování je proces, který překládá čitelný text do nesmyslných sekvencí bytů, takže jej může číst pouze osoba, která má dešifrovací klíč nebo tajný kód. Tento proces hraje důležitou roli při zajišťování vašeho obsahu. Pomáhá zakódovat obsah, ověřit původ dokumentu, prokázat, že obsah nebyl po odeslání změněn a zajistit, aby údaje z dokumentu byly bezpečné.

Tento článek vysvětluje, jak Aspose.Words umožňuje zašifrovat dokument a jak zkontrolovat, zda dokument má šifrování nebo ne.

## Šifrovat pomocí hesla

Pro zašifrování dokumentu použijte **heslo** vlastnost poskytnout heslo, které funguje jako kódovací klíč. Tím se změní obsah vašeho dokumentu a učiní jej nečitelným. Zašifrovaný dokument bude vyžadovat, aby toto heslo bylo zapsáno před jeho otevřením.

{{% alert color="primary" %}}

Můžete najít vhodné **heslo** vlastnost pro požadovaný formát. Každý dokument uloží formát ve formátu [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) modul má odpovídající třídu obsahující možnosti uložení pro tento formát. Například: [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) majetek v [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) třída DOC nebo [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) majetek v [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) třída pro DOCX, DOCM, DOTX, DOTM, a FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Všimněte si, že šifrování podporuje pouze určité formáty dokumentů. Například RTF nepodporuje šifrování.

{{% /alert %}}

Níže uvedená tabulka uvádí formáty a šifrovací algoritmy podporované Aspose.Words:

| Formát |  Podporované šifrování při načítání |  Podporované šifrování při ukládání |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR šifrování40-bit RC4 šifrováníCryptoAPI RC4 Šifrování |  RC4 Šifrování (40-bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standardní šifrováníECMA-376 Agile Šifrování |  ECMA-376 Standardní šifrování (AES128 + SHA1) |
|  ODT, OTT |  ODF šifrování (Blowfish/AES) |  ODF šifrování (AES256 + SHA256) |
|  PDF |                                                          |  RC4 Šifrování (40/128 bitů) |

Následující příklad kódu ukazuje, jak zašifrovat dokument heslem:

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

## Zkontrolujte, zda je dokument zašifrován

V některých případech můžete mít nečitelný dokument a chcete si být jisti, že dokument je zašifrován a není poškozen nebo komprimován.

Chcete-li zjistit, zda je dokument zašifrován a pokud je vyžadováno heslo, můžete použít [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) majetek [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) třída. Tato vlastnost vám také umožní provést nějakou akci před načtením dokumentu, například informovat uživatele, aby poskytl heslo.

Následující příklad kódu ukazuje, jak zjistit šifrování dokumentů:

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

## Otevřít dokument s heslem nebo bez něj

Když jsme se ujistili, že dokument je zašifrovaný, můžeme se pokusit otevřít tento dokument bez hesla, což by mělo vést k výjimku.

Následující příklad kódu ukazuje, jak zkusit otevřít zašifrovaný dokument bez hesla:

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

Poté, co jsme viděli, že šifrovaný dokument nelze otevřít bez hesla, můžeme se pokusit jej otevřít zadáním hesla.

Následující příklad kódu ukazuje, jak zkusit otevřít zašifrovaný dokument heslem:

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
