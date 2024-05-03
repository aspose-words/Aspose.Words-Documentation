---
title: 문서 읽기 전용 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 읽기 전용
linktitle: 문서 읽기 전용
description: "문서 읽기 전용 만들기 그래서 컨텐츠를 복사하거나 읽을 수 있지만, 사용하지 않는 Java·"
type: docs
weight: 10
url: /ko/java/open-a-document-read-only/
---

때로는 리뷰가 필요한 문서가있을 수 있지만, 리뷰가 무작위로 콘텐츠를 수정할 수 없습니다. Aspose.Words 문서 읽기 전용의 권한을 만들 수 있도록 콘텐츠를 복사하거나 읽을 수 있지만 수정되지 않습니다. 이 문서에 삭제되거나 추가된 내용이 방지됩니다.

{{% alert color="primary" %}}

문서에 읽기 전용 옵션을 적용하면 새 사본을 만들고 다른 이름으로 저장하지 않고 누군가를 방지하지 않습니다.

{{% /alert %}}

이 문서는 문서 읽기 전용을 만드는 방법을 설명합니다.

## 문서 읽기 전용 만들기

Aspose.Words 공공 클래스 [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) 문서에 대한 보호 설정을 지정합니다. 이 클래스의 인스턴스를 직접 만들 수 없습니다.

읽기 전용 및/또는 문서를 수정하기 위해 암호를 필요로 하는 문서를 열어 놓는 것이 좋습니다.

Aspose.Words 문서 읽기 전용을 만들 수 있습니다. [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) 시설 및 시설 [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) 방법.

{{% alert color="primary" %}}

내 계정 Microsoft Word, 다음과 같은 방법으로 읽기 전용 문서를 만들 수 있습니다:

* "Always Open Read-Only" (파일 → 정보 → 문서 보호)
* "암호 수정" (Save as → Tools → 일반 옵션 → 암호)

{{% /alert %}}

{{% alert color="primary" %}}

사용자는 선택하여 문서 편집을 제한할 수 있습니다. [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) 이름 * **ReadOnly**, 그러나 이것은 더 진보된 보호 기능을 제공하는 또 다른 특징입니다. 그런 함수는 Microsoft Word, 각각, 그것은에서 실행됩니다 Aspose.Words·

**ProtectionType** 다음 기사 중 하나에서 자세히 설명 될 것 – "Restrict Document Editing".

{{% /alert %}}

더 보기 **ReadOnlyRecommended** 해당 이용 후기에 달린 코멘트가 없습니다. **ReadOnlyRecommended** 속성, 그런 다음 다른 사용자는 단순히 문서를 공개 할 수 있습니다. 문서 보호 설정에 액세스하고 쓰기 보호 암호를 설정 **SetPassword** 방법.

{{% alert color="primary" %}}

설정된 비밀번호는 문서 속성이 액세스되는 경우 삭제할 수 있는 문서에 있는 속성입니다. 따라서 이러한 암호는 문서 보안의 보증이 아닙니다.

{{% /alert %}}

문서가 편집에서 제한되는 쓰기 보호 암호가 있는지 확인해야 할 경우, 당신은 사용할 수 있습니다 [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) 호텔 위치

다음 코드 예제는 문서 읽기 전용을 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## 읽기 전용 제한 제거

읽기 전용으로 문서를 열려면 사용자를 원하지 않는다면 간단히 설정할 수 있습니다. **ReadOnlyRecommened** 뚱 베어 *false* 또는 선택 **ProtectionType** 이름 * **NoProtection**·

다음 코드 예제는 문서의 읽기 전용 액세스를 제거하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
