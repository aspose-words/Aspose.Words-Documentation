---
title: 테이블 포맷 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 테이블 Formatting 적용
linktitle: 테이블 Formatting 적용
description: "세부사항에 있는 테이블 체재. 사용 방법 Java 테이블의 각 부분을 포맷합니다."
type: docs
weight: 70
url: /ko/java/applying-formatting/
---

테이블의 각 성분은 다른 체재로 적용될 수 있습니다. 예를 들어, 테이블 포맷은 전체 테이블에 적용되며, 특정 행에 형식을 지정하는 행은 특정 셀에만 지정합니다.

Aspose.Words 풍부한 혜택 API 테이블에 포맷을 재생하고 적용하십시오. 당신은 사용할 수 있습니다 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), · [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) 형식을 설정하는 노드.

이 문서에서, 우리는 다른 테이블 노드와 테이블 포맷 설정을 적용하는 방법에 대해 이야기 할 것입니다 Aspose.Words 지원하다.

## 다른 노드로 포맷하기

이 섹션에서는 다양한 테이블 노드에 형식을 적용할 수 있습니다.

### 테이블 수준 Formatting

테이블에 포맷을 적용하려면 해당 속성을 사용할 수 있습니다. **Table** 노드 사용 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), · [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) 수업.

{{% alert color="primary" %}}

테이블 속성이 적용되기 전에 적어도 하나의 행을해야합니다. 이것은 테이블을 만들 때 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), 이 형식은 첫 번째 호출 후 수행해야합니다. [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), 또는 첫번째 행이 테이블에 추가된 후에, 또는 노드가 직접 삽입될 때 DOM·

{{% /alert %}}

아래의 그림은 표현을 보여줍니다 **Table** 파일 형식 Microsoft Word 그리고 해당 속성 Aspose.Words·

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

다음 코드 예제는 테이블에 개요 경계를 적용하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

다음 코드 예제는 모든 국경을 사용하여 테이블을 구축하는 방법을 보여줍니다 (그리드):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### 행 레벨 Formatting

Row-level** 포맷을 사용하여 제어할 수 있습니다. [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), · [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) 수업.

{{% alert color="primary" %}}

주의사항 **Row** 아이 노드가 될 수 있습니다. **Table**· 동시에 적어도 하나가 있어야합니다. **Cell** 내 계정 **Row** 그래서 형식을 적용 할 수 있습니다.

{{% /alert %}}

아래의 그림은 표현을 보여줍니다 **Row** 파일 형식 Microsoft Word 그리고 해당 속성 Aspose.Words·

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

다음 코드 예제는 테이블 행 포맷을 수정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### 세포 수준 Formatting

Cell-level 포맷은 제어 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), · [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) 수업.

{{% alert color="primary" %}}

