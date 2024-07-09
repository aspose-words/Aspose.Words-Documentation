---
title: Trabalho com assinaturas digitais em Java
second_title: Aspose.Words para Java
articleTitle: Trabalho com assinaturas digitais
linktitle: Trabalho com assinaturas digitais
description: "Assine documentos digitalmente e detecte, conte, verifique e remova assinaturas digitais existentes usando Java."
type: docs
weight: 30
url: /pt/java/working-with-digital-signatures/
---

Uma assinatura digital é uma implementação tecnológica de assinaturas eletrônicas para assinar documentos e autenticar o assinante para garantir que um documento não foi modificado desde que foi assinado. Cada assinatura digital é única para cada assinante por seguir o protocolo PKI para gerar chaves públicas e privadas. Assinar um documento digitalmente significa criar uma assinatura usando a chave privada do signer, onde um algoritmo matemático é usado para criptografar o hash gerado.

Aspose.Words permite detectar, contar ou verificar as assinaturas digitais existentes, e também adicionar uma nova assinatura ao seu documento para descobrir qualquer adulteração nele. Você também pode remover todas as assinaturas digitais de um documento. Use o [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) classe para trabalhar com assinaturas digitais.

Este artigo explica como fazer todos os acima para validar a autenticidade e integridade de um documento digital.

{{% alert color="primary" %}}

Note que você pode acessar assinaturas digitais do seu documento somente quando estiver executando o Java 6 versão e acima.

{{% /alert %}}

{{% alert color="primary" %}}

**Experimente online**

Você pode tentar esta funcionalidade com a nossa [Assinatura gratuita online](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formatos suportados

Aspose.Words permite trabalhar com assinaturas digitais em documentos DOC, OOXML e ODT e assinar o documento gerado em PDF ou XPS formato.

## Limitações de assinaturas digitais

A tabela abaixo descreve algumas limitações que você pode enfrentar ao trabalhar com assinaturas digitais através Aspose.Words, bem como algumas opções alternativas.

|  Limitação |  Opção alternativa |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Perda de assinaturas digitais em um documento após carregar e salvá-lo. Portanto, processar um documento para um servidor pode causar a perda de todas as assinaturas digitais sem aviso prévio |  Verifique se um documento tem assinaturas digitais e tome a ação apropriada se algum for encontrado. Por exemplo, envie um alerta para os clientes informando que o documento que eles estão carregando contém assinaturas digitais que serão perdidas se for processado |
|  Aspose.Words suporta trabalhar com macros em um documento. Mas... Aspose.Words ainda não suporta assinaturas digitais em macros |  Exportar o documento de volta para qualquer formato do Word e usar Microsoft Word para adicionar uma assinatura digital a macros |

## Detectar, Contar e Verificar assinaturas digitais

Aspose.Words permite detectar assinatura digital em um documento usando o [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) método e [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) propriedade. Vale a pena notar que tal verificação só irá detectar o fato da assinatura, mas não sua validade.

Um documento pode ser assinado mais de uma vez, e isso pode ser feito por diferentes usuários. Para verificar a validade das assinaturas digitais, você precisa carregá-las do documento usando o [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) método e usar o [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) propriedade. Também Aspose.Words permite que você conte um conjunto de todas as assinaturas digitais dentro de um documento usando o [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) propriedade.

Tudo isso fornece uma maneira eficiente e segura de verificar um documento para assinaturas antes de processá-lo.

O exemplo de código a seguir mostra como detectar a presença de assinaturas digitais e verificar:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Criar uma assinatura digital {#create-a-digital-signature}

Para criar uma assinatura digital, você precisará carregar um certificado de assinatura que confirme a identidade. Quando você envia um documento assinado digitalmente, você também envia seu certificado e chave pública.

Aspose.Words permite que você crie o certificado X.509, um certificado digital que usa o padrão internacionalmente aceito X.509 PKI para verificar se uma chave pública pertence ao signer incluído dentro do certificado. Para fazer isso, use o [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) método dentro do [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) classe.

As próximas seções explicam como adicionar uma assinatura digital, linha de assinatura e como assinar um documento PDF gerado.

### Assine um documento

Aspose.Words permite que você assine um documento DOC, DOCX ou ODT digitalmente usando o [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) método e [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) propriedades.

O exemplo de código a seguir mostra como assinar documentos usando um titular de certificado e as opções de sinal:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### Adicionar uma linha de assinatura

Uma linha de assinatura é uma representação visual de uma assinatura digital em um documento. Aspose.Words permite inserir uma linha de assinatura usando o [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) método. Você também pode definir os parâmetros para esta representação usando o [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) classe.

Por exemplo, a imagem abaixo mostra como as assinaturas válidas e inválidas podem ser exibidas.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Além disso, se um documento contém uma linha de assinatura e nenhuma assinatura digital, há um recurso para pedir ao usuário para adicionar uma assinatura.

O exemplo de código a seguir mostra como assinar um documento com um certificado pessoal e uma linha de assinatura específica:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Assine um Documento PDF Gerado {#sign-a-generated-pdf-document}

Aspose.Words permite assinar e obter todos os detalhes de um documento PDF usando o [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) propriedades.

O exemplo a seguir mostra como assinar um PDF gerado:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

A imagem abaixo mostra que o documento PDF gerado é aberto em Adobe Acrobat e a assinatura digital é verificada como presente e válida.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Recupere o valor de assinatura digital

Aspose.Words também fornece a capacidade de recuperar o valor de assinatura digital de um documento digitalmente assinado como um array byte usando o [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) propriedade.

O exemplo a seguir mostra como obter o valor de assinatura digital como um array byte de um documento:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Remover assinaturas digitais

Aspose.Words permite remover todas as assinaturas digitais de um documento assinado usando o [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) método.

O exemplo de código a seguir mostra como carregar e remover assinaturas digitais de um documento:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Note que você não pode remover apenas uma assinatura digital dentro de seu documento.

{{% /alert %}}
