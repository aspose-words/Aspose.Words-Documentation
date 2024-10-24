---
title: 테이블 셀 병합 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 테이블 셀 병합
linktitle: 테이블 셀 병합
description: "테이블 셀을 병합하는 방법 C++. 테이블의 셀이 다음을 사용하여 병합되는지 확인합니다 C++."
type: docs
weight: 40
url: /ko/cpp/merge-table-cells/
---

때때로 테이블의 특정 행에는 표의 전체 너비를 차지하는 제목이나 큰 텍스트 블록이 필요합니다. 테이블의 적절한 디자인을 위해 사용자는 여러 테이블 셀을 하나로 병합 할 수 있습니다. Aspose.Words 가져오기를 포함한 모든 입력 형식으로 작업할 때 병합된 셀 지원 HTML 내용

## 테이블 셀을 병합하는 방법

그 안에 Aspose.Words,병합된 셀은 다음의 속성으로 나타납니다. [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) 클래스:

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) 셀이 셀의 수평 합병의 일부인지 설명하는
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) 셀이 셀의 수직 합병의 일부인지 설명하는

이러한 속성의 값은 셀의 병합 동작을 결정합니다:

- 병합된 셀의 시퀀스의 첫 번째 셀은 [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- 이후에 병합된 모든 셀은 [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- 병합되지 않은 셀은 [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

경우에 따라 테이블에서 기존 문서 셀을 로드할 때 병합된 것으로 나타납니다. 그러나 실제로는 하나의 긴 셀 일 수 있습니다. Microsoft Word 이 방법으로 병합 된 셀을 내보냅니다. 이것은 개별 셀을 사용하려고 할 때 혼란 스러울 수 있지만,이것이 언제 발생하는지에 대한 특별한 패턴이있는 것 같지 않습니다.

{{% /alert %}}

## 셀이 병합되었는지 확인

셀이 합쳐진 셀의 시퀀스의 일부인지 확인하기 위해,우리는 단순히 **HorizontalMerge** 그리고 **VerticalMerge** 속성.

다음 코드 예제에서는 가로 및 세로 셀 병합 유형을 인쇄하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## 테이블에 병합된 셀 {#merge-cells-in-a-table}

만든 테이블의 셀을 병합하려면 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 먼저 병합이 예상되는 각 셀에 대해 적절한 병합 유형을 설정해야 합니다 **CellMerge.First** 그리고 나서 **CellMerge.Previous**.

또한 병합이 필요하지 않은 셀의 병합 설정을 취소해야 합니다. **CellMerge.None**. 이 작업을 수행하지 않으면 테이블의 모든 셀이 병합됩니다.

다음 코드 예제에서는 첫 번째 행의 셀이 가로로 병합되는 두 행으로 테이블을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

다음 코드 예제에서는 첫 번째 열의 셀이 세로로 병합되는 두 열 테이블을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## 다른 경우 테이블 셀 병합

다른 상황에서는 **DocumentBuilder** 기존 테이블에서와 같이 셀을 이전 방식으로 병합하는 것은 쉽지 않을 수 있습니다. 대신 셀에 병합 속성을 적용하는 데 관련된 기본 작업을 작업을 훨씬 쉽게 만드는 메서드로 래핑할 수 있습니다. 이 방법은 테이블의 셀 범위를 병합하기 위해 호출되는 병합 자동화 방법과 유사합니다.

아래 코드는 지정된 셀에서 시작하여 끝 셀에서 끝나는 지정된 범위의 테이블 셀을 병합합니다. 이 경우 범위는 여러 행 또는 열에 걸쳐 있을 수 있습니다:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

다음 코드 예제에서는 지정된 두 셀 간에 셀 범위를 병합하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

사용 중인 프레임워크의 버전에 따라 이 메서드를 확장 메서드로 전환하여 구체화할 수 있습니다. 이 경우 셀에서 직접 이 메서드를 호출하여 다음과 같은 셀 범위를 병합할 수 있습니다 `cell1.Merge(cell2)`.

## 테이블의 세로 및 가로 병합된 셀 {#vertical-and-Horizontal-merged-cells-in-the-table}

이전 기사에서 말했듯이, Microsoft Word 독립적인 행들의 집합입니다. 각 행에는 다른 행의 셀과 독립된 셀 세트가 있습니다. 따라서, Microsoft Word 테이블에는"열"과 같은 개체가 없으며"1세인트 열은"같은 것"의 집합 1테이블의 각 행의 세인트 셀". 이것은 사용자가 예를 들어, 1세인트 행은 두 개의 셀로 구성 – 2및 1그리고 2행은 두 개의 다른 셀로 구성됩니다 – 1및 2넓은. 그리고 Aspose.Words 이 테이블 개념을 지원합니다.

테이블 HTML 본질적으로 다른 구조를 가지고 있습니다.각 행은 동일한 수의 셀을 가지고 있으며(작업에 중요합니다)각 셀은 해당 열의 너비를 가지고 있습니다.한 열의 모든 셀에 대해 동일합니다. 그래서 만약 **HorizontalMerge** 그리고 **VerticalMerge** 잘못된 값을 반환하고 다음 코드 예제를 사용하십시오:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## 가로로 병합된 셀로 변환 {#convert-to-horizontally-merged-cells}

때로는 어떤 셀이 합쳐져 있는지 감지할 수 없습니다. Microsoft Word 셀이 수평으로 병합 될 때 더 이상 병합 플래그를 사용하지 않습니다. 그러나 병합 플래그를 사용하여 셀이 너비에 의해 가로로 셀에 병합되는 상황의 경우, Aspose.Words 제공 `ConvertToHorizontallyMergedCells` 셀을 변환하는 방법. 이 방법은 단순히 테이블을 변환하고 필요에 따라 새 셀을 추가합니다.

다음 코드 예제에서는 위의 작동 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}