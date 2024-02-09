---
title: C#에서 표 셀 병합
second_title: .NET용 Aspose.Words
articleTitle: 표 셀 병합
linktitle: 표 셀 병합
description: "C#에서 표 셀을 병합하는 방법. C#를 사용하여 테이블의 셀이 병합되었는지 확인하세요."
type: docs
weight: 40
url: /ko/net/working-with-merged-cells/
---

때로는 표의 특정 행에 표의 전체 너비를 차지하는 제목이나 큰 텍스트 블록이 필요한 경우가 있습니다. 테이블의 적절한 디자인을 위해 사용자는 여러 테이블 셀을 하나로 병합할 수 있습니다. Aspose.Words는 HTML 콘텐츠 가져오기를 포함하여 모든 입력 형식으로 작업할 때 병합된 셀을 지원합니다.

## 표 셀을 병합하는 방법

Aspose.Words에서 병합된 셀은 [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) 클래스의 다음 속성으로 표시됩니다

- 셀이 수평 셀 병합의 일부인지 설명하는 [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/)
- 셀이 셀의 수직 병합의 일부인지 설명하는 [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/)

이러한 속성 값은 셀의 병합 동작을 결정합니다

- 병합된 셀 시퀀스의 첫 번째 셀에는 [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)가 있습니다
- 이후에 병합된 모든 셀에는 [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)가 포함됩니다
- 병합되지 않은 셀에는 [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)가 포함됩니다

{{% alert color="primary" %}}

때로는 테이블의 기존 문서 셀을 로드할 때 병합되어 표시되는 경우가 있습니다. 그러나 실제로는 하나의 긴 셀일 수 있습니다. 때로는 Microsoft Word가 병합된 셀을 이런 방식으로 내보냅니다. 이는 개별 셀로 작업하려고 할 때 혼란스러울 수 있지만, 언제 이런 일이 발생하는지에 대한 특별한 패턴은 없는 것 같습니다.

{{% /alert %}}

## 셀이 병합되었는지 확인

셀이 병합된 셀 시퀀스의 일부인지 확인하려면 **HorizontalMerge** 및 **VerticalMerge** 속성을 확인하면 됩니다.

다음 코드 예제에서는 가로 및 세로 셀 병합 유형을 인쇄하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## DocumentBuilder 사용 시 테이블 셀 병합

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)로 생성된 테이블의 셀을 병합하려면 병합이 예상되는 각 셀에 대해 적절한 병합 유형(먼저 **CellMerge.First**, 그 다음 **CellMerge.Previous**)을 설정해야 합니다.

또한 병합이 필요하지 않은 셀에 대한 병합 설정을 지워야 한다는 점을 기억해야 합니다. 이는 병합되지 않은 첫 번째 셀을 **CellMerge.None**로 설정하여 수행할 수 있습니다. 그렇지 않으면 테이블의 모든 셀이 병합됩니다.

다음 코드 예제에서는 첫 번째 행의 셀이 가로로 병합되는 두 개의 행이 있는 테이블을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

다음 코드 예제에서는 첫 번째 열의 셀이 수직으로 병합되는 2열 테이블을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## 다른 경우의 표 셀 병합

기존 테이블과 같이 **DocumentBuilder**를 사용하지 않는 다른 상황에서는 이전 방식으로 셀을 병합하는 것이 쉽지 않을 수 있습니다. 대신 작업을 훨씬 쉽게 만드는 방법으로 셀에 병합 속성을 적용하는 것과 관련된 기본 작업을 래핑할 수 있습니다. 이 방법은 테이블의 셀 범위를 병합하기 위해 호출되는 병합 자동화 방법과 유사합니다.

아래 코드는 지정된 셀에서 시작하여 끝 셀에서 끝나는 지정된 범위의 테이블 셀을 병합합니다. 이 경우 범위는 여러 행이나 열에 걸쳐 있을 수 있습니다

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

다음 코드 예제에서는 지정된 두 셀 사이의 셀 범위를 병합하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

사용 중인 .NET Framework 버전에 따라 이 방법을 확장 방법으로 전환하여 개선할 수 있습니다. 이 경우 셀에서 직접 이 메서드를 호출하여 `cell1.Merge(cell2)`와 같은 셀 범위를 병합할 수 있습니다.

## HTML 테이블의 수직 및 수평 병합 셀

이전 기사에서 말했듯이 Microsoft Word의 테이블은 독립적인 행의 집합입니다. 각 행에는 다른 행의 셀과 독립적인 셀 집합이 있습니다. 따라서 Microsoft Word 테이블에는 "열"과 같은 개체가 없으며 "첫 번째 열"은 "테이블의 각 행의 첫 번째 셀 집합"과 같습니다. 이를 통해 사용자는 예를 들어 첫 번째 행이 2cm와 1cm의 두 셀로 구성되고 두 번째 행은 너비가 1cm와 2cm인 두 개의 서로 다른 셀로 구성된 테이블을 가질 수 있습니다. 그리고 Aspose.Words는 이러한 테이블 개념을 지원합니다.

HTML의 테이블은 본질적으로 다른 구조를 가지고 있습니다. 각 행에는 동일한 수의 셀이 있고 (작업에 중요함) 각 셀에는 해당 열의 너비가 있으며 한 열의 모든 셀에 대해 동일합니다. 따라서 **HorizontalMerge** 및 **VerticalMerge**가 잘못된 값을 반환하는 경우 다음 코드 예제를 사용하세요

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 가로로 병합된 셀로 변환

일부 최신 버전의 Microsoft Word는 셀이 수평으로 병합될 때 더 이상 병합 플래그를 사용하지 않기 때문에 어떤 셀이 병합되었는지 감지할 수 없는 경우가 있습니다. 그러나 병합 플래그를 사용하여 셀이 너비만큼 수평으로 셀에 병합되는 상황의 경우 Aspose.Words는 셀을 변환하는 `ConvertToHorizontallyMergedCells` 방법을 제공합니다. 이 방법은 단순히 테이블을 변환하고 필요에 따라 새 셀을 추가합니다.

다음 코드 예제에서는 위의 메서드가 작동하는 모습을 보여줍니다

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
