---
title: C# 문서의 변경 내용 추적
second_title: .NET용 Aspose.Words
articleTitle: 문서의 변경 내용 추적
linktitle: 문서의 변경 내용 추적
description: "C#를 사용하여 귀하 또는 다른 사람이 변경한 콘텐츠 및 서식을 추적하세요. 문서의 개별 개정에 액세스하고 다양한 속성을 적용합니다."
type: docs
weight: 270
url: /ko/net/track-changes-in-a-document/
---

검토라고도 알려진 변경 내용 추적 기능을 사용하면 귀하 또는 다른 사용자가 변경한 콘텐츠 및 서식을 추적할 수 있습니다. Aspose.Words의 이 트랙 변경 기능은 Microsoft Word의 트랙 변경을 지원합니다. 이 기능을 사용하면 문서의 개별 수정본에 액세스하고 다양한 속성을 적용할 수 있습니다.

변경 내용 추적 기능을 활성화하면 문서의 모든 삽입, 삭제 및 수정 요소가 누가, 언제, 무엇을 변경했는지에 대한 정보와 함께 시각적으로 강조 표시됩니다. 변경된 내용에 대한 정보를 전달하는 개체를 "변경 사항 추적"이라고 합니다. 예를 들어, 문서를 검토하고 중요한 변경을 하고 싶다고 가정해 보겠습니다. 이는 수정이 필요함을 의미할 수 있습니다. 또한 일부 변경 사항을 논의하기 위해 설명을 삽입해야 할 수도 있습니다. 여기에서 문서의 변경 내용을 추적할 수 있습니다.

이 문서에서는 동일한 문서에 대해 여러 검토자가 작성한 변경 내용을 관리하고 추적하는 방법과 변경 내용 추적 속성에 대해 설명합니다.

{{% alert color="primary" %}}

Aspose.Words 및 Microsoft Word의 주석 기능은 변경 내용 추적과 연관될 수 있습니다. 그러나 주석은 변경 내용 추적과 완전히 별개라는 점을 기억하십시오.

{{% /alert %}}

## 개정이란 무엇입니까?

개정에 대해 알아보기 전에 개정의 의미를 설명하겠습니다. [revision](https://reference.aspose.com/words/net/aspose.words/revision/)는 문서의 한 노드에서 발생하는 변경 사항인 반면, [RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/) 클래스로 표시되는 개정 그룹은 문서의 여러 노드에서 발생하는 순차적 개정 그룹입니다. 기본적으로 개정은 변경 사항을 추적하는 도구입니다.

개정은 변경 내용 추적 기능과 문서 비교 기능 내에서 사용되며, 여기서 개정은 비교 결과로 나타납니다. 따라서 변경 내용 추적 기능 내의 개정 내용은 누가, 무엇을 변경했는지 보여줍니다.

{{% alert color="primary" %}}

Microsoft Word에서는 개별 개정판을 볼 수 없으며 순차적 개정판을 단일 엔터티로 볼 수만 있습니다. 그러나 Aspose.Words는 **RevisionGroup** 클래스를 사용하여 이러한 제한을 해결합니다.

{{% /alert %}}

Aspose.Words는 Microsoft Word뿐만 아니라 삽입, 삭제, FormatChange, StyleDefinitionChange 및 이동과 같은 다양한 개정 유형을 지원합니다. 모든 개정 유형은 [RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/) 열거형으로 표시됩니다.

{{% alert color="primary" %}}

개정판의 결과는 Microsoft Word와 유사하지만 Aspose.Words는 변경 사항을 추적하는 동안 형식을 감지하지 못합니다.

{{% /alert %}}

## 변경 사항 추적 시작 및 중지

문서 편집은 일반적으로 추적을 시작할 때까지 개정으로 간주되지 않습니다. Aspose.Words를 사용하면 간단한 단계를 통해 문서의 모든 변경 사항을 자동으로 추적할 수 있습니다. [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/) 방법을 사용하면 변경 사항 추적 프로세스를 쉽게 시작할 수 있습니다. 향후 편집 내용이 수정 버전으로 간주되지 않도록 변경 내용 추적 프로세스를 중지해야 하는 경우 [StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/) 방법을 사용해야 합니다.

{{% alert color="primary" %}}

`StartTrackingRevisions` 방법은 [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) 속성의 상태를 변경하지 않으며 개정 추적을 위해 해당 값을 사용하지 않습니다. 또한 노드가 추적된 문서 내의 한 위치에서 다른 위치로 이동된 경우 이동 시작 및 이동 범위를 포함하여 이동 개정이 생성됩니다.

{{% /alert %}}

문서의 변경 내용 추적 프로세스가 끝나면 모든 수정 사항을 수락하거나 거부하여 문서를 원래 형식으로 되돌릴 수도 있습니다. 이는 [AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) 또는 [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/) 방법을 사용하여 달성할 수 있습니다. 또한 [Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) 또는 [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/) 방법을 사용하여 각 개정을 개별적으로 승인하거나 거부할 수 있습니다.

모든 변경 사항은 프로세스를 시작하는 순간부터 중지하는 순간까지 한 번의 반복 동안 추적됩니다. 여러 반복 간의 연결은 다음 시나리오로 표현됩니다. 즉, 추적 프로세스를 완료한 다음 일부 변경을 수행하고 변경 내용 추적을 다시 시작합니다. 이 시나리오에서는 수락하거나 거부하지 않은 모든 변경 사항이 다시 표시됩니다.

{{% alert color="primary" %}}

`AcceptAllRevisions` 방법은 Microsoft Word의 "모든 변경 사항 수락"과 유사합니다.

{{% /alert %}}

다음 코드 예제에서는 변경 내용 추적 작업 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

다음 코드 예제에서는 추적된 문서 내에서 노드가 이동할 때 개정이 생성되는 방식을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## 변경 사항을 개정판으로 관리 및 저장

이전 변경 내용 추적 기능을 사용하면 문서에서 어떤 변경이 이루어졌는지, 누가 변경했는지 이해할 수 있습니다. [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) 기능을 사용하는 동안 문서 내의 모든 변경 사항을 강제로 개정판으로 저장합니다.

Aspose.Words를 사용하면 [HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/) 속성을 사용하여 문서에 개정이 있는지 확인할 수 있습니다. StartTrackRevisions 및 StopTrackRevisions 메서드를 통해 문서의 변경 사항을 자동으로 추적할 필요가 없는 경우 `TrackRevisions` 속성을 사용하여 Microsoft Word에서 문서를 편집하는 동안 변경 사항이 추적되고 개정판으로 저장되는지 확인할 수 있습니다.

`TrackRevisions` 기능은 실제 DOM 변경 대신 수정을 수행합니다. 그러나 개정 자체는 별개입니다. 예를 들어, 단락을 삭제하면 Aspose.Words은 해당 단락을 삭제하는 대신 삭제로 표시하여 개정으로 만듭니다.

또한 Aspose.Words를 사용하면 [IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/) 및 [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/) 속성을 사용하여 개체가 삽입, 삭제 또는 형식이 변경되었는지 확인할 수 있습니다.

{{% alert color="primary" %}}

개정판 자체와 `TrackRevisions` 속성 사이에는 아무런 관련이 없습니다. 또한 변경 내용 추적 기능에 관계없이 개정 내용을 수락/거부할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 개정을 통해 다양한 속성을 적용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
