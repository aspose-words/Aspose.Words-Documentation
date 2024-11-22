---
title: 제품 정보 `DocumentBuilder` Document Elements를 삽입하려면
second_title: Aspose.Words 제품정보 Java
articleTitle: 제품 정보 `DocumentBuilder` Document Elements를 삽입하려면
linktitle: 제품 정보 `DocumentBuilder` Document Elements를 삽입하려면
type: docs
description: "문서 빌더를 사용하여 문서 요소 삽입 Java·"
weight: 10
url: /ko/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

더 보기 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 문서 수정에 사용됩니다. 이 문서는 설명하고 여러 작업을 수행하는 방법을 설명합니다.

## 텍스트의 문자열 삽입

텍스트의 문자열을 전달하면 문서에 삽입해야합니다. [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String)) 방법. 텍스트 형식은 결정된다 `Font` 호텔 위치 이 객체는 다른 글꼴 속성 (font 이름, 글꼴 크기, 색상 등)을 포함합니다. 일부 중요한 글꼴 속성은 또한 대표됩니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 해당 이용 후기에 달린 코멘트가 없습니다. 이들은 Boolean 재산입니다 [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), · [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)·

{{% alert color="primary" %}}

설정된 문자 형식은 문서의 현재 위치에서 삽입된 모든 텍스트에 적용됩니다.

{{% /alert %}}

다음 코드 예제 DocumentBuilder를 사용하여 포맷 된 텍스트를 삽입합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## 퍼프를 삽입

DocumentBuilder.writeln은 문서에 텍스트의 문자열을 삽입하고 또한 단락을 추가합니다. 현재 글꼴 형식은 DocumentBuilder에 의해 지정됩니다. 이름 * Font 속성과 현재 단락 형식은 DocumentBuilder.getParagraphFormat 속성에 의해 결정됩니다

다음 코드 예제는 문서에 단락을 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## 테이블 삽입

기본 알고리즘을 사용하여 테이블을 만듭니다. `DocumentBuilder` 간단한 것:

1. 명세 테이블을 시작 [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)·
1. 명세 세포를 삽입 [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)· 이것은 자동으로 새로운 행을 시작합니다. 필요한 경우, 사용 [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) cell formatting을 지정하는 속성.
1. 명세 본문내용 바로가기 `DocumentBuilder` 방법.
1. 명세 반복 단계 2 및 3 행이 완료 될 때까지.
1. 명세 이름 * [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 현재 줄을 종료합니다. 필요한 경우, 사용 [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) 열 포맷을 지정하는 속성.
1. 명세 반복 단계 2 - 5 테이블이 완료 될 때까지.
1. 명세 이름 * [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) 테이블 건물을 끝내기 위하여. 적절한 DocumentBuilder 테이블 생성 방법은 아래에 설명되어 있습니다.

### 테이블 시작

Calling DocumentBuilder.스타트 테이블은 테이블을 건설하는 첫 단계입니다. 셀 내부라고도 할 수 있습니다.이 경우 둥지 테이블을 시작합니다. 다음 호출 방법은 DocumentBuilder.insertCell입니다.

### 셀을 삽입

DocumentBuilder를 호출 한 후. 기타 제품 세포, 새로운 세포가 생성되고 당신이 다른 방법을 사용하여 추가하는 내용 `DocumentBuilder` 클래스는 현재 셀에 추가됩니다. 같은 행에 새로운 세포를 시작하려면 DocumentBuilder를 호출하십시오. 기타 제품 세포 다시. DocumentBuilder.getCell 사용 포맷 속성은 셀 포맷을 지정합니다. 그것은 반환 [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) 테이블 셀에 대한 모든 포맷을 나타내는 객체.

### 행 종료

자주 묻는 질문 현재 줄을 완료합니다. DocumentBuilder를 호출하면 됩니다. 기타 제품 그 후에 즉시 세포, 그 후에 테이블은 새로운 줄에 계속합니다. 사용 방법 `DocumentBuilder.RowFormat` 열 포맷을 지정하는 속성. 그것은 반환 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) 테이블 행의 모든 형식을 나타내는 객체.

### 테이블 종료

자주 묻는 질문 테이블은 현재 테이블을 완료합니다. 이 방법은 DocumentBuilder 후 한 번만 호출해야합니다. endRow 라고. 호출시 DocumentBuilder.end 테이블은 테이블 후 위치에 현재 셀에서 커서를 이동합니다. 다음 예제는 2 행과 2 열을 포함하는 형식 테이블을 구축하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## 틈을 삽입

명시적으로 새로운 줄, 단락, 열, 섹션, 또는 페이지, 호출 DocumentBuilder. 삽입Break. 이 방법의 유형에 전달 당신이 삽입해야 할 휴식 `BreakType` 관련 기사
다음 코드 예제는 페이지를 삽입하는 방법을 보여줍니다 문서에.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## 이미지 삽입

