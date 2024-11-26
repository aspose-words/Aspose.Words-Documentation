---
title: 디지털 서명 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 디지털 서명 작업
linktitle: 디지털 서명 작업
description: "문서에 디지털 서명하고 기존 디지털 서명을 감지,계산,확인 및 제거합니다."
type: docs
weight: 160
url: /ko/cpp/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

디지털 서명은 문서에 서명하고 서명자를 인증하여 문서가 서명된 이후 수정되지 않았음을 보장하기 위해 전자 서명의 기술적 구현입니다. 각 디지털 서명은 다음과 같은 이유로 각 서명자에 대해 고유합니다. PKI 공개 키와 개인 키를 모두 생성하는 프로토콜. 문서에 디지털로 서명하는 것은 수학적 알고리즘이 생성된 해시를 암호화하는 데 사용되는 서명자의 개인 키를 사용하여 서명을 만드는 것을 의미합니다.

Aspose.Words 기존 디지털 서명을 감지,계산 또는 확인할 수 있으며 문서에 새 서명을 추가하여 해당 문서의 변조를 확인할 수 있습니다. 또한 문서에서 모든 디지털 서명을 제거할 수 있습니다. 사용 [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) 클래스는 디지털 서명과 함께 작동합니다.

이 문서에서는 디지털 문서의 진위 및 무결성을 검증하기 위해 위의 모든 작업을 수행하는 방법에 대해 설명합니다.

{{% alert color="primary" %}}

**온라인 시도**

당신은 우리의 이 기능을 시도할 수 있습니다 [무료 온라인 서명](https://products.aspose.app/words/signature).

{{% /alert %}}

## 지원되는 형식

Aspose.Words 디지털 서명을 사용하여 작업 할 수 있습니다. DOC, OOXML,그리고 ODT 문서 및 생성 된 문서에 서명 PDF 또는 XPS 형식

## 디지털 서명의 한계

아래 표에서는 디지털 서명을 통해 작업하는 동안 직면할 수 있는 몇 가지 제한 사항에 대해 설명합니다 Aspose.Words,그리고 몇 가지 대안 옵션도 있습니다.

| 제한 | 대체 옵션 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| 로드 및 저장 후 문서에 디지털 서명의 손실. 따라서 서버에 문서를 처리하면 통지 없이 모든 디지털 서명이 손실될 수 있습니다. | 문서에 디지털 서명이 있는지 확인하고 서명이 발견되면 적절한 조치를 취하십시오. 예를 들어 업로드 중인 문서에 처리되면 손실되는 디지털 서명이 포함되어 있음을 알리는 경고를 클라이언트에 보냅니다. |
| Aspose.Words 문서의 매크로 작업을 지원합니다. 하지만 Aspose.Words 아직 매크로에서 디지털 서명을 지원하지 않습니다. | 문서를 모든 단어 형식으로 다시 내보내고 다음을 사용합니다 Microsoft Word 매크로에 디지털 서명을 추가하려면 |

## 디지털 서명 감지,계산 및 확인

Aspose.Words 를 사용하여 문서에서 디지털 서명을 감지 할 수 있습니다 [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) 방법 및 [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/) 재산. 그러한 수표는 서명의 사실 만 감지 할 수 있지만 그 유효성은 감지 할 수 없다는 점은 주목할 가치가 있습니다.

문서에 두 번 이상 서명 할 수 있으며이 작업은 다양한 사용자가 수행 할 수 있습니다. 디지털 서명의 유효성을 확인하려면 다음을 사용하여 문서에서 서명의 유효성을 로드해야 합니다 [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) 방법 및 사용 [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/) 재산. 또한 Aspose.Words 를 사용하여 문서 내의 모든 디지털 서명 세트를 계산할 수 있습니다. [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/) 재산.

이 모든 것은 문서를 처리하기 전에 서명을 확인하는 효율적이고 안전한 방법을 제공합니다.

다음 코드 예제에서는 디지털 서명의 존재를 감지하고 확인하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## 디지털 서명 만들기 {#create-a-digital-signature}

디지털 서명을 만들려면 신원을 확인하는 서명 인증서를 로드해야 합니다. 디지털 서명된 문서를 보낼 때 인증서 및 공개 키도 보냅니다.

Aspose.Words 이 인증서는 국제적으로 인정되는 인증서를 사용하는 디지털 인증서입니다 PKI 인증서에 포함된 서명자의 공개 키가 속하는지 확인하는 표준입니다. 이 작업을 수행하려면 다음을 사용하십시오 [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) 내 방법 [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder) 수업

다음 섹션에서는 디지털 서명,서명 줄을 추가하는 방법 및 생성된 서명에 서명하는 방법을 설명합니다 PDF 문서

### 문서 서명

Aspose.Words 당신이 서명 할 수 있습니다 DOC, DOCX,또는 ODT 디지털 방식으로 문서를 사용하여 [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) 방법 및 [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/) 속성.

다음 코드 예제에서는 인증서 소유자 및 서명 옵션을 사용하여 문서에 서명하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### 서명 줄 추가

서명 줄은 문서의 디지털 서명을 시각적으로 표현하는 것입니다. Aspose.Words 를 사용하여 서명 줄을 삽입 할 수 있습니다 [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/) 방법 또한 다음을 사용하여 이 표현에 대한 매개 변수를 설정할 수 있습니다 [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/) 수업

예를 들어 아래 그림은 유효하고 유효하지 않은 서명을 표시할 수 있는 방법을 보여줍니다.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

또한 문서에 서명 줄이 있고 디지털 서명이 없다면 사용자에게 서명을 추가하도록 요청하는 기능이 있습니다.

다음 코드 예제에서는 개인 인증서 및 특정 서명 줄로 문서에 서명하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### 생성 된 서명 PDF 문서 {#sign-a-generated-pdf-document}

Aspose.Words 당신이 서명하고 모든 세부 사항을 얻을 수 있습니다 PDF 문서를 사용하여 [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/) 속성.

다음 코드 예제에서는 생성된 서명에 서명하는 방법을 보여 줍니다 PDF:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## 디지털 서명 값 검색

Aspose.Words 또한 디지털 서명된 문서에서 디지털 서명 값을 바이트 배열로 검색하는 기능을 제공합니다. [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/) 재산.

다음 코드 예제에서는 문서에서 바이트 배열로 디지털 서명 값을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## 디지털 서명 제거

Aspose.Words 를 사용하여 서명 된 문서에서 모든 디지털 서명을 제거 할 수 있습니다 [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) 방법

다음 코드 예제에서는 문서에서 디지털 서명을 로드하고 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

문서 내에서 하나의 디지털 서명 만 제거 할 수는 없습니다.

{{% /alert %}}
