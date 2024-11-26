---
title: DocumentBuilder을 사용하여 문서 수정
second_title: Aspose.WordsJava
articleTitle: DocumentBuilder을 사용하여 문서 수정
linktitle: DocumentBuilder을 사용하여 문서 수정
type: docs
description: "문서 작성기를 사용하여Java에서 문서를 쉽게 수정할 수 있습니다."
weight: 20
url: /ko/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## 서식 지정

### 글꼴 서식

현재 글꼴 서식은`DocumentBuilder.Font`속성에 의해 반환되는`Font`개체로 표시됩니다. `Font`클래스에는Microsoft Word에서 가능한 다양한 글꼴 속성이 포함되어 있습니다.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
다음 코드 예제에서는 글꼴 서식을 설정하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### 셀 서식 지정

셀 서식은 테이블을 작성하는 동안 사용됩니다. `DocumentBuilder.CellFormat`속성에 의해 반환된`CellFormat`개체로 표시됩니다. CellFormat너비 또는 수직 정렬과 같은 다양한 테이블 셀 속성을 캡슐화합니다.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
다음 코드 예제에서는 서식이 지정된 단일 셀을 포함하는 테이블을 만드는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### 행 서식 지정

현재 행 서식은`DocumentBuilder.RowFormat`속성에 의해 반환되는`RowFormat`개체에 의해 결정됩니다. 개체는 모든 테이블 행 서식에 대한 정보를 캡슐화합니다.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
Low code예제에서는 단일 셀이 포함된 테이블을 만들고 행 서식을 적용하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### 목록 서식 지정

Aspose.Words목록 서식을 적용하여 목록을 쉽게 만들 수 있습니다. DocumentBuilder는`ListFormat`개체를 반환하는`DocumentBuilder.ListFormat`속성을 제공합니다. 이 개체에는 목록을 시작 및 종료하고 들여 쓰기를 늘리거나 줄이는 여러 가지 방법이 있습니다.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Microsoft Word에는 두 가지 일반적인 유형의 목록이 있습니다.글머리 기호와 번호가 있습니다.

- 글머리 기호 목록을 시작하려면[ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)을 호출합니다.
- 번호 매기기 목록을 시작하려면[ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)을 호출합니다.

글머리 기호 또는 숫자 및 서식은 글머리 기호 목록 서식을 중지하기 위해[ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)이 호출될 때까지 현재 단락 및**DocumentBuilder**을 사용하여 생성된 모든 추가 단락에 추가됩니다.

워드 문서에서 목록은 최대 9 개의 레벨로 구성될 수 있습니다. 각 레벨에 대한 목록 서식은 사용되는 글 머리 기호 또는 숫자,왼쪽 들여 쓰기,글 머리 기호와 텍스트 사이의 공간 등을 지정합니다.

- 현재 단락의 목록 수준을 한 수준 높이려면[ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)을 호출합니다.
- 현재 단락의 목록 수준을 한 수준 줄이려면[ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)을 호출합니다.

이 메서드는 목록 수준을 변경하고 새 수준의 서식 속성을 적용합니다.

{{% alert color="primary" %}}

[ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int)속성을 사용하여 단락의 목록 수준을 가져오거나 설정할 수도 있습니다. 목록 레벨은 0 에서 8 까지 번호가 붙어 있습니다.

{{% /alert %}}

다음 코드 예제에서는 다단계 목록을 작성하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### 페이지 설정 및 섹션 서식 지정

페이지 설정 및 섹션 속성은`DocumentBuilder.PageSetup`속성에 의해 반환되는`PageSetup`개체에 캡슐화됩니다. 개체에는 섹션의 모든 페이지 설정 속성(왼쪽 여백,아래쪽 여백,용지 크기 등)이 속성으로 포함됩니다.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
다음 코드 예제에서는 현재 섹션의 페이지 크기 및 방향과 같은 속성을 설정하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### 스타일 적용

글꼴 또는ParagraphFormat과 같은 일부 서식 지정 개체는 스타일을 지원합니다. 단일 기본 제공 또는 사용자 정의 스타일은 스타일의 이름,기본 스타일,글꼴 및 단락 서식 등과 같은 해당 스타일 속성을 포함하는`Style`개체로 표시됩니다.

또한**Style**개체는**Style.StyleIdentifier**열거형 값으로 표시되는 로캘 독립 스타일 식별자를 반환하는[Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)속성을 제공합니다. 요점은Microsoft Word의 기본 제공 스타일 이름이 다른 언어로 지역화된다는 것입니다. 스타일 식별자를 사용하면 문서 언어에 관계없이 올바른 스타일을 찾을 수 있습니다. 열거형 값은 일반,Heading 1,Heading 2등과 같은Microsoft Word기본 제공 스타일에 해당합니다. 모든 사용자 정의 스타일에는**StyleIdentifier.User value**이 할당됩니다.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
다음 코드 예제에서는 단락 스타일을 적용하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### 테두리 및 음영

