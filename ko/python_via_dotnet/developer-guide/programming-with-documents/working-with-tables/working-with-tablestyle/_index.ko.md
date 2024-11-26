---
title: Python에서 테이블 스타일 변경
second_title: Python via .NET용 Aspose.Words
articleTitle: 표 스타일 적용
linktitle: 표 스타일 적용
description: "고급 테이블 형식 C#. Python를 사용하여 테이블 스타일을 만듭니다. 테이블 스타일 Python를 적용합니다."
type: docs
weight: 80
url: /ko/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

표 스타일은 표에 쉽게 적용할 수 있는 서식 집합을 정의합니다. 테두리, 음영, 정렬, 글꼴 등의 서식을 표 스타일로 설정하고 일관된 모양을 위해 여러 표에 적용할 수 있습니다.

Aspose.Words는 테이블 스타일을 테이블에 적용하고 모든 테이블 스타일의 속성을 읽는 것을 지원합니다. 테이블 스타일은 다음과 같은 방법으로 로드 및 저장 중에 유지됩니다

- DOCX 및 WordML 형식의 테이블 스타일은 이러한 형식으로 로드하고 저장할 때 유지됩니다
- DOC 형식으로 로드하고 저장할 때 테이블 스타일이 유지됩니다(다른 형식으로는 유지되지 않음)
- 다른 형식으로 내보낼 때, 렌더링 또는 인쇄할 때 표 스타일이 표의 직접 서식으로 확장되므로 모든 서식이 유지됩니다

## 테이블 스타일 만들기

사용자는 새로운 스타일을 생성하여 스타일 컬렉션에 추가할 수 있습니다. [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) 방법은 새로운 테이블 스타일을 만드는 데 사용됩니다.

다음 코드 예제에서는 새로운 사용자 정의 테이블 스타일을 생성하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## 기존 테이블 스타일 복사

필요한 경우 `AddCopy` 방법을 사용하여 특정 문서에 이미 존재하는 표 스타일을 스타일 컬렉션에 복사할 수 있습니다.

이 복사를 통해 연결된 스타일도 복사된다는 점을 아는 것이 중요합니다.

다음 코드 예제에서는 한 문서에서 다른 문서로 스타일을 가져오는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## 기존 표 스타일 적용

Aspose.Words는 [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) 클래스에서 상속된 [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/)를 제공합니다. **TableStyle**를 사용하면 사용자가 음영, 패딩, 들여쓰기, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) 및 [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/) 등과 같은 다양한 스타일 옵션을 적용할 수 있습니다.

또한 Aspose.Words는 작업할 테이블 스타일([Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/) 및 [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/))을 지정하기 위해 [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) 클래스와 `Table` 클래스의 몇 가지 속성을 제공합니다.

Aspose.Words는 또한 할당된 테이블 스타일을 사용하여 테이블의 일부 영역에 적용된 특수 서식을 나타내는 [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) 클래스와 **ConditionalStyle** 개체 컬렉션을 나타내는 [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/)을 제공합니다. 이 컬렉션에는 [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) 열거 유형의 각 값에 대해 하나의 항목을 나타내는 영구 항목 집합이 포함되어 있습니다. **ConditionalStyleType** 열거형은 테이블 스타일에서 조건부 서식을 정의할 수 있는 가능한 모든 테이블 영역을 정의합니다.

이 경우 ConditionalStyleType 열거 유형에 정의된 가능한 모든 테이블 영역에 대해 조건부 서식을 정의할 수 있습니다.

다음 코드 예제에서는 테이블의 머리글 행에 대한 조건부 서식을 정의하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

첫 번째 열, 마지막 열, 줄무늬 행 등 스타일을 적용할 표 부분을 선택할 수도 있습니다. [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) 열거형에 나열되며 [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) 속성을 통해 적용됩니다. **TableStyleOptions** 열거형을 사용하면 이러한 기능을 비트 단위로 조합할 수 있습니다.

다음 코드 예제에서는 테이블 스타일이 적용된 새 테이블을 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

아래 그림은 Microsoft Word의 **Table Styles** 표현과 Aspose.Words의 해당 속성을 보여줍니다.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## 테이블 스타일 작업

표 스타일은 표에 쉽게 적용할 수 있는 서식 집합을 정의합니다. 테두리, 음영, 정렬, 글꼴 등의 서식을 표 스타일로 설정하고 일관된 모양을 위해 여러 표에 적용할 수 있습니다.

Aspose.Words는 테이블 스타일을 테이블에 적용하고 모든 테이블 스타일의 속성을 읽는 것을 지원합니다. 테이블 스타일은 다음과 같은 방법으로 로드 및 저장 중에 유지됩니다

- DOCX 및 WordML 형식의 테이블 스타일은 이러한 형식으로 로드하고 저장할 때 유지됩니다.
- DOC 형식으로 로드하고 저장할 때 테이블 스타일이 유지됩니다(다른 형식으로는 제외).
- 다른 형식으로 내보내거나 렌더링하거나 인쇄할 때 표 스타일이 표의 직접 서식으로 확장되어 모든 서식이 유지됩니다.

현재는 새 테이블 스타일을 생성할 수 없습니다. 문서에 이미 존재하는 내장 표 스타일이나 사용자 정의 표 스타일만 표에 적용할 수 있습니다

## 표 스타일에서 서식을 가져와 직접 서식으로 적용

Aspose.Words는 또한 표 스타일에 있는 서식을 가져와 직접 서식으로 표의 행과 셀로 확장하는 [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) 방법을 제공합니다. 서식을 표 스타일과 셀 스타일과 결합해 보세요.

{{% alert color="primary" %}}

이 방법은 행 또는 셀 형식을 통해 테이블에 이미 적용된 다른 형식을 재정의하지 않습니다.

{{% /alert %}}

다음 코드 예제에서는 스타일에서 테이블 행 및 셀로 서식을 직접 서식으로 확장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}
