---
title: Java의 디지털 서명 작업
second_title: Aspose.WordsJava
articleTitle: 디지털 서명 작업
linktitle: 디지털 서명 작업
description: "Java을 사용하여 문서에 디지털 서명하고 기존 디지털 서명을 감지,계산,확인 및 제거합니다."
type: docs
weight: 30
url: /ko/java/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

디지털 서명은 문서에 서명하고 서명자를 인증하여 문서가 서명된 이후 수정되지 않았음을 보장하기 위해 전자 서명의 기술적 구현입니다. 각 디지털 서명은 공개 키와 개인 키를 모두 생성하기 위해PKI프로토콜을 따르기 때문에 각 서명자에게 고유합니다. 문서에 디지털로 서명하는 것은 수학적 알고리즘이 생성된 해시를 암호화하는 데 사용되는 서명자의 개인 키를 사용하여 서명을 만드는 것을 의미합니다.

Aspose.Words을 사용하면 기존 디지털 서명을 감지,계산 또는 확인할 수 있으며 문서에 새 서명을 추가하여 해당 문서의 변조를 확인할 수 있습니다. 또한 문서에서 모든 디지털 서명을 제거할 수 있습니다. [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/)클래스를 사용하여 디지털 서명 작업을 수행합니다.

이 문서에서는 디지털 문서의 진위 및 무결성을 검증하기 위해 위의 모든 작업을 수행하는 방법에 대해 설명합니다.

{{% alert color="primary" %}}

Java6 버전 이상을 실행할 때만 문서의 디지털 서명에 액세스할 수 있습니다.

{{% /alert %}}

{{% alert color="primary" %}}

**온라인 시도**

당신은 우리의 이 기능을 시도할 수 있습니다 [무료 온라인 서명](https://products.aspose.app/words/signature).

{{% /alert %}}

## 지원되는 형식

Aspose.Words을 사용하면DOC,OOXML및ODT문서에서 디지털 서명으로 작업하고 생성된 문서에PDF또는XPS형식으로 서명할 수 있습니다.

## 디지털 서명의 한계

아래 표는Aspose.Words을 통해 디지털 서명으로 작업하는 동안 직면할 수 있는 몇 가지 제한 사항과 몇 가지 대체 옵션에 대해 설명합니다.

| 제한 | 대체 옵션 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| 로드 및 저장 후 문서에 디지털 서명의 손실. 따라서 서버에 문서를 처리하면 통지 없이 모든 디지털 서명이 손실될 수 있습니다. | 문서에 디지털 서명이 있는지 확인하고 서명이 발견되면 적절한 조치를 취하십시오. 예를 들어 업로드 중인 문서에 처리되면 손실되는 디지털 서명이 포함되어 있음을 알리는 경고를 클라이언트에 보냅니다. |
| Aspose.Words문서의 매크로 작업을 지원합니다. 그러나Aspose.Words은 아직 매크로에서 디지털 서명을 지원하지 않습니다. | 문서를 다시 단어 형식으로 내보내고Microsoft Word을 사용하여 매크로에 디지털 서명을 추가합니다. |

## 디지털 서명 감지,계산 및 확인

Aspose.Words를 사용하면[DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream)메서드 및[HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature)속성을 사용하여 문서에서 디지털 서명을 검색할 수 있습니다. 그러한 수표는 서명의 사실 만 감지 할 수 있지만 그 유효성은 감지 할 수 없다는 점은 주목할 가치가 있습니다.

문서에 두 번 이상 서명 할 수 있으며이 작업은 다른 사용자가 수행 할 수 있습니다. 디지털 서명의 유효성을 확인하려면[LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream)메서드를 사용하여 문서에서 디지털 서명을 로드하고[IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid)속성을 사용해야 합니다. 또한Aspose.Words[Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount)속성을 사용하여 문서 내의 모든 디지털 서명 집합을 계산할 수 있습니다.

이 모든 것은 문서를 처리하기 전에 서명을 확인하는 효율적이고 안전한 방법을 제공합니다.

다음 코드 예제에서는 디지털 서명의 존재를 감지하고 확인하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## 디지털 서명 만들기 {#create-a-digital-signature}

디지털 서명을 만들려면 신원을 확인하는 서명 인증서를 로드해야 합니다. 디지털 서명된 문서를 보낼 때 인증서 및 공개 키도 보냅니다.

Aspose.Words을 사용하면 국제적으로 승인된 X.509 PKI 표준을 사용하여 공개 키가 인증서 내부에 포함된 서명자에게 속하는지 확인하는 디지털 인증서인 X.509 인증서를 만들 수 있습니다. 이를 위해 [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) 클래스 내의 [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) 메서드를 사용합니다.

다음 섹션에서는 디지털 서명,서명 줄을 추가하는 방법 및 생성된PDF문서에 서명하는 방법을 설명합니다.

### 문서 서명

Aspose.Words는[Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder)메서드와[SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/)속성을 사용하여DOC,DOCX또는ODT문서에 디지털 방식으로 서명할 수 있습니다.

다음 코드 예제에서는 인증서 소유자 및 서명 옵션을 사용하여 문서에 서명하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### 서명 줄 추가

서명 줄은 문서의 디지털 서명을 시각적으로 표현하는 것입니다. Aspose.Words[DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions)메서드를 사용하여 서명 줄을 삽입할 수 있습니다. [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/)클래스를 사용하여 이 표현에 대한 매개 변수를 설정할 수도 있습니다.

예를 들어 아래 그림은 유효하고 유효하지 않은 서명을 표시할 수 있는 방법을 보여줍니다.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

또한 문서에 서명 줄이 있고 디지털 서명이 없다면 사용자에게 서명을 추가하도록 요청하는 기능이 있습니다.

다음 코드 예제에서는 개인 인증서 및 특정 서명 줄로 문서에 서명하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### 생성된PDF문서 {#sign-a-generated-pdf-document}에 서명

Aspose.Words을 사용하면[PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/)속성을 사용하여PDF문서에 서명하고 모든 세부 정보를 얻을 수 있습니다.

다음 코드 예제에서는 생성된PDF에 서명하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

아래 그림은 생성된PDF문서가Adobe Acrobat에서 열리고 디지털 서명이 존재하고 유효한 것으로 확인되었음을 보여줍니다.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## 디지털 서명 값 검색

Aspose.Words또한[SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue)속성을 사용하여 바이트 배열로 디지털 서명된 문서에서 디지털 서명 값을 검색하는 기능을 제공합니다.

다음 코드 예제에서는 문서에서 바이트 배열로 디지털 서명 값을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## 디지털 서명 제거

Aspose.Words[RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream)방법을 사용하여 서명된 문서에서 모든 디지털 서명을 제거할 수 있습니다.

다음 코드 예제에서는 문서에서 디지털 서명을 로드하고 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

문서 내에서 하나의 디지털 서명 만 제거 할 수는 없습니다.

{{% /alert %}}
