---
title: 문서 작성기 개요 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 작성기 개요
linktitle: 문서 작성기 개요
type: docs
description: "DocumentBuilder 동적 문서를 처음부터 작성하거나 다음을 사용하여 기존 문서에 새 요소를 추가할 수 있습니다 C++. DocumentBuilder 텍스트,확인란,표,이미지 및 기타 콘텐츠 요소를 삽입하는 방법을 제공합니다 C++."
weight: 30
url: /ko/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) 강력한 계급입니다. [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 동적 문서를 처음부터 작성하거나 기존 문서에 새 요소를 추가할 수 있습니다.

**DocumentBuilder**

## 문서 작성기 또는 Aspose.Words DOM

**DocumentBuilder**

가능한 작업 **DocumentBuilder** 또한, Aspose.Words DOM 직접. 그러나,사용 Aspose.Words DOM 클래스는 일반적으로 사용하는 것보다 더 많은 코드 줄이 필요합니다 **DocumentBuilder**.

## 문서 탐색

문서 탐색은 가상 커서의 개념을 기반으로 하며,다양한 기능을 사용하여 문서의 다른 위치로 이동할 수 있습니다. **DocumentBuilder.MoveToXXX** 다음과 같은 방법 [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) 그리고 [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). 이 가상 커서는 메서드를 호출할 때 텍스트가 삽입될 위치를 나타냅니다 [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/),그리고 다른 것들.

다음 코드 예제에서는 책갈피를 탐색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## 문서 작성 및 수정

Aspose.Words API 문서의 다양한 요소 서식을 지정하는 여러 클래스를 제공합니다. 각 클래스는 텍스트,단락,섹션 등과 같은 특정 문서 요소와 관련된 서식 속성을 캡슐화합니다. 예를 들어, [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) 클래스는 문자 서식 속성을 나타냅니다. [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) 클래스는 단락 서식 속성 등을 나타냅니다. 이 클래스의 객체는 해당 클래스에 의해 반환됩니다. **DocumentBuilder** 클래스와 이름이 같은 속성입니다. 따라서 문서 작성 중에 액세스하고 원하는 서식을 설정할 수 있습니다.

텍스트,체크 박스,올레 개체,이미지,책갈피,양식 필드 및 기타 문서 요소를 커서 위치에 삽입 할 수도 있습니다. `Write` 방법 또는 어떤 **DocumentBuilder.InsertXXX** 다음과 같은 방법 [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/),그리고 비슷한 방법들.

의 사용하여 간단한 문서를 만드는 방법을 살펴 보자 **DocumentBuilder**.

### 다음을 사용하여 문서 만들기 DocumentBuilder

시작하려면,당신은 **DocumentBuilder** 그리고 그것을 **Document** 객체 새 인스턴스를 만듭니다 **DocumentBuilder** 그 생성자를 호출하고 그것을 전달함으로써 **Document** 빌더에 첨부할 개체입니다.

텍스트를 삽입하려면 문서에 삽입해야 하는 텍스트 문자열을 **Write** 방법

다음 코드 예제에서는 문서 작성기를 사용하여 간단한 문서를 만드는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### 문서 서식 지정

그 [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) 속성은 텍스트 서식을 정의합니다. 이 개체에는 다른 글꼴 속성(글꼴 이름,글꼴 크기,색상 등)이 포함되어 있습니다. 몇 가지 중요한 글꼴 속성은 또한 **DocumentBuilder** 속성을 통해 직접 액세스 할 수 있습니다. 이 두가지가 [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/),그리고 [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/) 부울 속성.

다음 코드 예제에서는 다음을 사용하여 서식이 지정된 텍스트를 삽입하는 방법을 보여 줍니다 **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) 문서의 현재 위치에서 삽입된 모든 텍스트에 적용할 문자 서식을 지정합니다.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) 삽입할 현재 단락 및 모든 단락의 단락 서식을 지정합니다.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) 현재 구역과 삽입할 전체 구역의 페이지 및 구역 속성을 지정합니다.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) 그리고 [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) 문서의 현재 위치부터 표 셀 및 행에 적용할 서식 속성을 지정합니다.

이 상황에서"현재"는 커서가 있는 위치,단락,섹션,셀 또는 행을 의미합니다.

{{% /alert %}}

{{% alert color="primary" %}}

참고: **Font**, **ParagraphFormat**,그리고 **PageSetup** 이 위치의 서식 속성을 반영하기 위해 문서의 다른 위치로 이동할 때마다 속성이 업데이트됩니다.

{{% /alert %}}
