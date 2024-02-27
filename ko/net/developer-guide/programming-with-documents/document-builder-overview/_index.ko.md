---
title: C#의 문서 작성기 개요
second_title: .NET용 Aspose.Words
articleTitle: 문서 작성기 개요
linktitle: 문서 작성기 개요
type: docs
description: "DocumentBuilder를 사용하면 처음부터 동적 문서를 만들거나 C#를 사용하여 기존 문서에 새 요소를 추가할 수 있습니다. DocumentBuilder는 .NET에 텍스트, 확인란, 표, 이미지 및 기타 콘텐츠 요소를 삽입하는 메서드를 제공합니다."
weight: 30
url: /ko/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)는 [Document](https://reference.aspose.com/words/net/aspose.words/document/)와 연결되어 처음부터 동적 문서를 작성하거나 기존 문서에 새 요소를 추가할 수 있게 해주는 강력한 클래스입니다.

**DocumentBuilder**는 텍스트, 확인란, 개체, 단락, 목록, 표, 이미지 및 기타 콘텐츠 요소를 삽입하는 방법을 제공합니다. 글꼴, 단락 또는 섹션 서식을 지정하고 기타 작업을 수행할 수 있습니다.

## 문서 작성기 또는 Aspose.Words DOM

**DocumentBuilder**는 Aspose.Words Document Object Model(DOM)에서 사용할 수 있는 클래스와 메서드를 보완하여 가장 일반적인 문서 작성 작업을 단순화합니다. 즉, 트리 구조에 대한 이해가 필요한 Aspose.Words DOM와 DocumentBuilder를 사용하여 문서의 내용을 생성하고 수정할 수 있습니다. `DocumentBuilder`은 콘텐츠와 서식을 빠르고 쉽게 삽입할 수 있는 복잡한 **Document** 구조의 "외관"입니다.

**DocumentBuilder**로 가능한 작업은 Aspose.Words DOM의 클래스를 직접 사용하는 경우에도 가능합니다. 그러나 Aspose.Words DOM 클래스를 직접 사용하려면 일반적으로 **DocumentBuilder**를 사용하는 것보다 더 많은 코드 줄이 필요합니다.

## 문서 탐색

문서 탐색은 [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/), [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) 등 다양한 **DocumentBuilder.MoveToXXX** 방법을 사용하여 문서 내 다른 위치로 이동할 수 있는 가상 커서 개념을 기반으로 합니다. 이 가상 커서는 [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/) 등의 메소드를 호출할 때 텍스트가 삽입될 위치를 나타냅니다. 가상 커서에 대해 자세히 알아보려면 다음 문서 "커서를 사용한 탐색"을 참조하세요.

다음 코드 예제에서는 책갈피로 이동하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## 문서 작성 및 수정

Aspose.Words API는 문서의 다양한 요소 형식을 담당하는 여러 클래스를 제공합니다. 각 클래스는 텍스트, 단락, 섹션 등과 같은 특정 문서 요소와 관련된 서식 속성을 캡슐화합니다. 예를 들어, [Font](https://reference.aspose.com/words/net/aspose.words/font/) 클래스는 문자 서식 속성을 나타내고, [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) 클래스는 단락 서식 속성 등을 나타냅니다. 이러한 클래스의 개체는 클래스와 이름이 동일한 해당 **DocumentBuilder** 속성에 의해 반환됩니다. 따라서 문서 작성 중에 해당 항목에 액세스하고 원하는 형식을 설정할 수 있습니다.

`Write` 방법이나 [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) 및 유사한 방법과 같은 **DocumentBuilder.InsertXXX** 방법을 사용하여 텍스트, 확인란, 개체, 이미지, 책갈피, 양식 필드 및 기타 문서 요소를 커서 위치에 삽입할 수도 있습니다.

**DocumentBuilder**를 사용하여 간단한 문서를 만드는 방법을 살펴보겠습니다.

### DocumentBuilder를 사용하여 문서 만들기

시작하려면 **DocumentBuilder**를 생성하고 이를 **Document** 개체와 연결해야 합니다. 생성자를 호출하여 **DocumentBuilder**의 새 인스턴스를 생성하고 빌더에 첨부할 수 있도록 **Document** 객체에 전달합니다.

텍스트를 삽입하려면 문서에 삽입해야 하는 텍스트 문자열을 **Write** 메서드에 전달하세요.

다음 코드 예제에서는 문서 작성기를 사용하여 간단한 문서를 만드는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### 문서 형식 지정

[Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) 속성은 텍스트 서식을 정의합니다. 이 개체에는 다양한 글꼴 속성(글꼴 이름, 글꼴 크기, 색상 등)이 포함되어 있습니다. 일부 중요한 글꼴 속성은 **DocumentBuilder** 속성으로 표시되므로 직접 액세스할 수 있습니다. 이는 [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/) 및 [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) 부울 속성입니다.

다음 코드 예제에서는 **DocumentBuilder**를 사용하여 서식이 지정된 텍스트를 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/)는 문서의 현재 위치부터 삽입된 모든 텍스트에 적용될 문자 서식을 지정합니다.
- [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)는 삽입할 현재 단락과 모든 단락에 대한 단락 서식을 지정합니다.
- [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/)는 현재 섹션과 삽입될 전체 섹션에 대한 페이지 및 섹션 속성을 지정합니다.
- [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) 및 [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/)는 문서의 현재 위치부터 테이블 셀과 행에 적용되는 서식 속성을 지정합니다.

이 상황에서 "현재"는 커서가 있는 위치, 단락, 섹션, 셀 또는 행을 의미합니다.

{{% /alert %}}

{{% alert color="primary" %}}

**Font**, **ParagraphFormat** 및 **PageSetup** 속성은 문서의 다른 위치로 이동할 때마다 업데이트되어 해당 위치의 서식 속성을 반영합니다.

{{% /alert %}}
