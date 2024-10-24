---
title: 사용 `DocumentBuilder` 문서 요소를 삽입하려면
second_title: Aspose.Words 에 대한 C++
articleTitle: 사용 `DocumentBuilder` 문서 요소를 삽입하려면
linktitle: 사용 `DocumentBuilder` 문서 요소를 삽입하려면
type: docs
description: "문서 작성기를 사용하여 문서 요소 삽입 C++."
weight: 80
url: /ko/cpp/use-documentbuilder-to-insert-document-elements/
---

그 `DocumentBuilder` 문서를 수정하는 데 사용됩니다. 이 문서에서는 여러 작업을 수행하는 방법에 대해 설명하고 설명합니다:

## 텍스트 문자열 삽입

단순히 당신이 문서에 삽입 할 필요가 텍스트의 문자열을 전달 `DocumentBuilder.Write` 방법 텍스트 포맷은 `Font` 재산. 이 개체에는 다른 글꼴 속성(글꼴 이름,글꼴 크기,색상 등)이 포함되어 있습니다. 몇 가지 중요한 글꼴 속성은 또한 DocumentBuilder 속성을 통해 직접 액세스 할 수 있습니다. 부울 속성입니다 `Font.Bold`, `Font.Italic`,그리고 `Font.Underline`.

설정한 문자 서식은 문서의 현재 위치에서 삽입된 모든 텍스트에 적용됩니다.

아래의 예는 다음을 사용하여 서식있는 텍스트를 삽입합니다 DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-WriteAndFont-WriteAndFont.cpp" >}}

## 단락 삽입

 `DocumentBuilder.Writeln` 문서에 텍스트 문자열을 삽입하지만 단락 나누기를 추가합니다. 현재 글꼴 포맷은 또한 `DocumentBuilder.Font` 속성 및 현재 단락 서식은 `DocumentBuilder.ParagraphFormat` 재산. 아래 예는 문서에 단락을 삽입하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## 테이블 삽입

다음을 사용하여 테이블을 만드는 기본 알고리즘 DocumentBuilder 간단합니다.:

1. 다음을 사용하여 테이블 시작 `DocumentBuilder.StartTable`.
1. 다음을 사용하여 셀 삽입 `DocumentBuilder.InsertCell`. 그러면 자동으로 새 행이 시작됩니다. 필요한 경우 다음을 사용하십시오 `DocumentBuilder.CellFormat` 셀 서식을 지정하는 속성.
1. 다음을 사용하여 셀 내용 삽입 `DocumentBuilder` 방법.
1. 단계 반복 2 그리고 3 행이 완료 될 때까지.
1. 전화 `DocumentBuilder.EndRow` 현재 행을 종료합니다. 필요한 경우 다음을 사용하십시오 `DocumentBuilder.RowFormat` 행 서식을 지정하는 속성.
1. 단계 반복 2 - 5 테이블이 완성될 때까지
1. 전화 `DocumentBuilder.EndTable` 테이블 건물을 마무리합니다. 적절한 DocumentBuilder 테이블 생성 방법은 아래에 설명되어 있습니다.

### 테이블 시작

전화 `DocumentBuilder.StartTable` 테이블을 만드는 첫 번째 단계입니다. 이 경우 중첩 테이블을 시작하는 셀 내부에서도 호출 할 수 있습니다. 다음 호출 방법은 다음과 같습니다 `DocumentBuilder.InsertCell`.

### 셀 삽입

전화 한 후 `DocumentBuilder->InsertCell`,새 셀이 생성되고 다른 방법을 사용하여 추가하는 모든 콘텐츠가 생성됩니다. `DocumentBuilder` 클래스는 현재 셀에 추가됩니다. 같은 행에서 새 셀을 시작하려면 다음을 호출합니다 `DocumentBuilder->InsertCell` 다시. 사용 `DocumentBuilder.CellFormat` 셀 서식을 지정하는 속성. 그것은 반환 `CellFormat` 테이블 셀의 모든 서식을 나타내는 개체입니다.

### 행 종료

전화 `DocumentBuilder.EndRow` 현재 행을 완료합니다. 당신이 전화하는 경우 `DocumentBuilder->InsertCell` 그 직후 테이블은 새 행에서 계속됩니다.

사용 `DocumentBuilder.RowFormat` 행 서식을 지정하는 속성. 그것은 반환 `RowFormat` 테이블 행의 모든 서식을 나타내는 개체입니다.

