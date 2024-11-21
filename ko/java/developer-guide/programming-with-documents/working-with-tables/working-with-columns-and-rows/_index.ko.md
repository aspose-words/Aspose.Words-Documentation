---
title: 기둥과 행 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 기둥과 행 작업
linktitle: 기둥과 행 작업
description: "테이블의 부품 작업 – 행, 열 및 셀 사용 Java· Header 행을 지정하십시오 Java·"
type: docs
weight: 30
url: /ko/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

테이블 작업에 대한 더 많은 제어를 위해, 열과 행을 조작하는 방법을 배우십시오.

## Table Element 인덱스 보기

열, 행 및 셀은 선택한 문서 노드에 접근하여 관리됩니다. 노드의 인덱스를 찾아서 부모 노드의 요소 유형의 모든 자식 노드를 수집하고, 다음을 사용하여 [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) 수집에 원하는 노드의 인덱스를 찾습니다.

### 문서에 테이블의 인덱스 찾기

때로는 문서의 특정 테이블에 변경할 수 있습니다. 이렇게하려면 인덱스로 테이블을 참조할 수 있습니다.

다음 코드 예제는 문서의 테이블의 인덱스를 검색하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### 테이블에 있는 행의 인덱스 찾기

마찬가지로 선택한 테이블에 특정 행으로 변경할 수 있습니다. 이렇게하려면 인덱스의 행을 참조할 수도 있습니다.

다음 코드 예제는 테이블에서 행의 인덱스를 검색하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### 줄에 있는 셀의 인덱스 찾기

마지막으로, 당신은 특정 세포에 변화를 만들 필요가 있습니다, 당신은 셀 인덱스에 의해 이것을 할 수 있습니다.

다음 코드 예제는 셀의 인덱스를 검색하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## 열 작업

내 계정 Aspose.Words Document Object Model (주)DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) 노드는 [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) 노드 및 그 후 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 노드. 따라서, `Document` 개체 모델 Aspose.Words, 낱말 문서에서는, 란의 개념이 없습니다.

디자인에 의하여, 테이블 줄 Microsoft Word · Aspose.Words 완전히 독립적이며, 기본 속성과 작업은 테이블의 행과 세포에서만 포함되어 있습니다. 이 표는 흥미로운 속성을 가지고 수있는 능력을 제공합니다:

- 각 테이블 행에는 세포의 완전히 다른 수가 있을 수 있습니다
- 수직으로, 각 행의 세포는 다른 폭이 있을 수 있습니다
- - - 다른 행 형식과 셀의 숫자로 테이블에 가입 할 수 있습니다

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

열에 수행 된 모든 작업은 실제로 "shortcuts"이며 열에 적용되고있는 것처럼 보이는 그런 방법으로 행 세포를 공동으로 변경하여 작업을 수행하는 것입니다. 즉, 동일한 테이블 행 셀 인덱스를 통해 간단히 정리하여 열에 작업을 수행 할 수 있습니다.

다음과 같은 코드 예제는 테이블의 "column"을 구성하는 세포를 수집하는 정면 클래스를 proving하여 이러한 작업을 단순화합니다

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

다음 코드 예제는 공백 열을 테이블에 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

다음 코드 예제는 문서의 테이블에서 열을 제거하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## 행을 헤더로 지정합니다

테이블에 있는 첫번째 줄을 첫번째 페이지에 또는 테이블이 몇몇으로 나누는 경우에 각 페이지에 머리 줄으로 반복하기 위하여 선택할 수 있습니다. 내 계정 Aspose.Words, 각 페이지에 Header Row를 반복 할 수 있습니다. [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) 호텔 위치

그런 행이 테이블의 시작 후에 다른 한쪽에 있는 경우에 또한 다수 우두머리 줄을 표시할 수 있습니다. 이렇게하려면 적용해야 합니다. **HeadingFormat** 이 행에 속성.

{{% alert color="primary" %}}

Header Rows는 배열 테이블에서 작동하지 않습니다. 즉, 다른 테이블 내부 테이블이있는 경우이 설정은 효과가 없습니다. 그것은의 제한입니다 Microsoft Word 그것은 이것을 허용하지 않습니다, 아니 Aspose.Words·

{{% /alert %}}

다음 코드 예제는 이후 페이지에 반복 헤드러 행을 포함하는 테이블을 구축하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## 틈새에서 테이블과 행을 유지하십시오. {#keep-tables-and-rows-from-breaking-across-pages}

테이블의 내용이 페이지에 나타날 필요가 없습니다. 예를 들어 제목이 테이블 위에 있다면 제목과 테이블은 항상 적절한 외관을 보존하기 위해 동일한 페이지에서 함께 보관해야합니다.

이 기능을 달성하기 위해 유용한 두 가지 분리 기술이 있습니다:

- - - `Allow row break across pages`, 테이블 행에 적용되는
- - - `Keep with next`, 테이블 셀의 단락에 적용

기본적으로 위 속성이 비활성화됩니다.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Across Pages에서 행을 유지하십시오. {#keep-a-row-from-breaking-across-pages}

이 페이지에 걸쳐 분할에서 행의 세포 안쪽에 내용을 제한합니다. 내 계정 Microsoft Word, 이 테이블 속성에서 찾을 수 있습니다 옵션 "모든 행 페이지에 걸쳐 휴식". 내 계정 Aspose.Words 이것은 아래에 있습니다 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) 객체의 [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) 시설안내 [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)·

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

다음 코드 예제는 테이블의 각 행에 대한 페이지 전체에 걸쳐 행을 끊는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Across Pages에서 테이블 유지 {#keep-a-table-from-breaking-across-pages}

페이지에 걸쳐 분할에서 테이블을 중지하려면 테이블 내에서 포함 된 콘텐츠를 지정해야합니다.

이 작업을 수행 Aspose.Words 사용자가 테이블을 선택하고 활성화 할 수있는 방법을 사용합니다. [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) 매개 변수 true 테이블 세포 내 각 단락을 위해. 예외는 테이블의 마지막 단락입니다. false·

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

다음과 같은 코드 예제는 같은 페이지에 머물 테이블을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
