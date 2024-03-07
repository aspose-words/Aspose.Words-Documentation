---
title: Python의 단락 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 단락 작업
linktitle: 단락 작업
description: "Python를 사용하여 문서에 단락을 삽입하고 서식을 지정합니다."
type: docs
weight: 210
url: /ko/python-net/working-with-paragraphs/
---

단락은 논리 블록으로 결합되고 특수 문자(*단락 구분*)로 끝나는 문자 집합입니다. Aspose.Words에서 단락은 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 클래스로 표현됩니다.

## 단락 삽입

문서에 새 단락을 삽입하려면 실제로 단락 구분 문자를 삽입해야 합니다. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/)는 문서에 텍스트 문자열을 삽입할 뿐만 아니라 단락 나누기를 추가합니다.

현재 글꼴 형식도 [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) 속성으로 지정되며 현재 단락 형식은 [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) 속성으로 결정됩니다.

다음 코드 예제에서는 문서에 단락을 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## 단락 서식 지정

현재 단락 형식은 [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) 속성에서 반환되는 [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) 개체로 표시됩니다. 이 개체는 Microsoft Word에서 사용할 수 있는 다양한 단락 서식 속성을 캡슐화합니다. [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/)를 호출하면 단락 서식을 기본 스타일, 왼쪽 정렬, 들여쓰기 없음, 간격 없음, 테두리 없음, 음영 없음으로 쉽게 재설정할 수 있습니다.

다음 코드 예제에서는 단락 서식을 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## 단락 스타일 적용

[Font](https://reference.aspose.com/words/python-net/aspose.words/font/) 또는 [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/)와 같은 일부 서식 개체는 스타일을 지원합니다. 단일 기본 제공 스타일 또는 사용자 정의 스타일은 스타일의 이름, 기본 스타일, 글꼴 및 단락 서식 등과 같은 해당 스타일 속성을 포함하는 [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) 개체로 표시됩니다.

또한 [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) 객체는 [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) 열거 값으로 표시되는 로케일 독립적 스타일 식별자를 반환하는 [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) 속성을 제공합니다. 요점은 Microsoft Word에 내장된 스타일의 이름이 다양한 언어에 맞게 현지화되어 있다는 것입니다. 스타일 식별자를 사용하면 문서 언어에 관계없이 올바른 스타일을 찾을 수 있습니다. 열거형 값은 Normal, Heading 1, Heading 2 등과 같은 Microsoft Word 내장 스타일에 해당합니다. 모든 사용자 정의 스타일에는 [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) 값이 할당됩니다

다음 코드 예제에서는 단락 스타일을 적용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## 다른 단락 스타일을 지정하려면 스타일 구분 기호를 삽입하세요

MS Word에서 Ctrl + Alt + Enter 키보드 단축키를 사용하여 단락 끝에 스타일 구분 기호를 추가할 수 있습니다. 이 기능을 사용하면 논리적으로 인쇄된 하나의 단락에 두 가지 다른 단락 스타일을 사용할 수 있습니다. 특정 제목의 시작 부분부터 일부 텍스트를 목차에 표시하고 싶지만 목차의 전체 제목을 원하지 않는 경우 이 기능을 사용할 수 있습니다

다음 코드 예제에서는 다양한 단락 스타일을 수용하기 위해 스타일 구분 기호를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## 단락 스타일 구분 기호 식별

Aspose.Words는 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 클래스에 공용 속성 [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/)를 제공하여 아래 예제와 같이 스타일 구분 기호 단락을 식별할 수 있도록 합니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## 단락에 테두리 및 음영 적용

테두리는 [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/)로 표시됩니다. 이는 인덱스 또는 테두리 유형으로 액세스되는 [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) 개체의 모음입니다. 테두리 유형은 [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) 열거형으로 표시됩니다. 열거형의 일부 값은 여러 문서 요소 또는 단 하나의 문서 요소에만 적용 가능합니다. 예를 들어 [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom)는 단락이나 표 셀에 적용할 수 있지만 [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown)은 표 셀에서만 대각선 테두리를 지정합니다.

테두리 컬렉션과 각각의 개별 테두리는 모두 색상, 선 스타일, 선 너비, 텍스트로부터의 거리 및 선택적 그림자와 같은 유사한 속성을 갖습니다. 이들은 동일한 이름의 속성으로 표시됩니다. 속성 값을 결합하여 다양한 테두리 유형을 얻을 수 있습니다. 또한 [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) 및 [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) 객체 모두 [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) 메서드를 호출하여 이러한 값을 기본값으로 재설정할 수 있습니다.

{{% alert color="primary" %}}

테두리 속성을 기본값으로 재설정하면 테두리가 보이지 않게 됩니다.

{{% /alert %}}

Aspose.Words에는 문서 요소에 대한 음영 속성이 포함된 [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) 클래스도 있습니다. 원하는 음영 질감과 요소의 전경과 배경에 적용되는 색상을 설정할 수 있습니다.

음영 텍스처는 [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) 개체에 다양한 패턴을 적용할 수 있는 [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) 열거 값으로 설정됩니다. 예를 들어 문서 요소의 배경색을 설정하려면 [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) 값을 사용하고 전경 음영 색상을 적절하게 설정합니다. 아래 예에서는 단락에 테두리와 음영을 적용하는 방법을 보여줍니다.

다음 코드 예제에서는 단락에 테두리와 음영을 적용하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
