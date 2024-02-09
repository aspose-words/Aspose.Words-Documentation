---
title: C#의 단락 작업
second_title: .NET용 Aspose.Words
articleTitle: 단락 작업
linktitle: 단락 작업
description: "문서 C#에 단락을 삽입합니다. C#에서 단락 스타일을 설정합니다. 단락 스타일 구분 기호 C#를 사용하여 작업합니다. C#를 사용하여 단락 노드를 조작합니다."
type: docs
weight: 210
url: /ko/net/working-with-paragraphs/
---

단락은 논리 블록으로 결합되고 특수 문자(*단락 구분*)로 끝나는 문자 집합입니다. Aspose.Words에서 단락은 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 클래스로 표현됩니다.

## 단락 삽입

문서에 새 단락을 삽입하려면 실제로 단락 구분 문자를 삽입해야 합니다. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/)는 문서에 텍스트 문자열을 삽입할 뿐만 아니라 단락 구분도 추가합니다.

현재 글꼴 형식도 [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) 속성으로 지정되며 현재 단락 형식은 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) 속성으로 결정됩니다. 다음 섹션에서는 단락 서식에 대해 자세히 살펴보겠습니다.

다음 코드 예제에서는 문서에 단락을 삽입하는 방법을 보여줍니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## 단락 서식 지정

현재 단락 형식은 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) 속성에서 반환되는 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) 개체로 표시됩니다. 이 개체는 Microsoft Word에서 사용할 수 있는 다양한 단락 서식 속성을 캡슐화합니다. [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/)를 호출하면 단락의 서식을 기본값(일반 스타일, 왼쪽 정렬, 들여쓰기 없음, 간격 없음, 테두리 없음, 음영 없음)으로 쉽게 재설정할 수 있습니다.

다음 코드 예제에서는 단락 서식을 설정하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## 단락 스타일 적용

**Font** 또는 **ParagraphFormat**와 같은 일부 서식 개체는 스타일을 지원합니다. 하나의 기본 제공 스타일 또는 사용자 정의 스타일은 이름, 기본 스타일, 글꼴, 스타일 단락 서식 등과 같은 적절한 스타일 속성을 포함하는 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 개체로 표시됩니다.

또한 **Style** 객체는 [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) 열거형 값으로 표시되는 로케일 독립적 스타일 식별자를 반환하는 [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) 속성을 노출합니다. 사실 Microsoft Word에 내장된 스타일의 이름은 다양한 언어에 맞게 현지화되어 있습니다. 스타일 식별자를 사용하면 문서 언어에 관계없이 올바른 스타일을 찾을 수 있습니다. 열거형 값은 *Normal*, *제목 1*, *제목 2* 등과 같은 내장 Microsoft Word 스타일에 해당합니다. 모든 사용자 정의 스타일은 **StyleIdentifier.User** 열거 값으로 설정됩니다.

다음 코드 예제에서는 단락 스타일을 적용하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### 다른 단락 스타일을 지정하려면 스타일 구분 기호를 삽입하세요

Microsoft Word에서 키보드 단축키 Ctrl+Alt+Enter를 사용하여 단락 끝에 스타일 구분 기호를 추가할 수 있습니다. 이 기능을 사용하면 동일한 논리적 인쇄 단락에서 두 가지 다른 단락 스타일을 사용할 수 있습니다. 목차에는 특정 제목의 시작 부분부터 일부 텍스트를 표시하고 목차에는 전체 제목을 표시하지 않으려는 경우 이 기능을 사용할 수 있습니다.

다음 코드 예제에서는 다양한 단락 스타일을 수용하기 위해 스타일 구분 기호를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### 단락 스타일 구분 기호 식별

Aspose.Words는 아래 예와 같이 스타일 구분 기호로 단락을 식별하기 위해 `Paragraph` 클래스의 [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) 공용 속성을 노출합니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## 단락에 테두리 및 음영 적용

Aspose.Words의 테두리는 [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) 클래스로 표시됩니다. 이는 인덱스 또는 테두리 유형으로 액세스되는 [Border](https://reference.aspose.com/words/net/aspose.words/border/) 객체의 컬렉션입니다. 테두리 유형은 [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) 열거형으로 표시됩니다. 일부 열거 값은 여러 문서 요소에만 적용되거나 하나의 문서 요소에만 적용됩니다. 예를 들어 **BorderType.Bottom**은 단락이나 표 셀에 적용되는 반면 **BorderType.DiagonalDown**는 표 셀에만 대각선 테두리를 지정합니다.

테두리 컬렉션과 각각의 별도 테두리는 모두 색상, 선 스타일, 선 너비, 텍스트로부터의 거리 및 선택적 그림자와 같은 유사한 속성을 갖습니다. 이들은 동일한 이름의 속성으로 표시됩니다. 속성 값을 결합하여 다양한 테두리 유형을 얻을 수 있습니다. 또한 **BorderCollection** 및 **Border** 개체를 사용하면 [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) 메서드를 호출하여 이러한 값을 기본값으로 재설정할 수 있습니다.

{{% alert color="primary" %}}

테두리 속성을 기본값으로 재설정하면 테두리가 보이지 않게 됩니다.

{{% /alert %}}

Aspose.Words에는 문서 요소에 대한 음영 속성을 포함하는 [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) 클래스도 있습니다. [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) 열거 값을 사용하여 요소의 배경과 전경에 적용되는 원하는 음영 질감과 색상을 설정할 수 있습니다. **TextureIndex**를 사용하면 **Shading** 개체에 다양한 패턴을 적용할 수도 있습니다. 예를 들어 문서 요소의 배경색을 설정하려면 **TextureIndex.TextureSolid** 값을 사용하고 전경 음영 색상을 적절하게 설정합니다.

다음 코드 예제에서는 단락에 테두리와 음영을 적용하는 방법을 보여줍니다

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## 단락 줄 수 계산

Word 문서의 단락 줄 수를 계산하려면 다음 코드 샘플을 사용할 수 있습니다

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}