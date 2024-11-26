---
title: Java에서 테이블 셀 병합
second_title: Aspose.WordsJava
articleTitle: 테이블 셀 병합
linktitle: 테이블 셀 병합
description: "Java에서 테이블 셀을 병합하는 방법. 테이블의 셀이Java을 사용하여 병합되는지 확인합니다."
type: docs
weight: 40
url: /ko/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

때때로 테이블의 특정 행에는 표의 전체 너비를 차지하는 제목이나 큰 텍스트 블록이 필요합니다. 테이블의 적절한 디자인을 위해 사용자는 여러 테이블 셀을 하나로 병합 할 수 있습니다. Aspose.WordsHTML콘텐츠 가져오기를 포함하여 모든 입력 형식으로 작업할 때 병합된 셀을 지원합니다.

## 테이블 셀을 병합하는 방법

Aspose.Words에서 병합된 셀은[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)클래스의 다음 속성으로 표시됩니다:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge)이 셀이 셀의 수평 병합의 일부인지 설명합니다.
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge)이 셀이 셀의 수직 병합의 일부인지 설명합니다.

이러한 속성의 값은 셀의 병합 동작을 결정합니다:

- 병합된 셀 시퀀스의 첫 번째 셀은[CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)을 갖습니다
- 이후에 병합된 셀은[CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)이 됩니다
- 병합되지 않은 셀은[CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)을 갖습니다

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

때때로, 표에 기존 문서 셀을 로드할 때 셀이 병합되어 표시됩니다. 그러나 실제로는 긴 셀이 하나일 수 있습니다. 때때로 Microsoft Word은 병합된 셀을 이런 방식으로 내보냅니다. 개별 셀로 작업하려고 할 때 혼란스러울 수 있지만, 언제 이런 일이 발생하는지에 대한 특정 패턴은 없는 듯합니다.

{{% /alert %}}

## 셀이 병합되었는지 확인

셀이 병합된 셀의 시퀀스의 일부인지 확인하려면**HorizontalMerge**및**VerticalMerge**속성을 간단히 확인합니다.

다음 코드 예제에서는 가로 및 세로 셀 병합 유형을 인쇄하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## DocumentBuilder을 사용할 때 테이블 셀 병합

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)으로 만든 테이블의 셀을 병합하려면 병합이 예상되는 각 셀에 대해 적절한 병합 유형을 설정해야 합니다(먼저**CellMerge.First**및**CellMerge.Previous**).

또한 병합이 필요 없는 셀에 대한 병합 설정을 지우는 것을 기억해야 합니다. 이는 첫 번째 병합되지 않은 셀을 **CellMerge.None**으로 설정하여 수행할 수 있습니다. 이를 수행하지 않으면 표의 모든 셀이 병합됩니다.

다음 코드 예제에서는 첫 번째 행의 셀이 가로로 병합되는 두 행으로 테이블을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

다음 코드 예제에서는 첫 번째 열의 셀이 세로로 병합되는 두 열 테이블을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## 다른 경우 테이블 셀 병합

기존 테이블에서와 같이**DocumentBuilder**이 사용되지 않는 다른 상황에서는 이전 방식으로 셀을 병합하는 것이 쉽지 않을 수 있습니다. 대신 셀에 병합 속성을 적용하는 데 관련된 기본 작업을 작업을 훨씬 쉽게 만드는 메서드로 래핑할 수 있습니다. 이 방법은 테이블의 셀 범위를 병합하기 위해 호출되는 병합 자동화 방법과 유사합니다.

아래 코드는 지정된 셀에서 시작하여 끝 셀에서 끝나는 지정된 범위의 테이블 셀을 병합합니다. 이 경우 범위는 여러 행 또는 열에 걸쳐 있을 수 있습니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

다음 코드 예제에서는 지정된 두 셀 간에 셀 범위를 병합하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## HTML표의 세로 및 가로 병합 셀

이전 기사에서 말했듯이Microsoft Word의 테이블은 독립적인 행의 집합입니다. 각 행에는 다른 행의 셀과 독립된 셀 세트가 있습니다. 따라서Microsoft Word테이블에는"열"과 같은 객체가 없으며"1 열"은"테이블의 각 행의 1 셀의 집합"과 같습니다. 이것은 사용자가 예를 들어,첫 번째 행이 두 개의 셀로 구성되는 테이블을 가질 수 있습니다–2 센티미터 과 1 센티미터,그리고 두 번째 행은 두 개의 서로 다른 셀로 구성–1 센티미터 과 2 센티미터 넓은. 그리고Aspose.Words이 테이블 개념을 지원합니다.

HTML의 테이블은 본질적으로 다른 구조를 가지고 있습니다.각 행은 동일한 수의 셀을 가지고 있으며(작업에 중요합니다)각 셀은 해당 열의 너비를 가지고 있으며,한 열의 모든 셀에 동일합니다. 따라서**HorizontalMerge**과**VerticalMerge**이 잘못된 값을 반환하면 다음 코드 예제를 사용하십시오:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## 가로로 병합된 셀로 변환

때때로Microsoft Word의 일부 최신 버전은 셀이 수평으로 병합될 때 더 이상 병합 플래그를 사용하지 않기 때문에 병합되는 셀을 감지할 수 없습니다. 그러나 병합 플래그를 사용하여 셀을 가로로 셀에 병합하는 경우Aspose.Words는 셀을 변환하는`ConvertToHorizontallyMergedCells`방법을 제공합니다. 이 방법은 단순히 테이블을 변환하고 필요에 따라 새 셀을 추가합니다.

다음 코드 예제에서는 위의 작동 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
