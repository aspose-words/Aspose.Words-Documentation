---
title: 문서 빌더 관련 기사 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Document Builder 개요
linktitle: Document Builder 개요
type: docs
description: "DocumentBuilder는 스크래치에서 동적 문서를 만들거나 기존의 것들에 새로운 요소를 추가 할 수 있습니다. DocumentBuilder는 텍스트, 체크 박스, 테이블, 이미지 및 기타 콘텐츠 요소를 삽입하는 방법을 제공합니다. Java·"
weight: 30
url: /ko/java/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 함께하는 강력한 클래스 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 스크래치에서 동적 문서를 구축하거나 기존에 새로운 요소를 추가 할 수 있습니다.

**DocumentBuilder** 텍스트, 체크 박스, ole 개체, 단락, 목록, 테이블, 이미지 및 기타 콘텐츠 요소를 삽입하는 방법을 제공합니다. 글꼴, 단락 또는 섹션 형식을 지정하고 다른 작업을 수행 할 수 있습니다.

## 문서 빌더 또는 Aspose.Words DOM

**DocumentBuilder** 클래스와 방법을 보완 Aspose.Words Document Object Model (주)DOM) 가장 일반적인 문서 구축 작업을 단순화합니다. 즉, 문서의 내용을 작성하고 수정할 수 있습니다. Aspose.Words DOM나무 구조의 좋은 이해를 필요로하고 DocumentBuilder를 사용하여. 더 보기 `DocumentBuilder` 복잡한 "facade"입니다. **Document** 신속하고 쉽게 콘텐츠를 삽입하고 포맷 할 수있는 구조.

가능한 작업 **DocumentBuilder** 수업을 사용할 때도 가능합니다. Aspose.Words DOM 직접. 그러나, 사용 Aspose.Words DOM 클래스는 일반적으로 사용보다 코드의 더 많은 라인을 필요로 **DocumentBuilder**·

## 제품정보

문서 내비게이션은 가상 커서의 개념을 바탕으로 다양한 문서의 다른 위치로 이동할 수 있습니다. **DocumentBuilder.MoveToXXX** 같은 방법 [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) · [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)· 이 가상 커서는 텍스트가 메소드를 호출 할 때 삽입 될지 나타냅니다. [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), 기타. 가상 커서에 대한 자세한 내용을 보려면 다음 기사 "Navigation with Cursor"를 참조하십시오.

다음 코드 예제는 책갈피로 탐색하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## 문서 건물 및 수정

Aspose.Words API 문서의 다양한 요소를 포맷 할 책임있는 여러 클래스를 제공합니다. 각 클래스는 텍스트, 단락, 섹션 및 기타와 같은 특정 문서 요소와 관련된 형식을 캡슐화합니다. 예를 들어, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) 클래스는 문자 포맷 속성을 나타냅니다, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) 클래스는 단락 서식 속성을 나타냅니다. 이 클래스의 개체는 해당 클래스에 의해 반환됩니다 **DocumentBuilder** 클래스와 같은 이름을 가진 속성. 따라서 문서 빌드에서 원하는 형식을 설정할 수 있습니다.

커서 위치에 텍스트, 체크 박스, ole 객체, 이미지, 북마크, 양식 필드 및 기타 문서 요소를 삽입할 수 있습니다. `Write` 방법 또는 어떤의 **DocumentBuilder.InsertXXX** 방법 등 [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), 그리고 유사한 방법.

간단한 문서를 만드는 방법을 보자 **DocumentBuilder**·

### DocumentBuilder를 사용하여 문서 작성

시작하려면, 당신은 만들 필요가 **DocumentBuilder** 그리고 그것을 **Document** 이름 * 새 인스턴스를 만듭니다. **DocumentBuilder** 생성자를 호출하고 그것을 전달 **Document** Builder에 첨부된 객체.

텍스트를 삽입하려면 문서에 삽입해야 할 텍스트의 문자열을 전달하십시오. **Write** 방법.

다음 코드 예제는 문서 빌더를 사용하여 간단한 문서를 만드는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### 문서 형식 지정

더 보기 [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) 속성은 텍스트 포맷을 정의합니다. 이 객체는 다른 글꼴 속성 (font 이름, 글꼴 크기, 색상 등)을 포함합니다. 일부 중요한 글꼴 속성은 또한 대표됩니다. **DocumentBuilder** 해당 이용 후기에 달린 코멘트가 없습니다. 이것들은 [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), · [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) boolean 속성.

다음 코드 예제는 형식 텍스트를 삽입하는 방법을 보여줍니다. **DocumentBuilder**::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- - - [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) 문서의 현재 위치에서 삽입된 모든 텍스트에 적용될 문자 포맷을 지정합니다.
- - - [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) 현재 및 모든 단락에 대한 단락을 지정합니다.
- - - [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) 현재 단면도를 위한 페이지와 단면도 재산을 지정하고 삽입될 전체 단면도.
- - - [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) · [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) 테이블 셀에 적용되고 문서의 현재 위치에서 행을 지정합니다.

이 상황에서는 "현재"는 위치, 단락, 섹션, 세포 또는 행을 의미한다.

{{% /alert %}}

{{% alert color="primary" %}}

주의사항 **Font**, **ParagraphFormat**, · **PageSetup** 이 속성은 문서의 다른 위치로 이동할 때마다 업데이트됩니다.

{{% /alert %}}
