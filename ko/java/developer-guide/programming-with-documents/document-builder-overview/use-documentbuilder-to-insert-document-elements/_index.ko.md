---
title: DocumentBuilder을 사용하여 문서 요소를 삽입합니다
second_title: Aspose.WordsJava
articleTitle: DocumentBuilder을 사용하여 문서 요소를 삽입합니다
linktitle: DocumentBuilder을 사용하여 문서 요소를 삽입합니다
type: docs
description: "Java의 문서 작성기를 사용하여 문서 요소를 삽입합니다."
weight: 10
url: /ko/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)은 문서를 수정하는 데 사용됩니다. 이 문서에서는 여러 작업을 수행하는 방법을 설명하고 설명합니다.

## 텍스트 문자열 삽입

단순히[DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String))메서드에 문서에 삽입 해야 하는 텍스트의 문자열을 전달 합니다. 텍스트 서식은`Font`속성에 의해 결정됩니다. 이 개체에는 다른 글꼴 속성(글꼴 이름,글꼴 크기,색상 등)이 포함되어 있습니다. 일부 중요한 글꼴 속성은[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)속성으로 표시되므로 직접 액세스할 수 있습니다. 부울 속성[Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold),[Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic)및[Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)입니다.

{{% alert color="primary" %}}

설정한 문자 서식은 문서의 현재 위치에서 삽입된 모든 텍스트에 적용됩니다.

{{% /alert %}}

다음 코드 예제에서는DocumentBuilder을 사용하여 서식이 지정된 텍스트를 삽입합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## 단락 삽입

DocumentBuilder.또한 문서로 텍스트 문자열을 삽입하지만 단락 나누기를 추가합니다. 현재 글꼴 서식은DocumentBuilder에 의해 지정됩니다.getFont속성 및 현재 단락 서식은DocumentBuilder에 의해 결정됩니다.getParagraphFormat속성.

다음 코드 예제에서는 문서에 단락을 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## 테이블 삽입

`DocumentBuilder`을 사용하여 테이블을 만드는 기본 알고리즘은 간단합니다.:

1. [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)을 사용하여 테이블을 시작합니다.
1. [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)을 사용하여 셀을 삽입합니다. 그러면 자동으로 새 행이 시작됩니다. 필요한 경우[DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)속성을 사용하여 셀 서식을 지정합니다.
1. `DocumentBuilder`방법을 사용하여 셀 내용을 삽입합니다.
1. 행이 완료 될 때까지 2 단계와 3 단계를 반복하십시오.
1. [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)을 호출하여 현재 행을 종료합니다. 필요한 경우[DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)속성을 사용하여 행 서식을 지정합니다.
1. 테이블이 완성될 때까지 2-5 단계를 반복합니다.
1. 테이블 빌딩을 완료하려면[DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)을 호출하십시오. 적절한DocumentBuilder테이블 생성 방법은 아래에 설명되어 있습니다.

### 테이블 시작

DocumentBuilder을 호출합니다.startTable은 테이블을 만드는 첫 번째 단계입니다. 셀 내부에서도 호출 할 수 있습니다.이 경우 중첩 테이블을 시작합니다. 호출할 다음 메서드는DocumentBuilder입니다.insertCell.

### 셀 삽입

DocumentBuilder를 호출 한 후.insertCell,새 셀이 생성되고`DocumentBuilder`클래스의 다른 메서드를 사용하여 추가하는 모든 콘텐츠가 현재 셀에 추가됩니다. 같은 행에서 새 셀을 시작하려면DocumentBuilder를 호출합니다.insertCell다시. DocumentBuilder를 사용합니다.getCellFormat셀 서식을 지정하는 속성. 테이블 셀의 모든 서식을 나타내는[getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)개체를 반환합니다.

### 행 종료

DocumentBuilder를 호출합니다.endRow현재 행을 완료합니다. DocumentBuilder를 호출하는 경우.insertCell그 직후 테이블은 새 행에서 계속됩니다. `DocumentBuilder.RowFormat`속성을 사용하여 행 서식을 지정합니다. 테이블 행의 모든 서식을 나타내는[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)개체를 반환합니다.

### 테이블 종료

DocumentBuilder을 호출합니다.endTable현재 테이블을 완료합니다. 이 메서드는DocumentBuilder다음에 한 번만 호출해야 합니다.endRow호출되었습니다. 호출할 때,DocumentBuilder.endTable현재 셀에서 커서를 테이블 바로 뒤에 있는 위치로 이동합니다. 다음 예제에서는 2 개의 행과 2 개의 열이 포함된 서식이 지정된 테이블을 작성하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## 휴식 삽입

새 줄,단락,열,섹션 또는 페이지를 명시적으로 시작하려면DocumentBuilder을 호출합니다.insertBreak. `BreakType`열거형으로 표시되는 삽입해야 하는 나누기 형식을 이 메서드에 전달합니다.
다음 코드 예제에서는 문서에 페이지 나누기를 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## 이미지 삽입

