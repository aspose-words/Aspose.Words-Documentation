---
title: Java에서 문서의 변경 내용 추적
second_title: Aspose.WordsJava
articleTitle: 문서의 변경 내용 추적
linktitle: 문서의 변경 내용 추적
description: "귀하 또는 다른 사람이 만든 콘텐츠 및 서식 변경 사항을 추적합니다. 문서의 개별 개정판에 액세스하고Java을 사용하여 다양한 속성을 적용합니다."
type: docs
weight: 270
url: /ko/java/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

검토라고도 하는 변경 내용 추적 기능을 사용하면 사용자 또는 다른 사용자가 만든 콘텐츠 및 서식 변경 내용을 추적할 수 있습니다. Aspose.Words이 트랙 변경 기능은Microsoft Word에서 트랙 변경 사항을 지원합니다. 이 기능을 사용하면 문서의 개별 개정판에 액세스하고 다른 속성을 적용할 수 있습니다.

변경 내용 추적 기능을 사용하도록 설정하면 문서의 삽입,삭제 및 수정된 모든 요소가 변경 대상,시기 및 변경 내용에 대한 정보와 함께 시각적으로 강조 표시됩니다. 변경된 내용에 대한 정보를 전달하는 개체를"변경 추적"이라고합니다. 예를 들어,문서를 검토 하 고 중요 한 변경 하려는 가정–이 수정 해야 하는 것을 의미할 수 있습니다. 또한 일부 변경 사항을 논의하기 위해 주석을 삽입해야 할 수도 있습니다. 여기서 문서의 변경 사항을 추적할 수 있습니다.

이 문서에서는 동일한 문서에서 많은 검토자가 만든 변경 내용을 관리하고 추적하는 방법과 변경 내용 추적 속성을 설명합니다.

{{% alert color="primary" %}}

Aspose.Words및Microsoft Word의 주석 기능은 변경 내용 추적과 연관될 수 있습니다. 그러나 주석은 변경 내용 추적과는 완전히 독립적이라는 것을 기억하십시오.

{{% /alert %}}

## 개정이란 무엇입니까

