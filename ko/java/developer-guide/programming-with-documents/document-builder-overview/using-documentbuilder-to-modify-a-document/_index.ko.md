---
title: 사용 방법 `DocumentBuilder` 문서 수정
second_title: Aspose.Words 제품정보 Java
articleTitle: 사용 방법 `DocumentBuilder` 문서 수정
linktitle: 사용 방법 `DocumentBuilder` 문서 수정
type: docs
description: "문서 작성기를 사용하여 문서를 쉽게 수정하십시오. Java·"
weight: 20
url: /ko/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## 형식 지정

### 본문 바로가기

현재 글꼴 형식은 표현된다 `Font` 반환된 객체 `DocumentBuilder.Font` 호텔 위치 더 보기 `Font` 클래스는 다양한 글꼴 속성을 포함 Microsoft Word·

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
다음 코드 예제는 글꼴 형식을 설정하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### 세포 Formatting

셀 포맷은 테이블의 건물에 사용됩니다. 그것은 대표됩니다 `CellFormat` 반환된 객체 `DocumentBuilder.CellFormat` 호텔 위치 CellFormat는 폭 또는 수직 정렬과 같은 다양한 테이블 셀 특성을 캡슐화합니다.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
다음 코드 예제는 단일 포맷 셀을 포함하는 테이블을 만드는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### 행 Formatting

현재 행 형식이 결정됩니다. `RowFormat` 반환된 객체 `DocumentBuilder.RowFormat` 호텔 위치 객체는 모든 테이블 행 형식에 대한 정보를 캡슐화합니다.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
는low code 예를 들어 단일 셀을 포함하는 테이블을 만드는 방법을 보여 줄 형식을 적용합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### 파일 형식

Aspose.Words 목록 형식을 적용하여 목록을 쉽게 작성할 수 있습니다. DocumentBuilder는 `DocumentBuilder.ListFormat` 반환된 속성 `ListFormat` 이름 * 이 객체는 목록을 시작하고 indent를 늘리기 위해 여러 가지 방법이 있습니다.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
두 가지 일반적인 유형의 목록이 있습니다. Microsoft Word: 총알 및 번호.

- 게시판 목록 시작, 전화 [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) ·
- 번호 목록 시작, 통화 [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) ·

총알이나 번호 및 형식은 현재 단락에 추가되며, 모든 단락은 사용 **DocumentBuilder** 까지 [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) 본문내용 바로가기 주메뉴 바로가기

Word 문서에서 목록은 최대 9 레벨로 구성됩니다. 각 레벨의 형식을 지정하면 총알이나 숫자가 사용되는 것을 지정합니다. 탄알과 텍스트 등의 공백을 왼쪽으로 입력합니다.

- - - 현재 단락의 목록 수준을 1 수준으로 늘리려면 전화 [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)·
- - - 현재 단락의 목록 수준을 1 수준으로 줄이려면 전화 [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)·

메서드는 목록 레벨을 변경하고 새 레벨의 형식 속성을 적용합니다.

{{% alert color="primary" %}}

또한 사용할 수 있습니다 [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) 해당 이용 후기에 달린 코멘트가 없습니다. 목록 수준은 0에서 8. 숫자입니다.

{{% /alert %}}

다음 코드 예제는 멀티 레벨 목록을 만드는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### 페이지 설정 및 섹션 Formatting

페이지 설정 및 섹션 속성은 캡슐화됩니다 `PageSetup` 반환된 객체 `DocumentBuilder.PageSetup` 호텔 위치 객체는 모든 페이지 설정 속성을 포함 (왼쪽 마진, 하단 마진, 종이 크기, 등) 속성으로.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
다음 코드 예제는 페이지 크기와 현재 섹션의 방향과 같은 속성을 설정하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### 스타일 적용

글꼴 또는 ParagraphFormat 지원 스타일과 같은 일부 서식물. 단일 내장 또는 사용자 정의 스타일은 `Style` 스타일의 이름, 기본 스타일, 글꼴 및 단락 형식과 같은 해당 스타일 속성을 포함하는 객체, 등.

또한, **Style** 객체는 [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) locale-independent 스타일 식별자를 반환하는 속성 **Style.StyleIdentifier** 공급 능력 점은 내장 스타일의 이름은 Microsoft Word 다른 언어로 현지화됩니다. 스타일 식별자를 사용하여 문서 언어에 관계없이 올바른 스타일을 찾을 수 있습니다. 열렬한 가치는 Microsoft Word 정상과 같은 붙박이 작풍은, 1, 2 등을 머리말을 붙입니다. 모든 사용자 정의 스타일은 할당됩니다 **StyleIdentifier. 사용자 값**·

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
다음 코드 예제는 단락 스타일을 적용하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### 국경과 Shading

