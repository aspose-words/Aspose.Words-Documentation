---
title: Java의 단락 작업
second_title: Aspose.WordsJava
articleTitle: 단락 작업
linktitle: 단락 작업
description: "단락 노드 조작은Java을 사용합니다."
type: docs
weight: 210
url: /ko/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

단락은 논리 블록으로 결합 된 문자 집합이며 특수 문자(*paragraph break*)로 끝납니다. Aspose.Words에서 단락은[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)클래스로 표시됩니다.

## 단락 삽입

문서에 새 단락을 삽입하려면 실제로 단락 나누기 문자를 삽입해야 합니다. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln)문서에 텍스트 문자열을 삽입할 뿐만 아니라 단락 나누기를 추가합니다.

현재 글꼴 서식은[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)속성에 의해 지정되고 현재 단락 서식은[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat)속성에 의해 결정됩니다. 다음 섹션에서는 단락 서식에 대해 더 자세히 설명합니다.

다음 코드 예제에서는 문서에 단락을 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## 단락 형식 지정

현재 단락 서식은[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat)속성에 의해 반환되는[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)개체로 표시됩니다. 이 개체는Microsoft Word에서 사용할 수 있는 다양한 단락 서식 속성을 캡슐화합니다. [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting)을 호출하여 단락의 서식을 기본값(일반 스타일,왼쪽 정렬,들여 쓰기 없음,간격 없음,테두리 없음,음영 없음)으로 쉽게 재설정 할 수 있습니다.

다음 코드 예제에서는 단락 서식을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## 단락 스타일 적용

글꼴 또는ParagraphFormat과 같은 일부 서식 지정 개체는 스타일을 지원합니다. 단일 기본 제공 또는 사용자 정의 스타일은 스타일의 이름,기본 스타일,글꼴 및 단락 서식 등과 같은 해당 스타일 속성을 포함하는[Style](https://reference.aspose.com/words/java/com.aspose.words/style/)개체로 표시됩니다.

또한**Style**개체는**StyleIdentifier**열거형 값으로 표시되는 로캘 독립 스타일 식별자를 반환하는[StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)속성을 제공합니다. 요점은Microsoft Word의 기본 제공 스타일 이름이 다른 언어로 지역화된다는 것입니다. 스타일 식별자를 사용하면 문서 언어에 관계없이 올바른 스타일을 찾을 수 있습니다. 열거형 값은 다음과 같은Microsoft Word기본 제공 스타일에 해당합니다*Normal*, *Heading 1*, *Heading 2*, 그 밖의 모든 사용자 정의 스타일에는**StyleIdentifier.User value**이 할당됩니다.

다음 코드 예제에서는 단락 스타일을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## 다른 단락 스타일을 넣으려면 스타일 구분 기호 삽입

스타일 구분 기호는MS단어로 바로 가기 키를 입력하여 단락 끝에 추가할 수 있습니다. 이 기능은 하나의 논리 인쇄 단락에 사용되는 두 개의 서로 다른 단락 스타일을 할 수 있습니다. 특정 머리글의 시작 부분에서 일부 텍스트를 목차에 표시하지만 목차의 전체 머리글을 원하지 않는 경우 이 기능을 사용할 수 있습니다.

다음 코드 예제에서는 다른 단락 스타일을 수용하기 위해 스타일 구분 기호를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## 단락에 테두리 및 음영 적용

Aspose.Words의 테두리는 [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) 클래스로 표현됩니다. 이는 인덱스 또는 테두리 유형으로 액세스하는 [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) 객체의 컬렉션입니다. `Border` 유형은 [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) 열거형으로 표현됩니다. 열거형의 일부 값은 여러 문서 요소 또는 단 하나의 문서 요소에만 적용할 수 있습니다. 예를 들어, **BorderType.Bottom**는 문단 또는 표 셀에 적용되고 **BorderType.DiagonalDown**은 표 셀의 대각선 테두리만 지정합니다.

테두리 컬렉션과 각 개별 테두리 모두 색상,선 스타일,선 너비,텍스트로부터의 거리 및 선택적 그림자와 같은 유사한 속성을 갖습니다. 같은 이름의 속성으로 표시됩니다. 속성 값을 결합하여 다른 테두리 유형을 얻을 수 있습니다. 또한**BorderCollection**및**Border**개체를 모두 사용하면[ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting)메서드를 호출하여 이러한 값을 기본값으로 재설정 할 수 있습니다.

{{% alert color="primary" %}}

테두리 속성을 기본값으로 다시 설정하면 테두리가 보이지 않습니다.

{{% /alert %}}

Aspose.Words에는[Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/)클래스에는 문서 요소에 대한 음영 특성이 포함되어 있습니다. 원하는 음영 텍스처와 요소의 배경 및 전경에 적용되는 색상을 설정할 수 있습니다.

음영 텍스처는**Shading**개체에 다양한 패턴을 적용할 수 있는[TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/)열거형 값으로 설정됩니다. 예를 들어 문서 요소의 배경색을 설정하려면`TextureIndex.TextureSolid`값을 사용하고 전경 음영색을 적절하게 설정합니다. 아래 코드 예제에서는 단락에 테두리 및 음영을 적용하는 방법을 보여 줍니다.

다음 코드 예제에서는 단락에 테두리 및 음영을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