개정에 다이빙하기 전에,의 개정의 의미를 설명 할 수 있습니다. [revision](https://reference.aspose.com/words/java/com.aspose.words/revision/)은 문서의 한 노드에서 발생하는 변경 사항이며[RevisionGroup](https://reference.aspose.com/words/java/com.aspose.words/revisiongroup/)클래스로 표시되는 개정 그룹은 문서의 여러 노드에서 발생하는 순차적 개정 그룹입니다. 수정은 변경 사항을 추적하는 도구입니다.

수정은 변경 내용 추적 기능 및 문서 비교 기능 내에서 사용되며,여기서 수정은 비교 결과로 나타납니다. 따라서 변경 내용 추적 기능 내의 수정은 누구와 변경 내용을 보여줍니다.

{{% alert color="primary" %}}

Microsoft Word은 개별 개정을 볼 수 없으며 순차 개정을 단일 개체로 볼 수 있습니다. 그러나Aspose.Words는**RevisionGroup**클래스로 이 제한을 해결합니다.

{{% /alert %}}

Aspose.Words은 삽입,삭제,FormatChange,StyleDefinitionChange및 이동과 같은Microsoft Word에서뿐만 아니라 다른 개정 유형을 지원합니다. 모든 개정 유형은[RevisionType](https://reference.aspose.com/words/java/com.aspose.words/revisiontype/)열거형으로 표시됩니다.

{{% alert color="primary" %}}

개정판은Microsoft Word과 비슷한 결과를 가져오지만Aspose.Words은 변경 내용을 추적하는 동안 서식을 감지하지 않습니다.

{{% /alert %}}

## 변경 내용 추적 시작 및 중지

일반적으로 문서 편집은 추적을 시작할 때까지 수정본으로 간주되지 않습니다. Aspose.Words를 사용하면 간단한 단계로 문서의 모든 변경 사항을 자동으로 추적 할 수 있습니다. [StartTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#startTrackRevisions-java.lang.String)방법을 사용하여 변경 내용 추적 프로세스를 쉽게 시작할 수 있습니다. 변경 내용 추적 프로세스를 중지하여 향후 수정 사항이 수정 사항으로 간주되지 않도록 해야 하는 경우[StopTrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#stopTrackRevisions)방법을 사용해야 합니다.

{{% alert color="primary" %}}

`StartTrackingRevisions`메서드는[TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions)속성의 상태를 변경하지 않으며 개정판 추적을 위해 해당 값을 사용하지 않습니다. 또한 추적된 문서 내에서 한 위치에서 다른 위치로 노드를 이동한 경우 이동 범위 및 이동 범위를 포함하여 이동 수정이 생성됩니다.

{{% /alert %}}

문서의 변경 내용 추적 프로세스가 끝나면 모든 수정 내용을 수락하거나 거부하여 문서를 원래 형식으로 되돌릴 수도 있습니다. 이것은[AcceptAllRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#acceptAllRevisions)또는[RejectAll](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#rejectAll)방법을 사용하여 달성 할 수 있습니다. 또한[Accept](https://reference.aspose.com/words/java/com.aspose.words/revision/#accept)또는[Reject](https://reference.aspose.com/words/java/com.aspose.words/revision/#reject)방법을 사용하여 각 개정판을 개별적으로 수락하거나 거부할 수 있습니다.

모든 변경 사항은 프로세스를 시작하는 순간부터 프로세스를 중지하는 순간까지 한 번의 반복에 대해 추적됩니다. 추적 프로세스를 완료한 다음 일부 변경한 후 변경 내용 추적을 다시 시작합니다. 이 시나리오에서는 수락하거나 거부하지 않은 모든 변경 내용이 다시 표시됩니다.

{{% alert color="primary" %}}

`AcceptAllRevisions`방법은Microsoft Word의"모든 변경 사항 수락"과 유사합니다.

{{% /alert %}}

다음 코드 예제에서는 변경 내용 추적을 사용하는 방법을 보여 줍니다:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-WorkWithTrackChanges.java" >}}

다음 코드 예제에서는 추적된 문서 내에서 노드를 이동할 때 수정본이 생성되는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-GenerateRevisionsWhenMovingNode.java" >}}

## 변경 사항을 수정으로 관리 및 저장

이전 변경 내용 추적 기능을 사용하면 문서에서 변경한 내용과 변경한 내용을 파악할 수 있습니다. [TrackRevisions](https://reference.aspose.com/words/java/com.aspose.words/document/#getTrackRevisions)기능을 사용하는 동안 문서 내의 모든 변경 사항을 강제로 수정본으로 저장합니다.

Aspose.Words는[HasRevision](https://reference.aspose.com/words/java/com.aspose.words/document/#hasRevisions)속성을 사용하여 문서에 개정판이 있는지 여부를 확인할 수 있습니다. StartTrackRevisions및StopTrackRevisions메서드를 통해 문서의 변경 내용을 자동으로 추적할 필요가 없는 경우`TrackRevisions`속성을 사용하여Microsoft Word에서 문서를 편집하는 동안 변경 내용이 추적되고 수정본으로 저장되는지 확인할 수 있습니다.

`TrackRevisions`기능은 실제DOM변경 대신 수정합니다. 그러나 수정 자체는 별개입니다. 예를 들어 단락을 삭제하는 경우Aspose.Words을 삭제하는 대신 삭제로 표시하여 수정본으로 만듭니다.

또한Aspose.Words를 사용하여 개체를 삽입,삭제 또는 서식을 변경했는지 확인할 수 있습니다.[IsDeleteRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isDeleteRevision), [IsFormatRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isFormatRevision), [IsInsertRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isInsertRevision), [IsMoveFromRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveFromRevision), 그리고[IsMoveToRevision](https://reference.aspose.com/words/java/com.aspose.words/inline/#isMoveToRevision)속성.

{{% alert color="primary" %}}

수정본 자체와`TrackRevisions`속성 사이에 연결이 없다는 점에 유의하십시오. 또한 변경 내용 추적 기능에 관계없이 수정 내용을 수락/거부 할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 수정과 함께 다른 속성을 적용하는 방법을 보여 줍니다:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-ApplyDifferentPropertiesWithRevisions.java" >}}
