---
title: 테이블 스타일 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 테이블 스타일 적용
linktitle: 테이블 스타일 적용
description: "고급 테이블 포맷 Java· 테이블 스타일 만들기 Java· 고급 테이블 포맷, 테이블 스타일에 대한 소개 Java·"
type: docs
weight: 80
url: /ko/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

테이블 스타일은 테이블에 쉽게 적용 할 수있는 포맷 세트를 정의합니다. 경계, 셰이딩, 정렬 및 글꼴과 같은 형식은 테이블 스타일로 설정하고 일관성있는 외관을 위해 많은 테이블에 적용 할 수 있습니다.

Aspose.Words 테이블에 테이블 스타일을 적용하고 테이블 스타일의 속성을 읽을 수 있습니다. 테이블 스타일은 다음과 같은 방법으로 로딩 및 저장 중에 보존됩니다

- DOCX 및 WordML 형식의 테이블 스타일은 이러한 형식으로 로딩 및 저장 할 때 보존됩니다
- 테이블 스타일은 DOC 형식의 로딩 및 저장 할 때 보존됩니다 (하지만 다른 형식은 아닙니다)
- - - 다른 형식으로 내보내면 렌더링 또는 인쇄, 테이블 스타일이 테이블에 직접 포맷으로 확장되므로 모든 형식이 보존됩니다

## 테이블 스타일 만들기

사용자는 새로운 스타일을 만들고 스타일 컬렉션에 추가 할 수 있습니다. 더 보기 [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) 방법은 새 테이블 스타일을 만들기 위해 사용됩니다.

다음 코드 예제는 새로운 사용자 정의 테이블 스타일을 만드는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Existing 테이블 스타일 복사

필요한 경우 스타일 컬렉션에 이미 존재하는 테이블 스타일을 복사 할 수 있습니다. `AddCopy` 방법.

이 복사본을 아는 것이 중요합니다. 링크 된 스타일도 복사됩니다.

다음 코드 예제는 하나의 문서에서 다른 문서로 스타일을 가져올 방법을 보여줍니다:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## 기존 테이블 스타일 적용

Aspose.Words 지원하다 [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) 상속에서 [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) 수업. **TableStyle** 셰이딩, 패딩, 인사 등과 같은 다른 스타일 옵션을 적용 할 수있는 사용자를 용이 [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) · [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), 기타

또한, Aspose.Words 제품정보 [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) 클래스와 몇 가지 속성 `Table` 우리가 작업 할 테이블 스타일을 지정하는 클래스: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), · [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int)·

Aspose.Words 자주 묻는 질문 [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) 지정된 테이블 스타일로 테이블의 일부 영역에 적용되는 특수 포맷을 나타내는 클래스, 그리고 [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) 그 수집을 나타냅니다 **ConditionalStyle** 기타 제품 이 컬렉션은 각 값에 대한 하나의 항목을 나타내는 영구 세트를 포함합니다. [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) 공급 능력 더 보기 **ConditionalStyleType** enumeration은 테이블 스타일에 정의 할 수있는 모든 가능한 테이블 영역을 정의합니다.

이 경우, 조건 서식은 조건부 스타일 타입의 enumeration 유형에 따라 정의된 모든 가능한 테이블 영역에 정의될 수 있습니다.

다음 코드 예제는 테이블의 헤더 행에 대한 조건 지정 방법을 보여줍니다:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

또한 테이블 부품이 스타일을 적용하도록 선택할 수 있습니다. 첫째 열, 마지막 열, 밴딩 행. 그들은 목록에 있습니다 [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) 열렬한 적용 [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) 호텔 위치 더 보기 **TableStyleOptions** enumeration은 이러한 기능의 비트 방향 조합을 허용합니다.

다음 코드 예제는 테이블 스타일로 새로운 테이블을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

아래의 그림은 표현을 보여줍니다 **Table Styles** 내 계정 Microsoft Word 그리고 해당 속성 Aspose.Words·

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## 테이블 스타일에서 포맷을 가져 와서 직접 포맷으로 적용

Aspose.Words 또한 제공 [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) 테이블 스타일에 찾아서 테이블의 행과 셀을 직접 포맷으로 확장하는 방법. 테이블 스타일과 셀 스타일로 포맷을 결합해보세요.

{{% alert color="primary" %}}

이 방법은 열 또는 셀 형식을 통해 테이블에 적용 된 다른 포맷을 무시하지 않습니다.

{{% /alert %}}

다음과 같은 코드 예제는 테이블 행과 셀에 스타일을 확장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