### 테이블 종료

전화 `DocumentBuilder.EndTable` 현재 테이블을 완료합니다. 이 메서드는 다음 후에 한 번만 호출해야 합니다 `DocumentBuilder->EndRow` 호출되었습니다. 전화 할 때, `DocumentBuilder.EndTable` 커서를 현재 셀에서 테이블 바로 뒤의 위치로 이동합니다. 다음 예제에서는 다음을 포함하는 서식이 지정된 테이블을 작성하는 방법을 보여 줍니다 2 행 및 2 열.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cpp" >}}

## 휴식 삽입

새 줄,단락,열,섹션 또는 페이지를 명시적으로 시작하려면 다음을 호출합니다 `DocumentBuilder.InsertBreak`. 이 메서드에 삽입해야 하는 나누기 유형을 전달합니다. `BreakType` 열거 아래 예는 문서에 페이지 나누기를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.cpp" >}}

## 이미지 삽입

DocumentBuilder 의 여러 과부하를 제공합니다 `DocumentBuilder->InsertImage` 인라인 또는 부동 이미지를 삽입 할 수있는 방법. 이미지가 EMF 또는 WMF 메타 파일,그것은 메타 파일 형식으로 문서에 삽입됩니다. 다른 모든 이미지에 저장됩니다 PNG 형식 그 `DocumentBuilder->InsertImage` 방법은 다른 소스에서 이미지를 사용할 수 있습니다:

