---
title: 문서 편집 제한 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 편집 제한
linktitle: 문서 편집 제한
description: "다음을 사용하여 제한 유형을 설정하여 문서 편집을 제한합니다 C++. 또한 보호를 제거하고 무제한 편집 가능한 영역을 만들 수 있습니다."
type: docs
weight: 30
url: /ko/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

때로는 문서를 편집 할 수있는 기능을 제한하고 특정 작업 만 허용해야 할 수도 있습니다. 이 기능은 다른 사람이 문서의 민감한 기밀 정보를 편집하지 못하도록 하는 데 유용할 수 있습니다.

Aspose.Words 제한 유형을 설정하여 문서 편집을 제한할 수 있습니다. 또한, Aspose.Words 또한 문서에 대한 쓰기 보호 설정을 지정할 수 있습니다.

이 문서에서는 사용 방법에 대해 설명합니다 Aspose.Words 제한 유형,보호를 추가 또는 제거하는 방법 및 제한 없이 편집 가능한 영역을 만드는 방법을 선택합니다.

## 편집 제한 유형 선택

Aspose.Words 당신은 당신이 사용하여 콘텐츠를 제한하는 방법을 제어 할 수 있습니다 [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) 열거형 매개 변수. 이렇게 하면 다음과 같은 정확한 보호 유형을 선택할 수 있습니다:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

모든 유형은 암호로 보호되며 이 암호를 올바르게 입력하지 않으면 사용자가 문서 내용을 합법적으로 변경할 수 없습니다. 따라서,문서가 필요한 암호를 제공하는 요구 사항없이 당신에게 반환되는 경우,이 뭔가 잘못되었다는 신호이다.

보안 유형을 선택할 때 암호를 설정하지 않은 경우,다른 사용자는 단순히 문서의 보호를 무시할 수 있습니다.

{{% alert color="primary" %}}

설정되는 암호는 문서 속성에 액세스할 경우 제거할 수 있는 문서의 속성일 뿐입니다. 따라서 이러한 암호는 문서 보안을 보장하지 않습니다. 그 [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) 방법은 그냥 보여줍니다.

{{% /alert %}}

## 문서 보호 추가

이 섹션에 설명된 보호 방법 중 하나를 적용하기만 하면 되기 때문에 문서에 보호 기능을 추가하는 것은 간단한 프로세스입니다.

Aspose.Words 를 사용하여 변경 사항으로부터 문서를 보호 할 수 있습니다 [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/) 방법 이 방법은 보안 기능이 아니며 문서를 암호화하지 않습니다.

{{% alert color="primary" %}}

그 안에 Microsoft Word,둘 다 사용하여 비슷한 방식으로 편집을 제한 할 수 있습니다:

* 편집 제한(파일,정보,문서 보호)
* 다른 기능–"편집 제한"(검토,보호,편집 제한)

{{% /alert %}}

다음 코드 예제에서는 문서에 암호 보호를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

다음 코드 예제에서는 양식 필드에서만 편집할 수 있도록 문서의 편집을 제한하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## 문서 보호 제거

Aspose.Words 간단하고 직접적인 문서 수정으로 문서에서 보호를 제거 할 수 있습니다. 실제 암호를 모르는 상태에서 문서 보호를 제거하거나 올바른 암호를 제공하여 문서를 잠금 해제할 수 있습니다. [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) 방법 두 가지 제거 방법 모두 차이가 없습니다.

다음 코드 예제에서는 문서에서 보호를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## 제한 없는 편집 가능한 영역 지정

당신은 당신의 문서의 편집을 제한하고 동시에 그것의 선택된 부분에 대한 변경을 허용 할 수 있습니다. 따라서 문서를 여는 사람은 누구나 이러한 제한 없는 부분에 액세스하여 콘텐츠를 변경할 수 있습니다.

Aspose.Words 를 사용하여 문서에서 변경할 수있는 부분을 표시 할 수 있습니다 [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) 그리고 [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/) 방법.

다음 코드 예제에서는 전체 문서를 읽기 전용으로 표시하고 편집 가능한 영역을 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

다른 섹션에 대해 다른 문서 편집 제한을 선택할 수도 있습니다.

다음 코드 예제에서는 전체 문서에 대한 제한을 추가한 다음 섹션 중 하나에 대한 제한을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
