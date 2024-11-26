---
title: 단락 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 단락 작업
linktitle: 단락 작업
description: "단락 노드 조작 관행 C++."
type: docs
weight: 210
url: /ko/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

단락은 논리 블록으로 결합 된 문자 집합이며 특수 문자로 끝납니다. *paragraph break*. 그 안에 Aspose.Words,항은 [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) 수업

## 단락 삽입

문서에 새 단락을 삽입하려면 실제로 단락 나누기 문자를 삽입해야 합니다. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) 문서에 텍스트 문자열을 삽입할 뿐만 아니라 단락 나누기를 추가합니다.

현재 글꼴 포맷은 또한 [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) 속성 및 현재 단락 서식에 의해 결정된다 [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/) 재산. 다음 섹션에서는 단락 서식에 대해 더 자세히 설명합니다.

다음 코드 예제에서는 문서에 단락을 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## 단락 형식 지정

현재 단락 포맷은 **ParagraphFormat** 에 의해 반환되는 객체 **ParagraphFormat** 재산. 이 개체는 다음에서 사용할 수 있는 다양한 단락 서식 속성을 캡슐화합니다 Microsoft Word. 당신은 쉽게 일반 스타일로 기본값으로 단락 서식을 재설정 할 수 있습니다,왼쪽 정렬 없음 들여 쓰기,아니 간격,테두리 및 호출없이 음영 [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

다음 코드 예제에서는 단락 서식을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## 단락 스타일 적용

글꼴 또는 같은 일부 서식 개체 ParagraphFormat 지원 스타일. 단일 기본 제공 또는 사용자 정의 스타일은 `Style` 스타일의 이름,기본 스타일,글꼴 및 단락 서식 등과 같은 해당 스타일 속성이 포함된 개체입니다.

또한, **Style** 객체는 [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) 로캘 독립 스타일 식별자를 반환하는 속성입니다. **StyleIdentifier** 열거형 값입니다. 요점은 내장 스타일의 이름이 Microsoft Word 다른 언어에 맞게 지역화되어 있습니다. 스타일 식별자를 사용하면 문서 언어에 관계없이 올바른 스타일을 찾을 수 있습니다. 열거형 값은 Microsoft Word 다음과 같은 내장 스타일 *Normal*, *Heading 1*, *Heading 2* 그 밖의 모든 사용자 정의 스타일은 **StyleIdentifier.User** 가치.

다음 코드 예제에서는 단락 스타일을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## 다른 단락 스타일을 넣으려면 스타일 구분 기호 삽입

스타일 구분 기호를 사용하여 단락의 끝에 추가 할 수 있습니다. MS 단어. 이 기능은 하나의 논리 인쇄 단락에 사용되는 두 개의 서로 다른 단락 스타일을 할 수 있습니다. 특정 머리글의 시작 부분에서 일부 텍스트를 목차에 표시하지만 목차의 전체 머리글을 원하지 않는 경우 이 기능을 사용할 수 있습니다.

다음 코드 예제에서는 다른 단락 스타일을 수용하기 위해 스타일 구분 기호를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## 단락 스타일 구분 기호 식별

` `Aspose.Words 공공 재산 제공 [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) 에 `Paragraph` 클래스는 아래의 예와 같이 스타일 구분 단락을 식별 할 수 있습니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## 단락에 테두리 및 음영 적용

국경 Aspose.Words 이 숫자는 [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) 클래스-이의 모음입니다 [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) 인덱스 또는 테두리 유형으로 액세스할 수 있는 개체입니다. 경계 유형은 `BorderType` 열거 열거형의 일부 값은 여러 개 또는 하나의 문서 요소에만 적용할 수 있습니다. 예를 들어, **BorderType.Bottom** 단락 또는 테이블 셀에 적용 할 수있는 동안 **BorderType.DiagonalDown** 테이블 셀의 대각선 테두리만 지정합니다.

테두리 컬렉션과 각 개별 테두리 모두 색상,선 스타일,선 너비,텍스트로부터의 거리 및 선택적 그림자와 같은 유사한 속성을 갖습니다. 같은 이름의 속성으로 표시됩니다. 속성 값을 결합하여 다른 테두리 유형을 얻을 수 있습니다. 또한,둘 다 **BorderCollection** 그리고 **Border** 개체를 호출하여 이러한 값을 기본값으로 재설정 할 수 있습니다. [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/) 방법

{{% alert color="primary" %}}

테두리 속성을 기본값으로 다시 설정하면 테두리가 보이지 않게 됩니다.

{{% /alert %}}

Aspose.Words 또한 [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) 클래스에는 문서 요소에 대한 음영 속성이 포함되어 있습니다. 원하는 음영 텍스처와 요소의 배경 및 전경에 적용되는 색상을 설정할 수 있습니다.

음영 텍스처는 [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) 다양한 패턴을 적용할 수 있는 열거 값 **Shading** 객체 예를 들어 문서 요소의 배경색을 설정하려면 다음을 사용합니다 [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) 값을 지정하고 전경 음영 색상을 적절하게 설정합니다.

다음 코드 예제에서는 단락에 테두리 및 음영을 적용하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
