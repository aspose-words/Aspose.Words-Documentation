---
title: Criptografar um documento em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Criptografar um documento
linktitle: Criptografar um documento
description: "Criptografe seu documento usando algoritmos de criptografia apropriados para formatos de documento específicos em Python."
type: docs
weight: 20
url: /pt/python-net/encrypt-a-document/
---

A criptografia é o processo que traduz texto legível em sequências de bytes sem sentido, de forma que só possa ser lido pela pessoa que possui a chave de descriptografia ou o código secreto. Este processo desempenha um papel importante na segurança do seu conteúdo. Ajuda a codificar o conteúdo, verificar a origem de um documento, provar que o conteúdo não foi modificado após o envio e garantir que os dados do documento estão seguros.

Este artigo explica como Aspose.Words permite criptografar um documento e como verificar se um documento possui criptografia ou não.

## Criptografar com senha

Para criptografar um documento, use a propriedade **senha** para fornecer uma senha que funcione como uma chave de criptografia. Isso modificará o conteúdo do seu documento e o tornará ilegível. O documento criptografado exigirá que essa senha seja inserida antes de poder ser aberto.

{{% alert color="primary" %}}

Você pode encontrar a propriedade **senha** apropriada para o formato necessário. Cada formato de salvamento de documento no módulo [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) possui uma classe correspondente contendo opções de salvamento para este formato. Por exemplo, a propriedade [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) na classe [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) para DOC ou a propriedade [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) na classe [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) para DOCX, DOCM, DOTX, DOTM e FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Observe que apenas alguns formatos de documento oferecem suporte à criptografia. Por exemplo, o RTF não oferece suporte à criptografia.

{{% /alert %}}

A tabela abaixo lista os formatos e algoritmos de criptografia suportados pelo Aspose.Words:

| Formatar |  Criptografia suportada durante o carregamento |  Criptografia suportada ao salvar |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  Criptografia XORCriptografia RC4 de 40 bitsCryptoAPI RC4 Encryption |  Criptografia RC4 (40 bits) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Criptografia padrão ECMA-376Criptografia ágil ECMA-376 |  Criptografia padrão ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Criptografia ODF (Blowfish/AES) |  Criptografia ODF (AES256 + SHA256) |
|  PDF |                                                          |  Criptografia RC4 (40/128 bits) |

O exemplo de código a seguir mostra como criptografar um documento com uma senha:

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

## Verifique se um documento está criptografado

Em alguns casos, você pode ter um documento ilegível e querer ter certeza de que o documento está criptografado e não corrompido ou compactado.

Para detectar se um documento está criptografado e se é necessária uma senha, você pode usar a propriedade [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) da classe [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/). Esta propriedade também permitirá que você execute alguma ação antes de carregar um documento, por exemplo, informar a um usuário para fornecer uma senha.

O exemplo de código a seguir mostra como detectar a criptografia do documento:

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

## Abra um documento com ou sem senha

Quando tivermos certeza de que um documento está criptografado, podemos tentar abri-lo sem senha, o que deve levar a uma exceção.

O exemplo de código a seguir mostra como tentar abrir um documento criptografado sem senha:

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

Depois de vermos que um documento criptografado não pode ser aberto sem uma senha, podemos tentar abri-lo digitando a senha.

O exemplo de código a seguir mostra como tentar abrir um documento criptografado com uma senha:

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
