---
title: 사용 DocumentBuilder 문서를 쉽게 수정하려면
second_title: Aspose.Words 에 대한 C++
articleTitle: 사용 DocumentBuilder 문서를 쉽게 수정하려면
linktitle: 사용 DocumentBuilder 문서를 쉽게 수정하려면
type: docs
description: "문서 작성기를 사용하여 문서를 쉽게 수정할 수 있습니다 C++."
weight: 190
url: /ko/cpp/using-documentbuilder-to-modify-a-document-easily/
timestamp: 2024-01-27-14-07-04
---

## 서식 지정

### 글꼴 서식

현재 글꼴 포맷은 `Font` 에 의해 반환 된 객체 `DocumentBuilder.Font` 재산. 그 `Font` 클래스는 가능한 글꼴 속성의 다양한 포함되어 있습니다 Microsoft Word. 아래 예는 글꼴 서식을 설정하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### 단락 서식

현재 단락 포맷은 `ParagraphFormat` 에 의해 반환되는 객체 `DocumentBuilder.ParagraphFormat` 재산. 이 개체는 다음에서 사용할 수 있는 다양한 단락 서식 속성을 캡슐화합니다 Microsoft Word. 단락 서식을 기본값으로 일반 스타일,왼쪽 정렬,들여 쓰기 없음,간격 없음,테두리 없음 및 음영으로 쉽게 재설정 할 수 있습니다 `ParagraphFormat.ClearFormatting`. 아래 예는 단락 서식을 설정하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### 아시아 타이포그래피 작업

#### 자동으로 아시아어와 라틴어 텍스트,숫자 사이의 공간을 조정

동아시아 텍스트와 라틴 텍스트를 모두 사용하여 서식 파일을 디자인하고 두 텍스트 유형 사이의 공백을 제어하여 양식 서식 파일의 모양을 개선하려는 경우 이 두 텍스트 유형 사이의 공백을 자동으로 조정하도록 양식 서식 파일을 구성할 수 있습니다. 당신은 사용할 수 있습니다 AddSpaceBetweenFarEastAndAlpha 그리고 AddSpaceBetweenFarEastAndDigit 속성 ParagraphFormat 이를 달성하기 위한 수업.

다음 코드 예제에서는 사용 방법을 보여 줍니다 `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` 그리고 `ParagraphFormat.AddSpaceBetweenFarEastAndDigit` 속성.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### 아시아 단락 간격 및 들여쓰기 변경

다음 코드 예제에서는 아시아 단락 간격 및 들여쓰기를 변경하는 방법을 보여 줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### 줄 바꿈 옵션 설정

의 아시아 타이포그래피 탭 `Paragraph` 속성 대화 상자 MS 단어에는 줄 바꿈 그룹이 있습니다. 이 그룹의 옵션은 다음을 사용하여 설정할 수 있습니다 FarEastLineBreakControl, WordWrap, HangingPunctuation 속성 ParagraphFormat 수업 수low code 예제는 이러한 속성을 사용하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### 셀 서식 지정

셀 서식은 테이블을 작성하는 동안 사용됩니다. 이 값은 `CellFormat` 에 의해 반환 된 객체 `DocumentBuilder.CellFormat` 재산. CellFormat 너비 또는 수직 정렬과 같은 다양한 테이블 셀 속성을 캡슐화합니다. 아래 예제는 서식이 지정된 단일 셀을 포함하는 테이블을 만드는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### 행 서식 지정

현재 행 포맷은 `RowFormat` 에 의해 반환되는 객체 `DocumentBuilder.RowFormat` 재산. 개체는 모든 테이블 행 서식에 대한 정보를 캡슐화합니다. 아래 예제는 단일 셀을 포함하는 테이블을 만들고 행 서식을 적용하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### 목록 서식 지정

Aspose.Words 목록 서식을 적용하여 목록을 쉽게 만들 수 있습니다. DocumentBuilder 제공 `DocumentBuilder.ListFormat` 반환하는 속성 `ListFormat` 객체 이 개체에는 목록을 시작 및 종료하고 들여 쓰기를 늘리거나 줄이는 여러 가지 방법이 있습니다. 두 가지 일반적인 유형의 목록이 있습니다. Microsoft Word:글 머리 기호 및 번호.

- 글머리 기호 목록을 시작하려면 `ListFormat.ApplyBulletDefault`.
- 번호 매기기 목록을 시작하려면 `ListFormat.ApplyNumberDefault`.

