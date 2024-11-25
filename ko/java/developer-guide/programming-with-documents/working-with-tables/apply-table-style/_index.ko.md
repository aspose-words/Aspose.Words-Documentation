---
title: Java의 테이블 스타일 작업
second_title: Aspose.WordsJava
articleTitle: 테이블 스타일 적용
linktitle: 테이블 스타일 적용
description: "고급 테이블 서식Java. Java을 사용하여 테이블 스타일을 만듭니다. 고급 테이블 서식,Java을 사용하는 테이블 스타일 소개."
type: docs
weight: 80
url: /ko/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

테이블 스타일은 테이블에 쉽게 적용할 수 있는 서식 집합을 정의합니다. 테두리,음영,정렬 및 글꼴과 같은 서식을 테이블 스타일로 설정하고 일관된 모양을 위해 많은 테이블에 적용할 수 있습니다.

Aspose.Words테이블에 테이블 스타일을 적용하고 모든 테이블 스타일의 속성을 읽을 수 있습니다. 테이블 스타일은 다음과 같은 방법으로 로드 및 저장하는 동안 유지됩니다:

- DOCX및WordML형식의 테이블 스타일은 이러한 형식으로 로드 및 저장할 때 유지됩니다
- 테이블 스타일은DOC형식으로 로드 및 저장할 때 보존됩니다(다른 형식은 아님).
- 다른 형식(렌더링 또는 인쇄)으로 내보낼 때 테이블 스타일이 테이블의 직접 형식으로 확장되므로 모든 서식이 유지됩니다

## 테이블 스타일 만들기

사용자는 새로운 스타일을 만들고 스타일 컬렉션에 추가 할 수 있습니다. [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)메서드는 새 테이블 스타일을 만드는 데 사용됩니다.

다음 코드 예제에서는 새 사용자 정의 테이블 스타일을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## 기존 테이블 스타일 복사

필요한 경우`AddCopy`메서드를 사용하여 특정 문서에 이미 있는 테이블 스타일을 스타일 컬렉션에 복사할 수 있습니다.

이 복사를 사용하면 연결된 스타일도 복사된다는 것을 아는 것이 중요합니다.

다음 코드 예제에서는 한 문서에서 다른 문서로 스타일을 가져오는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## 기존 테이블 스타일 적용

Aspose.Words는[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)클래스에서 상속된[TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/)를 제공합니다. **TableStyle**사용자가 음영,패딩,들여 쓰기,[CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing)및[Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont)등과 같은 다양한 스타일 옵션을 적용 할 수 있습니다.

또한Aspose.Words는[StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)클래스와`Table`클래스의 몇 가지 속성을 제공하여 작업할 테이블 스타일을 지정합니다: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), 그리고[StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int)

Aspose.Words는 또한 할당된 테이블 스타일이 있는 테이블의 일부 영역에 적용된 특수 서식을 나타내는[ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/)클래스와**ConditionalStyle**개체의 컬렉션을 나타내는[ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/)클래스를 제공합니다. 이 컬렉션에는[ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/)열거형 형식의 각 값에 대해 하나의 항목을 나타내는 영구 항목 집합이 포함되어 있습니다. **ConditionalStyleType**열거형은 조건부 서식을 테이블 스타일로 정의할 수 있는 모든 가능한 테이블 영역을 정의합니다.

이 경우ConditionalStyleType열거형 유형 아래에 정의된 가능한 모든 테이블 영역에 대해 조건부 서식을 정의할 수 있습니다.

다음 코드 예제에서는 테이블의 머리글 행에 대한 조건부 서식을 정의하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

첫 번째 열,마지막 열,줄무늬 행과 같이 스타일을 적용할 테이블 파트를 선택할 수도 있습니다. [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/)열거형에 나열되며[StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions)속성을 통해 적용됩니다. **TableStyleOptions**열거는 이러한 기능의 비트 조합을 허용합니다.

다음 코드 예제에서는 테이블 스타일이 적용된 새 테이블을 만드는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

아래 그림은Microsoft Word의**Table Styles**과Aspose.Words의 해당 속성을 나타냅니다.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## 표 스타일에서 서식을 가져와 직접 서식으로 적용

Aspose.Words는 또한[ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting)메서드를 제공하여 테이블 스타일에서 찾은 서식을 가져와 테이블의 행과 셀에 직접 서식으로 확장합니다. 서식을 표 스타일 및 셀 스타일과 결합해 보십시오.

{{% alert color="primary" %}}

이 메서드는 행 또는 셀 형식을 통해 테이블에 이미 적용된 다른 서식을 재정의하지 않습니다.

{{% /alert %}}

다음 코드 예제에서는 스타일에서 테이블 행 및 셀로 서식을 직접 서식으로 확장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
