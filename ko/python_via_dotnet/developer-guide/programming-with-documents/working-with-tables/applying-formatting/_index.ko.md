---
title: Python의 테이블 형식
second_title: Python via .NET용 Aspose.Words
articleTitle: 서식 적용
linktitle: 서식 적용
description: "Python를 사용하여 세부적으로 테이블 형식을 지정합니다. Python를 사용하여 테이블의 모든 부분을 포맷하세요."
type: docs
weight: 70
url: /ko/python-net/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

표의 각 요소는 서로 다른 서식을 적용할 수 있습니다. 예를 들어, 표 서식은 표 전체에 적용되고, 행 서식은 특정 행에만 적용되며, 셀 서식은 특정 셀에만 적용됩니다.

Aspose.Words는 테이블 형식을 검색하고 적용할 수 있는 풍부한 API를 제공합니다. [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) 및 [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) 노드를 사용하여 형식을 설정할 수 있습니다.

이 기사에서는 다양한 테이블 노드에 서식을 적용하는 방법과 Aspose.Words가 지원하는 테이블 서식 설정에 대해 설명합니다.

## 다른 노드에 서식 적용

이 섹션에서는 다양한 테이블 노드에 서식을 적용하는 방법을 살펴보겠습니다.

### 테이블 수준 서식

테이블에 서식을 적용하려면 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) 및 [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/) 클래스를 사용하여 해당 **Table** 노드에서 사용 가능한 속성을 사용할 수 있습니다.

{{% alert color="primary" %}}

테이블 속성을 적용하려면 테이블에 행이 하나 이상 있어야 합니다. 이는 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)를 사용하여 테이블을 작성할 때 [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default)에 대한 첫 번째 호출 이후, 첫 번째 행이 테이블에 추가된 이후 또는 노드가 DOM에 직접 삽입될 때 이 형식화를 수행해야 함을 의미합니다.

{{% /alert %}}

아래 그림은 Microsoft Word의 **Table** 형식 지정 기능과 Aspose.Words의 해당 속성을 보여줍니다.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

다음 코드 예제에서는 테이블에 윤곽선 테두리를 적용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 모든 테두리가 활성화된(그리드) 테이블을 작성하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

### 행 수준 서식

**행 수준** 형식은 [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/) 및 [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/) 클래스를 사용하여 제어할 수 있습니다.

{{% alert color="primary" %}}

**Row**는 **Table**의 하위 노드만 될 수 있습니다. 동시에 서식을 적용하려면 **Row**에 **Cell**이 하나 이상 있어야 합니다.

{{% /alert %}}

아래 그림은 Microsoft Word의 **Row** 형식 지정 기능과 Aspose.Words의 해당 속성을 보여줍니다.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


다음 코드 예제에서는 테이블 행 형식을 수정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

### 셀 수준 형식 지정

셀 수준 형식은 [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/) 및 [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/) 클래스에 의해 제어됩니다.

{{% alert color="primary" %}}

**Cell**는 **Row**의 하위 노드만 될 수 있습니다. 동시에 서식을 적용하려면 **Cell**에 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)이 하나 이상 있어야 합니다.

**Paragraph** 외에도 **Table**를 **Cell**에 삽입할 수도 있습니다.

{{% /alert %}}

아래 그림은 Microsoft Word의 **Cell** 형식 지정 기능과 Aspose.Words의 해당 속성을 보여줍니다.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


다음 코드 예제에서는 테이블 셀의 서식을 수정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 셀 내용의 왼쪽/위/오른쪽/아래에 추가할 공간(포인트)을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## 행 높이 지정

행 높이를 설정하는 가장 간단한 방법은 **DocumentBuilder**를 사용하는 것입니다. 적절한 **RowFormat** 속성을 사용하면 기본 높이 설정을 설정하거나 테이블의 각 행에 다른 높이를 적용할 수 있습니다.

Aspose.Words에서 테이블 행 높이는 다음을 통해 제어됩니다

