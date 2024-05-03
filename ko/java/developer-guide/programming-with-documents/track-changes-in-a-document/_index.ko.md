---
title: 문서의 변화 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서의 변화
linktitle: 문서의 변화
description: "콘텐츠 및 형식의 변경을 추적하십시오. 문서의 개별 개정에 액세스하고 다양한 속성을 사용하여 적용 Java·"
type: docs
weight: 270
url: /ko/java/track-changes-in-a-document/
---

트랙 변경의 기능, 또한 검토로 알려진, 당신은 콘텐츠 및 포맷으로 변경을 추적 할 수 있습니다 또는 다른 사용자. 이 트랙 변경 기능 Aspose.Words 트랙 변경 지원 Microsoft Word· 이 기능을 사용하면 문서의 개별 개정에 액세스하고 다른 속성을 적용 할 수 있습니다.

트랙 변경 기능을 활성화 할 때, 모든 삽입, 삭제 및 문서의 수정 된 요소는 누구에 대한 정보와 시각적으로 강조 될 것입니다, 언제, 그리고 무슨 변경. 변경된 정보에 대한 정보를 수행하는 개체는 "추적 변화"라고합니다. 예를 들어, 문서를 검토하고 중요한 변경 사항을 작성하려는 가정 - 이것은 당신이 개정을 만들 필요가 있음을 의미 할 수있다. 또한, 변경 사항을 논의하기 위해 의견을 삽입 할 수 있습니다. 그것은 문서의 변화를 추적하는 곳입니다.

이 문서는 동일한 문서에 많은 리뷰어에 의해 생성 된 관리 및 트랙 변경뿐만 아니라 추적 변경을위한 속성을 설명합니다.

{{% alert color="primary" %}}

댓글이 다르다. Aspose.Words, 또한, Microsoft Word, 추적 변경과 관련될 수 있습니다. 그러나, 의견이 완전히 독립적 인 추적 변경을 기억하십시오.

{{% /alert %}}

## Revision이란 무엇입니까?

개정 전에, 개정의 의미를 설명하자. · [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/) 문서의 한 노드에서 발생하는 변화는 개정 그룹이 나타내는 반면, [RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/) 클래스는 문서의 많은 노드에서 발생하는 순차적 개정 그룹입니다. Revision은 추적 변경을위한 도구입니다.

Revisions는 추적 변경 기능 및 비교 문서 기능 내에서 사용되며, 개정은 비교 결과로 표시됩니다. 그래서, 추적 변경 기능 내에서 개정은 누구와 변경 된 것.

{{% alert color="primary" %}}

이름 * Microsoft Word 개별 개정을 볼 수 없습니다, 그것은 단지 단일 법인으로 순차적 개정을 볼 수 있습니다. 뚱 베어 Aspose.Words 이 제한을 해결합니다. **RevisionGroup** 수업.

{{% /alert %}}

Aspose.Words 다른 개정 유형을, 뿐 아니라 지원하십시오 Microsoft Word, 삽입과 같은 Deletion, 체재 변경, StyleDefinition 변경 및 이동. 모든 개정 유형은 [RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/) 관련 기사

{{% alert color="primary" %}}

개정은 결과와 유사하다 Microsoft Word 그러나 Aspose.Words 추적 변경 중에 형식을 감지하지 않습니다.

{{% /alert %}}

## 시작 및 중지 추적 변경

문서 편집은 일반적으로 그것을 추적하기 시작할 때까지 개정으로 계산하지 않습니다. Aspose.Words 간단한 단계로 문서의 모든 변경 사항을 자동으로 추적 할 수 있습니다. 쉽게 추적 변경 과정을 시작할 수 있습니다. [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String) 방법. 추적 변경 프로세스를 중지해야 하는 경우 어떤 미래 편집이 개정되지 않았으므로 사용해야 합니다. [StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions) 방법.

{{% alert color="primary" %}}

주의사항 `StartTrackingRevisions` 방법의 상태를 변경하지 않습니다 [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) 재산은 개정 추적의 목표에 그것의 가치를 이용하지 않습니다. 노드가 트랙 된 문서 내에서 하나의 위치에서 다른 곳으로 이동한 경우, 이전 수정이 생성됩니다.

{{% /alert %}}

문서의 추적 변경 프로세스의 끝에서 모든 개정을 수락하거나 원본 양식에 문서를 반전 할 수있는 능력을 가질 것입니다. 이를 통해 달성할 수 있습니다. [AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions) 또는 [RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll) 방법. 또한, 별도의 각 개정을 허용하거나 거부할 수 있습니다. [Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept) 또는 [Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject) 방법.

모든 변경은 당신이 그것을 중지 순간에 프로세스를 시작 순간에서 한 반복을 위해 추적됩니다. 다른 반복 사이의 연결은 다음과 같은 시나리오로 표시됩니다. 추적 프로세스를 완료 한 다음 변경 사항을 작성하고 다시 추적 변경을 시작합니다. 이 시나리오에서, 당신이 받아들이지 않았거나 거부하지 않은 모든 변경은 다시 표시됩니다.

{{% alert color="primary" %}}

주의사항 `AcceptAllRevisions` 메소드는 "모든 변경"과 유사합니다. Microsoft Word·

{{% /alert %}}

다음 코드 예제는 추적 변경과 작업하는 방법을 보여줍니다:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

다음과 같은 코드 예제는 노드가 추적 된 문서 내에서 이동할 때 수정이 생성되는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## Revisions로 관리 및 저장 변경

이전 추적 변경 기능으로 문서에 변경된 변경 사항과 그 변경 사항을 작성할 수 있습니다. 와 함께 [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions) 기능, 문서 내의 변경 사항이 변경되어 개정으로 저장됩니다.

Aspose.Words 문서가 개정되거나 사용되지 않은 경우 확인 할 수 있습니다. [HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions) 호텔 위치 StartTrackRevisions 및 StopTrackRevisions 방법을 통해 문서의 변경 사항을 자동으로 추적 할 필요가 없습니다. `TrackRevisions` 변경 사항이 추적되는지 확인하는 속성 Microsoft Word 그리고 개정으로 저장.

더 보기 `TrackRevisions` 기능은 실제 대신 개정한다. DOM 이름 * 그러나 그들 스스로는 분리된다. 예를 들어, 어떤 단락을 삭제하는 경우, Aspose.Words 수정으로 만들기, 삭제로 표시, 대신 삭제.

또한, Aspose.Words 객체가 삽입된 경우, 삭제되거나, 포맷을 변경할 수 있습니다. [IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), · [IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision) 이름 *

{{% alert color="primary" %}}

개정과의 연결이 없으므로 `TrackRevisions` 호텔 위치 또한, 트래킹 변경 기능에 관계없이 / 거절할 수 있습니다.

{{% /alert %}}

다음 코드 예제는 개정과 다른 속성을 적용하는 방법을 보여줍니다:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