글 머리 기호 또는 숫자 및 서식은 현재 단락 및 다음을 사용하여 만든 모든 추가 단락에 추가됩니다 **DocumentBuilder** 까지 `ListFormat.RemoveNumbers` 글머리 기호 목록 서식을 중지하도록 호출됩니다. 워드 문서에서 목록은 최대 9 개의 레벨로 구성될 수 있습니다. 각 레벨에 대한 목록 서식은 사용되는 글 머리 기호 또는 숫자,왼쪽 들여 쓰기,글 머리 기호와 텍스트 사이의 공간 등을 지정합니다.

- 현재 단락의 목록 수준을 한 수준 높이려면 다음을 호출합니다 `ListFormat.ListIndent`.
- 현재 단락의 목록 수준을 한 수준 줄이려면 다음을 호출합니다 `ListFormat.ListOutdent`.

이 메서드는 목록 수준을 변경하고 새 수준의 서식 속성을 적용합니다.

{{% alert color="primary" %}}

당신은 또한 사용할 수 있습니다 `ListFormat.ListLevelNumber` 단락의 목록 수준을 가져오거나 설정하는 속성입니다. 목록 레벨은 번호가 붙어 있습니다. 0 에 8.

{{% /alert %}}

아래 예는 다단계 목록을 작성하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### 페이지 설정 및 섹션 서식 지정

페이지 설정 및 섹션 속성은 다음과 같이 캡슐화됩니다 `PageSetup` 에 의해 반환되는 객체 `DocumentBuilder.PageSetup` 재산. 개체에는 섹션의 모든 페이지 설정 속성(왼쪽 여백,아래쪽 여백,용지 크기 등)이 속성으로 포함됩니다. 아래 예는 현재 섹션의 페이지 크기 및 방향과 같은 속성을 설정하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### 스타일 적용

글꼴 또는 같은 일부 서식 개체 ParagraphFormat 지원 스타일. 단일 기본 제공 또는 사용자 정의 스타일은 `Style` 스타일의 이름,기본 스타일,글꼴 및 단락 서식 등과 같은 해당 스타일 속성이 포함된 개체입니다.

또한, **Style** 객체는 `Style.StyleIdentifier` 로캘 독립 스타일 식별자를 반환하는 속성 **Style.StyleIdentifier** 열거형 값입니다. 요점은 내장 스타일의 이름이 Microsoft Word 다른 언어에 맞게 지역화되어 있습니다. 스타일 식별자를 사용하면 문서 언어에 관계없이 올바른 스타일을 찾을 수 있습니다. 열거형 값은 Microsoft Word 일반,제목과 같은 내장 스타일 1 ,제목 2 그 밖의 모든 사용자 정의 스타일은 **StyleIdentifier.User value**. 아래 예는 단락 스타일을 적용하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### 테두리 및 음영

국경은 BorderCollection. 인덱스 또는 테두리 형식에 의해 액세스되는 테두리 개체의 모음입니다. 경계 유형은 `BorderType` 열거 열거형의 일부 값은 여러 개 또는 하나의 문서 요소에만 적용할 수 있습니다. 예를 들어, `BorderType.Bottom` 단락 또는 테이블 셀에 적용 할 수있는 동안 `BorderType.DiagonalDown` 테이블 셀의 대각선 테두리만 지정합니다.

테두리 컬렉션과 각 개별 테두리 모두 색상,선 스타일,선 너비,텍스트로부터의 거리 및 선택적 그림자와 같은 유사한 속성을 갖습니다. 같은 이름의 속성으로 표시됩니다. 속성 값을 결합하여 다른 테두리 유형을 얻을 수 있습니다. 또한,둘 다 **BorderCollection** 그리고 **Border** 개체를 호출하여 이러한 값을 기본값으로 재설정 할 수 있습니다. `Border.ClearFormatting` 방법 테두리 속성을 기본값으로 다시 설정하면 테두리가 보이지 않습니다. 그 `Shading` 클래스에는 문서 요소에 대한 음영 속성이 포함되어 있습니다. 원하는 음영 텍스처와 요소의 배경 및 전경에 적용되는 색상을 설정할 수 있습니다.

음영 텍스처는 `TextureIndex` 다양한 패턴을 적용할 수 있는 열거 값 **Shading** 객체 예를 들어 문서 요소의 배경색을 설정하려면 다음을 사용합니다 `TextureIndex.TextureSolid` 값을 지정하고 전경 음영 색상을 적절하게 설정합니다. 아래 예는 단락에 테두리 및 음영을 적용하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### 그리드에 스냅

