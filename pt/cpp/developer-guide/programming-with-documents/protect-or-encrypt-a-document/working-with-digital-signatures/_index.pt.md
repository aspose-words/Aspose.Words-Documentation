---
title: Trabalhar com assinaturas digitais em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com assinaturas digitais
linktitle: Trabalhar com assinaturas digitais
description: "Assinar digitalmente documentos e detectar, contar, verificar e remover assinaturas digitais existentes."
type: docs
weight: 160
url: /pt/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

Uma assinatura digital é uma implementação tecnológica de assinaturas eletrónicas para assinar documentos e autenticar o signatário para garantir que um documento não foi modificado desde a sua assinatura. Cada assinatura digital é única para cada signatário, pois segue o protocolo PKI para gerar chaves públicas e privadas. Assinar um documento digitalmente significa criar uma assinatura usando a chave privada do signatário, onde um algoritmo matemático é usado para criptografar o hash gerado.

Aspose.Words permite detectar, contar ou verificar assinaturas digitais existentes e também adicionar uma nova assinatura ao seu documento para descobrir qualquer adulteração nele. Também é possível remover todas as assinaturas digitais de um documento. Use a classe [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) para trabalhar com assinaturas digitais.

Este artigo explica como fazer tudo o que precede para validar a autenticidade e integridade de um documento digital.

{{% alert color="primary" %}}

**Experimente online**

Pode experimentar esta funcionalidade com o nosso [Assinatura online gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Formatos Suportados

Aspose.Words permite trabalhar com assinaturas digitais em documentos DOC, OOXML e ODT e assinar o documento gerado no formato PDF ou XPS.

## Limitações das Assinaturas Digitais

A tabela abaixo descreve algumas limitações que você pode enfrentar ao trabalhar com assinaturas digitais através de Aspose.Words, bem como algumas opções alternativas.

| Limitação | Opção alternativa |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Perda de assinaturas digitais num documento depois de O carregar e guardar. Portanto, o processamento de um documento para um servidor pode causar a perda de todas as assinaturas digitais sem aviso prévio. | Verifique se um documento tem assinaturas digitais e tome as medidas adequadas, se forem encontradas. Por exemplo, enviar um alerta aos clientes informando-os de que o documento que estão a enviar contém assinaturas digitais que serão perdidas se forem processadas. |
| Aspose.Words suporta trabalhar com macros num documento. Mas Aspose.Words ainda não suporta assinaturas digitais em macros. | Exporte o documento de volta para qualquer formato do Word e utilize Microsoft Word para adicionar uma assinatura digital às macros. |

## Detectar, contar e verificar assinaturas digitais

Aspose.Words permite detectar a assinatura digital num documento utilizando o método [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) e a propriedade [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/). Vale a pena notar que tal verificação detectará apenas o fato da assinatura, mas não sua validade.

Um documento pode ser assinado mais de uma vez, e isso pode ser feito por vários usuários. Para verificar a validade das assinaturas digitais, você precisa carregá-las do documento usando o método [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) e usar a propriedade [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/). Além disso, Aspose.Words permite contar um conjunto de todas as assinaturas digitais dentro de um documento usando a propriedade [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/).

Tudo isto proporciona uma forma eficiente e segura de verificar a existência de assinaturas num documento antes de o processar.

O exemplo de código a seguir mostra como detectar a presença de assinaturas digitais e verificá-las:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Criar uma assinatura digital {#create-a-digital-signature}

Para criar uma assinatura digital, você precisará carregar um certificado de assinatura que confirme a identidade. Ao enviar um documento assinado digitalmente, você também envia seu certificado e chave pública.

Aspose.Words permite criar o certificado X. 509, um certificado digital que utiliza a norma X. 509 PKI internacionalmente aceite para verificar se uma chave pública pertence ao signatário incluído no certificado. Para fazer isso, use o método [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) dentro da classe [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder).

As próximas secções explicam como adicionar uma assinatura digital, uma linha de assinatura e como assinar um documento PDF gerado.

### Assinar um documento

Aspose.Words permite assinar um documento DOC, DOCX ou ODT digitalmente utilizando o método [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) e as propriedades [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/).

O exemplo de código a seguir mostra como assinar documentos usando um detentor de certificado e opções de assinatura:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### Adicionar uma linha de assinatura

Uma linha de assinatura é uma representação visual de uma assinatura digital num documento. Aspose.Words permite inserir uma linha de assinatura usando o método [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/). Você também pode definir os parâmetros para esta representação usando a classe [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/).

Por exemplo, a figura abaixo mostra como assinaturas válidas e inválidas podem ser exibidas.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Além disso, se um documento contiver uma linha de assinatura e nenhuma assinatura digital, existe um recurso para solicitar ao usuário que adicione uma assinatura.

O exemplo de código a seguir mostra como assinar um documento com um certificado pessoal e uma linha de assinatura específica:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Assinar um documento PDF gerado {#sign-a-generated-pdf-document}

Aspose.Words permite assinar e obter todos os detalhes de um documento PDF usando as propriedades [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/).

O exemplo de código a seguir mostra como assinar um PDFgerado:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Recuperar o valor da Assinatura Digital

Aspose.Words também fornece a capacidade de recuperar o valor da assinatura digital de um documento assinado digitalmente como uma matriz de bytes usando a propriedade [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/).

O exemplo de código a seguir mostra como obter o valor da assinatura digital como uma matriz de bytes de um documento:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Remover Assinaturas Digitais

Aspose.Words permite remover todas as assinaturas digitais de um documento assinado utilizando o método [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/).

O exemplo de código a seguir mostra como carregar e remover assinaturas digitais de um documento:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Observe que você não pode remover apenas uma assinatura digital em seu documento.

{{% /alert %}}
