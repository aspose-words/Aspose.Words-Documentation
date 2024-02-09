---
title: C#에서 읽기 전용으로 문서 열기
second_title: .NET용 Aspose.Words
articleTitle: 문서를 읽기 전용으로 열기
linktitle: 문서를 읽기 전용으로 열기
description: "C#를 사용하여 콘텐츠를 복사하거나 읽을 수 있지만 수정할 수 없도록 문서를 읽기 전용으로 만드세요."
type: docs
weight: 10
url: /ko/net/open-a-document-read-only/
---

검토가 필요한 문서가 있을 수 있지만 검토자가 콘텐츠를 임의로 수정하는 것을 원하지 않는 경우도 있습니다. Aspose.Words를 사용하면 문서의 권한을 읽기 전용으로 설정하여 콘텐츠를 복사하거나 읽을 수는 있지만 수정할 수는 없습니다. 이렇게 하면 콘텐츠가 문서에 제거되거나 추가되는 것을 방지할 수 있습니다.

{{% alert color="primary" %}}

문서에 읽기 전용 옵션을 적용해도 누군가가 문서의 새 복사본을 만들고 다른 이름으로 저장하는 것을 막을 수는 없습니다.

{{% /alert %}}

이 문서에서는 문서를 읽기 전용으로 만드는 방법을 설명합니다.

## 문서를 읽기 전용으로 만들기

Aspose.Words에는 문서에 대한 쓰기 방지 설정을 지정하는 공개 클래스 [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/)가 있습니다. 이 클래스의 인스턴스를 직접 생성하지 않습니다.

쓰기 방지는 작성자가 문서를 읽기 전용으로 열 것을 권장했는지 및/또는 문서를 수정하려면 암호를 요구하는지 여부를 보여줍니다.

Aspose.Words를 사용하면 [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) 속성과 [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) 메서드를 사용하여 문서를 읽기 전용으로 만들어 편집을 제한할 수 있습니다.

{{% alert color="primary" %}}

Microsoft Word에서는 다음 두 가지를 모두 사용하여 비슷한 방식으로 읽기 전용 문서를 만들 수 있습니다

* "항상 읽기 전용으로 열기"(파일 → 정보 → 문서 보호)
* "수정할 비밀번호"(다른 이름으로 저장 → 도구 → 일반 옵션 → 비밀번호)

{{% /alert %}}

{{% alert color="primary" %}}

사용자는 [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/)를 **ReadOnly**로 선택하여 문서 편집을 제한할 수도 있지만 이는 보다 고급 보호 기능을 제공하는 또 다른 기능입니다. Microsoft Word에는 각각 이러한 기능이 있으며 Aspose.Words로 구현됩니다.

**ProtectionType**는 다음 문서 중 하나인 "문서 편집 제한"에서 자세히 설명됩니다.

{{% /alert %}}

**ReadOnlyRecommended** 속성은 비밀번호로 보호되어 있으므로 **ReadOnlyRecommended** 속성을 적용하기 전에 비밀번호를 설정하지 않으면 다른 사용자가 마치 보호되지 않은 것처럼 문서를 열 수 있습니다. 문서 보호 설정에 액세스하고 **SetPassword** 방법을 통해 쓰기 방지 비밀번호를 설정합니다.

{{% alert color="primary" %}}

설정되는 비밀번호는 문서 속성에 액세스하면 제거할 수 있는 문서의 속성일 뿐입니다. 따라서 이러한 비밀번호는 문서의 보안을 보장하지 않습니다.

{{% /alert %}}

문서에 편집을 제한하는 쓰기 방지 비밀번호가 있는지 확인해야 하는 경우 [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) 속성을 사용할 수 있습니다.

다음 코드 예제에서는 문서를 읽기 전용으로 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## 읽기 전용 제한 제거

사용자가 문서를 읽기 전용으로 열지 못하게 하려면 **ReadOnlyRecommened** 속성을 *false*로 설정하거나 **ProtectionType**을 **NoProtection**로 선택하면 됩니다.

다음 코드 예제에서는 문서에 대한 읽기 전용 액세스 권한을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
