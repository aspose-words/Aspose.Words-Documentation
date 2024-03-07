---
title: Trabalhando com assinaturas digitais
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com assinaturas digitais
linktitle: Trabalhando com assinaturas digitais
description: "Assine documentos digitalmente e detecte, conte, verifique e remova assinaturas digitais existentes usando Python."
type: docs
weight: 40
url: /pt/python-net/working-with-digital-signatures/
---

Uma assinatura digital é usada para autenticar um documento para estabelecer que o remetente do documento é quem diz ser e que o conteúdo do documento não foi adulterado.

Aspose.Words oferece suporte a documentos com assinaturas digitais e fornece acesso a eles, permitindo detectar e validar assinaturas digitais em um documento e assinar um documento PDF gerado com um certificado fornecido. Atualmente, as assinaturas digitais são suportadas em documentos DOC, OOXML e ODT. A assinatura dos documentos gerados é suportada em formato PDF.

{{% alert color="primary" %}}

**Experimente on-line**

Você pode experimentar esta funcionalidade com nosso [Assinatura on-line gratuita](https://products.aspose.app/words/signature).

{{% /alert %}}

## Assinaturas digitais não são preservadas ao abrir e salvar

Um ponto importante a ser observado é que um documento carregado e salvo usando Aspose.Words perderá todas as assinaturas digitais assinadas no documento. Isto ocorre intencionalmente, pois uma assinatura digital garante que o conteúdo não foi modificado e, além disso, autentica a identidade de quem assinou o documento. Estes princípios seriam invalidados se as assinaturas originais fossem transportadas para o documento resultante.

Devido a isso, se você processar documentos carregados em um servidor, isso pode significar que você pode corromper um documento carregado em seu servidor dessa forma sem saber. Portanto, é melhor verificar a existência de assinaturas digitais num documento e tomar as medidas adequadas caso sejam encontradas, por exemplo, pode ser enviado um alerta ao cliente informando-o de que o documento que está a passar contém assinaturas digitais que serão perdidas se forem processado. Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

O código acima usa o método [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) para detectar se um documento contém assinaturas digitais sem primeiro carregar o documento. Isso fornece uma maneira eficiente e segura de verificar se há assinaturas em um documento antes de processá-las. Quando executado, o método retorna um objeto [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) que fornece a propriedade [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/). Esta propriedade retorna true se o documento contiver uma ou mais assinaturas digitais. É importante observar que este método não valida as assinaturas, apenas determina se as assinaturas estão presentes. A validação de assinaturas digitais é abordada na próxima seção.

{{% alert color="primary" %}}

Você também pode verificar se um documento possui assinaturas digitais após o carregamento, verificando a propriedade `Count` da coleção [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/).

{{% /alert %}}

## Assinaturas digitais em macros (projetos VBA)

As assinaturas digitais em macros não podem ser acessadas ou assinadas. Isso ocorre porque o Aspose.Words não lida diretamente com macros em um documento. No entanto, as assinaturas digitais nas macros são preservadas ao exportar o documento de volta para qualquer formato Word. Essas assinaturas podem ser preservadas no código VBA porque o conteúdo binário das macros não é alterado, mesmo que o próprio documento seja modificado.

### Acesse e verifique assinaturas digitais

Um documento pode ter várias assinaturas digitais. Todas essas assinaturas podem ser acessadas por meio da coleção [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/). Cada objeto retornado é um [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/) que representa uma única assinatura digital pertencente ao documento. Isso fornece membros que permitem verificar a validade da assinatura.

A propriedade mais importante a ser verificada com assinaturas digitais é a validade de cada assinatura no documento. Todas as assinaturas do documento podem ser validadas de uma só vez chamando a propriedade [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/). Isso retornará true se todas as assinaturas do documento forem válidas ou se o documento não tiver assinaturas e false se pelo menos uma assinatura digital não for válida.

Cada assinatura também pode ser validada individualmente chamando [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/). Uma assinatura pode retornar inválida por vários motivos, por exemplo, o documento foi alterado desde a assinatura ou o certificado expirou. Além disso, detalhes extras da assinatura também podem ser acessados. O exemplo de código abaixo mostra como validar cada assinatura em um documento e exibir informações básicas sobre a assinatura. Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Assinando documentos do Word

A classe [DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) fornece métodos para assinar documentos. O método [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) assina o documento de origem usando determinado [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) com assinatura digital e grava o documento assinado no fluxo de destino

O exemplo abaixo mostra como assinar um documento simples

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

O exemplo abaixo mostra como assinar um documento criptografado

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### Assinando documento do Word com linha de assinatura

Você pode assinar o documento de origem usando [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) e [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) com assinatura digital e gravar o documento assinado no arquivo de destino. Usando a classe [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) você pode especificar opções para assinatura de documentos. O exemplo abaixo mostra como criar uma nova linha de assinatura e assinar um documento

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

O exemplo abaixo mostra como modificar a linha de assinatura existente e assinar o documento

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### Assinando documento do Word usando identificador de provedor de assinatura

O exemplo abaixo mostra como assinar um documento do Word usando o identificador do provedor de assinatura. O provedor de serviços criptográficos (CSP) é um módulo de software independente que realmente executa algoritmos de criptografia para autenticação, codificação e criptografia. O MS Office reserva o valor {00000000-0000-0000-0000-000000000000} para seu provedor de assinatura padrão.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Criar novo documento de assinatura de linha de assinatura usando o identificador de provedor

O exemplo abaixo mostra como criar uma linha de assinatura e assinar um documento do Word usando o identificador do provedor de assinatura.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Recuperar o valor da assinatura digital

Aspose.Words também oferece a capacidade de recuperar o valor da assinatura digital de um documento assinado digitalmente como uma matriz de bytes usando a propriedade [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/).

O exemplo de código a seguir mostra como obter o valor da assinatura digital como uma matriz de bytes de um documento:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}