Aspose.Words 두 가지 속성을 제공합니다 `ParagraphFormat.SnapToGrid` 그리고 `Font.SnapToGrid` 단락 속성 스냅을 그리드로 가져 와서 설정합니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## 커서 이동

### 현재 커서 위치 감지

언제든지 빌더의 커서가 현재 위치하는 위치를 얻을 수 있습니다. 그 `DocumentBuilder.CurrentNode` 속성은 이 빌더에서 현재 선택된 노드를 반환합니다. 노드는 단락의 직접적인 자식입니다. 사용하여 수행하는 모든 삽입 작업 `DocumentBuilder` 전에 삽입 할 것입니다 `DocumentBuilder.CurrentNode`. 현재 단락이 비어 있거나 단락 끝 바로 앞에 커서가 있는 경우, `DocumentBuilder.CurrentNode` 반환 널.

또한,당신은 사용할 수 있습니다 `DocumentBuilder.CurrentParagraph` 현재 이 항목에서 선택한 단락을 가져오는 속성 **DocumentBuilder**. 아래 예는 문서 빌더의 현재 노드에 액세스하는 방법을 보여줍니다. 여기에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### 모든 노드로 이동(단락 및 자식)

문서 개체 노드(단락 또는 단락의 직접 자식)가 있는 경우 빌더의 커서를 이 노드로 가리킬 수 있습니다. 사용 `DocumentBuilder.MoveTo` 이를 수행하는 방법. 아래 예는 커서 위치를 지정된 노드로 이동하는 방법을 보여줍니다. 여기에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### 문서 시작/종료로 이동

문서의 시작 부분으로 이동해야 하는 경우 `DocumentBuilder.MoveToDocumentStart`. 문서의 끝으로 이동해야 하는 경우 `DocumentBuilder.MoveToDocumentEnd`. 아래 예는 문서의 시작 또는 끝으로 커서 위치를 이동하는 방법을 보여줍니다. 여기에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### 섹션으로 이동

여러 섹션이 포함된 문서로 작업하는 경우 다음을 사용하여 원하는 섹션으로 이동할 수 있습니다 `DocumentBuilder.MoveToSection`. 이 메서드는 커서를 지정된 섹션의 시작 부분으로 이동하고 필요한 섹션의 인덱스를 허용합니다. 섹션 인덱스가 다음보다 크거나 같을 때 0,문서의 시작부터 인덱스를 지정합니다. 0 첫 번째 섹션이 됩니다. 섹션 인덱스가 0,문서의 끝에서-1 이 마지막 섹션인 인덱스를 지정합니다. 아래 예는 커서 위치를 지정된 섹션으로 이동하는 방법을 보여줍니다. 여기에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### 머리글/바닥글로 이동

머리글 또는 바닥글에 일부 데이터를 배치해야 하는 경우 먼저 다음을 사용하여 이동해야 합니다 `DocumentBuilder.MoveToHeaderFooter`. 이 방법은 HeaderFooterType 커서를 이동할 머리글 또는 바닥글 유형을 식별하는 열거형 값입니다. 첫 페이지에 대해 서로 다른 머리글과 바닥글을 만들려면 다음 단계를 설정해야 합니다 `PageSetup.DifferentFirstPageHeaderFooter` 재산 **true**. 짝수 페이지와 홀수 페이지에 대해 서로 다른 머리글과 바닥글을 만들려면 다음을 설정해야 합니다 `PageSetup.OddAndEvenPagesHeaderFooter` 에 **true**.

당신이 주요 이야기로 돌아 가야 할 경우,사용 **DocumentBuilder.MoveToSection** 머리글 또는 바닥글 밖으로 이동합니다. 아래 예제는 다음을 사용하여 문서의 머리글과 바닥 글을 만듭니다 DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### 단락으로 이동

사용 `DocumentBuilder.MoveToParagraph` 현재 섹션에서 원하는 단락으로 커서를 이동합니다. 이 메서드에 두 개의 매개 변수를 전달해야 합니다: paragraphIndex (이동할 단락의 색인)및 characterIndex (단락 내부의 문자 색인).

탐색은 현재 섹션의 현재 스토리 내에서 수행됩니다. 즉,커서를 첫 번째 섹션의 기본 머리글로 이동한 경우 paragraphIndex 해당 섹션의 머리글 안에 있는 단락의 인덱스를 지정합니다.