- 파일에서 또는 `URL` 문자열 매개 변수를 전달하여 `DocumentBuilder->InsertImage`.
- 한 하천에서 `Stream` 매개 변수 `DocumentBuilder->InsertImage`.
- 이미지 매개 변수를 전달하여 이미지 객체에서 `DocumentBuilder->InsertImage`.
- 바이트 배열 매개 변수를 전달하여 바이트 배열에서 `DocumentBuilder.InsertImage`.각각의 `DocumentBuilder->InsertImage` 방법,당신은 다음과 같은 옵션을 사용하여 이미지를 삽입 할 수 있도록 추가 오버로드가 있습니다:
- 예를 들어 특정 위치에서 인라인 또는 플로팅, `DocumentBuilder->InsertImage`.
- 백분율 척도 또는 사용자 정의 크기(예:, `DocumentBuilder.InsertImage`. 또한 `DocumentBuilder->InsertImage` 메소드는 `Shape` 셰이프의 속성을 추가로 수정할 수 있도록 방금 만들고 삽입한 개체입니다.

### 인라인 이미지 삽입

이미지를 포함하는 파일을 나타내는 단일 문자열을 `DocumentBuilder->InsertImage` 인라인 그래픽으로 문서에 이미지를 삽입합니다. 아래 예제에서는 커서 위치에 있는 인라인 이미지를 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cpp" >}}

### 부동(절대 위치)이미지 삽입

이 예제에서는 파일에서 부동 이미지를 삽입하거나 `URL` 지정된 위치 및 크기에서.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cpp" >}}

## 책갈피 삽입

문서에 책갈피를 삽입하려면 다음을 수행해야 합니다:

1. 전화 `DocumentBuilder->StartBookmark` 그것을 북마크의 원하는 이름을 전달.
1. 다음을 사용하여 책갈피 텍스트 삽입 DocumentBuilder 방법.
1. 전화 `DocumentBuilder.EndBookmark` 당신이 함께 사용한 것과 같은 이름을 전달 **DocumentBuilder->StartBookmark**.
1. 책갈피는 겹쳐서 모든 범위에 걸쳐 있을 수 있습니다. 유효한 책갈피를 만들려면 둘 다 호출해야 합니다 `DocumentBuilder->StartBookmark` 그리고 `DocumentBuilder->EndBookmark` 같은 책갈피 이름으로.

{{% alert color="primary" %}}

잘못 형성된 책갈피 또는 중복 이름을 가진 책갈피는 문서를 저장할 때 무시됩니다.

{{% /alert %}}

아래 예는 문서 빌더를 사용하여 문서에 책갈피를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.cpp" >}}

## 삽입 `Form` 필드

양식 필드는 사용자와의"교류"를 허용하는 단어 필드의 특정 사례입니다. 양식 필드 Microsoft Word 텍스트 상자,콤보 상자 및 확인란을 포함합니다.DocumentBuilder 문서에 양식 필드의 각 유형을 삽입하는 특별한 방법을 제공합니다: `DocumentBuilder.InsertTextInput`, `DocumentBuilder->InsertCheckBox`,그리고 `DocumentBuilder.InsertComboBox`. 양식 필드의 이름을 지정하면 같은 이름으로 책갈피가 자동으로 만들어집니다.

### 텍스트 입력 삽입

 `DocumentBuilder.InsertTextInput` 문서에 텍스트 상자를 삽입합니다. 아래 예는 문서에 텍스트 입력 양식 필드를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cpp" >}}

### 확인란 삽입

전화 `DocumentBuilder.InsertCheckBox` 문서에 확인란을 삽입합니다. 아래 예는 문서에 확인란 양식 필드를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cpp" >}}

### 콤보 상자 삽입

전화 `DocumentBuilder.InsertComboBox` 문서에 콤보 상자를 삽입합니다. 아래 예는 문서에 콤보 상자 양식 필드를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cpp" >}}

## 필드 수준에서 로캘 삽입

고객은 이제 필드 수준에서 로케일을 지정할 수 있으며 더 나은 제어를 달성 할 수 있습니다. 로캘 아이디는 내부의 각 필드와 연관 될 수 있습니다. DocumentBuilder. 아래 예제에서는 이 옵션을 사용하는 방법을 보여 줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

## 하이퍼링크 삽입

사용 `DocumentBuilder.InsertHyperlink` 문서에 하이퍼링크를 삽입합니다. 이 방법은 세 가지 매개 변수를 허용합니다:문서에 표시 할 링크의 텍스트,링크 대상(URL 또는 문서 안에 있는 책갈피의 이름)과 부울 매개 변수가 `URL` 문서 내의 책갈피 이름입니다.DocumentBuilder.InsertHyperlink 내부 통화 `DocumentBuilder.InsertField`.이 메서드는 항상 아포스트로피의 시작과 끝에 아포스트로피를 추가합니다. URL. 하이퍼링크 표시 텍스트의 글꼴 서식을 명시적으로 사용하여 지정해야 합니다 `Font` 재산. 아래 예는 다음을 사용하여 하이퍼 링크를 문서에 삽입합니다 DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## 올레 객체 삽입

당신이 원하는 경우 올레 객체 호출 `DocumentBuilder.InsertOleObject`. 이 방법에 전달 `ProgId` 명시 적으로 다른 매개 변수와 함께. 아래 예는 문서에 올레 개체를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cpp" >}}

## 개체 삽입 시 파일 이름 및 확장명 설정

OLE 패키지는 다음과 같은 경우 포함 된 객체를 저장하는 레거시 및"문서화되지 않은"방법입니다 OLE 핸들러는 알 수 없습니다. 일찍 Windows 다음과 같은 버전 Windows 3.1 95 번과 98 번에는 포장업자가 있었습니다.모든 유형의 데이터를 문서에 포함시키는 데 사용할 수 있는 응용 프로그램입니다. 지금,이 응용 프로그램에서 제외됩니다 Windows 하지만 MS 워드 및 기타 응용 프로그램은 여전히 다음과 같은 경우 데이터를 포함하는 데 사용합니다 OLE 핸들러가 없거나 알 수 없습니다. OlePackage 클래스에 액세스 할 수 있습니다 OLE 패키지 속성. 아래 예는 파일 이름,확장자 및 표시 이름을 설정하는 방법을 보여줍니다. OLE 패키지.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cpp" >}}

## 삽입 HTML

당신은 쉽게 삽입 할 수 있습니다 HTML 다음을 포함하는 문자열 HTML 조각 또는 전체 HTML 단어 문서로 문서. 그냥 이 문자열을 `DocumentBuilder->InsertHtml` 방법 이 방법의 유용한 구현 중 하나는 HTML 데이터베이스의 문자열과 문서에 삽입하는 동안 mail merge 문서 작성기의 다양한 방법을 사용하여 작성하는 대신 포맷 된 콘텐츠를 추가 할 수 있습니다. 아래 예는 삽입을 보여줍니다 HTML 문서를 사용하여 DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHtml.cpp" >}}

## 문서에 가로 규칙 삽입

수low code 예제는 다음을 사용하여 가로 규칙 모양을 문서에 삽입하는 방법을 보여줍니다 `DocumentBuilder->InsertHorizontalRule` 방법

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cpp" >}}