DocumentBuilder는 여러 하중을 제공합니다. [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) 인라인 또는 플로팅 이미지를 삽입 할 수있는 방법. 이미지가 EMF 또는 WMF 메타파일인 경우, 메타파일 형식의 문서에 삽입됩니다. 다른 모든 이미지는 PNG 형식으로 저장됩니다. DocumentBuilder.insert는 이미지 방법은 다른 근원에서 이미지를 사용할 수 있습니다:

- 파일에서 또는 `URL` string 매개 변수 전달
- 스트림에서 전달 `Stream` 이름 *
- 이미지 매개 변수를 전달하여 이미지 객체에서
- 바이트 배열 매개 변수를 전달하여 바이트 배열에서
- - - 기타

DocumentBuilder의 각각을 위해. 기타 제품 이미지 방법, 당신은 뒤에 오는 선택권으로 이미지를 삽입할 수 있는 더 하중 초과가 있습니다:

- 특정 위치에 인라인 또는 뜨기
- Percentage 가늠자 또는 주문 크기

또한 DocumentBuilder.insert Image 방법 반환 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 단순히 생성하고 삽입 된 객체 그래서 더 모양의 속성을 수정할 수 있습니다.

### 인라인 이미지 삽입

DocumentBuilder에 이미지를 포함하는 파일을 나타내는 단일 문자열을 전달합니다. 기타 제품 이미지는 인라인 그래픽으로 문서를 삽입합니다. 다음 코드 예제는 문서에 커서 위치에 인라인 이미지를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### 플로팅 삽입 (Absolutely Positioned) 이미지

이 예제는 파일에서 플로팅 이미지를 삽입하거나 `URL` 지정된 위치 및 크기로.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## 즐겨찾기에 추가

문서에 책갈피를 삽입하려면 다음을 수행해야합니다

1. 명세 이름 * [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) 책갈피의 원하는 이름을 전달합니다.
1. 명세 bookmark 텍스트를 삽입 `DocumentBuilder` 방법.
1. 명세 이름 * [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) DocumentBuilder.startBookmark와 함께 사용하는 동일한 이름을 전달합니다.

책갈피는 어떤 범위든지 극복할 수 있습니다. DocumentBuilder.startBookmark 및 DocumentBuilder.endBookmark와 같은 책갈피 이름을 호출해야합니다 유효한 책갈피를 만들려면.

잘못된 모양 책갈피 또는 중복 이름과 책갈피는 문서가 저장될 때 무시될 것입니다.

다음 코드 예제는 문서 빌더를 사용하여 책갈피를 문서에 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## 본문 바로가기

제품정보 Microsoft Word 문서는 필드 코드와 필드 결과로 구성됩니다. 필드 코드는 수식과 필드 결과는 수식이 생성되는 값입니다. 필드 코드는 특정 작업을 수행하는 추가 지침 인 필드 스위치를 포함 할 수 있습니다. 표시 필드 코드와 문서의 결과 사이에 전환 할 수 있습니다 Microsoft Word 키보드 단축 Alt+F9를 사용하여. 필드 코드는 컬리 브레이스 사이에서 나타납니다 ( { } ). 사용 [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) 문서의 필드를 만듭니다. 필드 타입, 필드 코드 및 필드 값을 지정해야 합니다. 특정 필드 코드 구문에 대해 확실하지 않은 경우, 필드를 만듭니다. Microsoft Word 먼저 입력하여 필드 코드를 볼 수 있습니다
다음 코드 예제는 DocumentBuilder를 사용하여 병합 필드를 삽입합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## 연결하기 `Form` 제품정보

양식 필드는 사용자가 "interaction"을 허용하는 Word 필드의 특정 사례입니다. 본문 바로가기 Microsoft Word textbox, Combobox 및 checkbox를 포함합니다. DocumentBuilder는 각 유형의 양식 필드를 문서에 삽입하는 특수 방법을 제공합니다. [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) · [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), · [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)· 양식 필드의 이름을 지정하면 책갈피는 같은 이름으로 자동으로 생성됩니다.

### 텍스트 입력 삽입

DocumentBuilder.insertTextInput 문서에 textbox를 삽입합니다. 다음 코드 예제는 텍스트 입력 양식 필드를 문서에 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### 연결하기 `CheckBox`

문서 작성 CheckBox 문서에 체크박스를 삽입합니다. 다음 코드 예제는 체크 박스 양식 필드를 문서에 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### 콤보 박스 삽입

문서 작성ComboBox 문서에 combo 상자를 삽입합니다. 다음 코드 예제는 combo box form 필드를 문서에 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## 필드 레벨에서 Locale 삽입

고객 지정 필드 수준에서 Locale 이제 더 나은 제어를 달성 할 수 있습니다. 한국어 Ids는 DocumentBuilder 내부 각 필드와 관련 될 수 있습니다. 아래 예제는이 옵션의 사용을 만드는 방법을 설명합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## HTML 삽입

