---
title: Java의 문서 작성기 개요
second_title: Aspose.WordsJava
articleTitle: 문서 작성기 개요
linktitle: 문서 작성기 개요
type: docs
description: "DocumentBuilder을 사용하면 처음부터 동적 문서를 작성하거나 기존 문서에 새 요소를 추가할 수 있습니다. DocumentBuilder은Java에 텍스트,checkbox에스,표,이미지 및 기타 콘텐츠 요소를 삽입하는 방법을 제공합니다."
weight: 30
url: /ko/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)은[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)과 연관되는 강력한 클래스이며 처음부터 동적 문서를 작성하거나 기존 문서에 새 요소를 추가할 수 있습니다.

**DocumentBuilder**

## 문서 작성기 또는Aspose.WordsDOM

**DocumentBuilder**

**DocumentBuilder**으로 가능한 연산은Aspose.WordsDOM의 클래스를 직접 사용할 때에도 가능합니다. 그러나Aspose.WordsDOM클래스를 직접 사용하면 일반적으로**DocumentBuilder**을 사용하는 것보다 더 많은 코드 줄이 필요합니다.

## 문서 탐색

문서 탐색은[MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)및[MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)과 같은 다양한**DocumentBuilder.MoveToXXX**방법을 사용하여 문서의 다른 위치로 이동할 수 있는 가상 커서 개념을 기반으로 합니다. 이 가상 커서는 메서드를 호출할 때 텍스트가 삽입될 위치를 나타냅니다[Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), 그리고 다른 사람들도 가상 커서에 대한 자세한 내용은 다음 문서"커서로 탐색"을 참조하십시오.

다음 코드 예제에서는 책갈피를 탐색하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## 문서 작성 및 수정

Aspose.WordsAPI는 문서의 다양한 요소의 서식을 지정하는 여러 클래스를 제공합니다. 각 클래스는 텍스트,단락,섹션 등과 같은 특정 문서 요소와 관련된 서식 속성을 캡슐화합니다. 예를 들어[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)클래스는 문자 서식 속성을 나타내고[ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)클래스는 단락 서식 속성을 나타냅니다. 이러한 클래스의 객체는 클래스와 동일한 이름을 가진 해당**DocumentBuilder**속성에 의해 반환됩니다. 따라서 문서 작성 중에 액세스하고 원하는 서식을 설정할 수 있습니다.

`Write`메서드 또는[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean),[InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String)및 이와 유사한 메서드와 같은**DocumentBuilder.InsertXXX**메서드를 사용하여 커서 위치에 텍스트,checkbox,개체,이미지,책갈피,양식 필드 및 기타 문서 요소를 삽입할 수도 있습니다.

**DocumentBuilder**을 사용하여 간단한 문서를 만드는 방법을 살펴 보겠습니다.

### DocumentBuilder을 사용하여 문서 만들기

시작하려면**DocumentBuilder**을 만들고**Document**개체와 연결해야 합니다. 생성자를 호출하여**DocumentBuilder**의 새 인스턴스를 만들고 빌더에 첨부할**Document**개체에 전달합니다.

텍스트를 삽입하려면 문서에 삽입해야 하는 텍스트 문자열을**Write**메서드에 전달합니다.

다음 코드 예제에서는 문서 작성기를 사용하여 간단한 문서를 만드는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### 문서 서식 지정

[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)속성은 텍스트 서식을 정의합니다. 이 개체에는 다른 글꼴 속성(글꼴 이름,글꼴 크기,색상 등)이 포함되어 있습니다. 일부 중요한 글꼴 속성은**DocumentBuilder**속성으로 표시되므로 직접 액세스할 수 있습니다. [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold),[Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic)및[Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)부울 속성입니다.

다음 코드 예제에서는**DocumentBuilder**을 사용하여 서식이 지정된 텍스트를 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)문서의 현재 위치에서 삽입된 모든 텍스트에 적용할 문자 서식을 지정합니다.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/)삽입할 현재 단락 및 모든 단락의 단락 서식을 지정합니다.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/)현재 구역과 삽입할 전체 구역의 페이지 및 구역 속성을 지정합니다.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)및[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)문서의 현재 위치부터 표 셀 및 행에 적용할 서식 속성을 지정합니다.

이 상황에서"현재"는 커서가 있는 위치,단락,섹션,셀 또는 행을 의미합니다.

{{% /alert %}}

{{% alert color="primary" %}}

**Font**,**ParagraphFormat**및**PageSetup**속성은 이 위치의 서식 속성을 반영하기 위해 문서의 다른 위치로 이동할 때마다 업데이트됩니다.

{{% /alert %}}