주의사항 **Cell** 아이 노드가 될 수 있습니다. **Row**· 동시에 적어도 하나가 있어야합니다. [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 내 계정 **Cell** 그래서 형식을 적용 할 수 있습니다.

더 알아보기 **Paragraph**, 당신은 또한 삽입할 수 있습니다 **Table** 로그인 **Cell**·

{{% /alert %}}

아래의 그림은 표현을 보여줍니다 **Cell** 파일 형식 Microsoft Word 그리고 해당 속성 Aspose.Words·

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

다음 코드 예제는 테이블 셀의 형식을 수정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

다음 코드 예제는 셀의 내용의 왼쪽 / 상단 / 오른쪽 / 하단에 추가하기 위해 공간의 양을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## 줄 높이 지정

행 높이를 설정하는 가장 간단한 방법은 사용 **DocumentBuilder**· 적절한 사용 **RowFormat** 속성, 기본 높이 설정을 설정하거나 테이블의 각 행에 다른 높이를 적용 할 수 있습니다.

내 계정 Aspose.Words, 테이블 행 고도는에 의해 통제됩니다:

- 행 높이 속성 – [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- 주어진 행의 높이 규칙 속성 – [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

동시에, 다른 높이는 각 행에 대해 설정할 수 있습니다 - 이것은 테이블 설정을 널리 제어 할 수 있습니다.

{{% alert color="primary" %}}

객체의 높이를 지정하는 규칙 옵션은 설정할 수 있습니다. [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) 이름 *

{{% /alert %}}

다음 코드 예제는 단일 셀을 포함하는 테이블을 만드는 방법을 보여 주며 행 형식을 적용합니다

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## 표와 세포 폭을 지정하십시오

테이블에서 Microsoft Word 문서는 테이블과 개별 셀을 조정하는 여러 가지 방법을 제공합니다. 이 재산은 테이블의 외관 그리고 행동에 상당한 통제를 허용합니다, 그래서 Aspose.Words 테이블의 동작을 지원한다. Microsoft Word·

테이블 요소는 전체 테이블의 너비뿐만 아니라 개별 셀의 너비에 영향을 미칠 수있는 여러 가지 특성을 제시하는 것이 중요합니다

- 테이블에 선호하는 폭
- 개별 셀의 선호 폭
- 테이블에 autofit 허용

이 문서는 다양 한 테이블 폭 계산 속성 작업 및 테이블 폭 계산에 전체 제어를 얻는 방법. 이름 *
테이블 레이아웃이 예상대로 나타나지 않는 그런 경우에 특히 유용합니다.

{{% alert color="primary" %}}

대부분의 경우, 선호 셀은 테이블 너비보다 좋습니다. 선호한 세포 폭은 DOCX 체재 명세 뿐 아니라 선에서 더 많은 것입니다 Aspose.Words 모델.

세포 폭은 실제로 DOCX 형식의 계산 값입니다. 실제적인 세포 폭은 많은 것에 달려 있습니다. 예를 들어, 페이지 마진을 변경하거나 선호하는 테이블 너비는 실제 셀 너비에 영향을 줄 수 있습니다.

선호된 셀 폭은 문서에 저장되는 세포 재산입니다. 세포의 테이블 또는 기타 속성을 변경할 때 아무 것도 의존하지 않습니다.

{{% /alert %}}

{{% alert color="primary" %}}

이 문서에 설명 된 모든 속성 및 방법은 테이블 작업과 관련된 Microsoft Word· 그래서 대부분의 경우, 당신은 당신의 테이블 programmatically를 구축하고 있지만 원하는 테이블을 만들기 위해 열심히 찾고 있다면, 당신은 대신 시각적으로 그것을 만들 수 있습니다 Microsoft Word 먼저 형식의 값을 어플리케이션에 복사합니다.

{{% /alert %}}

### 선호하는 폭을 사용하는 방법

테이블 또는 개별 셀의 원하는 폭은 원소가 적합하도록 노력하는 크기 인 선호 폭 특성을 통해 정의됩니다. 즉, 선호한 폭은 전체 테이블 또는 개별 세포를 위해 지정될 수 있습니다. 어떤 상황에서도이 폭을 정확히 맞을 수 없지만 실제 폭은 대부분의 경우이 값에 가깝습니다.

적절한 선호 폭 유형과 값은 방법의 사용 [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) 종류:

- 한국어 [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) 자동 또는 "필수 폭"을 지정하는 필드
- 한국어 [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) 비율 폭을 지정하는 방법
- 한국어 [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) 포인트의 폭을 지정하는 방법

아래 그림은 *preferred width setting features*의 표현을 보여줍니다. Microsoft Word 그리고 해당 속성 Aspose.Words·

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

이 옵션이 문서의 실제 테이블에 적용되는 방법은 아래 그림에서 볼 수 있습니다.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

테이블에서 선호하는 폭을 사용할 수 있기 전에 테이블이 적어도 하나의 행을 포함하도록해야합니다. 이것은 그런 테이블 포맷 때문에 Microsoft Word 문서 또는 문서에서 생성된 문서 Aspose.Words 테이블의 행에 저장됩니다.

{{% /alert %}}

#### 선호 테이블 또는 셀 폭 지정

내 계정 Aspose.Words, 테이블과 세포 폭은 놓입니다 [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) 시설 및 시설 [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) 재산, 옵션 있음 [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 공급 능력:

- - - **Auto**, 선호한 폭 세트에 동등합니다
- - - **Percent**, 윈도우 또는 컨테이너 크기의 사용 가능한 공간과 관련된 요소에 적합하며 사용 가능한 폭이 변경 될 때 값을 계산합니다
- - - **Points**, 지정된 너비의 요소에 해당합니다

{{% alert color="primary" %}}

기본적으로 테이블은 페이지의 사용 가능한 공간의 100 %에 장착 될 수 있습니다. 이 경우, 테이블은 왼쪽과 오른쪽 페이지 마진 사이의 공간을 차지하려고합니다.

{{% /alert %}}

사용 방법 [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) 재산은 그것의 콘테이너에 관계되는 그것의 선호한 폭을 조정할 것입니다: 페이지, 원본 란, 또는 배열된 테이블인 경우에 외부 테이블 세포.

다음 코드 예제는 페이지 너비의 50 %에 자동 피팅 테이블을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

사용 방법 [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) 주어진 세포에 재산은 그것의 선호한 폭을 조정할 것입니다.

다음 코드 예제는 다른 선호 너비 설정을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### 선호하는 폭 유형 및 가치 찾기

당신은 사용할 수 있습니다 [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) · [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) 원하는 테이블 또는 셀의 선호 폭 세부 사항을 찾을 수있는 속성.

다음 코드 예제는 테이블 셀의 선호 너비 유형을 검색하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Autofit 설정 방법

더 보기 [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) 속성은 테이블에 세포가 성장하고 선택된 크리터에 따라 수축 할 수 있습니다. 예를 들어, 사용할 수 있습니다. **AutoFit로 Window** 테이블을 페이지의 너비에 맞게 옵션, 그리고 **AutoFit에 내용** 각 세포를 성장하거나 수축할 수 있는 선택권.

{{% alert color="primary" %}}

또한, **AllowAutoFit** 속성은 원하는 셀 너비와 함께 사용 될 수 있습니다. 셀을 포맷하는 것은 자동으로 내용에 맞게, 또한 초기 폭이 있습니다. 필요한 경우, 세포 폭은 그 후에 이 폭을 과거에 성장할 수 있습니다.

{{% /alert %}}

기본적으로, Aspose.Words 새 테이블을 삽입 **AutoFit로 Window**· 테이블은 사용 가능한 페이지 너비에 따라 크기가 될 것입니다. 테이블을 크기를 조정하려면, 당신은 호출 할 수 있습니다 [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) 방법. 이 방법은 [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) autofit의 유형이 테이블에 적용된다는 것을 지정합니다.

autofit 방법이 실제로 같은 시간에 테이블에 다른 속성을 적용하는 단축키는 것을 아는 것이 중요합니다. 이것은 실제로 표가 관찰 된 행동을주는 속성입니다. 우리는 각 autofit 선택권을 위한 이 재산을 토론할 것입니다.

다음과 같은 코드 예제는 테이블을 수축하거나 각 세포를 성장시키는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

우리는 다음과 같은 테이블을 사용하여 다양한 자동 피팅 설정을 데모로 적용합니다.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit 테이블에 창

창에 autofitting가 테이블에 적용되면 다음 작업은 실제로 장면 뒤에 수행됩니다

1. 명세 더 보기 **Table.AllowAutoFit** 속성은 사용 가능한 콘텐츠에 맞게 자동으로 크기를 조절할 수 있습니다. **Table.PreferredWidth** 100%의 가치
2. 명세 **CellFormat.PreferredWidth** 모든 테이블 셀에서 제거
      {{% alert color="primary" %}}
   이것은 약간 다릅니다. Microsoft Word 각 셀의 선호 폭이 현재 크기와 내용에 따라 적절한 값으로 설정되는 동작. Aspose.Words 선호하는 폭을 업데이트하지 않으므로 대신 명확하게됩니다.
      {{% /alert %}}
3. 명세 열 폭은 현재 테이블 내용에 대한 재 계산 – 최종 결과는 전체 사용 가능한 폭을 점유하는 테이블입니다
4. 명세 테이블의 열의 너비는 자동으로 텍스트를 편집합니다

다음 코드 예제는 페이지 너비에 테이블을 자동화하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

위의 테이블에 적용되는 옵션의 예는 아래 그림에서 볼 수 있습니다.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit 테이블에 내용

테이블이 autofitted the content,다음 단계는 실제로 장면 뒤에 수행된다:

1. 명세 더 보기 **Table.AllowAutoFit** 속성은 자동으로 각 세포를 크기로 조절할 수 있습니다

2. 명세 선호하는 테이블 폭은에서 제거됩니다 **Table.PreferredWidth**, **CellFormat.PreferredWidth** 각 테이블 셀에 제거
      {{% alert color="primary" %}}

   이 autofit 선택권은 세포에서 선호한 폭을, 다만 같이 제거합니다 Microsoft Word· 열 크기를 유지 하 고 증가 또는 열을 감소 하 고 콘텐츠에 맞게, 당신은 설정 해야 **Table.AllowAutoFit** 뚱 베어 **True** autofit 단축키를 사용하는 것보다 자체에.{{% /alert %}}

3. 명세 열 폭은 현재 테이블 내용에 대 한 recalculated – 최종 결과 열 폭과 전체 테이블의 폭이 자동으로 텍스트를 편집 하는 사용자로 콘텐츠를 가장 적합 하 게 크기

다음 코드 예제는 테이블을 내용을 자동화하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

위의 테이블에 적용되는 옵션의 예는 아래 그림에서 볼 수 있습니다.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### 테이블에 AutoFit 사용 고정 열 폭

테이블이 비활성화 및 고정 열 너비가 대신 사용되면 다음 단계가 수행됩니다

1. 명세 **Table.AllowAutoFit** 속성이 비활성화되어 있으므로 열은 성장하거나 수축하지 않습니다
2. 명세 전체 테이블의 선호 폭은 제거 **Table.PreferredWidth**, **CellFormat.PreferredWidth** 모든 테이블 셀에서 제거
3. 명세 최종 결과는 열 너비가 결정되는 테이블입니다. [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) 속성, 그리고 그 열은 자동으로 텍스트를 입력하거나 페이지가 크기를 때 크기를 변경하지 않습니다

{{% alert color="primary" %}}

너비가 지정되지 않은 경우 **CellFormat.Width**, 1 인치 (72 점)의 기본 값은 사용됩니다.

{{% /alert %}}

다음 코드 예제는 autofit을 비활성화하고 지정된 테이블에 고정 너비를 활성화하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

위의 테이블에 적용되는 옵션의 예는 아래 그림에서 볼 수 있습니다.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### 셀 폭을 계산할 때의 약속

Aspose.Words 사용자는 여러 객체를 통해 테이블 또는 셀의 너비를 정의 할 수 있습니다. [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – 그것의 [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) 속성은 주로 이전 버전에서 왼쪽, 그러나, 그것은 여전히 셀 폭을 설정 단순화에 유용합니다.

그것은 그것을 알고 중요 **CellFormat.Width** 속성은 테이블에 이미 존재하는 다른 폭 속성에 따라 다르게 작동합니다.

Aspose.Words 계산 세포 폭을 위한 뒤에 오는 순서를 이용합니다:

|  이름 * |  제품정보 |  이름 * |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) 결정 |  이름 * **AutoFit** 사용 가능:<br/>- 테이블은 컨텐츠를 수용하기 위해 선호한 폭을 과거에 성장할 수 있습니다 - 그것은 보통 선호한 폭의 밑에 수축하지 않습니다<br/>- 어떤 변화든지 **CellFormat.Width** 값은 무시되고 세포는 대신 그 내용에 맞을 것입니다 |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 값으로 **Points** 또는 **Percent** |  **CellFormat.Width** 이름 * |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 값으로 **Auto** |  가치에서 **CellFormat.Width** 복사하고 세포의 선호 폭이됩니다 (점에서) |

{{% alert color="primary" %}}

폭 속성에 대한 모든 변경은 선호 폭에서 업데이트되지 않고 대신 선호 폭에 적용해야합니다.

{{% /alert %}}

{{% alert color="primary" %}}

고정 테이블 레이아웃을 만드는 동안, 셀 너비를 지정합니다. 너비가없는 세포는 DOC 형식으로 저장할 수 없습니다. DOCX와 같은 DOC 이외의 문서 형식은 원칙적으로 고정 테이블 레이아웃의 너비없이 셀을 저장 할 수 있습니다.

{{% /alert %}}

## 셀 사이 간격 허용

"Сell spacing" 옵션과 유사한 테이블 셀 사이의 추가 공간을 얻을 수 있습니다. Microsoft Word· 이 작업을 수행 할 수 있습니다 [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) 호텔 위치

이 옵션이 문서의 실제 테이블에 적용되는 방법은 아래 그림에서 볼 수 있습니다.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

다음 코드 예제는 셀 사이의 간격을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## 국경 및 Shading 적용

국경과 셰이딩은 전체 테이블에 적용 할 수 있습니다. [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) · [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), 또는 특정 세포에서만 사용 [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) · [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)· 또한, 행 경계를 사용하여 설정할 수 있습니다. [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), 그러나 셰이딩은이 방법으로 적용 할 수 없습니다.

아래 그림은 국경과 그림자 설정을 보여줍니다. Microsoft Word 그리고 해당 속성 Aspose.Words·

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


뒤에 오는 부호 예는 테이블과 세포를 다른 국경 및 셰이딩으로 포맷하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}