국경은 BorderCollection에 의해 대표됩니다. 인덱스 또는 국경 유형에 의해 접근되는 국경 개체의 컬렉션입니다. Border 타입은 `BorderType` 관련 기사 열렬한 몇몇 가치는 몇몇 또는 단지 1개의 문서 성분에 적용 가능합니다. 예를 들어, `BorderType.Bottom` 단락 또는 테이블 셀에 적용 가능 `BorderType.DiagonalDown` 테이블 셀의 대각선 경계를 지정합니다.

국경 수집과 각 분리된 국경은 색깔, 선 작풍, 선 폭, 원본에서 거리 및 선택적인 그림자 같이 유사한 재산이 있습니다. 그들은 같은 이름의 속성에 의해 표현된다. 속성 값을 결합하여 다른 경계 유형을 달성 할 수 있습니다. 또한, 모두 **BorderCollection** · **Border** 객체를 사용하면 이 값을 기본값으로 재설정 할 수 있습니다. [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) 방법. 국경 속성이 기본 값으로 재설정 될 때, 국경은 보이지 않습니다.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
더 보기 [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) class는 문서 요소에 대한 셰이딩 속성을 포함합니다. 원하는 쉐이딩 질감과 요소의 배경과 전경에 적용되는 색상을 설정할 수 있습니다.

