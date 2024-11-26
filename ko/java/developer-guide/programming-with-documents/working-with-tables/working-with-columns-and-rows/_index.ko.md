---
title: Java의 열 및 행 작업
second_title: Aspose.WordsJava
articleTitle: 열 및 행 작업
linktitle: 열 및 행 작업
description: "Java을 사용하여 테이블 부분(행,열 및 셀)으로 작업합니다. 헤더 행Java을 지정합니다."
type: docs
weight: 30
url: /ko/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

테이블 작동 방식을 더 잘 제어하려면 열과 행을 조작하는 방법을 알아보세요.

## 테이블 요소 인덱스 찾기

열,행 및 셀은 인덱스로 선택한 문서 노드에 액세스하여 관리됩니다. 어떤 노드의 인덱스를 찾는 것은 부모 노드에서 요소 유형의 모든 자식 노드를 수집한 다음[IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node)방법을 사용하여 컬렉션에서 원하는 노드의 인덱스를 찾는 것을 포함합니다.

### 문서에서 테이블 인덱스 찾기

때때로 문서의 특정 테이블을 변경해야 할 수도 있습니다. 이렇게 하려면 인덱스로 테이블을 참조할 수 있습니다.

다음 코드 예제에서는 문서에서 테이블의 인덱스를 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### 테이블에서 행 인덱스 찾기

마찬가지로 선택한 테이블의 특정 행을 변경해야 할 수도 있습니다. 이렇게 하려면 인덱스로 행을 참조할 수도 있습니다.

다음 코드 예제에서는 테이블의 행 인덱스를 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### 행에서 셀의 인덱스 찾기

마지막으로 특정 셀을 변경해야 할 수 있으며 셀 인덱스로도 이 작업을 수행할 수 있습니다.

다음 코드 예제에서는 행의 셀 인덱스를 검색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## 열 작업

Aspose.Words문서 개체 모델(DOM)에서[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)노드는[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)노드 및[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)노드로 구성됩니다. 따라서,Aspose.Words의`Document`객체 모델에서는 단어 문서와 마찬가지로 열의 개념이 없습니다.

설계 상Microsoft Word및Aspose.Words의 테이블 행은 완전히 독립적이며 기본 속성 및 작업은 테이블의 행 및 셀에만 포함됩니다. 이것은 테이블에 몇 가지 흥미로운 속성을 가질 수 있는 기능을 제공합니다.:

- 각 테이블 행은 완전히 다른 셀 수를 가질 수 있습니다
- 세로로 각 행의 셀은 너비가 다를 수 있습니다
- 행 형식과 셀 수가 다른 테이블을 조인할 수 있습니다

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

열에 수행되는 모든 작업은 실제로 열에 적용되는 것처럼 보이는 방식으로 행 셀을 공동으로 변경하여 작업을 수행하는"단축"입니다. 즉,동일한 테이블 행 셀 인덱스를 반복하기만 하면 열에 대한 작업을 수행할 수 있습니다.

다음 코드 예제에서는 테이블의"열"을 구성하는 셀을 수집하는 파사드 클래스를 증명하여 이러한 작업을 단순화합니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

다음 코드 예제에서는 빈 열을 테이블에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

다음 코드 예제에서는 문서의 테이블에서 열을 제거하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## 행을 머리글 행으로 지정

테이블이 여러 개로 분할된 경우 첫 페이지 또는 각 페이지에서만 표의 첫 번째 행을 머리글 행으로 반복하도록 선택할 수 있습니다. Aspose.Words에서[HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat)속성을 사용하여 모든 페이지에서 머리글 행을 반복할 수 있습니다.

표의 시작 부분에 이러한 행이 하나씩 있는 경우 머리글 행을 여러 개 표시할 수도 있습니다. 이렇게 하려면**HeadingFormat**속성을 이러한 행에 적용해야 합니다.

{{% alert color="primary" %}}

머리글 행은 중첩 테이블에서 작동하지 않습니다. 즉,다른 테이블 안에 테이블이 있는 경우 이 설정은 효과가 없습니다. 이것을 허용하지 않는 것은Microsoft Word의 제한입니다.Aspose.Words이 아닙니다.

{{% /alert %}}

다음 코드 예제에서는 후속 페이지에서 반복되는 머리글 행을 포함하는 테이블을 작성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## {#keep-tables-and-rows-from-breaking-across-pages}페이지에서 테이블과 행이 끊어지지 않도록 합니다.

테이블의 내용을 여러 페이지로 분할해서는 안 되는 경우가 있습니다. 예를 들어,제목이 테이블 위에 있다면,제목과 테이블은 항상 같은 페이지에 함께 유지되어야 적절한 모양을 유지합니다.

이 기능을 달성하는 데 유용한 두 가지 별도의 기술이 있습니다.:

- 테이블 행에 적용되는`Allow row break across pages`
- 표 셀의 단락에 적용되는`Keep with next`

기본적으로 위의 속성은 사용할 수 없습니다.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### {#keep-a-row-from-breaking-across-pages}페이지에서 행이 끊어지지 않도록 합니다.

이것은 행의 셀 안에 있는 콘텐츠가 페이지에 분할되는 것을 제한하는 것을 포함합니다. Microsoft Word에서 테이블 속성 아래에서"행이 페이지를 가로 질러 중단되도록 허용"옵션으로 찾을 수 있습니다. Aspose.Words에서 이것은[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)의[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)객체 아래에서[RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)의 속성으로 발견됩니다.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

다음 코드 예제에서는 테이블의 각 행에 대해 페이지 간에 행을 구분하지 않도록 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### {#keep-a-table-from-breaking-across-pages}페이지 간에 테이블이 끊어지지 않도록 합니다.

테이블이 페이지 간에 분할되는 것을 막으려면 테이블 내에 포함된 콘텐츠가 함께 유지되도록 지정해야 합니다.

이를 위해Aspose.Words는 사용자가 테이블을 선택하고 테이블 셀 내의 각 단락에 대해[KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext)매개 변수를 참으로 설정할 수 있는 메서드를 사용합니다. 예외는 테이블의 마지막 단락입니다.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

다음 코드 예제에서는 같은 페이지에서 함께 유지되도록 테이블을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
