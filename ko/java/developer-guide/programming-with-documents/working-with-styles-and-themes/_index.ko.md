---
title: 스타일과 테마로 작업
second_title: Aspose.Words 제품정보 Java
articleTitle: 스타일과 테마로 작업
linktitle: 스타일과 테마로 작업
description: "더 알아보기 Microsoft Word 형식 기능, 스타일과 테마 사용 Java·"
type: docs
weight: 110
url: /ko/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

더 보기 [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) 클래스는 내장을 관리하고 사용자 정의 설정을 스타일로 적용합니다.

## 스타일에 따라 내용 추출 방법

간단한 수준에서 Word 문서의 스타일에 따라 콘텐츠를 검색하고 목록 및 계산 단락을 식별하고 특정 스타일로 포맷 된 텍스트의 실행에 유용합니다. 예를 들어, 예를 들어, 제목, 참고, 키워드, 그림 이름 및 사례 연구와 같은 문서의 특정 종류의 콘텐츠를 식별 할 필요가 있습니다.

이 몇 단계 더 걸릴 수 있습니다, 또한 HTML과 같은 다른 출력에 대한 문서를 재구성하기 위해 스타일에 의해 정의 된 문서의 구조를 활용하기 위해 사용될 수있다. 이것은 Aspose 문서가 내장 된 사실입니다. Aspose.Words 시험에. 사용 가능한 도구 Aspose.Words 소스 Word 문서를 가져 와서 특정 헤드 레벨에서 주제로 나누십시오. XML 파일이 생성됩니다. Aspose.Words 네비게이션 트리를 구축하는 데 사용됩니다. 그리고 그때 Aspose.Words 각 주제를 HTML로 변환합니다. Word 문서의 특정 스타일로 포맷 된 검색 텍스트에 대한 솔루션은 일반적으로 경제적이며 straightforward 사용 Aspose.Words·

쉽게 설명 Aspose.Words 스타일에 따라 컨텐츠를 검색, 예를 살펴 보자. 이 예제에서는 특정 단락 스타일과 샘플 단어 문서의 문자 스타일로 포맷 된 텍스트를 검색 할 것입니다.

높은 수준에서, 이것은 다음과 같다:

1. 명세 Word 문서 열기 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 수업.
1. 명세 모든 단락의 수집 및 문서에서 모든 실행.
1. 명세 필요한 단락만 선택하고 실행합니다.

특히, ‘Heading 1’ 단락 스타일과 ‘Intense Emphasis’ 문자 스타일이 샘플 워드 문서에서 형식화 될 것입니다

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

이 샘플 문서에서는 ‘Heading 1’ 단락 스타일이 ‘Insert Tab’, ‘Quick Styles’, ‘Theme’, 그리고 ‘Intense 강조’ 문자 스타일로 포맷된 텍스트는 ‘galleries’, ‘overall look’와 같은 여러 가지 인스턴스입니다.

스타일 기반 쿼리의 구현은 매우 간단합니다. Aspose.Words 문서 객체 모델, 그것은 단순히 장소에 이미 도구를 사용. 이 솔루션에 대한 두 가지 클래스 방법:

1. 명세 **ParagraphsByStyleName** - - - 이 방법은 특정 스타일 이름이있는 문서의 그 단락의 배열을 검색합니다.
1. 명세 **RunsByStyleName** - - - 이 방법은 특정 스타일 이름을 가진 문서에서 실행되는 배열을 검색합니다.

이 방법은 매우 유사합니다. 노드 유형과 단락 내에서 스타일 정보의 표현과 노드를 실행합니다. 다음은 지정된 스타일로 포맷 된 모든 단락을 찾기 위해 아래의 코드 예제에서 보여 ParagraphsByStyleName의 구현입니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

이 구현도 사용 [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) 방법의 `Document` 모든 즉각적인 아이 노드의 수집을 반환하는 클래스.

또한 단락 수집이 단락에 액세스 할 때이 컬렉션에로드되어 있기 때문에 즉각적인 오버 헤드를 만들지 않습니다. 그런 다음, 당신이해야 할 모든 것은 수집을 통해 이동, 표준 포복 연산자를 사용하여 및 단락에 지정된 스타일을 추가 WithStyle 배열. 더 보기 `Paragraph` 스타일 이름에서 찾을 수 있습니다 [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) 호텔 위치 [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) 이름 *

RunsByStyleName의 구현은 거의 동일하지만, 우리가 분명히 사용하지만 `NodeType.Run` 노드를 검색합니다. 더 보기 [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) 의 모든 호텔 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) object는 스타일 정보에 접근하는 데 사용됩니다. **Run** 노드

다음 코드 예제는 지정된 스타일로 포맷 된 모든 실행을 찾습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

쿼리가 모두 구현되면 문서 객체를 통과하고 검색하려는 내용의 스타일 이름을 지정해야합니다

{{% /alert %}}

다음 코드 예제는 쿼리 및 표시 결과를 실행합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

모든 것이 수행되면 샘플을 실행하면 다음 출력을 표시합니다

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

볼 수 있듯이, 이것은 수집 된 단락의 수 및 텍스트를 보여주는 매우 간단한 예이며 샘플 단어 문서에서 실행됩니다.

## 다른 Paragraph 작풍을 두는 삽입 작풍 분리기

스타일 분리기는 Ctrl + Alt + Enter Keyboard Shortcut을 MS Word로 사용하여 단락의 끝에 추가 할 수 있습니다. 이 기능은 논리적인 인쇄된 단락에서 사용된 2개의 다른 단락 작풍을 허용합니다. 특정 제목의 시작에서 텍스트를 원하면 내용의 테이블에 표시하지만 내용의 전체 제목을 원하지 않는 경우이 기능을 사용할 수 있습니다

다음 코드 예제는 다른 단락 스타일을 넣어 스타일 분리기를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## 템플릿에서 모든 스타일 복사

한 문서에서 다른 모든 스타일을 복사 할 때 케이스가 있습니다. 당신은 사용할 수 있습니다 `Document.CopyStylesFromTemplate` 지정된 템플릿에서 문서에 스타일을 복사하는 방법. 스타일이 템플릿에서 문서에 복사되면 문서의 같은 스타일은 템플릿의 스타일 설명과 일치하도록 정의됩니다. 템플릿의 독특한 스타일은 문서에 복사됩니다. 문서의 독특한 스타일은 그대로 남아

다음 코드 예제는 하나의 문서에서 스타일을 복사하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## 자주 묻는 질문 테마 속성

우리는 기본을 추가했습니다 API 내 계정 Aspose.Words 문서 테마 속성에 액세스. 지금, 이것 API 다음과 같은 공공 개체를 포함:

- - - 이름 *
- 테마파크
- 테마 색상

테마 속성을 얻을 수있는 방법은 다음과 같습니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

그리고 여기에 테마 속성을 설정할 수있는 방법:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
