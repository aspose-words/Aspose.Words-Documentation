---
title: Criptografar um documento em C++
second_title: Aspose.Words para C++
articleTitle: Criptografar um documento
linktitle: Criptografar um documento
description: "Criptografe seu documento usando algoritmos de criptografia apropriados para formatos de Documento específicos."
type: docs
weight: 20
url: /pt/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

A criptografia é o processo que traduz texto legível em sequências de bytes sem sentido, de modo que só pode ser lido pela pessoa que possui a chave de descriptografia ou o código secreto. Este processo desempenha um papel importante na segurança do seu conteúdo. Ajuda a codificar o conteúdo, a verificar a origem de um documento, a provar que o conteúdo não foi modificado após o seu envio e a garantir que os dados do documento são seguros.

Este artigo explica como Aspose.Words permite criptografar um documento e como verificar se um documento tem criptografia ou não.

## Criptografar com senha

Para criptografar um documento, use a propriedade **Password** para fornecer uma senha que funcione como uma chave de criptografia. Isso modificará o conteúdo do seu documento e o tornará ilegível. O documento criptografado exigirá que essa senha seja inserida antes de poder ser aberta.

{{% alert color="primary" %}}

Você pode encontrar a propriedade **Password** apropriada para o formato necessário. Cada formato de gravação de documento no [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) tem uma classe correspondente contendo opções de gravação para este formato. Por exemplo, a propriedade [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) na classe [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) para DOC ou a propriedade [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) na classe [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) para DOCX, DOCM, DOTX, DOTM, e FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Note que apenas alguns formatos de documentos suportam encriptação. Por exemplo, RTF não suporta encriptação.

{{% /alert %}}

A tabela abaixo lista os formatos e algoritmos de encriptação suportados por Aspose.Words:

| Formato | Criptografia suportada durante o carregamento | Criptografia suportada ao salvar |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR encriptação40 bits RC4 EncryptionCryptoAPI RC4 encriptação | RC4 encriptação (40 bits) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Encriptação PadrãoECMA-376 Encriptação Ágil | ECMA-376 Encriptação Padrão (AES128 + SHA1) |
| ODT, OTT | ODF Encriptação (Blowfish / AES) | ODF encriptação (AES256 + SHA256) |
| PDF | RC4 encriptação (40/128 bits) |

O exemplo de código a seguir mostra como criptografar um documento com uma senha:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Verificar se um documento está encriptado

Em alguns casos, você pode ter um documento ilegível e quer ter certeza de que o documento está criptografado e não corrompido ou compactado.

Para detectar se um documento está encriptado e se é necessária uma palavra-passe, pode utilizar a propriedade [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) da classe [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Essa propriedade também permitirá que você execute alguma ação antes de carregar um documento, por exemplo, informando um usuário para fornecer uma senha.

O exemplo de código a seguir mostra como detectar a criptografia do documento:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Abrir um documento com ou sem palavra-passe

Quando tivermos a certeza de que um documento está encriptado, podemos tentar abri-lo sem uma palavra-passe, o que deverá dar origem a uma excepção.

O exemplo de código a seguir mostra como tentar abrir um documento criptografado sem uma senha:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Depois de termos visto que um documento criptografado não pode ser aberto sem uma senha, podemos tentar abri-lo digitando a senha.

O exemplo de código a seguir mostra como tentar abrir um documento criptografado com uma senha:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