경계선은BorderCollection로 표시됩니다. 인덱스 또는 테두리 형식에 의해 액세스되는 테두리 개체의 모음입니다. 테두리 유형은`BorderType`열거형으로 표시됩니다. 열거형의 일부 값은 여러 개 또는 하나의 문서 요소에만 적용할 수 있습니다. 예를 들어`BorderType.Bottom`은 단락 또는 테이블 셀에 적용 가능한 반면`BorderType.DiagonalDown`은 테이블 셀의 대각선 테두리만 지정합니다.

테두리 컬렉션과 각 개별 테두리 모두 색상,선 스타일,선 너비,텍스트로부터의 거리 및 선택적 그림자와 같은 유사한 속성을 갖습니다. 같은 이름의 속성으로 표시됩니다. 속성 값을 결합하여 다른 테두리 유형을 얻을 수 있습니다. 또한**BorderCollection**및**Border**개체를 모두 사용하면[Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting)메서드를 호출하여 이러한 값을 기본값으로 재설정 할 수 있습니다. 테두리 속성을 기본값으로 다시 설정하면 테두리가 보이지 않습니다.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
[Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/)클래스에는 문서 요소에 대한 음영 특성이 포함되어 있습니다. 원하는 음영 텍스처와 요소의 배경 및 전경에 적용되는 색상을 설정할 수 있습니다.

