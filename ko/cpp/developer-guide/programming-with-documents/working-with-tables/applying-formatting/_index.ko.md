---
title: 표 서식 지정 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 서식 적용
linktitle: 서식 적용
description: "다음을 사용하여 세부 사항의 표 서식 지정 C++. 사용 C++ 테이블의 모든 부분을 포맷합니다."
type: docs
weight: 70
url: /ko/cpp/applying-formatting/
---

테이블의 각 요소는 다른 형식으로 적용 할 수 있습니다. 예를 들어 테이블 서식은 전체 테이블에 적용되고 행 서식은 특정 행에만 적용되며 셀 서식은 특정 셀에만 적용됩니다.

Aspose.Words 풍부한 제공 API 테이블에 서식을 검색하고 적용하려면 당신은 사용할 수 있습니다 [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/),그리고 [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) 노드는 서식을 설정합니다.

이 기사에서는 다른 테이블 노드에 서식을 적용하는 방법과 테이블 서식 설정에 대해 설명합니다 Aspose.Words 지원.

## 다른 노드에 서식 적용

이 섹션에서는 다양한 테이블 노드에 서식을 적용하는 것을 살펴볼 것입니다.

### 표 수준 서식 지정

테이블에 서식을 적용하려면 해당 테이블에서 사용할 수 있는 속성을 사용할 수 있습니다 **Table** 노드 사용 [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/),그리고 [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/) 수업

{{% alert color="primary" %}}

테이블 속성을 적용하려면 테이블에 하나 이상의 행이 있어야 합니다. 이것은 테이블을 만들 때 [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/),이 포맷은 첫 번째 호출 후 수행해야합니다 [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/),또는 첫 번째 행이 테이블에 추가 된 후,또는 노드가 테이블에 직접 삽입 될 때 DOM.

{{% /alert %}}

아래 그림은 **Table** 서식 지정 기능 Microsoft Word 그리고 그 속성들은 Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

다음 코드 예제에서는 개요 테두리를 테이블에 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

다음 코드 예제에서는 모든 테두리가 활성화된 테이블(그리드)을 작성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### 행 수준 서식 지정

**행 수준**

{{% alert color="primary" %}}

참고: **Row** 의 자식 노드 만 될 수 있습니다 **Table**. 동시에,적어도 하나가 있어야 합니다. **Cell** 그 안에 **Row** 그래서 서식을 적용 할 수 있습니다.

{{% /alert %}}

아래 그림은 **Row** 서식 지정 기능 Microsoft Word 그리고 그 속성들은 Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

다음 코드 예제에서는 테이블 행 서식을 수정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### 셀 수준 서식 지정

셀 수준 포맷은 [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/),그리고 [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/) 수업

{{% alert color="primary" %}}

참고: **Cell** 의 자식 노드 만 될 수 있습니다 **Row**. 동시에,적어도 하나가 있어야 합니다. [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) 그 안에 **Cell** 그래서 서식을 적용 할 수 있습니다.

그 외에도 **Paragraph**,당신은 또한 삽입 할 수 있습니다 **Table** 에 **Cell**.

{{% /alert %}}

아래 그림은 **Cell** 서식 지정 기능 Microsoft Word 그리고 그 속성들은 Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

다음 코드 예제에서는 표 셀의 서식을 수정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

다음 코드 예제에서는 셀 내용의 왼쪽/위쪽/오른쪽/아래쪽에 추가할 공간(점 단위)을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## 행 높이 지정

행 높이를 설정하는 가장 간단한 방법은 **DocumentBuilder**. 적절한 사용 **RowFormat** 속성,당신은 기본 높이 설정을 설정하거나 테이블의 각 행에 대해 다른 높이를 적용 할 수 있습니다.

그 안에 Aspose.Words,테이블 행 높이는:

