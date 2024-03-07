---
title: Criptografar um documento em C#
second_title: Aspose.Words para .NET
articleTitle: Criptografar um documento
linktitle: Criptografar um documento
description: "Criptografe seu documento usando algoritmos de criptografia apropriados para formatos de documento específicos em C#."
type: docs
weight: 20
url: /pt/net/encrypt-a-document/
---

A criptografia é o processo que traduz texto legível em sequências de bytes sem sentido, de forma que só possa ser lido pela pessoa que possui a chave de descriptografia ou o código secreto. Este processo desempenha um papel importante na segurança do seu conteúdo. Ajuda a codificar o conteúdo, verificar a origem de um documento, provar que o conteúdo não foi modificado após o envio e garantir que os dados do documento estão seguros.

Este artigo explica como o Aspose.Words permite criptografar um documento e como verificar se um documento possui criptografia ou não.

## Criptografar com senha

Para criptografar um documento, use a propriedade **Password** para fornecer uma senha que funcione como uma chave de criptografia. Isso modificará o conteúdo do seu documento e o tornará ilegível. O documento criptografado exigirá que essa senha seja inserida antes de poder ser aberto.

{{% alert color="primary" %}}

Você pode encontrar a propriedade **Password** apropriada para o formato necessário. Cada formato de salvamento de documento no [Salvando Namespace](https://reference.aspose.com/words/net/aspose.words.saving/) possui uma classe correspondente contendo opções de salvamento para este formato. Por exemplo, a propriedade [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) na classe [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) para DOC ou a propriedade [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) na classe [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) para DOCX, DOCM, DOTX, DOTM e FlatOpc.

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
|  PDF |  -                                                            |  Criptografia RC4 (40/128 bits) |

O exemplo de código a seguir mostra como criptografar um documento com uma senha:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Verifique se um documento está criptografado

Em alguns casos, você pode ter um documento ilegível e querer ter certeza de que o documento está criptografado e não corrompido ou compactado.

Para detectar se um documento está criptografado e se é necessária uma senha, você pode usar a propriedade [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) da classe [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/). Esta propriedade também permitirá que você execute alguma ação antes de carregar um documento, por exemplo, informar a um usuário para fornecer uma senha.

O exemplo de código a seguir mostra como detectar a criptografia do documento:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Abra um documento com ou sem senha

Quando tivermos certeza de que um documento está criptografado, podemos tentar abri-lo sem senha, o que deve levar a uma exceção.

O exemplo de código a seguir mostra como tentar abrir um documento criptografado sem senha:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Depois de vermos que um documento criptografado não pode ser aberto sem uma senha, podemos tentar abri-lo digitando a senha.

O exemplo de código a seguir mostra como tentar abrir um documento criptografado com uma senha:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