HTML 파편 또는 전체 HTML 문서를 Word 문서에 포함 HTML 문자열을 쉽게 삽입 할 수 있습니다. DocumentBuilder에 이 문자열을 전달합니다. 기타 제품 Html 방법. 방법의 유용한 구현 중 하나는 데이터베이스에 HTML 문자열을 저장하고 문서에 삽입하는 것입니다 Mail Merge 문서 제작자의 다양한 방법을 사용하여 건물 대신 형식화 된 콘텐츠를 얻을 수 있습니다. 다음 코드 예제는 DocumentBuilder를 사용하여 HTML을 삽입합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## 하이퍼링크 삽입

DocumentBuilder.insertHyperlink를 사용하여 하이퍼링크를 문서에 삽입합니다. 이 방법은 문서, 링크 대상 (URL 또는 문서 내 책갈피의 이름) 및 boolean 매개 변수에 표시된 링크의 텍스트를 수락 true 만약에 `URL` 문서 안에 책갈피의 이름입니다. DocumentBuilder.insertHyperlink 내부에서 DocumentBuilder.insertField를 호출합니다. 메소드는 항상 URL의 시작과 끝에서 apostrophes를 추가합니다. 하이퍼링크 디스플레이 텍스트에 대한 글꼴 형식을 지정해야합니다. `Font` 호텔 위치 다음 코드 예제는 DocumentBuilder를 사용하여 문서에 하이퍼 링크를 삽입합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 본문 바로가기

당신은 삽입 할 수 있습니다 `TOC` (내용의 테이블) 필드는 현재 위치에 문서로 호출하여 [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) 방법. DocumentBuilder.insertTableOfContents 메소드만 삽입됩니다. `TOC` 문서에 필드. 내용의 테이블을 구축하고 페이지 번호에 따라 표시하려면 둘 다 **Document.UpdateFields**방법은 필드의 삽입 후 호출해야합니다. 다음과 같은 코드 예제는 문서에 내용 필드의 테이블을 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Ole 개체 삽입

Ole Object 호출을 원하신다면 [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)·

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Ole 개체를 삽입 할 때 파일 이름과 확장 설정

OLE 패키지는 OLE 핸들러가 알 수없는 경우 임베디드 개체를 저장하는 레거시 및 "undocumented"방법입니다. 상세 정보 Windows 같은 버전 Windows 3.1, 95 및 98은 포장업자가 있었습니다. 문서에 어떤 유형의 데이터를 포함 할 수있는 exe 응용 프로그램입니다. 이제이 응용 프로그램은 제외됩니다 Windows 그러나 MS Word 및 기타 응용 프로그램은 여전히 OLE 핸들러가 누락되거나 알 수없는 경우 데이터를 embed. OlePackage 클래스는 OLE 패키지 속성에 액세스 할 수 있습니다. 다음 코드 예제는 OLE 패키지의 파일 이름, 확장 및 표시 이름을 설정하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## OLE Object Raw Data에 대한 액세스

다음 코드 예제는 OLE를 얻는 방법을 보여줍니다 Object raw data 사용 `OleFormat.GetRawData`() 방법.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## 삽입 수평 규칙 문서

다음 코드 예제는 수평 규칙 모양의 문서를 사용하여 삽입하는 방법을 보여줍니다 `DocumentBuilder.InsertHorizontalRule` 방법.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## 모양과 일

### 인라인 및 Free-floating Shapes 삽입

지정된 유형과 크기 및 지정된 위치, 크기 및 텍스트 랩 유형과 무료 플로팅 모양을 사용하여 지정된 유형과 인라인 모양을 삽입 할 수 있습니다. `DocumentBuilder.InsertShape` 방법. 더 보기 `DocumentBuilder.InsertShape` 방법은 문서 모델에 DML 모양을 삽입 할 수 있습니다. 문서는 DML 모양을 지원하는 형식으로 저장되어야 합니다. 그렇지 않으면 이러한 노드는 VML 모양으로 변환됩니다. 문서 저장. 다음 코드 예제는 문서에 이러한 유형의 모양을 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### Snip 코너 장방형 만들기

snip 코너 직사각형을 만들 수 있습니다. Aspose.Words· 모양 유형은 SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRounded입니다 OneSnipped, SingleCornerRounded, TopCornersRounded 및 DiagonalCornersRounded. DML 모양은 사용 `DocumentBuilder.InsertShape` 이 모양 유형의 방법. 이 유형은 VML 모양을 만들 수 없습니다. "Shape" 클래스의 공개 생성기를 사용하여 모양을 만들려면 "NotSupportedException" 예외를 제기합니다. 다음 코드 예제는 문서에 이러한 유형의 모양을 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### Math XML을 사용하여 모양으로 가져 오기 DOM

사용 가능 `LoadOptions.ConvertShapeToOfficeMath` EquationXML을 Office Math 개체로 변환하는 속성. 이 속성의 기본 값은 MS Word 행동 i.e에 해당합니다. 방정식 XML과 모양은 Office 수학 객체로 변환되지 않습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
