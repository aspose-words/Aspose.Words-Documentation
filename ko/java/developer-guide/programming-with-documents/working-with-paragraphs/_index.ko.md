---
title: Paragraphs에서 일하기 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Paragraphs와 일하기
linktitle: Paragraphs와 일하기
description: "Paragraph 노드 조작 관행 Java·"
type: docs
weight: 210
url: /ko/java/working-with-paragraphs/
---

단락은 논리 블록으로 결합 된 문자 집합이며 특수 문자로 종료됩니다. *paragraph break*. 내 계정 Aspose.Words, 단락은 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 수업.

## 퍼프를 삽입

문서에 새 단락을 삽입하려면 실제로 단락 문자를 삽입해야합니다. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) 문서에 텍스트의 문자열뿐만 아니라 단락을 추가합니다.

현재 글꼴 형식도 지정됩니다. [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) 재산 및 현재 단락 서식은 [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) 호텔 위치 다음 섹션에서, 우리는 단락 서식에 대한 자세한 내용을 이동합니다.

다음 코드 예제는 문서에 단락을 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## 파일 형식

현재 단락 형식은 다음과 같습니다. [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) 반환된 객체 [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) 호텔 위치 이 객체는 다양한 단락 형식을 캡슐화합니다. Microsoft Word· 기본적으로 단락의 형식을 쉽게 재설정 할 수 있습니다 - 정상적인 스타일, 왼쪽 정렬, indentation, 스팸 없음, 국경 없음, 셰이딩 - 호출하여 [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting)·

다음 코드 예제는 단락 형식을 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Paragraph 스타일 적용

글꼴 또는 ParagraphFormat 지원 스타일과 같은 일부 서식물. 단일 내장 또는 사용자 정의 스타일은 [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) 스타일의 이름, 기본 스타일, 글꼴 및 단락 형식과 같은 해당 스타일 속성을 포함하는 객체, 등.

또한, **Style** 객체는 [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) locale-independent 스타일 식별자를 반환하는 속성 **StyleIdentifier** 공급 능력 점은 내장 스타일의 이름은 Microsoft Word 다른 언어로 현지화됩니다. 스타일 식별자를 사용하여 문서 언어에 관계없이 올바른 스타일을 찾을 수 있습니다. 열렬한 가치는 Microsoft Word 내장 스타일과 같은 *Normal*, *Heading 1*, *Heading 2*, 등. 모든 사용자 정의 스타일은 할당됩니다. **StyleIdentifier. 사용자 값**·

다음 코드 예제는 단락 스타일을 적용하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## 다른 Paragraph 작풍을 두는 삽입 작풍 분리기

스타일 분리기는 Ctrl + Alt + Enter Keyboard Shortcut을 MS Word로 사용하여 단락의 끝에 추가 할 수 있습니다. 이 기능은 논리적인 인쇄된 단락에서 사용된 2개의 다른 단락 작풍을 허용합니다. 특정 제목의 시작부터 내용의 테이블에 표시하지만 내용의 전체 제목을 원하지 않는 경우,이 기능을 사용할 수 있습니다.

다음 코드 예제는 다른 단락 스타일을 수용하기 위해 스타일 분리기를 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## 국경을 신청하고 패딩

국경에서 Aspose.Words 본문 바로가기 [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) 클래스 – 이것은 컬렉션의 [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) 색인 또는 국경 유형에 의해 접근되는 물체. 더 보기 `Border` 타입은 [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) 관련 기사 열렬한 몇몇 가치는 몇몇 또는 단지 1개의 문서 성분에 적용 가능합니다. 예를 들어, **BorderType.Bottom** 단락 또는 테이블 셀에 적용 가능 **BorderType.DiagonalDown** 테이블 셀의 대각선 경계를 지정합니다.

국경 수집과 각 분리된 국경은 색깔, 선 작풍, 선 폭, 원본에서 거리 및 선택적인 그림자 같이 유사한 재산이 있습니다. 그들은 같은 이름의 속성에 의해 표현된다. 속성 값을 결합하여 다른 경계 유형을 달성 할 수 있습니다. 또한, 모두 **BorderCollection** · **Border** 객체를 사용하면 이 값을 기본값으로 재설정 할 수 있습니다. [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) 방법.

{{% alert color="primary" %}}

국경 속성이 기본 값으로 재설정 될 때, 국경은 보이지 않습니다.

{{% /alert %}}

Aspose.Words 또한 있다 [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) class는 문서 요소에 대한 셰이딩 속성을 포함합니다. 원하는 쉐이딩 질감과 요소의 배경과 전경에 적용되는 색상을 설정할 수 있습니다.

셰이딩 질감은 [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) 다양한 패턴의 응용을 할 수있는 열렬한 가치 **Shading** 이름 * 예를 들어, 문서 요소에 대한 배경 색상을 설정하려면, 사용 `TextureIndex.TextureSolid` 가치와 적합으로 전경 셰이딩 색상을 설정합니다. 아래 코드 예제는 경계를 적용하고 단락을 형성하는 방법을 보여줍니다.

다음과 같은 코드 예제는 경계를 적용하고 단락을 형성하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