DocumentBuilder는 인라인 또는 부동 이미지를 삽입할 수 있는[DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte)메서드의 여러 오버로드를 제공합니다. 이미지가EMF또는WMF메타파일인 경우 메타파일 형식으로 문서에 삽입됩니다. 다른 모든 이미지는PNG형식으로 저장됩니다. DocumentBuilderinsertImage방법은 다른 소스의 이미지를 사용할 수 있습니다:

- 문자열 매개 변수를 전달하여 파일 또는`URL`에서
- `Stream`매개 변수를 전달하여 스트림에서
- 이미지 매개 변수를 전달하여 이미지 객체에서
- 바이트 배열 매개 변수를 전달하여 바이트 배열에서
- 및 기타

각DocumentBuilder에 대해insertImage메서드는 다음과 같은 옵션을 사용하여 이미지를 삽입 할 수 있도록 추가 오버로드가 있습니다:

- 특정 위치에서 인라인 또는 플로팅
- 백분율 가늠자 또는 주문 크기

또한,DocumentBuilder.insertImage메서드는 방금 생성되고 삽입된[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)개체를 반환하므로 셰이프의 속성을 추가로 수정할 수 있습니다.

### 인라인 이미지 삽입

이미지가 포함된 파일을 나타내는 단일 문자열을DocumentBuilder에 전달합니다.insertImage이미지를 인라인 그래픽으로 문서에 삽입합니다. 다음 코드 예제에서는 커서 위치에 있는 인라인 이미지를 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### 부동(절대 위치)이미지 삽입

이 예제에서는 파일 또는`URL`의 부동 이미지를 지정된 위치와 크기로 삽입합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## 책갈피 삽입

문서에 책갈피를 삽입하려면 다음을 수행해야 합니다:

1. 그것을 책갈피의 원하는 이름을 전달[DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String)를 호출합니다.
1. `DocumentBuilder`방법을 사용하여 책갈피 텍스트를 삽입합니다.
1. [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String)을 호출하여DocumentBuilder에서 사용한 것과 동일한 이름을 전달합니다.startBookmark.

책갈피는 겹쳐서 모든 범위에 걸쳐 있을 수 있습니다. 유효한 책갈피를 만들려면DocumentBuilder을 모두 호출해야 합니다.startBookmark과DocumentBuilderendBookmark책갈피 이름이 동일합니다.

잘못 형성된 책갈피 또는 중복 이름을 가진 책갈피는 문서를 저장할 때 무시됩니다.

다음 코드 예제에서는 문서 작성기를 사용하여 문서에 책갈피를 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## 필드 삽입

Microsoft Word문서의 필드는 필드 코드와 필드 결과로 구성됩니다. 필드 코드는 수식과 같으며 필드 결과는 수식에서 생성하는 값입니다. 필드 코드는 또한 특정 작업을 수행하기 위한 추가 명령인 필드 스위치를 포함할 수 있습니다. 키보드 단축키 고도+F9를 사용하여Microsoft Word에서 문서의 필드 코드와 결과를 표시하는 사이를 전환할 수 있습니다. 필드 코드는 중괄호(`{ }`)사이에 나타납니다.[DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)을 사용하여 문서에 필드를 만듭니다. 필드 유형,필드 코드 및 필드 값을 지정해야합니다. 특정 필드 코드 구문에 대해 잘 모르는 경우 먼저Microsoft Word에서 필드를 만들고 해당 필드 코드를 표시하도록 전환합니다.
다음 코드 예제에서는DocumentBuilder을 사용하여 병합 필드를 문서에 삽입합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## `Form`필드 삽입

양식 필드는 사용자와의"교류"를 허용하는 단어 필드의 특정 사례입니다. Microsoft Word의 양식 필드에는 텍스트 상자,Combobox및checkbox이 포함됩니다.DocumentBuilder는[DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int),[DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int)및[DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)의 각 양식 필드 유형을 문서에 삽입하는 특별한 방법을 제공합니다. 양식 필드의 이름을 지정하면 같은 이름으로 책갈피가 자동으로 만들어집니다.

### 텍스트 입력 삽입

DocumentBuilder.insertTextInput문서에 텍스트 상자를 삽입합니다. 다음 코드 예제에서는 텍스트 입력 양식 필드를 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### `CheckBox`삽입

DocumentBuilder을 호출합니다.insertCheckBoxcheckbox를 문서에 삽입합니다. 다음 코드 예제에서는checkbox양식 필드를 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### 콤보 상자 삽입

DocumentBuilder을 호출합니다.insertComboBox문서에 콤보 상자를 삽입합니다. 다음 코드 예제에서는 콤보 상자 양식 필드를 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## 필드 수준에서 로캘 삽입

고객은 이제 필드 수준에서 로케일을 지정할 수 있으며 더 나은 제어를 달성 할 수 있습니다. 로캘 아이디는DocumentBuilder내의 각 필드와 연관될 수 있습니다. 아래 예제에서는 이 옵션을 사용하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## HTML삽입

