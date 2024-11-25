---
title: Java의 테이블 서식 지정
second_title: Aspose.WordsJava
articleTitle: 표 서식 적용
linktitle: 표 서식 적용
description: "세부 사항의 테이블 서식. Java을 사용하여 테이블의 모든 부분을 포맷합니다."
type: docs
weight: 70
url: /ko/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

테이블의 각 요소는 다른 형식으로 적용 할 수 있습니다. 예를 들어 테이블 서식은 전체 테이블에 적용되고 행 서식은 특정 행에만 적용되며 셀 서식은 특정 셀에만 적용됩니다.

Aspose.Words는 테이블에 서식을 검색하고 적용 할 수있는 풍부한API를 제공합니다. [Table](https://reference.aspose.com/words/java/com.aspose.words/table/),[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)및[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)노드를 사용하여 서식을 설정할 수 있습니다.

이 기사에서는 다른 테이블 노드에 서식을 적용하는 방법과Aspose.Words이 지원하는 테이블 서식 설정에 대해 설명합니다.

## 다른 노드에 서식 적용

이 섹션에서는 다양한 테이블 노드에 서식을 적용하는 것을 살펴볼 것입니다.

### 표 수준 서식 지정

테이블에 서식을 적용하려면[Table](https://reference.aspose.com/words/java/com.aspose.words/table/),[PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/)및[TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/)클래스를 사용하여 해당**Table**노드에서 사용할 수 있는 속성을 사용할 수 있습니다.

{{% alert color="primary" %}}

테이블 속성을 적용하려면 테이블에 하나 이상의 행이 있어야 합니다. 즉,[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)로 테이블을 작성할 때[InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()에 대한 첫 번째 호출 후 또는 첫 번째 행이 테이블에 추가 된 후 또는 노드가DOM에 직접 삽입 될 때이 서식을 수행해야합니다.

{{% /alert %}}

아래 그림은Microsoft Word의**Table**서식 기능과Aspose.Words의 해당 속성을 나타냅니다.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

다음 코드 예제에서는 개요 테두리를 테이블에 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

다음 코드 예제에서는 모든 테두리가 활성화된 테이블(그리드)을 작성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### 행 수준 서식 지정

행 수준**형식은[Row](https://reference.aspose.com/words/java/com.aspose.words/row/),[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)및[RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/)클래스를 사용하여 제어할 수 있습니다.

{{% alert color="primary" %}}

**Row**는**Table**의 자식 노드일 수 있습니다. 동시에,**Row**에 적어도 하나의**Cell**이 있어야 서식을 적용할 수 있습니다.

{{% /alert %}}

아래 그림은Microsoft Word의**Row**서식 기능과Aspose.Words의 해당 속성을 나타냅니다.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

다음 코드 예제에서는 테이블 행 서식을 수정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### 셀 수준 서식 지정

셀 수준 서식은[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/),[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)및[CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/)클래스에 의해 제어됩니다.

{{% alert color="primary" %}}

**Cell**는**Row**의 자식 노드일 수 있습니다. 동시에**Cell**에[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)이 하나 이상 있어야 서식을 적용할 수 있습니다.

**Paragraph**외에도**Table**을**Cell**에 삽입할 수도 있습니다.

{{% /alert %}}

아래 그림은Microsoft Word의**Cell**서식 기능과Aspose.Words의 해당 속성을 나타냅니다.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

다음 코드 예제에서는 표 셀의 서식을 수정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

다음 코드 예제에서는 셀 내용의 왼쪽/위쪽/오른쪽/아래쪽에 추가할 공간(점 단위)을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## 행 높이 지정

행 높이를 설정하는 가장 간단한 방법은**DocumentBuilder**을 사용하는 것입니다. 적절한**RowFormat**속성을 사용하여 기본 높이 설정을 설정하거나 테이블의 각 행에 대해 다른 높이를 적용할 수 있습니다.

Aspose.Words에서 테이블 행 높이는:

- 행 높이 속성-[Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- 지정된 행의 높이 규칙 속성–[HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

이 경우 각 행에 대해 다른 높이를 설정할 수 있습니다.이를 통해 테이블 설정을 광범위하게 제어 할 수 있습니다.

{{% alert color="primary" %}}

개체의 높이를 지정하는 규칙 옵션은[HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/)필드를 사용하여 설정할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 단일 셀을 포함하는 테이블을 만들고 행 서식을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## 테이블 및 셀 너비 지정

Microsoft Word문서의 테이블은 테이블과 개별 셀의 크기를 조정하는 여러 가지 방법을 제공합니다. 이러한 속성은 테이블의 모양과 동작을 상당히 제어할 수 있으므로Aspose.Words은Microsoft Word과 같이 테이블의 동작을 지원합니다.

테이블 요소에는 개별 셀뿐만 아니라 전체 테이블의 너비를 계산하는 방법에 영향을 줄 수 있는 여러 가지 속성이 있습니다:

- 테이블에 선호하는 너비
- 개별 셀의 기본 너비
- 테이블에 자동 맞춤 허용

이 문서에서는 다양한 테이블 너비 계산 속성의 작동 방식과 테이블 너비 계산을 완벽하게 제어하는 방법에 대해 자세히 설명합니다. 이건
예상대로 테이블 레이아웃이 표시되지 않는 경우 이러한 경우에 알고 특히 유용합니다.

{{% alert color="primary" %}}

대부분의 경우 테이블 너비보다 선호하는 셀이 권장됩니다. 선호하는 셀 너비는DOCX형식 사양과Aspose.Words모델과 더 일치합니다.

셀 너비는 실제로DOCX형식에 대해 계산된 값입니다. 실제 셀 너비는 많은 것에 따라 달라질 수 있습니다. 예를 들어 페이지 여백이나 기본 테이블 너비를 변경하면 실제 셀 너비에 영향을 줄 수 있습니다.

기본 셀 너비는 문서에 저장된 셀 속성입니다. 그것은 아무 것도 의존하지 않으며 테이블이나 셀의 다른 속성을 변경할 때 변경되지 않습니다.

{{% /alert %}}

{{% alert color="primary" %}}

이 문서에서 설명하는 모든 속성 및 메서드는Microsoft Word에서 테이블의 작동 방식과 관련이 있습니다. 따라서 대부분의 경우 프로그래밍 방식으로 테이블을 작성하지만 원하는 테이블을 만드는 것이 어렵다면 대신 먼저Microsoft Word에서 시각적으로 만든 다음 서식 값을 응용 프로그램에 복사 할 수 있습니다.

{{% /alert %}}

### 기본 너비 사용 방법

테이블 또는 개별 셀의 원하는 너비는 기본 너비 속성을 통해 정의됩니다. 즉,기본 너비는 전체 테이블 또는 개별 셀에 대해 지정할 수 있습니다. 어떤 경우에는 이 너비를 정확히 맞추지 못할 수도 있지만 대부분의 경우 실제 너비는 이 값에 가깝습니다.

적절한 기본 너비 유형 및 값은[PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/)클래스의 메서드를 사용하여 설정됩니다:

- 자동 또는"선호하는 너비 없음"을 지정하는[Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO)필드
- 백분율 너비를 지정하는[FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double)메서드
- 포인트로 너비를 지정하는[FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double)메서드

아래 그림은Microsoft Word의*preferred width setting features*과Aspose.Words의 해당 속성을 나타냅니다.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

이러한 옵션이 문서의 실제 테이블에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

테이블에서 기본 설정 너비를 사용하려면 먼저 테이블에 하나 이상의 행이 포함되어 있는지 확인해야 합니다. Microsoft Word문서 또는Aspose.Words에서 만든 문서의 테이블 서식이 테이블 행에 저장되기 때문입니다.

{{% /alert %}}

#### 기본 테이블 또는 셀 너비 지정

Aspose.Words에서 테이블 및 셀 너비는[Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth)속성과[CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth)속성을 사용하여 설정되며[PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/)열거형에서 사용할 수 있는 옵션이 있습니다:

- **Auto**,기본 너비 집합이 없는 것과 같습니다
- **Percent**-창 또는 컨테이너 크기의 사용 가능한 공간을 기준으로 요소에 맞으며 사용 가능한 너비가 변경될 때 값을 다시 계산합니다
- **Points**은 지정된 너비의 요소(점)에 해당합니다

{{% alert color="primary" %}}

기본적으로 테이블은 페이지의 사용 가능한 공간의 100%에 적합하다고 설명할 수 있습니다. 이 경우 테이블이 왼쪽 및 오른쪽 페이지 여백 사이의 공간을 차지하려고합니다.

{{% /alert %}}

[Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth)속성을 사용하면 컨테이너에 대한 기본 너비(페이지,텍스트 열 또는 중첩 테이블인 경우 외부 테이블 셀)를 조정합니다.

다음 코드 예제에서는 테이블을 페이지 너비의 50%에 자동 맞춤으로 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

주어진 셀에서[CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth)속성을 사용하면 원하는 너비가 조정됩니다.

다음 코드 예제에서는 서로 다른 기본 너비 설정을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### 원하는 너비 유형 및 값 찾기

[Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType)및[Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue)속성을 사용하여 원하는 테이블 또는 셀의 기본 너비 세부 정보를 찾을 수 있습니다.

다음 코드 예제에서는 테이블 셀의 기본 너비 유형을 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### 자동 맞춤 설정 방법

[AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit)속성을 사용하면 테이블의 셀이 선택한 기준에 따라 증가 및 축소될 수 있습니다. 예를 들어**AutoFit to Window**옵션을 사용하여 테이블을 페이지 너비에 맞추고**AutoFit to Content**옵션을 사용하여 각 셀이 내용에 따라 증가 또는 축소되도록 할 수 있습니다.

{{% alert color="primary" %}}

또한**AllowAutoFit**속성을 기본 셀 너비와 함께 사용하여 해당 내용에 자동으로 맞지만 초기 너비도 있는 셀의 서식을 지정할 수 있습니다. 필요한 경우 셀 너비가이 너비를지나 커질 수 있습니다.

{{% /alert %}}

기본적으로Aspose.Words는**AutoFit to Window**를 사용하여 새 테이블을 삽입합니다. 테이블은 사용 가능한 페이지 너비에 따라 크기가 조정됩니다. 테이블의 크기를 조정하려면[AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int)메서드를 호출할 수 있습니다. 이 메서드는 테이블에 적용되는 자동 맞춤 유형을 지정하는[AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/)열거형을 허용합니다.

자동 맞춤 메서드는 실제로 테이블에 다른 속성을 동시에 적용하는 바로 가기입니다. 이것들은 실제로 테이블에 관찰된 행동을 주는 속성입니다. 각 자동 맞춤 옵션에 대해 이러한 속성에 대해 설명합니다.

다음 코드 예제에서는 해당 내용에 따라 각 셀을 축소하거나 확장하도록 테이블을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

다음 표를 사용하여 다양한 자동 맞춤 설정을 데모로 적용합니다.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit테이블에 창

창에 자동 맞추기가 테이블에 적용되면 실제로 다음 작업이 백그라운드에서 수행됩니다:

1. **Table.AllowAutoFit**속성은**Table.PreferredWidth**값 100 을 사용하여 사용 가능한 콘텐츠에 맞게 열 크기를 자동으로 조정할 수 있습니다%
2. **CellFormat.PreferredWidth**이 모든 테이블 셀에서 제거됩니다
   {{% alert color="primary" %}}
   각 셀의 기본 너비가 현재 크기 및 내용에 따라 적절한 값으로 설정된Microsoft Word동작과는 약간 다릅니다. Aspose.Words는 선호하는 너비를 업데이트하지 않으므로 대신 지워집니다.
   {{% /alert %}}
3. 현재 테이블 콘텐츠에 대해 열 너비가 다시 계산됩니다.
4. 사용자가 텍스트를 편집할 때 테이블의 열 너비가 자동으로 변경됩니다

다음 코드 예제에서는 테이블을 페이지 너비에 자동으로 맞추는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

이러한 옵션이 위의 표에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit표에서 내용으로

테이블에 콘텐츠가 자동으로 장착되면 다음 단계가 실제로 백그라운드에서 수행됩니다:

1. **Table.AllowAutoFit**속성은 내용에 따라 각 셀의 크기를 자동으로 조정할 수 있습니다

2. 기본 테이블 너비가**Table.PreferredWidth**에서 제거되고 각 테이블 셀에 대해**CellFormat.PreferredWidth**이 제거됩니다
   {{% alert color="primary" %}}

   이 자동 맞춤 옵션은Microsoft Word과 마찬가지로 셀에서 원하는 너비를 제거합니다. 열 크기를 유지하고 콘텐츠에 맞게 열을 늘리거나 줄이려면 자동 맞춤 바로 가기를 사용하는 대신**Table.AllowAutoFit**속성을**True**로 설정해야 합니다.{{% /alert %}}

3. 최종 결과는 사용자가 텍스트를 편집할 때 콘텐츠에 가장 잘 맞도록 열 너비와 전체 테이블의 너비가 자동으로 크기가 조정되는 테이블입니다

다음 코드 예제에서는 테이블의 내용을 자동으로 맞추는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

이러한 옵션이 위의 표에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### 테이블에서AutoFit을 비활성화하고 고정 열 너비를 사용합니다

테이블에 자동 맞추기가 비활성화되어 있고 고정된 열 너비가 대신 사용되는 경우 다음 단계가 수행됩니다:

1. **Table.AllowAutoFit**속성이 비활성화되어 열이 해당 콘텐츠로 커지거나 축소되지 않습니다
2. 전체 테이블의 기본 너비가**Table.PreferredWidth**에서 제거되고**CellFormat.PreferredWidth**이 모든 테이블 셀에서 제거됩니다
3. 최종 결과는 열 너비가[CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth)속성에 의해 결정되며 사용자가 텍스트를 입력하거나 페이지 크기를 조정할 때 열의 크기가 자동으로 조정되지 않는 테이블입니다

{{% alert color="primary" %}}

**CellFormat.Width**에 대해 너비를 지정하지 않으면 기본값인 1 인치(72 점)가 사용됩니다.

{{% /alert %}}

다음 코드 예제에서는 자동 맞춤을 사용하지 않도록 설정하고 지정된 테이블에 대해 고정 너비를 사용하도록 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

이러한 옵션이 위의 표에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### 셀 너비를 계산할 때 우선 순위

Aspose.Words사용자가[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)를 포함하여 여러 개체를 통해 테이블이나 셀의 너비를 정의 할 수 있습니다–[Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth)속성은 대부분 이전 버전에서 남아 있지만 셀 너비 설정을 단순화하는 데 여전히 유용합니다.

**CellFormat.Width**속성은 테이블에 이미 있는 다른 너비 속성에 따라 다르게 작동한다는 것을 아는 것이 중요합니다.

Aspose.Words은 셀 너비를 계산할 때 다음 순서를 사용합니다:

| 주문 | 재산 | 설명 |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
|  | [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit)이 결정됩니다. | **AutoFit**이 활성화되어 있는 경우:<br>-테이블 콘텐츠를 수용 하기 위해 선호 폭 과거 성장할 수 있습니다-그것은 일반적으로 선호 폭 아래로 축소 하지 않습니다<br>-**CellFormat.Width**값에 대한 모든 변경 사항은 무시되고 셀은 대신 그 내용에 맞게됩니다 |
|  | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/)값**Points**또는**Percent** | **CellFormat.Width**은 무시됩니다. |
|  | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/)값**Auto** | **CellFormat.Width**의 값이 복사되어 셀의 기본 너비(포인트)가 됩니다. |

{{% alert color="primary" %}}

너비 속성에 대한 변경 사항은 기본 너비에서 업데이트되지 않으며 대신 기본 너비에 적용해야 합니다.

{{% /alert %}}

{{% alert color="primary" %}}

고정 테이블 레이아웃을 만드는 동안 셀 너비를 지정하십시오. 너비가 없는 셀은DOC형식으로 저장할 수 없습니다. DOCX과 같은DOC이외의 문서 형식은 원칙적으로 고정 테이블 레이아웃에 너비없이 셀을 저장할 수 있습니다.

{{% /alert %}}

## 셀 간 간격 허용

Microsoft Word의"셀 간격"옵션과 유사한 표 셀 사이에 추가 공간을 가져오거나 설정할 수 있습니다. [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing)속성을 사용하여 수행할 수 있습니다.

이러한 옵션이 문서의 실제 테이블에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

다음 코드 예제에서는 셀 사이의 간격을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## 테두리 및 음영 적용

테두리와 음영은[Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean),[Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color)및[Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color)을 사용하여 전체 테이블에 적용하거나[CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders)및[CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)를 사용하여 특정 셀에만 적용할 수 있습니다. 또한 행 테두리는[RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders)를 사용하여 설정할 수 있지만 이러한 방식으로 음영을 적용할 수 없습니다.

아래 그림은Microsoft Word의 테두리 및 그림자 설정과Aspose.Words의 해당 속성을 보여줍니다.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


다음 코드 예제에서는 다른 테두리 및 음영을 사용하여 테이블과 셀의 서식을 지정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