- 행 높이 속성 – [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- 주어진 행에 대한 높이 규칙 속성 – [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

동시에 각 행마다 다른 높이를 설정할 수 있으므로 테이블 설정을 광범위하게 제어할 수 있습니다.

{{% alert color="primary" %}}

객체의 높이를 지정하는 규칙 옵션은 [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/) 열거를 사용하여 설정할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 단일 셀이 포함된 테이블을 만들고 행 서식을 적용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## 테이블 및 셀 너비 지정

Microsoft Word 문서의 테이블은 테이블과 개별 셀의 크기를 조정하는 여러 가지 방법을 제공합니다. 이러한 속성을 사용하면 테이블의 모양과 동작을 상당히 제어할 수 있으므로 Aspose.Words는 Microsoft Word에서와 같이 테이블 동작을 지원합니다.

테이블 요소는 전체 테이블과 개별 셀의 너비가 계산되는 방식에 영향을 줄 수 있는 여러 가지 속성을 제공한다는 점을 아는 것이 중요합니다

- 테이블에서 선호하는 너비
- 개별 셀의 기본 너비
- 테이블에 자동 맞춤 허용

이 문서에서는 다양한 테이블 너비 계산 속성이 작동하는 방식과 테이블 너비 계산을 완전히 제어하는 방법을 자세히 설명합니다. 이것은
테이블 레이아웃이 예상대로 나타나지 않는 경우에 알아두면 특히 유용합니다.

{{% alert color="primary" %}}

대부분의 경우 표 너비보다 기본 셀을 권장합니다. 선호하는 셀 너비는 Aspose.Words 모델뿐만 아니라 DOCX 형식 사양과 더 일치합니다.

셀 너비는 실제로 DOCX 형식에 대해 계산된 값입니다. 실제 셀 너비는 여러 가지 요소에 따라 달라질 수 있습니다. 예를 들어 페이지 여백이나 기본 표 너비를 변경하면 실제 셀 너비에 영향을 미칠 수 있습니다.

기본 셀 너비는 문서에 저장되는 셀 속성입니다. 이는 어떤 것에도 의존하지 않으며 테이블이나 셀의 다른 속성을 변경할 때 변경되지 않습니다.

{{% /alert %}}

{{% alert color="primary" %}}

이 문서에 설명된 모든 속성과 메서드는 Microsoft Word에서 테이블이 작동하는 방식과 관련되어 있습니다. 따라서 대부분의 경우 프로그래밍 방식으로 테이블을 작성하지만 원하는 테이블을 생성하기 어려운 경우 먼저 Microsoft Word에서 시각적으로 생성을 시도한 다음 서식 값을 애플리케이션에 복사하면 됩니다.

{{% /alert %}}

### 기본 너비를 사용하는 방법

테이블이나 개별 셀의 원하는 너비는 요소가 맞추려고 노력하는 크기인 기본 너비 속성을 통해 정의됩니다. 즉, 전체 테이블 또는 개별 셀에 대해 기본 너비를 지정할 수 있습니다. 경우에 따라 이 너비를 정확하게 맞추는 것이 불가능할 수도 있지만 대부분의 경우 실제 너비는 이 값에 가깝습니다.

적절한 기본 너비 유형 및 값은 [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) 클래스의 메서드를 사용하여 설정됩니다

- 자동 또는 "선호 너비 없음"을 지정하는 [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) 방법
- 백분율 너비를 지정하는 [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) 방법
- 너비를 포인트 단위로 지정하는 [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) 방법

아래 그림은 Microsoft Word의 *기본 너비 설정 기능*과 Aspose.Words의 해당 속성을 보여줍니다.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

이러한 옵션이 문서의 실제 테이블에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

테이블에서 기본 너비를 사용하려면 먼저 테이블에 행이 하나 이상 포함되어 있는지 확인해야 합니다. Microsoft Word 문서나 Aspose.Words로 생성된 문서의 테이블 서식이 테이블의 행에 저장되기 때문입니다.

{{% /alert %}}

#### 선호하는 테이블 또는 셀 너비 지정

Aspose.Words에서 테이블과 셀 너비는 [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) 열거형에서 사용할 수 있는 옵션과 함께 [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) 속성과 [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) 속성을 사용하여 설정됩니다

- **Auto**는 기본 너비가 설정되지 않은 것과 동일합니다
- 창이나 컨테이너 크기의 사용 가능한 공간을 기준으로 요소를 맞추고 사용 가능한 너비가 변경되면 값을 다시 계산하는 **Percent**
- 포인트 단위로 지정된 너비의 요소에 해당하는 **Points**

{{% alert color="primary" %}}

기본적으로 테이블은 페이지의 사용 가능한 공간에 100% 맞춰진 것으로 설명할 수 있습니다. 이 경우 이는 테이블이 왼쪽과 오른쪽 페이지 여백 사이의 공간을 차지하려고 함을 의미합니다.

{{% /alert %}}

[Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) 속성을 사용하면 컨테이너(페이지, 텍스트 열 또는 중첩 테이블인 경우 외부 테이블 셀)를 기준으로 기본 너비가 조정됩니다.

다음 코드 예제에서는 페이지 너비의 50%에 자동 맞춤되도록 테이블을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

특정 셀에서 [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) 속성을 사용하면 기본 너비가 조정됩니다.

다음 코드 예제에서는 다양한 기본 너비 설정을 지정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### 선호하는 너비 유형 및 값 찾기

[Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) 및 [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) 속성을 사용하여 원하는 테이블이나 셀의 기본 너비 세부 정보를 찾을 수 있습니다.

다음 코드 예제에서는 테이블 셀의 기본 너비 유형을 검색하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

### 자동 맞춤 설정 방법

[AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) 속성을 사용하면 선택한 기준에 따라 테이블의 셀을 늘리거나 줄일 수 있습니다. 예를 들어, **창에 자동 맞춤** 옵션을 사용하여 테이블을 페이지 너비에 맞추고, **콘텐츠에 자동 맞춤** 옵션을 사용하여 각 셀이 내용에 따라 늘어나거나 줄어들도록 할 수 있습니다.

{{% alert color="primary" %}}

또한 **AllowAutoFit** 속성을 기본 셀 너비와 함께 사용하여 내용에 자동으로 맞지만 초기 너비도 갖는 셀의 서식을 지정할 수 있습니다. 필요한 경우 셀 너비가 이 너비를 넘어 커질 수 있습니다.

{{% /alert %}}

기본적으로 Aspose.Words는 **창에 자동 맞춤**를 사용하여 새 테이블을 삽입합니다. 테이블 크기는 사용 가능한 페이지 너비에 따라 조정됩니다. 테이블 크기를 조정하려면 [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior) 메서드를 호출하면 됩니다. 이 메서드는 테이블에 적용되는 자동 맞춤 유형을 지정하는 [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) 열거형을 허용합니다.

자동 맞춤 방법은 실제로 테이블에 서로 다른 속성을 동시에 적용하는 지름길이라는 점을 아는 것이 중요합니다. 이는 관찰된 동작을 테이블에 실제로 제공하는 속성입니다. 각 자동 맞춤 옵션에 대한 이러한 속성에 대해 논의하겠습니다.

다음 코드 예제에서는 내용에 따라 각 셀을 축소하거나 늘리도록 테이블을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### 테이블을 창에 자동 맞춤

창에 대한 자동 맞춤이 테이블에 적용되면 실제로 다음 작업이 백그라운드에서 수행됩니다

1. **Table.AllowAutoFit** 속성은 **Table.PreferredWidth** 값 100%를 사용하여 사용 가능한 콘텐츠에 맞게 열 크기를 자동으로 조정할 수 있습니다
2. **CellFormat.PreferredWidth**가 모든 테이블 셀에서 제거됩니다
      {{% alert color="primary" %}}
   이는 각 셀의 기본 너비가 현재 크기와 내용에 따라 적절한 값으로 설정되는 Microsoft Word 동작과 약간 다릅니다. Aspose.Words는 기본 너비를 업데이트하지 않으므로 대신 삭제됩니다.
      {{% /alert %}}
3. 현재 테이블 내용에 대해 열 너비가 다시 계산됩니다. 최종 결과는 사용 가능한 전체 너비를 차지하는 테이블입니다
4. 사용자가 텍스트를 편집하면 테이블의 열 너비가 자동으로 변경됩니다

다음 코드 예제에서는 테이블을 페이지 너비에 자동으로 맞추는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

#### 테이블을 콘텐츠에 자동 맞춤

테이블이 콘텐츠에 자동 맞춤되면 실제로 다음 단계가 백그라운드에서 수행됩니다

1. **Table.AllowAutoFit** 속성은 내용에 따라 각 셀의 크기를 자동으로 조정하도록 활성화됩니다

2. 기본 테이블 너비가 **Table.PreferredWidth**에서 제거되고, 각 테이블 셀에 대해 **CellFormat.PreferredWidth**가 제거됩니다
      {{% alert color="primary" %}}

   이 자동 맞춤 옵션은 Microsoft Word와 마찬가지로 셀에서 기본 너비를 제거합니다. 열 크기를 유지하고 내용에 맞게 열을 늘리거나 줄이려면 자동 맞춤 단축키를 사용하는 대신 **Table.AllowAutoFit** 속성을 자체적으로 **True**로 설정해야 합니다.{{% /alert %}}

3. 현재 테이블 내용에 대해 열 너비가 다시 계산됩니다. 최종 결과는 사용자가 텍스트를 편집할 때 열 너비와 전체 테이블의 너비가 내용에 가장 잘 맞도록 자동으로 크기가 조정되는 테이블입니다

다음 코드 예제에서는 내용에 맞게 테이블을 자동 맞춤하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

#### 테이블에서 자동 맞춤을 비활성화하고 고정 열 너비를 사용합니다

테이블에 자동 맞춤이 비활성화되어 있고 대신 고정 열 너비가 사용되는 경우 다음 단계가 수행됩니다

1. **Table.AllowAutoFit** 속성이 비활성화되어 열이 내용에 맞게 늘어나거나 줄어들지 않습니다
2. 전체 테이블의 기본 너비가 **Table.PreferredWidth**에서 제거되고 **CellFormat.PreferredWidth**가 모든 테이블 셀에서 제거됩니다
3. 최종 결과는 [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) 속성에 의해 열 너비가 결정되고 사용자가 텍스트를 입력하거나 페이지 크기를 조정할 때 열 크기가 자동으로 조정되지 않는 테이블입니다

{{% alert color="primary" %}}

**CellFormat.Width**에 너비가 지정되지 않은 경우 기본값인 1인치(72포인트)가 사용됩니다.

{{% /alert %}}

다음 코드 예제에서는 지정된 테이블에 대해 자동 맞춤을 비활성화하고 고정 너비를 활성화하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}

### 셀 너비를 계산할 때 우선 순위

Aspose.Words를 사용하면 사용자는 [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/)를 포함한 여러 개체를 통해 테이블이나 셀의 너비를 정의할 수 있습니다. [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) 속성은 대부분 이전 버전에서 그대로 유지되지만 셀 너비 설정을 단순화하는 데 여전히 유용합니다.

**CellFormat.Width** 속성은 테이블에 이미 존재하는 다른 너비 속성에 따라 다르게 작동한다는 것을 아는 것이 중요합니다.

Aspose.Words는 셀 너비를 계산하기 위해 다음 순서를 사용합니다

|  주문하다 |  재산 |  설명 |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/)가 결정됨 |  **AutoFit**가 활성화된 경우:<br>- 테이블은 내용을 수용하기 위해 기본 너비 이상으로 커질 수 있습니다. 일반적으로 기본 너비 이하로 줄어들지 않습니다.<br>- **CellFormat.Width** 값에 대한 모든 변경 사항은 무시되고 대신 셀이 해당 내용에 맞춰집니다 |
|  2      |  **Points** 또는 **Percent** 값을 갖는 [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) |  **CellFormat.Width**는 무시됩니다 |
|  3      |  **Auto** 값을 갖는 [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) |  **CellFormat.Width**의 값이 복사되어 셀의 기본 너비(포인트)가 됩니다 |