음영 텍스처는 [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) **Shading**개체에 다양한 패턴을 적용할 수 있는 열거형 값입니다. 예를 들어 문서 요소의 배경색을 설정하려면 다음을 사용합니다 [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 값을 지정하고 전경 음영 색상을 적절하게 설정합니다.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
아래 예제에서는 단락에 테두리 및 음영을 적용하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### 그리드에 스냅

Aspose.Words는 단락 속성 스냅을 그리드로 가져 와서 설정하는 두 가지 속성`ParagraphFormat.SnapToGrid`및`Font.SnapToGrid`을 제공합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### 커서 이동

### 현재 커서 위치 감지

언제든지 빌더의 커서가 현재 위치하는 위치를 얻을 수 있습니다. [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode)속성은 이 빌더에서 현재 선택된 노드를 반환합니다. 노드는 단락의 직접적인 자식입니다. `DocumentBuilder`를 사용하여 수행하는 모든 삽입 작업은`DocumentBuilder.CurrentNode`앞에 삽입됩니다. 현재 단락이 비어 있거나 단락 끝 바로 앞에 커서가 위치하면`DocumentBuilder.CurrentNode`이 널을 반환합니다.

또한 이**DocumentBuilder**에서 현재 선택된 단락을 가져오는[DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph)속성을 사용할 수 있습니다. low code예제에서는 문서 작성기의 현재 노드에 액세스하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### 모든 노드로 이동(단락 및 자식)

문서 개체 노드(단락 또는 단락의 직접 자식)가 있는 경우 빌더의 커서를 이 노드로 가리킬 수 있습니다. [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node)메서드를 사용하여 이 작업을 수행합니다.
다음 코드 예제에서는 커서 위치를 지정된 노드로 이동하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### 문서 시작/종료로 이동

문서의 시작 부분으로 이동해야 하는 경우[DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)을 호출합니다. 문서의 끝으로 이동해야 하는 경우[DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)을 호출합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### 섹션으로 이동

여러 섹션이 포함된 문서를 사용하는 경우[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)를 사용하여 원하는 섹션으로 이동할 수 있습니다. 이 메서드는 커서를 지정된 섹션의 시작 부분으로 이동하고 필요한 섹션의 인덱스를 허용합니다. 섹션 인덱스가 0 보다 크거나 같으면 문서의 처음부터 인덱스를 지정하며 첫 번째 섹션은 0 입니다. 섹션 인덱스가 0 보다 작으면 문서의 끝에서-1 이 마지막 섹션인 인덱스를 지정합니다. low code예제에서는 커서 위치를 지정된 섹션으로 이동하는 방법을 보여 줍니다. 이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [여기](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### 머리글/바닥글로 이동

일부 데이터를 머리글이나 바닥글에 넣어야 할 때는 먼저[DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)을 사용하여 이동해야 합니다.메서드는 커서를 이동해야 하는 머리글 또는 바닥글 유형을 식별하는HeaderFooterType열거형 값을 허용합니다.

첫 페이지에 대해 서로 다른 머리글과 바닥글을 만들려면[PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter)속성을**true**로 설정해야 합니다. 짝수 페이지와 홀수 페이지에 대해 서로 다른 머리글과 바닥글을 만들려면[PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter)을**true**로 설정해야 합니다.

메인 스토리로 돌아가야 하는 경우[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)을 사용하여 머리글이나 바닥글에서 벗어납니다. 아래 예제는DocumentBuilder를 사용하여 문서에 머리글과 바닥 글을 만듭니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### 단락으로 이동

[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int)을 사용하여 현재 섹션의 원하는 단락으로 커서를 이동합니다. 이 메서드에는paragraphIndex(이동할 단락의 인덱스)와characterIndex(단락 내의 문자 인덱스)의 두 가지 매개 변수를 전달해야 합니다.

탐색은 현재 섹션의 현재 스토리 내에서 수행됩니다. 즉,커서를 첫 번째 섹션의 기본 머리글로 이동한 경우paragraphIndex은 해당 섹션의 머리글 안에 있는 단락의 인덱스를 지정합니다.

ParagraphIndex이 0 보다 크거나 같으면 0 이 첫 번째 단락인 섹션의 시작부터 인덱스를 지정합니다. paragraphIndex이 0 보다 작으면-1 이 마지막 단락인 섹션의 끝에서 인덱스를 지정합니다. 문자 인덱스는 현재 단락의 시작 부분으로 이동하려면 0 으로,단락의 끝으로 이동하려면-1 으로만 지정할 수 있습니다. 다음 코드 예제에서는 커서 위치를 지정된 단락으로 이동하는 방법을 보여 줍니다. 이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [여기](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### 테이블 셀로 이동

현재 섹션의 테이블 셀로 커서를 이동해야 하는 경우[DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int)을 사용합니다. 이 메서드는 네 개의 매개 변수를 허용합니다:

- tableIndex-이동할 테이블의 인덱스입니다.
- rowIndex-테이블의 행 인덱스입니다.
- columnIndex-테이블의 열 인덱스입니다.
- characterIndex-셀 내부의 문자 인덱스입니다.

탐색은 현재 섹션의 현재 스토리 내에서 수행됩니다.

인덱스 매개 변수의 경우 인덱스가 0 보다 크거나 같으면 0 이 첫 번째 요소인 인덱스를 처음부터 지정합니다. 인덱스가 0 보다 작으면-1 이 마지막 요소인 끝에서 인덱스를 지정합니다.

또한characterIndex는 현재 셀의 시작 부분으로 이동하려면 0 만 지정하거나 셀의 끝으로 이동하려면-1 만 지정할 수 있습니다. 다음 코드 예제에서는 커서 위치를 지정된 테이블 셀로 이동하는 방법을 보여 줍니다. 이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [여기](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### 책갈피로 이동

책갈피는 새 요소를 삽입할 문서의 특정 위치를 표시하는 데 자주 사용됩니다. 책갈피로 이동하려면[DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)을 사용합니다. 이 메서드에는 두 개의 오버로드가 있습니다. 가장 간단한 방법은 커서를 이동할 책갈피의 이름만 허용합니다. 다음 코드 예제에서는 커서 위치를 책갈피로 이동하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

이 오버로드는 지정된 이름으로 책갈피를 시작한 직후의 위치로 커서를 이동합니다. 또 다른 오버로드[DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean)은 커서를 더 정밀하게 책갈피로 이동합니다. 두 개의 추가 부울 매개 변수를 허용합니다:

- isStart커서를 책갈피의 시작 또는 끝으로 이동할지 여부를 결정합니다.
- isAfter커서를 책갈피 시작 또는 끝 위치 다음으로 이동할지,또는 커서를 책갈피 시작 또는 끝 위치 이전에 이동할지 여부를 결정합니다.

다음 코드 예제에서는 커서 위치를 책갈피 종료 직후로 이동하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

이 방법으로 새 텍스트를 삽입해도 책갈피의 기존 텍스트가 대체되지 않습니다. 문서의 일부 책갈피는 양식 필드에 할당됩니다. 이러한 책갈피로 이동하고 거기에 텍스트를 삽입하면 텍스트가 양식 필드 코드에 삽입됩니다. 이렇게 하면 양식 필드가 무효화되지는 않지만 삽입된 텍스트는 필드 코드의 일부가 되므로 표시되지 않습니다.

### `Merge`필드로 이동

때때로`DocumentBuilder`를 사용하여"수동"Mail Merge을 수행하거나Mail Merge이벤트 핸들러 내에서 특별한 방법으로 병합 필드를 채워야 할 수도 있습니다. 그 때[DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String)이 유용 할 수 있습니다. 메서드는 병합 필드의 이름을 허용합니다. 커서를 지정된 병합 필드 바로 너머의 위치로 이동하고 병합 필드를 제거합니다. 다음 코드 예제에서는 지정된 병합 필드 바로 너머의 위치로 커서를 이동하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## 측정 단위 간의 변환 방법

일부 측정(너비/높이,여백 및 다양한 거리)을 나타내는Aspose.WordsAPI에 제공된 대부분의 객체 속성은 점(1 인치는 72 점과 같음)의 값을 받아들입니다. 때때로 이것은 편리하지 않기 때문에 다양한 측정 단위들 사이에서 변환하는 도우미 함수를 제공하는`ConvertUtil`클래스가 있습니다. 인치를 포인트로,포인트를 인치로,픽셀을 포인트로,포인트를 픽셀로 변환 할 수 있습니다. 픽셀이 포인트로 변환되고 그 반대의 경우 96 인치 당 점(인치 당 점)해상도 또는 지정된 인치 당 점 해상도에서 수행 할 수 있습니다.

**ConvertUtil**

다음 코드 예제에서는 페이지 속성을 인치 단위로 지정하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
