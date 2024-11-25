---
title: 스타일 및 테마 작업
second_title: Aspose.WordsJava
articleTitle: 스타일 및 테마 작업
linktitle: 스타일 및 테마 작업
description: "Java를 사용하여 스타일과 테마 작업,Microsoft Word서식 기능을 강화했다."
type: docs
weight: 110
url: /ko/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

[StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)클래스는 기본 제공 관리 및 스타일에 사용자 정의 설정을 적용하는 데 사용됩니다.

## 스타일을 기반으로 콘텐츠를 추출하는 방법

간단한 수준에서,단어 문서에서 스타일을 기반으로 콘텐츠를 검색하는 것은 특정 스타일로 포맷 된 단락과 텍스트의 실행을 식별,목록 및 계산하는 데 유용 할 수 있습니다. 예를 들어 예제,제목,참조,키워드,그림 이름 및 사례 연구와 같이 문서에서 특정 유형의 콘텐츠를 식별해야 할 수 있습니다.

몇 단계 더 나아가기 위해,이것은 또한 사용하는 스타일에 의해 정의된 문서의 구조를 활용하여HTML과 같은 다른 출력을 위해 문서를 재목적으로 사용할 수 있습니다. 이것은 사실 아스포스 문서가 만들어지는 방식입니다.Aspose.Words을 테스트에 넣는 방식입니다. Aspose.Words을 사용하여 만들어진 도구는 소스 워드 문서를 가져와 특정 제목 수준에서 주제로 분할합니다. XML파일은Aspose.Words을 사용하여 생성됩니다.이것은 왼쪽에서 볼 수 있는 탐색 트리를 구축하는 데 사용됩니다. 그리고Aspose.Words각 주제를HTML로 변환합니다. 워드 문서에서 특정 스타일로 포맷 된 텍스트를 검색하는 솔루션은 일반적으로Aspose.Words을 사용하여 경제적이고 간단합니다.

Aspose.Words이 스타일을 기반으로 콘텐츠 검색을 얼마나 쉽게 처리하는지 설명하기 위해 예제를 살펴 보겠습니다. 이 예제에서는 샘플 워드 문서에서 특정 단락 스타일과 문자 스타일로 서식이 지정된 텍스트를 검색 할 것입니다.

높은 수준에서,이것은:

1. [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)클래스를 사용하여 단어 문서 열기.
1. 문서의 모든 단락 및 모든 실행의 컬렉션을 가져옵니다.
1. 필요한 단락 만 선택하고 실행합니다.

특히,이 샘플 워드 문서에서'Heading 1'단락 스타일과'강렬한 강조'문자 스타일로 서식이 지정된 텍스트를 검색합니다.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

이 샘플 문서에서'Heading 1'단락 스타일로 서식이 지정된 텍스트는'삽입 탭','빠른 스타일'및'테마'이며'강렬한 강조'문자 스타일로 서식이 지정된 텍스트는'갤러리'및'전체 모양'과 같은 파란색,기울임 꼴,굵은 텍스트의 여러 인스턴스입니다.

스타일 기반 쿼리의 구현은Aspose.Words문서 개체 모델에서 매우 간단합니다. 이 솔루션에 대해 두 가지 클래스 메서드가 구현됩니다:

1. **ParagraphsByStyleName**-이 메서드는 문서에서 특정 스타일 이름이 있는 단락의 배열을 검색합니다.
1. **RunsByStyleName**-이 메서드는 문서에서 특정 스타일 이름이 있는 실행 배열을 검색합니다.

이 두 가지 방법은 매우 유사하며,유일한 차이점은 노드 유형과 단락 및 실행 노드 내의 스타일 정보의 표현입니다. 다음은 지정된 스타일로 서식이 지정된 모든 단락을 찾기 위해 아래의 코드 예제에 표시된ParagraphsByStyleName의 구현입니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

이 구현은 또한 모든 직계 자식 노드의 컬렉션을 반환하는`Document`클래스의[Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)메서드를 사용합니다.

또한 단락 모음에서 항목에 액세스할 때만 단락이 이 컬렉션에 로드되기 때문에 단락 모음에서 즉각적인 오버헤드가 발생하지 않는다는 점을 지적할 가치가 있습니다.그런 다음 각 연산자의 표준을 사용하여 컬렉션을 살펴보고 지정된 스타일을 가진 단락을paragraphsWithStyle배열에 추가하기만 하면 됩니다. `Paragraph`스타일 이름은[Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat)개체의[Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName)속성에서 찾을 수 있습니다.

RunsByStyleName의 구현은`NodeType.Run`을 사용하여 실행 노드를 검색하는 것이 분명하지만 거의 동일합니다. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/)개체의[Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle)속성은**Run**노드의 스타일 정보에 액세스하는 데 사용됩니다.

다음 코드 예제에서는 지정된 스타일로 서식이 지정된 모든 실행을 찾습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

두 쿼리가 모두 구현되면 문서 개체를 전달하고 검색할 콘텐츠의 스타일 이름을 지정하기만 하면 됩니다:

{{% /alert %}}

다음 코드 예제에서는 쿼리를 실행하고 결과를 표시합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

모든 작업이 완료되면 샘플을 실행하면 다음 출력이 표시됩니다:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

당신이 볼 수 있듯이,이 샘플 워드 문서에서 수집 된 단락 및 실행의 번호와 텍스트를 보여주는 매우 간단한 예입니다.

## 다른 단락 스타일을 넣으려면 스타일 구분 기호 삽입

스타일 구분 기호는MS단어로 바로 가기 키를 입력하여 단락 끝에 추가할 수 있습니다. 이 기능은 하나의 논리 인쇄 단락에 사용되는 두 개의 서로 다른 단락 스타일을 할 수 있습니다. 특정 머리글의 시작 부분에서 일부 텍스트를 목차에 표시하지만 목차의 전체 머리글을 원하지 않는 경우 이 기능을 사용할 수 있습니다.

다음 코드 예제에서는 스타일 구분 기호를 삽입하여 다른 단락 스타일을 넣는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## 템플릿에서 모든 스타일 복사

한 문서에서 다른 문서로 모든 스타일을 복사하려는 경우가 있습니다. `Document.CopyStylesFromTemplate`메서드를 사용하여 지정된 템플릿의 스타일을 문서로 복사할 수 있습니다. 템플릿에서 문서로 스타일을 복사하면 템플릿의 스타일 설명과 일치하도록 문서의 이름이 같은 스타일이 다시 정의됩니다. 템플릿의 고유한 스타일이 문서에 복사됩니다. 문서의 고유 스타일은 그대로 유지됩니다.

다음 코드 예제에서는 한 문서에서 다른 문서로 스타일을 복사하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## 테마 속성을 조작하는 방법

문서 테마 속성에 액세스하기 위해Aspose.Words에 기본API을 추가했습니다. 현재 이API에는 다음과 같은 공용 개체가 포함됩니다:

- 테마
- ThemeFonts
- ThemeColors

테마 속성을 얻는 방법은 다음과 같습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

그리고 여기 당신이 테마 속성을 설정할 수있는 방법입니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
