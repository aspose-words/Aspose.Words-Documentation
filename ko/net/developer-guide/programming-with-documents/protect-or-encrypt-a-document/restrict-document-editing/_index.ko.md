---
title: C#에서 문서 편집 제한
second_title: .NET용 Aspose.Words
articleTitle: 문서 편집 제한
linktitle: 문서 편집 제한
description: "C#를 사용하여 제한 유형을 설정하여 문서 편집을 제한합니다. 보호를 제거하고 제한되지 않은 편집 가능 영역을 만들 수도 있습니다."
type: docs
weight: 30
url: /ko/net/restrict-document-editing/
---

때로는 문서 편집 기능을 제한하고 문서에 대한 특정 작업만 허용해야 할 수도 있습니다. 이는 다른 사람이 문서의 민감한 기밀 정보를 편집하는 것을 방지하는 데 유용할 수 있습니다.

Aspose.Words를 사용하면 제한 유형을 설정하여 문서 편집을 제한할 수 있습니다. 또한 Aspose.Words를 사용하면 문서에 대한 쓰기 금지 설정을 지정할 수도 있습니다.

이 문서에서는 Aspose.Words를 사용하여 제한 유형을 선택하는 방법, 보호를 추가하거나 제거하는 방법, 제한되지 않은 편집 가능 영역을 만드는 방법에 대해 설명합니다.

## 편집 제한 유형 선택

Aspose.Words를 사용하면 [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) 열거 매개변수를 사용하여 콘텐츠를 제한하는 방식을 제어할 수 있습니다. 이를 통해 다음과 같은 정확한 보호 유형을 선택할 수 있습니다

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* 읽기 전용
* 보호 없음

모든 유형은 비밀번호로 보호되어 있으며, 이 비밀번호를 올바르게 입력하지 않으면 사용자는 문서의 내용을 합법적으로 변경할 수 없습니다. 따라서 필요한 비밀번호를 제공하라는 요구 없이 문서가 귀하에게 반환된다면 이는 뭔가 잘못되었다는 신호입니다.

보안 유형을 선택할 때 비밀번호를 설정하지 않은 경우 다른 사용자는 문서 보호를 무시할 수 있습니다.

{{% alert color="primary" %}}

설정되는 비밀번호는 문서 속성에 액세스하면 제거할 수 있는 문서의 속성일 뿐입니다. 따라서 이러한 비밀번호는 문서의 보안을 보장하지 않습니다. [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) 방법이 바로 이를 보여줍니다.

{{% /alert %}}

## 문서 보호 추가

문서에 보호 기능을 추가하는 것은 간단한 과정입니다. 이 섹션에 자세히 설명된 보호 방법 중 하나를 적용하기만 하면 됩니다.

Aspose.Words를 사용하면 [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) 방법을 사용하여 문서가 변경되지 않도록 보호할 수 있습니다. 이 방법은 보안 기능이 아니며 문서를 암호화하지 않습니다.

{{% alert color="primary" %}}

Microsoft Word에서는 다음 두 가지를 모두 사용하여 비슷한 방식으로 편집을 제한할 수 있습니다

* 편집 제한(파일 → 정보 → 문서 보호)
* 대체 기능 – "편집 제한"(검토 → 보호 → 편집 제한)

{{% /alert %}}

다음 코드 예제에서는 문서에 비밀번호 보호를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

다음 코드 예제에서는 양식 필드에서만 편집이 가능하도록 문서 편집을 제한하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## 문서 보호 제거

Aspose.Words를 사용하면 간단하고 직접적인 문서 수정으로 문서에서 보호를 제거할 수 있습니다. 실제 비밀번호를 모르고 문서 보호를 제거하거나, [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) 방식을 사용하여 올바른 비밀번호를 제공하여 문서 잠금을 해제할 수 있습니다. 두 가지 제거 방법 모두 차이가 없습니다.

다음 코드 예제에서는 문서에서 보호를 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## 무제한 편집 가능 영역 지정

문서 편집을 제한하는 동시에 선택한 부분에 대한 변경을 허용할 수 있습니다. 따라서 문서를 여는 사람은 누구나 이러한 제한되지 않은 부분에 액세스하여 내용을 변경할 수 있습니다.

Aspose.Words를 사용하면 [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) 및 [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) 방법을 사용하여 문서에서 변경할 수 있는 부분을 표시할 수 있습니다.

다음 코드 예제에서는 전체 문서를 읽기 전용으로 표시하고 편집 가능 영역을 지정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

섹션마다 다른 문서 편집 제한을 선택할 수도 있습니다.

다음 코드 예제에서는 전체 문서에 대한 제한을 추가한 다음 섹션 중 하나에 대한 제한을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
