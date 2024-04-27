---
title: Criptografar um documento em Java
second_title: Aspose.Words para Java
articleTitle: Criptografar um documento
linktitle: Criptografar um documento
description: "Criptografe seu documento usando algoritmos de criptografia apropriados para formatos de documentos específicos em Java."
type: docs
weight: 20
url: /pt/java/encrypt-a-document/
---

Criptografia é o processo que traduz texto legível para sequências sem sentido de bytes para que ele só pode ser lido pela pessoa que tem a chave de decodificação ou o código secreto. Este processo desempenha um papel importante na segurança do seu conteúdo. Ajuda a codificar o conteúdo, verificar a origem de um documento, provar que o conteúdo não foi modificado após o envio, e garantir que os dados do documento estejam seguros.

Este artigo explica como Aspose.Words permite criptografar um documento e como verificar se um documento tem criptografia ou não.

## Criptografar com senha

Para criptografar um documento, use o **Password** propriedade para fornecer uma senha que funciona como uma chave de criptografia. Isso irá modificar o conteúdo do seu documento e torná-lo ilegível. O documento criptografado exigirá que essa senha seja inserida antes de ser aberta.

{{% alert color="primary" %}}

Você pode encontrar o apropriado **Password** propriedade para o formato necessário. Cada formato de salvamento de documentos tem uma classe correspondente contendo opções de salvamento para este formato. Por exemplo, o [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) propriedade na [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) classe para DOC, ou o [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) propriedade na [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) classe para DOCX, DOCM, DOTX, DOTM, e FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Note que apenas certos formatos de documentos suportam criptografia. Por exemplo, RTF não suporta criptografia.

{{% /alert %}}

A tabela abaixo lista os formatos e algoritmos de criptografia suportados por Aspose.Words:

| Formato |  Criptografia suportada enquanto carrega |  Criptografia suportada enquanto economiza |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC. DOT |  Criptografia XOR40-bit RC4 EncryptionCryptoAPI Criptografia RC4 |  Criptografia RC4 (40 bits) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroAtivado, FlatOpcTemplateMacro Activado |  Criptografia padrão ECMA-376 Criptografia ágil |  Criptografia padrão ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Criptografia ODF (Blowfish/AES) |  Criptografia ODF (AES256 + SHA256) |
|  PDF PDF |  -                                                            |  Criptografia RC4 (40/128 bit) |

O exemplo de código a seguir mostra como criptografar um documento com uma senha:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Verifique se um documento está criptografado

Em alguns casos, você pode ter um documento ilegível e quer ter certeza de que o documento é criptografado e não corrompido ou comprimido.

Para detectar se um documento é criptografado e se uma senha é necessária, você pode usar o [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) propriedade da [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) classe. Esta propriedade também permitirá que você execute alguma ação antes de carregar um documento, por exemplo, informando um usuário para fornecer uma senha.

O exemplo a seguir mostra como detectar a criptografia de documentos:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Abra um documento com ou sem uma senha

Quando tivermos certeza de que um documento é criptografado, podemos tentar abrir este documento sem uma senha, o que deve levar a uma exceção.

O exemplo de código a seguir mostra como tentar abrir um documento criptografado sem uma senha:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Depois que vimos que um documento criptografado não pode ser aberto sem uma senha, podemos tentar abri-lo digitando a senha.

O exemplo de código a seguir mostra como tentar abrir um documento criptografado com uma senha:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