{{% alert color="primary" %}}

너비 속성에 대한 변경 사항은 기본 너비로 업데이트되지 않으며 대신 기본 너비에 적용되어야 합니다.

{{% /alert %}}

{{% alert color="primary" %}}

고정 테이블 레이아웃을 생성하는 동안 셀 너비를 지정합니다. 너비가 없는 셀은 DOC 형식으로 저장할 수 없습니다. DOCX와 같은 DOC 이외의 문서 형식을 사용하면 원칙적으로 고정된 테이블 레이아웃에서 너비 없이 셀을 저장할 수 있습니다.

{{% /alert %}}

## 셀 사이의 간격 허용

Microsoft Word의 "셀 간격" 옵션과 유사하게 테이블 셀 사이에 추가 공간을 얻거나 설정할 수 있습니다. 이는 [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/) 속성을 사용하여 수행할 수 있습니다.

이러한 옵션이 문서의 실제 테이블에 어떻게 적용되는지에 대한 예는 아래 그림에서 볼 수 있습니다.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="서식-간격-셀-aspose-단어-파이썬" style="width:500px"/>

다음 코드 예제에서는 셀 사이의 간격을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## 테두리 및 음영 적용

테두리와 음영은 [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) 및 [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/)을 사용하여 전체 테이블에 적용하거나 [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) 및 [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/)을 사용하여 특정 셀에만 적용할 수 있습니다. 또한 [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/)를 사용하여 행 테두리를 설정할 수 있지만 이 방식으로 음영 처리를 적용할 수는 없습니다.

아래 그림은 Microsoft Word의 테두리 및 그림자 설정과 Aspose.Words의 해당 속성을 보여줍니다.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

다음 코드 예제에서는 다양한 테두리와 음영을 사용하여 테이블과 셀의 서식을 지정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}
