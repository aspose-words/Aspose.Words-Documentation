---
title: 비밀번호 관련 기사 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 편집
linktitle: 문서 편집
description: "제한 유형 설정으로 문서를 편집합니다. 당신은 또한 보호를 제거하고 무제한 편집 가능한 지역을 만들 수 있습니다 Java·"
type: docs
weight: 30
url: /ko/java/restrict-document-editing/
---

때로는 문서를 편집 할 수있는 능력을 제한 할 수 있으며 특정 작업을 할 수 있습니다. 이 문서의 민감한 정보와 기밀 정보를 편집하여 다른 사람들을 막을 수 있습니다.

Aspose.Words 제한 유형 설정으로 문서를 수정할 수 있습니다. 또한, Aspose.Words 또한 문서에 대한 보호 설정을 지정할 수 있습니다.

이 문서는 사용 방법을 설명합니다. Aspose.Words 제한 유형 선택, 보호 추가 또는 제거 하는 방법, 그리고 제한 되지 않은 편집 가능한 지구를 만드는 방법.

## 편집 제한 유형 선택

Aspose.Words 콘텐츠를 제한하는 방법을 제어 할 수 있습니다. [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) enumeration 모수. 다음과 같은 정확한 유형의 보호를 선택할 수 있습니다

* 숙박
* 허용OnlyFormFields
* 제한 없음
* 읽기만
* NoProtection

모든 유형은 암호로 처리되며, 이 암호가 올바르게 입력되지 않은 경우 사용자는 문서의 내용을 법적으로 변경할 수 없습니다. 따라서 문서가 필요한 암호를 제공하기 위해 요구 사항없이 반환되는 경우, 이것은 무언가가 잘못되는 표시입니다.

보안 유형을 선택할 때 암호를 설정하지 않았다면 다른 사용자는 문서의 보호를 간단하게 무시할 수 있습니다.

{{% alert color="primary" %}}

설정된 비밀번호는 문서 속성이 액세스되는 경우 삭제할 수 있는 문서에 있는 속성입니다. 따라서 이러한 암호는 문서 보안의 보증이 아닙니다. 더 보기 [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) 방법은 단지 그.

{{% /alert %}}

## 문서 보호

귀하의 문서에 보호는 간단한 과정이며, 당신이해야 할 모든이 섹션에서 자세히 보호 방법 중 하나를 적용합니다.

Aspose.Words 문서를 변경할 수 있습니다. [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) 방법. 이 방법은 보안 기능이 아니며 문서를 암호화하지 않습니다.

{{% alert color="primary" %}}

내 계정 Microsoft Word, 다음과 같은 방법으로 편집을 제한할 수 있습니다:

* 편집 제한 (File → Info → Protect Document)
* 대체 기능 – "Restrict Editing" (Review → Protect → Restrict Editing)

{{% /alert %}}

다음 코드 예제는 문서에 암호 보호를 추가하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

다음 코드 예제는 문서에서 편집을 제한하는 방법을 보여 주므로 양식 필드에서 편집 할 수 있습니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## 문서 보호

Aspose.Words 간단한 문서와 직접 문서 수정을 사용하여 문서를 제거 할 수 있습니다. 실제 암호를 알고없이 문서 보호를 제거하거나 문서를 잠금 해제하기 위해 올바른 암호를 제공 할 수 있습니다. [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) 방법. 두 가지 제거 방법에는 차이가 없습니다.

다음 코드 예제는 문서에서 보호를 제거하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Unrestricted Editable Regions를 지정하십시오

문서의 편집을 제한할 수 있으며 동시에 선택한 부분을 변경할 수 있습니다. 그래서 문서가 이러한 제한되지 않은 부품에 액세스 할 수 있으며 컨텐츠의 변경을 할 수 있습니다.

Aspose.Words 문서에서 변경할 수 있는 부품을 표시할 수 있습니다. [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) · [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) 방법.

다음 코드 예제는 전체 문서를 읽기 전용으로 표시하고 편집 가능한 지역을 지정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

다른 섹션의 다른 문서 편집 제한도 선택할 수 있습니다.

다음 코드 예제는 전체 문서에 대한 제한을 추가하는 방법을 보여줍니다, 다음 섹션 중 하나에 대한 제한을 제거:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
