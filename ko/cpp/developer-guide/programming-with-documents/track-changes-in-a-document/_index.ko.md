---
title: 문서의 변경 내용 추적 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서의 변경 내용 추적
linktitle: 문서의 변경 내용 추적
description: "다음을 사용하여 귀하 또는 다른 사람이 만든 콘텐츠 및 서식 변경 내용 추적 C++. 문서의 개별 개정에 액세스하고 다양한 속성을 적용합니다."
type: docs
weight: 270
url: /ko/cpp/track-changes-in-a-document/
---

검토라고도 하는 변경 내용 추적 기능을 사용하면 사용자 또는 다른 사용자가 만든 콘텐츠 및 서식 변경 내용을 추적할 수 있습니다. 이 트랙은 다음과 같은 기능을 변경합니다 Aspose.Words 지원 트랙 변경 Microsoft Word. 이 기능을 사용하면 문서의 개별 개정판에 액세스하고 다른 속성을 적용할 수 있습니다.

변경 내용 추적 기능을 사용하도록 설정하면 문서의 삽입,삭제 및 수정된 모든 요소가 변경 대상,시기 및 변경 내용에 대한 정보와 함께 시각적으로 강조 표시됩니다. 변경된 내용에 대한 정보를 전달하는 객체를"변경 추적"이라고 합니다. 예를 들어,문서를 검토 하 고 중요 한 변경 하려는 가정–이 수정 해야 하는 것을 의미할 수 있습니다. 또한 일부 변경 사항을 논의하기 위해 주석을 삽입해야 할 수도 있습니다. 여기서 문서의 변경 사항을 추적할 수 있습니다.

이 문서에서는 동일한 문서에서 많은 검토자가 만든 변경 내용을 관리하고 추적하는 방법과 변경 내용 추적 속성을 설명합니다.

{{% alert color="primary" %}}

주석 기능은 Aspose.Words,그리고 Microsoft Word,변경 추적과 연관될 수 있습니다. 그러나 주석은 변경 내용 추적과는 완전히 독립적이라는 것을 기억하십시오.

{{% /alert %}}

## 개정이란 무엇입니까

