---
title: Digital Signature와 함께 일하기 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 디지털 서명 작업
linktitle: 디지털 서명 작업
description: "디지털 서명 문서 및 검출, 계산, 검증 및 기존 디지털 서명 제거 Java·"
type: docs
weight: 30
url: /ko/java/working-with-digital-signatures/
---

디지털 서명은 전자 서명의 기술 구현이며 서명 된 이후 문서가 수정되지 않았는지 보장하기 위해 서명자를 인증합니다. 각 디지털 서명은 PKI 프로토콜을 따르기 때문에 각 서명자에 고유하여 공개 및 개인 키를 생성합니다. 디지털 방식으로 문서에 서명하는 것은 생성 된 해시를 암호화하는 데 사용됩니다.

Aspose.Words 기존 디지털 서명을 감지하거나 계산하거나 기존 디지털 서명을 확인하고 문서에 새로운 서명을 추가하여 탬퍼링을 찾을 수 있습니다. 문서에서 모든 디지털 서명을 제거 할 수 있습니다. 사용 방법 [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) 디지털 서명과 함께 일하는 클래스.

이 문서는 위의 모든 작업을 수행하는 방법을 설명하고 디지털 문서의 정체성과 무결성을 검증합니다.

{{% alert color="primary" %}}

문서의 디지털 서명에 액세스 할 수 있음 Java 6 버전 이상.

{{% /alert %}}

{{% alert color="primary" %}}

**온라인 채팅**

이 기능을 사용해 보세요. [무료 온라인 서명](https://products.aspose.app/words/signature)·

{{% /alert %}}

## 지원되는 체재

Aspose.Words DOC, OOXML 및 ODT 문서에 디지털 서명을 사용하여 PDF 또는 생성 된 문서를 서명 할 수 있습니다. XPS 파일 형식.

## Digital Signatures의 제한

아래 표는 디지털 서명을 통해 직면 할 수있는 몇 가지 제한을 설명합니다. Aspose.Words, 어떤 옵션도 있습니다.

|  계정 관리 |  관련 옵션 |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  로딩 후 문서의 디지털 서명의 손실 및 저장. 따라서 문서를 서버로 처리하면 통지없이 모든 디지털 서명의 손실이 발생할 수 있습니다 |  문서가 디지털 서명을 가지고 있는지 확인하고 적절한 조치를 취하십시오. 예를 들어, 클라이언트에게 경고를 보내 그들이 업로드하는 문서가 처리되면 손실되는 디지털 서명이 포함된다는 것을 알려줍니다 |
|  Aspose.Words 문서의 매크로 작업 지원. 뚱 베어 Aspose.Words 아직 매크로에 디지털 서명을 지원하지 않습니다 |  문서를 Word 형식으로 다시 내보내고 사용 Microsoft Word 매크로에 디지털 서명을 추가합니다 |

## 디지털 서명을 탐지, 조사 및 검증

Aspose.Words 문서의 디지털 서명을 감지 할 수 있습니다. [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) 방법 및 [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) 호텔 위치 그런 체크가 서명의 사실만을 감지하는 것이 아니라 유효하지 않다는 것을 주목할 가치가 있습니다.

문서는 한 번 이상 서명 할 수 있으며 다른 사용자가 수행 할 수 있습니다. 디지털 서명의 유효성을 확인하려면 문서를 사용하여로드해야합니다. [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) 방법 및 사용 [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) 호텔 위치 기타 Aspose.Words 문서 내에서 모든 디지털 서명 세트를 계산할 수 있습니다. [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) 호텔 위치

이 모든 것은 처리하기 전에 서명 문서를 확인하는 효율적인 안전한 방법을 제공합니다.

다음 코드 예제는 디지털 서명의 존재를 감지하고 확인하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## 디지털 서명 만들기 {#create-a-digital-signature}

디지털 서명을 만들려면 ID를 확인하는 서명 인증서를로드해야합니다. 디지털 서명된 문서를 보낼 때, 당신은 또한 당신의 증명서 및 공중 열쇠를 보냅니다.

Aspose.Words X.509 인증서를 만들 수 있습니다, 국제적으로 허용되는 X.509 PKI 표준을 사용하는 디지털 인증서는 인증서 내부에 포함 된 서명자에 속한다는 것을 확인합니다. 이렇게하려면 [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) 내의 방법 [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) 수업.

다음 섹션에서는 디지털 서명, 서명 줄 및 생성 된 PDF 문서에 서명하는 방법을 설명합니다.

### 로그인

Aspose.Words DOC, DOCX 또는 ODT 문서를 디지털로 사용하여 서명 할 수 있습니다. [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) 방법 및 [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) 이름 *

다음 코드 예제는 인증서 홀더 및 기호 옵션을 사용하여 문서를 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### 서명라인 추가

서명 라인은 문서의 디지털 서명의 시각적 표현입니다. Aspose.Words 서명 줄을 삽입할 수 있습니다. [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) 방법. 이 표현의 매개 변수도 설정할 수 있습니다. [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) 수업.

예를 들어, 아래 그림은 유효하고 잘못된 서명이 표시 될 수있는 방법을 보여줍니다.

<img src="/words/java/working-with-digital-signatures/valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="/words/java/working-with-digital-signatures/invalid.png" alt="invalid-digital-signature" style="width:300px"/>

또한, 문서에는 서명 라인과 디지털 서명이 포함되어 있지 않은 경우, 사용자가 서명을 추가 할 수있는 기능이 있습니다.

다음 코드 예제는 개인 인증서 및 특정 서명 라인으로 문서를 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### PDF 문서 작성 {#sign-a-generated-pdf-document}

Aspose.Words PDF 문서의 모든 세부 사항을 표시하고 얻을 수 있습니다. [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) 이름 *

다음 코드 예제는 생성 된 PDF 서명 방법을 보여줍니다:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

아래 그림은 생성 된 PDF 문서가 열리다는 것을 보여줍니다. Adobe Acrobat 디지털 서명은 현재와 유효한 것으로 확인됩니다.

![create-digital-signed-pdf-aspose-words-java](/words/java/working-with-digital-signatures/signed-pdf-aspose-words-java.png)

## Digital Signature Value를 검색합니다

Aspose.Words 디지털 서명된 문서에서 디지털 서명 값을 검색할 수 있는 기능을 제공합니다. [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) 호텔 위치

다음 코드 예제는 문서의 바이트 배열로 디지털 서명 값을 얻는 방법을 보여줍니다

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## 디지털 서명 제거

Aspose.Words 서명된 문서에서 모든 디지털 서명을 제거할 수 있습니다. [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) 방법.

다음 코드 예제는 문서에서 디지털 서명을로드하고 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

문서 내에서 하나의 디지털 서명만 제거할 수 없습니다.

{{% /alert %}}
