---
title: Trabalhe com assinaturas digitais em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhe com assinaturas digitais
linktitle: Trabalhe com assinaturas digitais
description: "Assine documentos digitalmente e detecte, conte, verifique e remova assinaturas digitais existentes usando C#."
type: docs
weight: 40
url: /pt/net/working-with-digital-signatures/
---

Uma assinatura digital é uma implementação tecnológica de assinaturas eletrônicas para assinar documentos e autenticar o signatário para garantir que um documento não foi modificado desde que foi assinado. Cada assinatura digital é exclusiva para cada signatário devido ao protocolo PKI para gerar chaves públicas e privadas. Assinar um documento digitalmente significa criar uma assinatura usando a chave privada do signatário, onde um algoritmo matemático é usado para criptografar o hash gerado.

Aspose.Words permite detectar, contar ou verificar assinaturas digitais existentes e também adicionar uma nova assinatura ao seu documento para descobrir qualquer adulteração nele. Você também pode remover todas as assinaturas digitais de um documento. Use a classe [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) para trabalhar com assinaturas digitais.

Este artigo explica como fazer tudo isso para validar a autenticidade e integridade de um documento digital.

{{% alert color="primary" %}}

Observe que você pode acessar as assinaturas digitais do seu documento somente ao executar a versão .NET Framework 2.0 e superior.

{{% /alert %}}

{{% alert color="primary" %}}

**Experimente on-line**

Você pode experimentar esta funcionalidade com nosso [Assinatura on-line gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formatos Suportados

Aspose.Words permite trabalhar com assinaturas digitais em documentos DOC, OOXML e ODT e assinar o documento gerado em formato PDF ou XPS.

## Limitações das assinaturas digitais

A tabela abaixo descreve algumas limitações que você pode enfrentar ao trabalhar com assinaturas digitais por meio de Aspose.Words, bem como algumas opções alternativas.

|  Limitação |  Opção alternativa |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Perda de assinaturas digitais em um documento após carregá-lo e salvá-lo. Portanto, o processamento de um documento em um servidor pode causar a perda de todas as assinaturas digitais sem aviso prévio |  Verifique se um documento possui assinaturas digitais e tome as medidas apropriadas se alguma for encontrada. Por exemplo, envie um alerta aos clientes informando que o documento que estão enviando contém assinaturas digitais que serão perdidas caso sejam processadas |
|  Aspose.Words suporta trabalhar com macros em um documento. Mas o Aspose.Words ainda não oferece suporte a assinaturas digitais em macros |  Exporte o documento de volta para qualquer formato Word e use Microsoft Word para adicionar uma assinatura digital às macros |

## Detecte, conte e verifique assinaturas digitais

Aspose.Words permite detectar assinatura digital em um documento usando o método [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) e a propriedade [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/). Vale ressaltar que tal verificação detectará apenas o fato da assinatura, mas não sua validade.

Um documento pode ser assinado mais de uma vez e isso pode ser feito por diferentes usuários. Para verificar a validade das assinaturas digitais, você precisa carregá-las do documento usando o método [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) e usar a propriedade [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/). Além disso, o Aspose.Words permite contar um conjunto de todas as assinaturas digitais em um documento usando a propriedade [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/).

Tudo isso fornece uma maneira eficiente e segura de verificar se há assinaturas em um documento antes de processá-lo.

O exemplo de código a seguir mostra como detectar a presença de assinaturas digitais e verificá-las:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Crie uma assinatura digital {#create-a-digital-signature}

Para criar uma assinatura digital, você precisará carregar um certificado de assinatura que confirme a identidade. Ao enviar um documento assinado digitalmente, você também envia seu certificado e sua chave pública.

Aspose.Words permite criar um certificado X.509, um certificado digital que usa o padrão PKI X.509 aceito internacionalmente para verificar se uma chave pública pertence ao signatário incluído no certificado. Para fazer isso, use o método [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) dentro da classe [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/).

As próximas seções explicam como adicionar uma assinatura digital, uma linha de assinatura e como assinar um documento PDF gerado.

### Assine um documento

Aspose.Words permite assinar digitalmente um documento DOC, DOCX, XPS ou ODT usando o método [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) e propriedades [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/).

O exemplo de código a seguir mostra como assinar documentos usando um detentor de certificado e opções de assinatura:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### Adicione uma linha de assinatura

Uma linha de assinatura é uma representação visual de uma assinatura digital em um documento. Aspose.Words permite inserir uma linha de assinatura usando o método [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/). Você também pode definir os parâmetros para esta representação usando a classe [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/).

Por exemplo, a imagem abaixo mostra como as assinaturas válidas e inválidas podem ser exibidas.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="desenho" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="desenho" style="width:300px"/>

Além disso, se um documento contiver uma linha de assinatura e nenhuma assinatura digital, existe um recurso para solicitar ao usuário que adicione uma assinatura.

O exemplo de código a seguir mostra como assinar um documento com um certificado pessoal e uma linha de assinatura específica:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Assine um documento PDF gerado {#sign-a-generated-pdf-document}

Aspose.Words permite assinar e obter todos os detalhes de um documento PDF usando as propriedades [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/).

O exemplo de código a seguir mostra como assinar um PDF gerado:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Recuperar o valor da assinatura digital

Aspose.Words também oferece a capacidade de recuperar o valor da assinatura digital de um documento assinado digitalmente como uma matriz de bytes usando a propriedade [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/).

O exemplo de código a seguir mostra como obter o valor da assinatura digital como uma matriz de bytes de um documento:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Remover assinaturas digitais

Aspose.Words permite remover todas as assinaturas digitais de um documento assinado usando o método [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/).

O exemplo de código a seguir mostra como carregar e remover assinaturas digitais de um documento:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Observe que você não pode remover apenas uma assinatura digital do seu documento.

{{% /alert %}}
