---
title: 디지털 서명 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 디지털 서명 작업
linktitle: 디지털 서명 작업
description: "Python를 사용하여 문서에 디지털 서명을 하고 기존 디지털 서명을 감지, 계산, 확인 및 제거합니다."
type: docs
weight: 40
url: /ko/python-net/working-with-digital-signatures/
timestamp: 2024-01-27-14-07-04
---

디지털 서명은 문서를 보낸 사람이 누구인지, 문서 내용이 변조되지 않았는지 확인하기 위해 문서를 인증하는 데 사용됩니다.

Aspose.Words는 디지털 서명이 있는 문서를 지원하고 이에 대한 액세스를 제공하여 문서의 디지털 서명을 감지 및 검증하고 제공된 인증서로 생성된 PDF 문서에 서명할 수 있습니다. 현재 디지털 서명은 DOC, OOXML 및 ODT 문서에서 지원됩니다. 생성된 문서의 서명은 PDF 형식으로 지원됩니다.

{{% alert color="primary" %}}

**온라인으로 사용해 보세요**

[무료 온라인 서명](https://products.aspose.app/words/signature)를 통해 이 기능을 사용해 볼 수 있습니다.

{{% /alert %}}

## 열기 및 저장 시 디지털 서명이 유지되지 않습니다

주의해야 할 중요한 점은 Aspose.Words를 사용하여 문서를 로드한 다음 저장하면 문서에 서명된 모든 디지털 서명이 손실된다는 것입니다. 이는 디지털 서명을 통해 내용이 수정되지 않았음을 보장하고 문서에 서명한 사람의 신원을 인증하도록 설계되었습니다. 원본 서명이 결과 문서에 전달되면 이러한 원칙은 무효화됩니다.

이로 인해 서버에 업로드된 문서를 처리하는 경우 서버에 업로드된 문서가 자신도 모르게 이러한 방식으로 손상될 수 있음을 의미할 수 있습니다. 따라서 문서의 디지털 서명을 확인하고 발견된 경우 적절한 조치를 취하는 것이 가장 좋습니다. 예를 들어 전달하는 문서에 디지털 서명이 포함되어 있으면 손실될 수 있음을 알리는 경고가 클라이언트에 전송될 수 있습니다. 처리됨. [여기](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

위의 코드는 [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) 메서드를 사용하여 문서를 먼저 로드하지 않고 문서에 디지털 서명이 포함되어 있는지 감지합니다. 이는 문서를 처리하기 전에 문서의 서명을 확인하는 효율적이고 안전한 방법을 제공합니다. 실행되면 이 메서드는 [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/) 속성을 제공하는 [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) 객체를 반환합니다. 이 속성은 문서에 하나 이상의 디지털 서명이 포함된 경우 true를 반환합니다. 이 방법은 서명의 유효성을 검사하지 않고 서명이 있는지 여부만 확인한다는 점에 유의하는 것이 중요합니다. 디지털 서명 유효성 검사는 다음 섹션에서 다룹니다.

{{% alert color="primary" %}}

[Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) 컬렉션의 `Count` 속성을 확인하여 로드한 후 문서에 디지털 서명이 있는지 확인할 수도 있습니다.

{{% /alert %}}

## 매크로의 디지털 서명(VBA 프로젝트)

매크로의 디지털 서명은 액세스하거나 서명할 수 없습니다. Aspose.Words는 문서의 매크로를 직접 처리하지 않기 때문입니다. 그러나 문서를 단어 형식으로 다시 내보낼 때 매크로의 디지털 서명은 유지됩니다. 문서 자체가 수정되더라도 매크로의 바이너리 내용은 변경되지 않으므로 이러한 서명은 VBA 코드에서 보존될 수 있습니다.

### 디지털 서명 액세스 및 확인

문서에는 여러 개의 디지털 서명이 있을 수 있습니다. 이러한 서명은 모두 [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) 컬렉션을 통해 액세스할 수 있습니다. 반환된 각 객체는 문서에 속한 단일 디지털 서명을 나타내는 [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/)입니다. 서명의 유효성을 확인할 수 있는 멤버를 제공합니다.

디지털 서명을 확인할 때 가장 중요한 속성은 문서의 각 서명이 유효한지 여부입니다. [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) 속성을 호출하면 문서의 모든 서명을 한 번에 확인할 수 있습니다. 문서의 모든 서명이 유효하거나 문서에 서명이 없으면 true를 반환하고 하나 이상의 디지털 서명이 유효하지 않으면 false을 반환합니다.

[DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/)를 호출하여 각 서명을 개별적으로 확인할 수도 있습니다. 서명 이후 문서가 변경되었거나 인증서가 만료된 등 여러 가지 이유로 서명이 유효하지 않은 것으로 반환될 수 있습니다. 또한 서명의 추가 세부정보에도 액세스할 수 있습니다. 아래 코드 샘플은 문서의 각 서명을 확인하고 서명에 대한 기본 정보를 표시하는 방법을 보여줍니다. [여기](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Word 문서에 서명하기

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) 클래스는 문서 서명 방법을 제공합니다. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) 방법은 디지털 서명이 포함된 지정된 [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/)을 사용하여 소스 문서에 서명하고 서명된 문서를 대상 스트림에 씁니다

아래 예는 간단한 문서에 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

아래 예는 암호화된 문서에 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### 서명란을 사용하여 Word 문서 서명

디지털 서명이 포함된 지정된 [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) 및 [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/)를 사용하여 소스 문서에 서명하고 서명된 문서를 대상 파일에 쓸 수 있습니다. [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) 클래스를 사용하면 문서 서명 옵션을 지정할 수 있습니다. 아래 예는 새 서명란을 만들고 문서에 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

아래 예는 기존 서명란을 수정하고 문서에 서명하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### 서명 공급자 식별자를 사용하여 Word 문서 서명

아래 예에서는 서명 공급자 식별자를 사용하여 Word 문서에 서명하는 방법을 보여줍니다. CSP(암호화 서비스 공급자)는 인증, 인코딩 및 암호화를 위한 암호화 알고리즘을 실제로 수행하는 독립적인 소프트웨어 모듈입니다. MS Office는 기본 서명 공급자로 {00000000-0000-0000-0000-000000000000} 값을 예약합니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### 공급자 식별자를 사용하여 새 서명란 서명 Word 문서 만들기

아래 예에서는 서명 공급자 식별자를 사용하여 서명란을 만들고 Word 문서에 서명하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## 디지털 서명 값 검색

Aspose.Words는 또한 [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) 속성을 사용하여 디지털 서명된 문서에서 바이트 배열로 디지털 서명 값을 검색하는 기능을 제공합니다.

다음 코드 예제에서는 문서에서 디지털 서명 값을 바이트 배열로 얻는 방법을 보여줍니다

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}
