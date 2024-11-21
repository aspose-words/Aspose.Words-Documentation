---
title: Merge 테이블 셀에서 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Merge 테이블 셀
linktitle: Merge 테이블 셀
description: "테이블 셀을 병합하는 방법 Java· 테이블에 있는 셀이 병합되는 경우 Java·"
type: docs
weight: 40
url: /ko/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

테이블의 특정 행은 표의 전체 폭을 차지하는 텍스트의 머리 또는 큰 블록을 요구합니다. 테이블의 적당한 디자인을 위해, 사용자는 몇몇 테이블 세포를 하나로 병합할 수 있습니다. Aspose.Words HTML 콘텐츠를 가져 오기를 포함하여 모든 입력 형식을 작업 할 때 병합 된 셀을 지원합니다.

## Merge 테이블 셀 방법

내 계정 Aspose.Words, 합병된 세포는 다음과 같은 속성에 의해 표현됩니다. [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) 종류:

- - - [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) 세포가 세포의 수평 병합의 일부인지 설명
- - - [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) 세포가 세포의 수직 병합의 일부인지 설명

이 속성의 값은 세포의 병합 동작을 결정합니다

- - - 병합된 세포의 순서에 있는 첫번째 세포는 있을 것입니다 [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- - - 후속 병합 셀은 [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- 합병되지 않은 세포 [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

때로는 테이블에 기존 문서 세포를로드 할 때 합병 될 것입니다. 그러나, 그것은 실제로 한 긴 세포 일 수 있습니다 – 때때로 Microsoft Word 병합된 세포를 이 방법. 이것은 개별 세포로 작동하려고 시도 할 때 혼동 될 수 있지만이 발생하면 특정 패턴이 될 수 없습니다.

{{% /alert %}}

## 셀이 Merged인지 확인

셀이 병합 셀의 순서의 일부인지 확인하려면, 우리는 단순히 확인 **HorizontalMerge** · **VerticalMerge** 이름 *

다음과 같은 코드 예제는 수평 및 수직 셀 병합 유형을 인쇄하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## DocumentBuilder를 사용할 때 Merge Table Cells

테이블에 세포를 병합하기 위해 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), 병합이 예상되는 각 셀에 적합한 병합 유형을 설정해야 합니다. **CellMerge.First** 그리고 그때 **CellMerge.Previous**·

또한 병합이 필요하지 않은 그 세포에 병합 설정을 취소하는 것을 기억해야합니다 – 이것은 첫 번째 비-머지 셀을 설정하여 수행 할 수 있습니다 **CellMerge.None**· 이 작업을 수행하지 않으면 테이블의 모든 세포가 병합됩니다.

다음 코드 예제는 첫번째 행에 있는 세포가 수평으로 결합되는 두 줄을 가진 테이블을 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

다음 코드 예제는 첫 번째 열에 세포가 수직으로 결합되는 두 개의 열 테이블을 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## 다른 케이스에 있는 Merge 테이블 세포

다른 상황에서 **DocumentBuilder** 기존의 테이블과 같은 사용되지 않습니다, 이전의 방법으로 셀을 merging 쉽게 할 수 없습니다. 대신, 우리는 작업이 훨씬 쉽게 만드는 방법으로 병합 속성을 적용하는 기본 작업을 포장 할 수 있습니다. 이 방법은 Merge 자동화 방법과 유사하며 테이블에 세포의 범위를 병합하는 것입니다.

아래 코드는 지정된 범위에서 테이블 셀을 병합하며 주어진 세포에서 시작하며 엔드 셀에서 종료됩니다. 이 경우에, 범위는 다수 줄 또는 란을 경간할 수 있습니다:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

다음과 같은 코드 예제는 두 개의 지정된 셀 사이의 세포의 범위를 병합하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## HTML 테이블의 수직 및 수평 병합 셀

우리는 이전 기사에서 말했다, 테이블에 Microsoft Word 독립적인 행의 세트입니다. 각 행에는 다른 줄의 세포의 독립되는 세포의 세트가 있습니다. 따라서, Microsoft Word 테이블에는 "column"과 "1st 컬럼"과 같은 객체가 없습니다. "테이블의 각 행의 1st 셀 세트"와 같습니다. 예를 들어, 1st 행은 두 개의 셀 – 2cm 및 1cm로 구성되어 있으며, 2nd 행은 두 개의 다른 셀 – 1cm 및 2cm로 구성되어 있습니다. 이름 * Aspose.Words 테이블의이 개념을 지원합니다.

HTML의 테이블은 근본적으로 다른 구조가 있습니다: 각 행에는 세포의 동일한 수 있고 (작업을 위해 중요합니다) 각 세포에는 대응 란의 폭이, 1개의 란에 있는 모든 세포를 위해 동일하. 그래서 만약 **HorizontalMerge** · **VerticalMerge** incorrect 값을 반환하고 다음 코드를 사용합니다

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## 수평으로 변환 Merged 세포

때로는 세포가 어떤 새로운 버전으로 합병되었는지 감지 할 수 없습니다 Microsoft Word 더 이상 셀이 수평으로 병합 될 때 병합 플래그를 사용합니다. 그러나 세포가 병합 깃발을 사용하여 그들의 폭에 의해 수평으로 병합되는 상황을 위해, Aspose.Words 제품정보 `ConvertToHorizontallyMergedCells` 셀 변환 방법. 이 방법은 단순히 테이블을 변환하고 필요한 새로운 세포를 추가합니다.

다음과 같은 코드 예제는 위의 방법을 보여줍니다

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
