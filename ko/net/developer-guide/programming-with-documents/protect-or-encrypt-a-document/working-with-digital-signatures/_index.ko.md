---
title: C#에서 디지털 서명 작업
second_title: .NET용 Aspose.Words
articleTitle: 디지털 서명 작업
linktitle: 디지털 서명 작업
description: "C#를 사용하여 문서에 디지털 서명을 하고 기존 디지털 서명을 감지, 계산, 확인 및 제거합니다."
type: docs
weight: 40
url: /ko/net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

디지털 서명은 문서에 서명하고 서명자를 인증하여 문서가 서명된 이후 수정되지 않았음을 보장하는 전자 서명의 기술 구현입니다. 공개 키와 개인 키를 모두 생성하는 PKI 프로토콜을 따르기 때문에 각 디지털 서명은 각 서명자마다 고유합니다. 문서에 디지털 방식으로 서명한다는 것은 생성된 해시를 암호화하는 데 수학적 알고리즘이 사용되는 서명자의 개인 키를 사용하여 서명을 생성하는 것을 의미합니다.

Aspose.Words를 사용하면 기존 디지털 서명을 감지, 계산 또는 확인할 수 있으며 문서에 새 서명을 추가하여 변조 여부를 확인할 수도 있습니다. 문서에서 모든 디지털 서명을 제거할 수도 있습니다. [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) 클래스를 사용하여 디지털 서명 작업을 수행합니다.

이 문서에서는 디지털 문서의 신뢰성과 무결성을 검증하기 위해 위의 모든 작업을 수행하는 방법을 설명합니다.

{{% alert color="primary" %}}

.NET Framework 2.0 버전 이상을 실행하는 경우에만 문서의 디지털 서명에 액세스할 수 있습니다.

{{% /alert %}}

{{% alert color="primary" %}}

**온라인으로 사용해 보세요**

[무료 온라인 서명](https://products.aspose.app/words/signature)를 통해 이 기능을 사용해 볼 수 있습니다.

{{% /alert %}}

## 지원되는 형식

Aspose.Words를 사용하면 DOC, OOXML 및 ODT 문서의 디지털 서명 작업을 수행하고 생성된 문서에 PDF 또는 XPS 형식으로 서명할 수 있습니다.

## 디지털 서명의 한계

아래 표에서는 Aspose.Words를 통해 디지털 서명 작업을 할 때 직면할 수 있는 몇 가지 제한 사항과 몇 가지 대체 옵션을 설명합니다.

|  한정 |  대체 옵션 |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  문서를 로드하고 저장한 후 문서의 디지털 서명이 손실됩니다. 따라서 문서를 서버로 처리하면 예고 없이 모든 디지털 서명이 손실될 수 있습니다 |  문서에 디지털 서명이 있는지 확인하고 발견된 경우 적절한 조치를 취하십시오. 예를 들어, 클라이언트가 업로드하는 문서에 처리 시 손실될 디지털 서명이 포함되어 있음을 알리는 경고를 클라이언트에게 보냅니다 |
|  Aspose.Words는 문서의 매크로 작업을 지원합니다. 그러나 Aspose.Words는 아직 매크로에 대한 디지털 서명을 지원하지 않습니다 |  문서를 Word 형식으로 다시 내보내고 Microsoft Word를 사용하여 매크로에 디지털 서명을 추가합니다 |

## 디지털 서명 감지, 계산 및 확인

Aspose.Words를 사용하면 [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) 메서드와 [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) 속성을 사용하여 문서에서 디지털 서명을 감지할 수 있습니다. 이러한 검사는 서명 사실만 감지할 뿐 유효성은 감지하지 못한다는 점에 주목할 가치가 있습니다.

문서에 두 번 이상 서명할 수 있으며 이는 여러 사용자가 수행할 수 있습니다. 디지털 서명의 유효성을 확인하려면 [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) 방법을 사용하여 문서에서 이를 로드하고 [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) 속성을 사용해야 합니다. 또한 Aspose.Words을 사용하면 [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) 속성을 사용하여 문서 내의 모든 디지털 서명 세트를 계산할 수 있습니다.

이 모든 기능은 문서를 처리하기 전에 문서의 서명을 확인하는 효율적이고 안전한 방법을 제공합니다.

다음 코드 예제에서는 디지털 서명의 존재를 감지하고 확인하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## 디지털 서명 {#create-a-digital-signature} 만들기

디지털 서명을 생성하려면 신원을 확인하는 서명 인증서를 로드해야 합니다. 디지털 서명된 문서를 보낼 때 인증서와 공개 키도 함께 보냅니다.

Aspose.Words를 사용하면 공개 키가 인증서 내에 포함된 서명자에게 속해 있는지 확인하기 위해 국제적으로 승인된 X.509 PKI 표준을 사용하는 디지털 인증서인 X.509 인증서를 생성할 수 있습니다. 이렇게 하려면 [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) 클래스 내에서 [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) 메서드를 사용하세요.

다음 섹션에서는 디지털 서명, 서명란을 추가하는 방법과 생성된 PDF 문서에 서명하는 방법을 설명합니다.

### 문서에 서명

Aspose.Words를 사용하면 [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) 메서드와 [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) 속성을 사용하여 DOC, DOCX, XPS 또는 ODT 문서에 디지털 방식으로 서명할 수 있습니다.

다음 코드 예제에서는 인증서 보유자와 서명 옵션을 사용하여 문서에 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### 서명란 추가

서명란은 문서의 디지털 서명을 시각적으로 표현한 것입니다. Aspose.Words를 사용하면 [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) 방법을 사용하여 서명란을 삽입할 수 있습니다. [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) 클래스를 사용하여 이 표현에 대한 매개변수를 설정할 수도 있습니다.

예를 들어, 아래 그림은 유효한 서명과 유효하지 않은 서명이 표시되는 방법을 보여줍니다.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="그림" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="그림" style="width:300px"/>

또한 문서에 서명란만 있고 디지털 서명이 없는 경우 사용자에게 서명을 추가하도록 요청하는 기능이 있습니다.

다음 코드 예제에서는 개인 인증서와 특정 서명란을 사용하여 문서에 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### 생성된 PDF 문서 {#sign-a-generated-pdf-document}에 서명

Aspose.Words를 사용하면 [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) 속성을 사용하여 PDF 문서의 모든 세부 정보에 서명하고 가져올 수 있습니다.

다음 코드 예제에서는 생성된 PDF에 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## 디지털 서명 값 검색

Aspose.Words는 또한 [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) 속성을 사용하여 디지털 서명된 문서에서 바이트 배열로 디지털 서명 값을 검색하는 기능을 제공합니다.

다음 코드 예제에서는 문서에서 디지털 서명 값을 바이트 배열로 얻는 방법을 보여줍니다

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## 디지털 서명 제거

Aspose.Words를 사용하면 [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) 방법을 사용하여 서명된 문서에서 모든 디지털 서명을 제거할 수 있습니다.

다음 코드 예제에서는 문서에서 디지털 서명을 로드하고 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

문서 내에서 하나의 디지털 서명만 제거할 수는 없습니다.

{{% /alert %}}