HTML조각 또는 전체HTML문서가 포함된HTML문자열을 단어 문서에 쉽게 삽입할 수 있습니다. 이 문자열을DocumentBuilder에 전달하십시오.insertHtml방법 이 방법의 유용한 구현 중 하나는 데이터베이스에HTML문자열을 저장하고Mail Merge동안 문서에 삽입하여 문서 작성기의 다양한 방법을 사용하여 작성하는 대신 포맷 된 콘텐츠를 추가하는 것입니다. 다음 코드 예제에서는DocumentBuilder을 사용하여 문서에HTML삽입을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## 하이퍼링크 삽입

DocumentBuilder을 사용합니다.insertHyperlink문서에 하이퍼링크를 삽입합니다. 이 메서드는 문서에 표시할 링크의 텍스트,링크 대상(URL또는 문서 내부의 책갈피 이름)및`URL`가 문서 내부의 책갈피 이름인 경우 참이어야 하는 부울 매개 변수의 세 가지 매개 변수를 허용합니다.DocumentBuilder.insertHyperlink은 내부적으로DocumentBuilder을 호출합니다.insertField. 메서드는 항상URL의 시작과 끝에 아포스트로피를 추가합니다. `Font`속성을 사용하여 하이퍼링크 표시 텍스트의 글꼴 서식을 명시적으로 지정해야 합니다. 다음 코드 예제에서는DocumentBuilder을 사용하여 하이퍼링크를 문서에 삽입합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 목차 삽입

[DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String)메서드를 호출하여 현재 위치에서`TOC`(목차)필드를 문서에 삽입할 수 있습니다. DocumentBuilderinsertTableOfContents메서드는`TOC`필드 만 문서에 삽입합니다. 목차를 만들고 페이지 번호에 따라 표시하려면 필드를 삽입한 후**Document.UpdateFields**메서드를 모두 호출해야 합니다. 다음 코드 예제에서는 목차 필드를 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Ole개체 삽입

Ole개체 호출[DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)을 원하는 경우.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Ole개체를 삽입할 때 파일 이름 및 확장명 설정

OLE패키지는OLE핸들러를 알 수없는 경우 포함 된 객체를 저장하는 레거시 및"문서화되지 않은"방법입니다. Windows 3.1,95 및 98 과 같은 초기Windows버전에는Packager.exe응용 프로그램이 있었는데,이는 문서에 모든 유형의 데이터를 포함시키는 데 사용할 수있었습니다. 이제 이 응용 프로그램은Windows에서 제외되지만MS워드 및 기타 응용 프로그램은OLE핸들러가 없거나 알 수 없는 경우 데이터를 포함하는 데 여전히 사용합니다. OlePackage클래스는OLE Package속성에 액세스 할 수 있습니다.다음 코드 예제에서는OLE Package의 파일 이름,확장명 및 표시 이름을 설정하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## OLE개체 원시 데이터에 액세스

다음 코드 예제에서는`OleFormat.GetRawData`()메서드를 사용하여OLE개체 원시 데이터를 가져오는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## 문서에 가로 규칙 삽입

다음 코드 예제에서는`DocumentBuilder.InsertHorizontalRule`메서드를 사용하여 가로 규칙 모양을 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## 도형 작업

### 인라인 및 자유 플로팅 도형 삽입

`DocumentBuilder.InsertShape`방법을 사용하여 지정된 유형 및 크기의 인라인 모양과 지정된 위치,크기 및 텍스트 줄 바꿈 유형의 자유 부동 모양을 문서에 삽입 할 수 있습니다. `DocumentBuilder.InsertShape`메서드를 사용하면DML도형을 문서 모델에 삽입할 수 있습니다. 문서는DML모양을 지원하는 형식으로 저장되어야 하며,그렇지 않으면 문서 저장 중에 이러한 노드가VML모양으로 변환됩니다. 다음 코드 예제에서는 이러한 형식의 도형을 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### 캡처 코너 사각형 만들기

Aspose.Words를 사용하여 캡처 모서리 사각형을 만들 수 있습니다. 모양 유형은SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, 그리고DiagonalCornersRounded DML모양은 이러한 모양 유형을 사용하여`DocumentBuilder.InsertShape`방법을 사용하여 만들어집니다. 이러한 유형은VML모양을 만드는 데 사용할 수 없습니다. "모양"클래스의 공용 생성자를 사용하여 모양을 만들려고 하면"NotSupportedException"예외가 발생합니다. 다음 코드 예제에서는 이러한 형식의 도형을 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### XML을 도형으로DOM로 사용하여 도형을 가져옵니다.

`LoadOptions.ConvertShapeToOfficeMath`속성을 사용하여EquationXML이 있는 도형을 사무실 수학 개체로 변환할 수 있습니다. 이 속성의 기본값은MS단어 동작에 해당합니다.즉,방정식XML이 있는 모양은 사무실 수학 객체로 변환되지 않습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