언제 paragraphIndex 보다 크거나 같음 0,이 섹션의 시작부터 인덱스를 지정합니다. 0 첫 번째 단락이 됩니다. 언제 paragraphIndex 보다 작다 0,마지막 단락인-1 을 가진 섹션의 끝에서 인덱스를 지정합니다.

문자 인덱스는 현재 다음과 같이 지정할 수 있습니다 0 단락의 시작 부분으로 이동하거나-1 을 단락의 끝으로 이동합니다. 아래 예는 커서 위치를 지정된 단락으로 이동하는 방법을 보여줍니다. 여기에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### 테이블 셀로 이동

사용 `DocumentBuilder.MoveToCell` 현재 섹션의 테이블 셀로 커서를 이동해야 하는 경우 이 메서드는 네 개의 매개 변수를 허용합니다:

- tableIndex -이동할 테이블의 인덱스입니다.
- rowIndex -테이블의 행 인덱스입니다.
- columnIndex -테이블의 열 인덱스입니다.
- characterIndex -셀 내부의 문자 인덱스.

탐색은 현재 섹션의 현재 스토리 내에서 수행됩니다. 인덱스 매개 변수의 경우 인덱스가 크거나 같을 때 0,처음부터 인덱스를 지정합니다. 0 첫 번째 요소가 됩니다. 인덱스가 보다 작을 때 0,-1 이 마지막 요소인 끝에서 인덱스를 지정합니다.

또한, characterIndex 현재 만 지정할 수 있습니다 0 셀의 시작 부분으로 이동하거나-1 을 사용하여 셀의 끝으로 이동합니다. 아래 예는 커서 위치를 지정된 테이블 셀로 이동하는 방법을 보여줍니다. 여기에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### 책갈피로 이동

책갈피는 새 요소를 삽입할 문서의 특정 위치를 표시하는 데 자주 사용됩니다. 책갈피로 이동하려면 다음을 사용합니다 `DocumentBuilder.MoveToBookmark`. 이 메서드에는 두 개의 오버로드가 있습니다. 가장 간단한 방법은 커서를 이동할 책갈피의 이름만 허용합니다. 아래 예제는 커서 위치를 책갈피로 이동하는 방법을 보여줍니다. 여기에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

이 오버로드는 지정된 이름으로 책갈피를 시작한 직후의 위치로 커서를 이동합니다. 또 다른 과부하 `DocumentBuilder.MoveToBookmark` 커서를 책갈피로 보다 정밀하게 이동합니다. 두 개의 추가 부울 매개 변수를 허용합니다:

- isStart 커서를 책갈피의 시작 또는 끝으로 이동할지 여부를 결정합니다.
- isAfter 커서를 책갈피 시작 또는 끝 위치 다음으로 이동할지 또는 커서를 책갈피 시작 또는 끝 위치 이전에 이동할지 여부를 결정합니다.

아래 예제는 북마크 종료 직후에 커서 위치를 이동하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

두 방법의 비교는 대/소문자를 구분하지 않습니다.

이 방법으로 새 텍스트를 삽입해도 책갈피의 기존 텍스트가 대체되지 않습니다. 문서의 일부 책갈피는 양식 필드에 할당됩니다. 이러한 책갈피로 이동하고 거기에 텍스트를 삽입하면 텍스트가 양식 필드 코드에 삽입됩니다. 이렇게 하면 양식 필드가 무효화되지는 않지만 삽입된 텍스트는 필드 코드의 일부가 되므로 표시되지 않습니다.

## 측정 단위 간의 변환 방법

에 제공된 대부분의 개체 속성 Aspose.Words API 일부 측정(너비/높이,여백 및 다양한 거리)을 나타내는 값은 포인트(1 인치는 72 포인트와 같음)로 받아들입니다. 때때로 이것은 편리하지 않습니다 그래서 거기에 `ConvertUtil` 다양한 측정 단위 간의 변환을 위한 도우미 함수를 제공하는 클래스입니다. 인치를 포인트로,포인트를 인치로,픽셀을 포인트로,포인트를 픽셀로 변환 할 수 있습니다. 픽셀이 포인트로 변환되고 그 반대의 경우 96 인치 당 점(인치 당 점)해상도 또는 지정된 인치 당 점 해상도에서 수행 할 수 있습니다.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