개정에 다이빙하기 전에,의 개정의 의미를 설명 할 수 있습니다. A [revision](https://reference.aspose.com/words/cpp/aspose.words/revision/) 문서의 한 노드에서 발생하는 변경입니다. [RevisionGroup](https://reference.aspose.com/words/cpp/aspose.words/revisiongroup/) 클래스는 문서의 많은 노드에서 발생하는 순차적인 수정의 그룹입니다. 기본적으로 수정은 변경 사항을 추적하는 도구입니다.

수정은 변경 내용 추적 기능 및 문서 비교 기능 내에서 사용되며,여기서 수정은 비교 결과로 나타납니다. 따라서 변경 내용 추적 기능 내의 수정 사항은 누구에 의해 변경되었는지 보여줍니다.

{{% alert color="primary" %}}

참고: Microsoft Word 개별 개정을 볼 수 없습니다,그것은 단지 당신이 하나의 엔티티로 순차적 개정을 볼 수 있습니다. 하지만 Aspose.Words 이 제한을 해결합니다. **RevisionGroup** 수업

{{% /alert %}}

Aspose.Words 다른 개정 유형을 지원,뿐만 아니라 Microsoft Word 삽입,삭제와 같은, FormatChange, StyleDefinitionChange 그리고 움직이고 있습니다. 모든 개정 유형은 [RevisionType](https://reference.aspose.com/words/cpp/aspose.words/revisiontype/) 열거

{{% alert color="primary" %}}

개정 결과는 Microsoft Word 하지만 Aspose.Words 변경 내용을 추적하는 동안 서식을 감지하지 않습니다.

{{% /alert %}}

## 변경 내용 추적 시작 및 중지

일반적으로 문서 편집은 추적을 시작할 때까지 수정본으로 간주되지 않습니다. Aspose.Words 간단한 단계로 문서의 모든 변경 사항을 자동으로 추적 할 수 있습니다. 당신은 쉽게 사용하여 변경 사항을 추적하는 과정을 시작할 수 있습니다 [StartTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/starttrackrevisions/) 방법 향후 수정 사항이 수정 사항으로 간주되지 않도록 변경 내용 추적 프로세스를 중지해야 하는 경우 다음을 사용해야 합니다 [StopTrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/stoptrackrevisions/) 방법

{{% alert color="primary" %}}

참고: `StartTrackingRevisions` 의 상태를 변경하지 않는 방법 [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/set_trackrevisions/) 속성 및 개정 추적의 목적을 위해 그 값을 사용하지 않습니다. 또한 추적된 문서 내에서 한 위치에서 다른 위치로 노드를 이동한 경우 이동 범위 및 이동 범위를 포함하여 이동 수정이 생성됩니다.

{{% /alert %}}

문서의 변경 내용 추적 프로세스가 끝나면 모든 수정 내용을 수락하거나 거부하여 문서를 원래 형식으로 되돌릴 수도 있습니다. 이것은 [AcceptAllRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/acceptallrevisions/) 또는 [RejectAll](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/rejectall/) 방법 또한 다음을 사용하여 각 개정을 개별적으로 수락하거나 거부할 수 있습니다 [Accept](https://reference.aspose.com/words/cpp/aspose.words/revision/accept/) 또는 [Reject](https://reference.aspose.com/words/cpp/aspose.words/revision/reject/) 방법

모든 변경 사항은 프로세스를 시작하는 순간부터 프로세스를 중지하는 순간까지 한 번의 반복에 대해 추적됩니다. 추적 프로세스를 완료한 다음 일부 변경한 후 변경 내용 추적을 다시 시작합니다. 이 시나리오에서는 수락하거나 거부하지 않은 모든 변경 내용이 다시 표시됩니다.

{{% alert color="primary" %}}

참고: `AcceptAllRevisions` 방법은"모든 변경 사항을 수락"과 유사하다 Microsoft Word.

{{% /alert %}}

다음 코드 예제에서는 변경 내용 추적을 사용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-AcceptAllRevisions.cpp" >}}

다음 코드 예제에서는 추적된 문서 내에서 노드를 이동할 때 수정본이 생성되는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-MoveNodeInTrackedDocument.cpp" >}}

## 변경 사항을 수정으로 관리 및 저장

이전 변경 내용 추적 기능을 사용하면 문서에서 변경한 내용과 변경한 내용을 파악할 수 있습니다. 함께 있을 때 [TrackRevisions](https://reference.aspose.com/words/cpp/aspose.words/document/get_trackrevisions/) 기능,당신은 수정으로 저장 될 문서 내에서 변경 사항을 강제로.

Aspose.Words 문서를 사용하여 개정이 있는지 여부를 확인할 수 있습니다 [HasRevision](https://reference.aspose.com/words/cpp/aspose.words/document/get_hasrevisions/) 재산. 자동을 통해 문서의 변경 사항을 추적 할 필요가없는 경우 StartTrackRevisions 그리고 StopTrackRevisions 방법,당신은 사용할 수 있습니다 `TrackRevisions` 문서를 편집하는 동안 변경 내용이 추적되는지 확인하는 속성 Microsoft Word 그리고 수정으로 저장됩니다.

그 `TrackRevisions` 기능은 실제 대신 수정을합니다 DOM 변경. 그러나 수정 자체는 별개입니다. 예를 들어,단락을 삭제하는 경우, Aspose.Words 그것을 삭제하는 대신 삭제로 표시하여 개정으로 만듭니다.

또한, Aspose.Words 개체를 사용하여 서식을 삽입,삭제 또는 변경했는지 확인할 수 있습니다. [IsDeleteRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_isformatrevision/),그리고 [IsMoveToRevision](https://reference.aspose.com/words/cpp/aspose.words/inline/get_ismovetorevision/) 속성.

{{% alert color="primary" %}}

개정판 자체와 `TrackRevisions` 재산. 또한 변경 내용 추적 기능에 관계없이 수정 내용을 수락/거부 할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 수정과 함께 다른 속성을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisions-ShapeRevision.cpp" >}}