- 행 높이 속성 – [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- 지정된 행의 높이 규칙 속성 – [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

이 경우 각 행에 대해 다른 높이를 설정할 수 있습니다.이를 통해 테이블 설정을 광범위하게 제어 할 수 있습니다.

{{% alert color="primary" %}}

개체의 높이를 지정하는 규칙 옵션은 다음을 사용하여 설정할 수 있습니다 [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/) 열거

{{% /alert %}}

다음 코드 예제에서는 단일 셀을 포함하는 테이블을 만들고 행 서식을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## 테이블 및 셀 너비 지정

테이블 Microsoft Word 문서는 테이블 및 개별 셀의 크기를 조정하는 여러 가지 방법을 제공합니다. 이러한 속성은 테이블의 모양과 동작을 상당히 제어 할 수 있으므로 Aspose.Words 테이블의 동작을 지원합니다. Microsoft Word.

테이블 요소에는 개별 셀뿐만 아니라 전체 테이블의 너비를 계산하는 방법에 영향을 줄 수 있는 여러 가지 속성이 있습니다:

- 테이블에 선호하는 너비
- 개별 셀의 기본 너비
- 테이블에 자동 맞춤 허용

이 문서에서는 다양한 테이블 너비 계산 속성의 작동 방식과 테이블 너비 계산을 완벽하게 제어하는 방법에 대해 자세히 설명합니다. 이건
예상대로 테이블 레이아웃이 표시되지 않는 경우 이러한 경우에 알고 특히 유용합니다.

{{% alert color="primary" %}}

대부분의 경우 테이블 너비보다 선호하는 셀이 권장됩니다. 선호하는 셀 너비는 DOCX 형식 사양과 Aspose.Words 모델

셀 너비는 실제로 계산된 값입니다. DOCX 형식 실제 셀 너비는 많은 것에 따라 달라질 수 있습니다. 예를 들어 페이지 여백이나 기본 테이블 너비를 변경하면 실제 셀 너비에 영향을 줄 수 있습니다.

기본 셀 너비는 문서에 저장된 셀 속성입니다. 그것은 아무 것도 의존하지 않으며 테이블이나 셀의 다른 속성을 변경할 때 변경되지 않습니다.

{{% /alert %}}

{{% alert color="primary" %}}

이 문서에서 설명하는 모든 속성 및 메서드는 테이블의 작동 방식과 관련이 있습니다 Microsoft Word. 따라서 대부분의 경우 프로그래밍 방식으로 테이블을 빌드하고 있지만 원하는 테이블을 만드는 것이 어렵다면 대신 시각적으로 테이블을 작성해 볼 수 있습니다. Microsoft Word 먼저 서식 값을 응용 프로그램에 복사하기 만하면됩니다.

{{% /alert %}}

### 기본 너비 사용 방법

테이블 또는 개별 셀의 원하는 너비는 기본 너비 속성을 통해 정의됩니다. 즉,기본 너비는 전체 테이블 또는 개별 셀에 대해 지정할 수 있습니다. 어떤 경우에는 이 너비를 정확히 맞추지 못할 수도 있지만 대부분의 경우 실제 너비는 이 값에 가깝습니다.

적절한 기본 너비 유형 및 값은 다음과 같은 방법을 사용하여 설정됩니다 [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) 클래스:

- 그 [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) 자동 또는"선호하는 너비 없음"을 지정하는 방법
- 그 [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) 백분율 너비를 지정하는 방법
- 그 [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) 너비(점)를 지정하는 방법

아래 그림은 *preferred width setting features* 그 안에 Microsoft Word 그리고 그 속성들은 Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

이러한 옵션이 문서의 실제 테이블에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

테이블에서 기본 설정 너비를 사용하려면 먼저 테이블에 하나 이상의 행이 포함되어 있는지 확인해야 합니다. 이 때문에 이러한 테이블 서식 Microsoft Word 문서 또는 만든 문서에서 Aspose.Words 테이블의 행에 저장됩니다.

{{% /alert %}}

#### 기본 테이블 또는 셀 너비 지정

그 안에 Aspose.Words,테이블 및 셀 너비는 다음을 사용하여 설정됩니다 [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) 재산 및 [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) 속성,에서 사용할 수있는 옵션 [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) 열거:

- **Auto**,선호하는 너비 집합이 없는 것과 같습니다.
- **Percent**,창 또는 컨테이너 크기의 사용 가능한 공간을 기준으로 요소에 맞으며 사용 가능한 너비가 변경될 때 값을 다시 계산합니다
- **Points**,지정된 너비의 요소에 해당하는 점

{{% alert color="primary" %}}

기본적으로 테이블은 페이지의 사용 가능한 공간의 100%에 적합하다고 설명할 수 있습니다. 이 경우 테이블이 왼쪽 및 오른쪽 페이지 여백 사이의 공간을 차지하려고합니다.

{{% /alert %}}

를 사용하여 [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) 속성은 컨테이너에 대한 기본 너비(페이지,텍스트 열 또는 중첩 테이블 인 경우 외부 테이블 셀)를 조정합니다.

다음 코드 예제에서는 테이블을 페이지 너비의 50%에 자동 맞춤으로 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

를 사용하여 [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) 주어진 셀의 속성은 원하는 폭을 조정합니다.

다음 코드 예제에서는 서로 다른 기본 너비 설정을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### 원하는 너비 유형 및 값 찾기

당신은 사용할 수 있습니다 [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) 그리고 [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) 원하는 테이블 또는 셀의 기본 너비 세부 정보를 찾는 속성.

다음 코드 예제에서는 테이블 셀의 기본 너비 유형을 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### 자동 맞춤 설정 방법

그 [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) 속성은 테이블의 셀이 선택한 기준에 따라 성장하고 축소 할 수 있습니다. 예를 들어,다음을 사용할 수 있습니다 **AutoFit to Window** 옵션 페이지의 폭에 테이블을 맞게,그리고 **AutoFit to Content** 각 셀이 그 내용에 따라 성장하거나 축소 할 수 있도록하는 옵션.

{{% alert color="primary" %}}

또한, **AllowAutoFit** 속성은 기본 셀 너비와 함께 사용하여 해당 콘텐츠에 자동으로 맞지만 초기 너비도 있는 셀의 서식을 지정할 수 있습니다. 필요한 경우 셀 너비가이 너비를지나 커질 수 있습니다.

{{% /alert %}}

기본적으로, Aspose.Words 다음을 사용하여 새 테이블을 삽입합니다 **AutoFit to Window**. 테이블은 사용 가능한 페이지 너비에 따라 크기가 조정됩니다. 테이블의 크기를 조정하려면 [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/) 방법 이 방법은 [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) 테이블에 적용되는 자동 맞춤 유형을 지정하는 열거형입니다.

자동 맞춤 메서드는 실제로 테이블에 다른 속성을 동시에 적용하는 바로 가기입니다. 이것들은 실제로 테이블에 관찰된 행동을 주는 속성입니다. 각 자동 맞춤 옵션에 대해 이러한 속성에 대해 설명합니다.

다음 코드 예제에서는 해당 내용에 따라 각 셀을 축소하거나 확장하도록 테이블을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit 창에 테이블

창에 자동 맞추기가 테이블에 적용되면 실제로 다음 작업이 백그라운드에서 수행됩니다:

1. 그 **Table.AllowAutoFit** 속성을 사용하여 사용 가능한 콘텐츠에 맞게 열 크기를 자동으로 조정할 수 있습니다 **Table.PreferredWidth** 100 의 가치%
2. **CellFormat.PreferredWidth** 모든 테이블 셀에서 제거됩니다
   {{% alert color="primary" %}}
   이것은 약간 다르다는 점에 유의하십시오. Microsoft Word 각 셀의 기본 너비가 현재 크기 및 내용에 따라 적절한 값으로 설정된 동작입니다. Aspose.Words 그들은 단지 대신 삭제 얻을 수 있도록 선호하는 폭을 업데이트하지 않습니다.
   {{% /alert %}}
3. 현재 테이블 콘텐츠에 대해 열 너비가 다시 계산됩니다.
4. 사용자가 텍스트를 편집할 때 테이블의 열 너비가 자동으로 변경됩니다

다음 코드 예제에서는 테이블을 페이지 너비에 자동으로 맞추는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit 표에서 내용

테이블에 콘텐츠가 자동으로 장착되면 다음 단계가 실제로 백그라운드에서 수행됩니다:

1. 그 **Table.AllowAutoFit** 속성에 따라 각 셀의 크기를 자동으로 조정할 수 있습니다

2. 기본 테이블 너비는 다음에서 제거됩니다 **Table.PreferredWidth**, **CellFormat.PreferredWidth** 각 테이블 셀에 대해 제거됩니다
   {{% alert color="primary" %}}

   이 자동 맞춤 옵션은 다음과 같이 셀에서 원하는 너비를 제거합니다 Microsoft Word. 열 크기를 유지하고 콘텐츠에 맞게 열을 늘리거나 줄이려면 열 크기를 설정해야 합니다. **Table.AllowAutoFit** 재산 **True** 자동 맞춤 단축키를 사용하는 대신 자체적으로.{{% /alert %}}

3. 최종 결과는 사용자가 텍스트를 편집할 때 콘텐츠에 가장 잘 맞도록 열 너비와 전체 테이블의 너비가 자동으로 크기가 조정되는 테이블입니다

다음 코드 예제에서는 테이블의 내용을 자동으로 맞추는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### 사용 안 함 AutoFit 테이블 및 고정 열 너비 사용

테이블에 자동 맞추기가 비활성화되어 있고 고정된 열 너비가 대신 사용되는 경우 다음 단계가 수행됩니다:

1. **Table.AllowAutoFit** 속성이 비활성화되므로 열이 해당 콘텐츠로 커지거나 축소되지 않습니다
2. 전체 테이블의 기본 너비는 다음에서 제거됩니다 **Table.PreferredWidth**, **CellFormat.PreferredWidth** 모든 테이블 셀에서 제거됩니다
3. 최종 결과는 열 너비가 [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) 속성 및 사용자가 텍스트를 입력하거나 페이지 크기를 조정할 때 열이 자동으로 크기가 조정되지 않는 속성

{{% alert color="primary" %}}

너비가 지정되지 않은 경우 **CellFormat.Width**,1 인치(72 점)의 기본값이 사용됩니다.

{{% /alert %}}

다음 코드 예제에서는 자동 맞춤을 사용하지 않도록 설정하고 지정된 테이블에 대해 고정 너비를 사용하도록 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### 셀 너비를 계산할 때 우선 순위

Aspose.Words 사용자가 다음을 포함하여 여러 개체를 통해 테이블 또는 셀의 너비를 정의할 수 있습니다 [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) -그것의 [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) 속성은 대부분 이전 버전에서 남아 있지만 셀 너비 설정을 단순화하는 데 여전히 유용합니다.

그 사실을 아는 것이 중요합니다. **CellFormat.Width** 속성은 테이블에 이미 있는 다른 너비 속성에 따라 다르게 작동합니다.

Aspose.Words 셀 너비를 계산할 때 다음 순서를 사용합니다:

| 주문 | 재산 | 설명 |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) 결정된다 | 만약 **AutoFit** 활성화됨:<br />-테이블 콘텐츠를 수용 하기 위해 선호 폭 과거 성장할 수 있습니다-그것은 일반적으로 선호 폭 아래로 축소 하지 않습니다<br />-모든 변경 **CellFormat.Width** 값이 무시되고 셀이 그 내용에 맞게 됩니다 |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) 의 값으로 **Points** 또는 **Percent** | **CellFormat.Width** 무시됨 |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) 의 값으로 **Auto** | 값 **CellFormat.Width** 복사되어 셀의 기본 너비(점 단위)가 됩니다. |