셰이딩 질감은 설정 [텍스트 인덱스](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 다양한 패턴의 응용을 할 수있는 열렬한 가치 **Shading** 이름 * 예를 들어, 문서 요소에 대한 배경 색상을 설정하려면, 사용 [TextureIndex.Texture소드](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 가치와 적합으로 전경 셰이딩 색상을 설정합니다.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
아래 예제는 경계를 적용하고 단락을 형성하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### 그리드에 스냅

Aspose.Words 두 개의 속성 `ParagraphFormat.SnapToGrid` · `Font.SnapToGrid` 단락 속성은 그리드에 스냅됩니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### 커서 이동

### 현재 Cursor Position 감지

Builder's cursor가 현재 위치 할 수 있습니다. 더 보기 [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) 속성은 현재 이 빌더에서 선택한 노드를 반환합니다. 노드는 단락의 직접 아이입니다. 어떤 삽입 작업을 수행 `DocumentBuilder` 앞에 삽입할 것입니다 `DocumentBuilder.CurrentNode`· 현재 단락이 비어 있거나 커서가 단락의 끝 앞에 위치 할 때, `DocumentBuilder.CurrentNode` 반환 null.

또한, 당신은 사용할 수 있습니다 [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) 재산, 현재이에서 선택된 단락을 얻는 **DocumentBuilder**· 는low code 예제는 문서 빌더의 현재 노드에 액세스하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### 모든 노드로 이동 (Paragraphs and their children)

문서 객체 노드가 있는 경우, 단락 또는 단락의 직접 아이인 경우, 이 노드에 builder의 커서를 가리킬 수 있습니다. 사용 방법 [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) 이것을 수행하는 방법.
다음 코드 예제는 지정된 노드에 커서 위치를 이동하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### 문서 시작/끝으로 이동

문서의 시작으로 이동해야하는 경우, 호출 [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)· 문서의 끝으로 이동해야하는 경우, 전화 [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)·

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### 본문 바로가기

여러 개의 섹션을 포함하는 문서와 함께 작업하면 원하는 섹션으로 이동할 수 있습니다. [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)· 이 방법은 지정된 섹션의 시작 부분에 커서를 이동하고 필요한 섹션의 인덱스를 받아들입니다. 섹션 인덱스가 0보다 크거나 같을 때, 첫 번째 섹션이 0으로 문서의 시작에서 인덱스를 지정합니다. 섹션 인덱스가 0 미만일 때, 마지막 섹션에서 -1 문서의 끝에서 인덱스를 지정합니다. 는low code 예를 들어 지정된 부분에 커서 위치를 이동하는 방법을 보여줍니다. 이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [이름 *](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Header/Footer로 이동

헤더나 발터에 데이터를 배치해야 할 때, 먼저 사용해야 합니다. [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)· 메서드는 HeaderFooterType enumeration 값을 받아 커서를 이동해야 하는 헤더 또는 footer의 유형을 식별합니다.

첫 페이지에 다른 헤더와 발기를 만들려면, 당신은 설정해야 [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) 뚱 베어 **true**· 당신은 심지어 이상한 페이지를 위해 다른 헤더와 발기를 만들려면, 당신은 설정해야합니다 [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) 이름 * **true**·

메인 스토리로 돌아가려면 사용[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) 헤더나 발터의 이동. 아래 예제는 DocumentBuilder를 사용하여 문서의 헤더와 발자기를 만듭니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### 퍼프로 이동

제품 정보[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) 현재 섹션에서 원하는 단락으로 커서를 이동합니다. 이 메소드에 두 가지 매개 변수를 전달해야 합니다: 단락Index (단말의 인덱스) 및 CharacterIndex (단말의 문자의 인덱스).

내비게이션은 현재 섹션의 현재 이야기 안에 수행됩니다. 즉, 첫 번째 섹션의 기본 헤더에 커서를 이동하면, 그 섹션의 헤더 내부 단락의 인덱스를 지정합니다.

단락Index가 0보다 크거나 같을 때, 첫 번째 단락 인 0과 섹션의 시작에서 인덱스를 지정합니다. 단락Index가 0 미만일 때, 마지막 단락이 -1의 끝에서 인덱스를 지정합니다. 문자 인덱스는 현재 단락 또는 -1의 시작으로 이동하기 위해 0으로만 지정될 수 있습니다. 다음 코드 예제는 지정된 단락에 커서 위치를 이동하는 방법을 보여줍니다. 이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [이름 *](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### 테이블 셀로 이동

제품 정보 [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) 현재 섹션의 테이블 셀에 커서를 이동합니다. 이 방법은 4개의 모수를 받아들입니다:

- tableIndex - 테이블의 인덱스로 이동합니다.
- rowIndex - 테이블의 행의 인덱스.
- columnIndex - 테이블에 열의 색인.
- characterIndex - 셀 내부 문자의 인덱스.

내비게이션은 현재 섹션의 현재 이야기 안에 수행됩니다.

인덱스 매개 변수의 경우, 인덱스가 0보다 크거나 같을 때, 첫 번째 요소가 0으로 시작하는 인덱스를 지정합니다. 인덱스가 0 미만일 때, 마지막 요소가 -1로 끝나는 인덱스를 지정합니다.

또한, CharacterIndex는 현재 셀의 시작 부분에 이동하기 위해 0을 지정할 수 있고 -1은 세포의 끝으로 이동합니다. 다음 코드 예제는 지정된 테이블 셀에 커서 위치를 이동하는 방법을 보여줍니다. 이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [이름 *](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)·

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### 즐겨찾기로 이동

책갈피는 새 요소가 삽입 될 문서의 특정 장소를 표시하는 데 자주 사용됩니다. 책갈피로 이동하기 [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)· 이 방법은 두 개의 과부하가 있습니다. 가장 간단한 것은 아무것도 허용하지만 커서가 움직이는 책갈피의 이름은. 다음 코드 예제는 책갈피에 커서 위치를 이동하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

이 하중 초과는 지정된 이름과 책갈피의 시작 후에 위치에 커서를 이동합니다. 다른 과부하 [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) 더 큰 정밀도로 책갈피로 커서를 이동합니다. 그것은 두 개의 추가 불린 매개 변수를 받아들입니다:

- isStart는 시작 또는 책갈피의 끝에 커서를 이동 여부를 결정합니다.
- isAfter는 책갈피 시작 또는 끝 위치 후에, 또는 책갈피 시작 또는 끝 위치의 앞에 cursor를 이동하는 것을 결정합니다.

다음 코드 예제는 책갈피 끝 후에 커서 위치를 이동하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

이 방법으로 새로운 텍스트를 삽입하는 것은 책갈피의 기존 텍스트를 대체하지 않습니다. 문서의 일부 책갈피는 양식 필드에 할당됩니다. 그런 책갈피로 이동하고 텍스트를 삽입하고 텍스트를 양식 필드 코드로 삽입합니다. 이 양식 필드를 유효하지 않지만 삽입 된 텍스트는 필드 코드의 일부이기 때문에 볼 수 없습니다.

### 오시는 길 `Merge` 제품정보

때로는 "manual"을 수행해야합니다. Mail Merge 이름 * `DocumentBuilder` 또는 특별한 방법으로 병합 필드를 채우십시오. Mail Merge 이벤트 핸들러. 그것은 때 [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) 유용할 수 있었습니다. 방법은 병합 필드의 이름을 받아들입니다. 지정된 병합 필드를 넘어 위치로 커서를 이동하고 병합 필드를 제거합니다. 다음 코드 예제는 지정된 병합 필드를 넘어 위치에 커서를 이동하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## 측정 단위 사이 변환하는 방법

대부분의 개체 속성에서 제공 Aspose.Words API 측정 (폭/높이, 마진 및 다양한 거리)를 나타내는 것은 포인트 (1 인치 동일 72 포인트)의 값을 받아들입니다. 때로는 편리하지 않다 그래서 거기 `ConvertUtil` 다양한 측정 단위로 변환하는 돕기 기능을 제공하는 클래스. 그것은 인치를 포인트로 변환 할 수 있습니다, 인치 포인트, 픽셀 포인트, 및 픽셀 포인트. 픽셀이 포인트 및 부버로 변환되면 96 dpi (인치당 점) 해상도 또는 지정된 dpi 해상도에서 수행 할 수 있습니다.

**ConvertUtil** 다른 페이지 속성을 설정할 때 매우 유용합니다. 예를 들어 인치는 점보다 더 일반적인 측정 단위입니다. 다음 예제는 인치의 페이지 속성을 설정하는 방법을 보여줍니다.

다음 코드 예제는 인치의 페이지 속성을 지정하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
