---
title: 읽기 전용으로 문서 열기 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 읽기 전용 문서 열기
linktitle: 읽기 전용 문서 열기
description: "내용을 복사하거나 읽을 수 있지만 수정할 수는 없도록 문서를 읽기 전용으로 만듭니다."
type: docs
weight: 10
url: /ko/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

때때로 검토가 필요한 문서가 있을 수 있지만 검토자가 콘텐츠를 임의로 수정하지 않도록 합니다. Aspose.Words 내용을 복사하거나 읽을 수 있지만 수정할 수는 없도록 문서의 권한을 읽기 전용으로 만들 수 있습니다. 이렇게 하면 콘텐츠가 제거되거나 문서에 추가되는 것을 방지할 수 있습니다.

{{% alert color="primary" %}}

문서에 읽기 전용 옵션을 적용해도 새 복사본을 만들고 다른 이름으로 저장할 수 없습니다.

{{% /alert %}}

이 문서에서는 문서를 읽기 전용으로 만드는 방법을 설명합니다.

## 문서를 읽기 전용으로 만들기

Aspose.Words 는 공공 클래스 [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/) 문서에 대한 쓰기 보호 설정을 지정합니다. 이 클래스의 인스턴스는 직접 만들지 않습니다.

쓰기 보호는 작성자가 문서를 읽기 전용으로 열거나 문서를 수정하기 위해 암호를 요구하도록 권장했는지 여부를 보여줍니다.

Aspose.Words 다음을 사용하여 편집을 제한하기 위해 문서를 읽기 전용으로 만들 수 있습니다 [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) 재산 및 [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/) 방법

{{% alert color="primary" %}}

그 안에 Microsoft Word,둘 다 사용하여 비슷한 방법으로 읽기 전용 문서를 만들 수 있습니다:

* "항상 읽기 전용으로 열기"(파일,정보,문서 보호)
* "수정할 암호"(다른 이름으로 저장 도구,일반 옵션,암호)

{{% /alert %}}

{{% alert color="primary" %}}

또한 사용자는 다음을 선택하여 문서 편집을 제한할 수 있습니다 [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) ' **ReadOnly**,하지만 이것은 더 고급 보호 기능을 제공하는 또 다른 기능입니다. 이런 기능이 있습니다. Microsoft Word,각각,그것은 Aspose.Words.

**ProtectionType**

{{% /alert %}}

그 **ReadOnlyRecommended** 속성은 암호 보안,그래서 당신은 적용하기 전에 암호를 설정하지 않는 경우 **ReadOnlyRecommended** 이 보호되지 않은 것처럼 속성,다음 다른 사용자는 단순히 문서를 열 수 있습니다. 문서 보호 설정에 액세스하고 다음을 통해 쓰기 보호 암호를 설정합니다 **SetPassword** 방법

{{% alert color="primary" %}}

설정되는 암호는 문서 속성에 액세스할 경우 제거할 수 있는 문서의 속성일 뿐입니다. 따라서 이러한 암호는 문서 보안을 보장하지 않습니다.

{{% /alert %}}

문서에 편집을 제한하는 쓰기 보호 암호가 있는지 확인해야 하는 경우 다음을 사용할 수 있습니다 [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/) 재산.

다음 코드 예제에서는 문서를 읽기 전용으로 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## 읽기 전용 제한 제거

사용자가 문서를 읽기 전용으로 열지 않으려면 다음을 간단히 설정할 수 있습니다 **ReadOnlyRecommened** 재산 *false* 또는 선택 **ProtectionType** ' **NoProtection**.

다음 코드 예제에서는 문서에 대한 읽기 전용 액세스를 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