{{% alert color="primary" %}}

너비 속성에 대한 변경 사항은 기본 너비에서 업데이트되지 않으며 대신 기본 너비에 적용해야 합니다.

{{% /alert %}}

{{% alert color="primary" %}}

고정 테이블 레이아웃을 만드는 동안 셀 너비를 지정하십시오. 너비가 없는 셀은 다음으로 저장할 수 없습니다 DOC 형식 이외의 문서 형식 DOC,같은 DOCX,원칙적으로 고정된 테이블 레이아웃에서 폭 없이 셀을 저장할 수 있습니다.

{{% /alert %}}

## 셀 간 간격 허용

"셀 간격"옵션과 유사한 테이블 셀 사이에 추가 공간을 가져오거나 설정할 수 있습니다 Microsoft Word. 이것은 다음을 사용하여 수행 할 수 있습니다 [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/) 재산.

이러한 옵션이 문서의 실제 테이블에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

다음 코드 예제에서는 셀 사이의 간격을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## 테두리 및 음영 적용

테두리와 음영은 다음을 사용하여 전체 테이블에 적용 할 수 있습니다 [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) 그리고 [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/),또는 특정 셀에만 [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) 그리고 [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). 또한 행 테두리는 다음을 사용하여 설정할 수 있습니다 [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/),그러나 그늘은 이 방법으로 적용할 수 없습니다.

아래 그림은 테두리 및 그림자 설정을 보여줍니다. Microsoft Word 그리고 그 속성들은 Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

다음 코드 예제에서는 다른 테두리 및 음영을 사용하여 테이블과 셀의 서식을 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}