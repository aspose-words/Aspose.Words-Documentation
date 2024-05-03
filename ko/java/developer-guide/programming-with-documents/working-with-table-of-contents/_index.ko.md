---
title: 본문내용 바로가기 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 본문내용 바로가기
linktitle: 본문내용 바로가기
description: "세부사항에 있는 내용 분야의 테이블. 생성 및 수정 `TOC` 본문 바로가기 Java·"
type: docs
weight: 170
url: /ko/java/working-with-table-of-contents/
---

당신은 내용 (TOC)의 테이블을 포함하는 문서와 함께 작동합니다. 사용 방법 Aspose.Words 몇 줄의 코드를 사용하여 문서의 기존 테이블을 완전히 재구성 할 수 있습니다.

이 문서는 내용 필드의 테이블과 작업하는 방법을 설명하고 설명합니다:

- 새로운 TOC를 삽입하는 방법.
- 문서의 새로운 또는 기존 TOCs 업데이트.
- TOC의 포맷 및 전체 구조를 제어하기 위해 스위치를 지정합니다.
- 내용 표의 스타일과 외관을 수정하는 방법.
- 전체를 제거하는 방법 `TOC` 문서의 모든 항목과 함께 필드.

## 본문 바로가기

당신은 삽입 할 수 있습니다 `TOC` (내용의 테이블) 필드는 현재 위치에 문서로 호출하여 [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) 방법.

Word 문서의 내용의 테이블은 다양한 옵션을 사용하여 여러 가지 방법으로 구축 할 수 있습니다. 테이블을 구축하고 문서에 표시하는 방법을 제어하는 필드 스위치.

기본 스위치는 `TOC` 관련 제품 Microsoft Word 이름 * **""\o"1-3 \h \z \u"**· 이 스위치뿐만 아니라 지원되는 스위치의 목록은 기사에서 나중에 찾을 수 있습니다. 올바른 스위치를 얻거나 이미 유사한 문서가 있다면 가이드를 사용할 수 있습니다. `TOC` 필드 코드 (*ALT+F9*)를 표시하고 필드에서 스위치를 직접 복사 할 수 있습니다.

다음 코드 예제는 문서에 내용 필드의 테이블을 삽입하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

다음 코드 예제는 항목으로 heading 스타일을 사용하여 문서에 텍스트 (TOC)의 테이블을 삽입하는 방법을 설명합니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

이 코드는 새 테이블의 내용을 공백 문서에 삽입합니다. 더 보기 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 클래스는 다음 TOC에 포함 된 콘텐츠를 표시하는 데 사용되는 적절한 헤드 스타일을 사용하여 샘플 콘텐츠 포맷을 삽입하는 데 사용됩니다. 다음 줄은 다음과 같습니다. `TOC` 문서의 필드와 페이지 레이아웃을 업데이트함으로써.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

예를 들어, 출력 문서를 열 때 사용되는 방법없이, 당신은 찾을 수 있습니다 `TOC` 필드, 하지만 눈에 띄는 내용. 이것은 때문에 `TOC` 필드가 삽입되었지만 문서에서 업데이트 될 때까지 아직 팝업되지 않았습니다. 이에 대한 추가 정보는 다음 섹션에서 논의됩니다.

{{% /alert %}}

## 본문 바로가기

Aspose.Words 완전히 업데이트 할 수 있습니다. `TOC` 몇 줄의 코드와 함께. 새로 삽입 할 수 있습니다. `TOC` 또는 기존 업데이트 `TOC` 문서의 변경 후 작성되었습니다.

다음 두 가지 방법이 업데이트되어야합니다. `TOC` 문서의 필드:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

이 두 가지 업데이트 방법은 그 순서로 호출해야합니다. 내용의 테이블을 반전하면 팝업되지만 페이지 번호가 표시되지 않습니다. 다른 TOCs의 어떤 수든지 개정될 수 있습니다. 이 방법은 문서에서 발견 된 모든 TOCs를 자동으로 업데이트합니다.

다음 코드 예제는 완전히 재건하는 방법을 보여줍니다 `TOC` invoking 필드 업데이트에 의해 문서의 필드:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

첫 번째 호출 [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) 설치하기 <span notrans="<span notrans=" `TOC`"=""></span>· 모든 텍스트 항목은 팝업 및 `TOC` 거의 완료됩니다. 누락 된 유일한 것은 이제 페이지 번호는 "?"로 표시됩니다.

두 번째 호출 [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) 메모리에 문서의 레이아웃을 구축합니다. 이 항목의 페이지 번호를 수집 할 필요가있다. 이 호출에서 계산 된 올바른 페이지 번호는 TOC에 삽입됩니다.

## Content Behavior의 Control Table에 Switch를 사용합니다

다른 어떤 분야로, `TOC` 필드는 내용의 테이블이 내장되는 방법을 제어하는 필드 코드 내에서 정의된 스위치를 허용할 수 있습니다. 특정 스위치는 어떤 항목이 포함되고 어떤 수준에서 다른 사람들이 TOC의 외관을 제어하는 데 사용됩니다. Switches는 복잡한 콘텐츠를 제작할 수 있도록 결합할 수 있습니다.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


기본적으로, 위의 이 스위치는 기본적으로 삽입할 때 포함되어 있습니다. `TOC` 문서에. · `TOC` 스위치가 내장된 헤드링 스타일의 내용이 포함되지 않습니다 ( \O 스위치가 설정되면).

이용안내 `TOC` 지원되는 스위치 Aspose.Words 아래에 나열되어 있으며 그 용도는 세부 사항에 설명되어 있습니다. 그들은 그들의 유형에 근거를 둔 분리되는 단면도로 분할될 수 있습니다. 첫번째 단면도에 있는 스위치는 어떤 내용든지에서 포함하기 위하여 정의합니다 `TOC` 그리고 두번째 단면도에 있는 스위치는 TOC의 외관을 통제합니다.

스위치가 여기에 나열되지 않은 경우 현재 지원되지 않습니다. 모든 스위치는 앞으로 버전에서 지원될 것입니다. 우리는 각 릴리스에 더 많은 지원을 추가하고 있습니다.

### 입력 표시 스위치

|  기타 제품 | 이름 * |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O 스위치)* <br/> | <p>이 스위치는 정의한다 `TOC` 내장된 헤드링 스타일에 내장되어야 합니다. 내 계정 Microsoft Word, 이들은 Heading 1 – Heading에 의해 정의됩니다. 9. 안으로 Aspose.Words 이 스타일은 해당 StyleIdentifier enumeration에 의해 표현됩니다. 이 enumeration은 예를 들어 스타일의 Locale-independent 식별자를 나타냅니다. `StyleIdentifier.Heading1` Heading 1 스타일을 나타냅니다. 이 기능을 사용하여 스타일 컬렉션에서 스타일링 및 속성을 검색 할 수 있습니다. 해당 스타일 클래스는 retrieved 할 수 있습니다 `Document.Styles` type StyleIdentifier의 색인된 속성을 사용하여 수집합니다.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>이 스타일로 포맷 된 내용은 내용의 테이블에 포함되어 있습니다. heading의 수준은 TOC의 항목의 대응 계층 수준을 정의합니다. 예를 들어, Heading 1 스타일의 단락은 첫 번째 수준으로 치료됩니다. `TOC` Heading 2의 단락은 계층의 다음 단계로 처리됩니다.</p>
 |
| **Outline Levels** <br/> *(\U 스위치)* <br/> | <p>각 단락은 퍼프 옵션의 개요 수준을 정의 할 수 있습니다.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>이 설정은 문서 hierarchy에서이 단락을 처리해야합니다. 문서의 레이아웃을 쉽게 구조하는 데 사용되는 일반적으로 사용되는 연습입니다. 이 hierarchy는 개요 보기로 변경하여 볼 수 있습니다. Microsoft Word· 스타일과 마찬가지로, "바디 텍스트"레벨 이외에 1 – 9 개 인라인 레벨이있을 수 있습니다. 개략 수준 1 – 9는 나타납니다 `TOC` 계층의 대응 수준에서 <br/>단락 작풍에서 놓이거나 직접 단락 자체에 있는 개요 수준에 어떤 내용든지 TOC에 포함됩니다. 내 계정 Aspose.Words outline 레벨은 다음과 같습니다. `ParagraphFormat.OutlineLevel` Paragraph 노드의 속성. 단락 작풍의 개요 수준은 동일한 방법으로 대표됩니다 `Style.ParagraphFormat` 호텔 위치</p>

<p>{{% alert color="primary" %}}</p>

<p>Heading 1과 같은 헤드링 스타일에 내장 된 헤드링 스타일은 스타일 설정의 개요 레벨 컴퓨서가 있습니다.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> * (\T 스위치) * <br/> | <p>이 스위치는 TOC에서 사용할 수 있는 항목을 수집할 때 사용자 정의 스타일을 허용합니다. 이것은 \O 스위치와 함께 종종 TOC의 내장 헤드 스타일과 함께 사용자 정의 스타일을 포함. <br/>스위치의 모수는 연설 표 안에 동봉되어야 합니다. 많은 사용자 정의 스타일은 포함 될 수 있습니다, 각 스타일에 대 한, 이름은 다음과 같이 지정 해야 합니다. `TOC` 이름 * 또 다른 스타일도 comma와 분리되어 있습니다. <br/>예를 들어</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>CustomHeading1 으로 1 의 콘텐츠 스타일링 `TOC` 그리고 CustomHeading2 레벨 2</p>
 |
| TC 필드 사용 <br/> *(\F 및 \L 스위치)* <br/> | <p>이전 버전의 Microsoft Word, 유일한 방법 구축 `TOC` TC 필드의 사용이었다. 이 필드는 필드 코드가 표시될 때 문서에 숨겨져 있습니다. 항목에 표시되어야하는 텍스트를 포함 `TOC` 그들에게서 건축됩니다. 이 기능은 이제 매우 자주 사용되지 않지만 여전히 일부 경우에 유용합니다. `TOC` 문서에 보이지 않는 것이 아닙니다. <br/>이 필드를 삽입하면 필드 코드가 표시됩니다. 숨겨진 콘텐츠를 표시하지 않고 볼 수 없습니다. 이 필드 쇼 단락 형식을 보려면 선택해야합니다.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>이 필드는 다른 필드와 같은 모든 위치에 문서에 삽입 될 수 있으며 대표됩니다. `FieldType.FieldTOCEntry` 관련 기사<br/>\F 스위치 `TOC` TC 필드가 항목으로 사용되어야한다는 것을 지정하는 데 사용됩니다. 추가 식별자가없는 자체의 스위치는 문서의 TC 필드가 포함된다는 것을 의미합니다. 어떤 추가 매개 변수, 종종 단일 문자, 일치 \f 스위치가 TOC에 포함 될 TC 필드를 지정합니다. 예를 들어 *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>TC 필드만 포함</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>더 보기 `TOC` 필드에는 관련 스위치가 있습니다. "\L" 스위치는 지정된 범위 내에서 레벨을 가진 TC 필드 만 포함되어 있습니다.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>더 보기 `TC` 필드는 또한 할 수 있습니다 {several, `multiple`, a few, `many`, numerous} 스위치 세트. 이것들은:</p>

<p>- \F - 상기 설명. * 이름</p>

<p>- \L - 수준에 따라 달라지는 편향 `TOC` 이 TC 필드가 나타납니다. · `TOC` 이 같은 스위치를 사용하는 것은 지정된 범위 내에서이 TC 필드를 포함 할 것입니다.</p>

<p>- _ \N - 이 페이지 번호 `TOC` 입장은 표시되지 않습니다. TC 필드를 삽입하는 방법의 샘플 코드는 다음 섹션에서 찾을 수 있습니다.</p>
 |

### 외관 관련 스위치

|  기타 제품 | 이름 * |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N 스위치)* | <p>이 스위치는 TOC의 특정 수준에 대한 페이지 번호를 숨기는 데 사용됩니다. 예를 들어, 정의할 수 있습니다.</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>그리고 레벨 3과 4의 항목에 페이지 번호는 리더 도트와 함께 숨겨져있을 것입니다 (어떤 경우). 범위를 하나만 지정하려면 여전히 사용되어야 합니다. 예를 들어, "1-1"는 첫 번째 레벨만 페이지 번호를 제외합니다. <br/>레벨 범위를 공급하는 것은 TOC의 모든 레벨에 대한 페이지 번호를 올립니다. HTML 또는 유사한 형식으로 문서를 내보내면 설정할 수 있습니다. HTML 기반 형식이 어떤 페이지 개념이 없으므로 페이지 번호가 필요하지 않습니다.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| 하이퍼링크로 삽입 <br/> *(\H 스위치)* | <p>이 스위치는 그것을 지정합니다 `TOC` 항목은 하이퍼 링크로 삽입됩니다. 문서 보기 Microsoft Word 이 항목은 여전히 정상적인 텍스트로 나타납니다. `TOC` 그러나 하이퍼 링크되고 따라서 *Ctrl + 왼쪽 클릭 *를 사용하여 문서의 원본 항목의 위치를 탐색 할 수 있습니다 Microsoft Word· 이 스위치가 포함되면이 링크는 다른 형식으로 보존됩니다. 예를 들어, EPUB 및 PDF와 같은 렌더링 된 형식을 포함한 HTML 기반 형식 XPS, 이들은 일 연결으로 수출될 것입니다. <br/>이 스위치 세트 없이, `TOC` 이 출력의 모든 것은 일반 텍스트로 수출되며이 동작을 설명하지 않습니다. 문서가 MS Word에서 열면 항목의 텍스트는이 방법으로 클릭 할 수 없지만 페이지 번호는 원래 항목으로 탐색하는 데 사용할 수 있습니다.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P 스위치)* <br/> | <p>이 스위치는 TOC에서 쉽게 변경할 수 있는 항목 및 페이지 번호의 제목을 분리하는 콘텐츠를 허용합니다. 사용 분리기는 이 스위치 후에 지정되어야 하고 연설 표에서 동봉되어야 합니다. <br/>Office 문서에 문서화 된 것을 대비하면 최대 5 개 대신 하나의 문자만 사용할 수 있습니다. 이것은 MS Word와 모두 적용됩니다. Aspose.Words· <br/>이 스위치를 사용하면 TOC의 항목과 페이지 번호를 분리하는 데 사용되는 것을 훨씬 제어 할 수 없습니다. 대신 적절한 편집을 권장합니다. `TOC` 같은 스타일 `StyleIdentifier.TOC1` 그리고 특정 폰트 회원 등에 액세스하여 리더 스타일을 편집합니다. 이 기사에서 나중에 찾을 수있는 방법의 더 자세한 내용은.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W 스위치)* | <p>이 스위치를 사용하면 탭 문자가 있는 모든 항목이 지정됩니다. 예를 들어, 줄의 끝에 탭이 있는 헤더는 TOC를 포착할 때 적절한 탭 문자로 유지됩니다. 이것은 탭 문자의 함수가 존재합니다. `TOC` 그리고 입력을 포맷하는 데 사용할 수 있습니다. 예를 들어, 특정 항목은 탭 중지 및 탭 문자를 사용하여 텍스트를 균등하게 스페이스 할 수 있습니다. 현재 위치 `TOC` 레벨은 해당 탭을 중지한 다음 생성 `TOC` 항목은 비슷한 간격으로 나타납니다. <br/><br/>이 스위치가 정의되지 않은 경우 동일한 상황에서 탭 문자는 비 기능 탭과 같은 흰색 공간으로 변환됩니다. 산출은 그 때 예상대로 나타나지 않을 것입니다.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\X 스위치)* <br/> | <p>위의 스위치와 마찬가지로, 이 스위치는 여러 줄에 걸쳐 번쩍이는 것을 지정합니다 (신선 문자, 별도의 단락을 사용) 생성 된 TOC에 저장됩니다. 예를 들어, 여러 줄에 걸쳐 퍼지는 헤드링은 새로운 라인 문자 (Ctrl + Enter 또는 `ControlChar.LineBreak`) 다른 선의 맞은편에 분리된 내용에. 지정된 이 스위치로, 입구에 `TOC` 아래와 같이 이 새로운 줄 문자를 보존합니다. <br/><br/>이 상황에서 스위치가 정의되지 않은 경우 새로운 줄 문자가 단일 흰색 공간으로 변환됩니다.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## TC 필드 삽입

현재 위치의 새로운 TC 필드를 삽입 할 수 있습니다. `DocumentBuilder` 자주 묻는 질문 `DocumentBuilder.InsertField` 필요한 모든 스위치와 함께 "TC"로 필드 이름을 지정합니다.

다음 코드 예제는 삽입하는 방법을 보여줍니다 `TC` 본문 바로가기 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)·

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

텍스트의 특정 라인은 지정됩니다. `TOC` 로그인 `TC` 이름 * MS Word에서 이것을 할 수있는 쉬운 방법은 텍스트를 강조하고 *ALT + SHIFT + O *를 누릅니다. 이 자동 생성 `TC` 선택한 텍스트를 사용하여 필드. 같은 기술은 코드를 통해 수행 할 수 있습니다. 아래 코드는 입력을 일치하는 텍스트를 찾아 삽입 `TC` 텍스트와 같은 위치에 필드. 이 코드는 문서에 사용되는 동일한 기술을 기반으로합니다. 다음 코드 예제는 찾을 수있는 방법을 표시하고 삽입하는 방법 `TC` 문서의 텍스트에 필드.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## 본문 바로가기

### 스타일의 형식 변경

항목의 형식 `TOC` 표시된 항목의 원래 스타일을 사용하지 않습니다. 대신 각 레벨은 해당 항목으로 포맷됩니다. `TOC` 스타일. 예를 들어, 첫 번째 수준 `TOC` 형식 **사이트맵** 스타일, 두 번째 레벨 포맷 **사이트맵** 작풍 등. 즉, `TOC` 이 스타일은 수정해야합니다. 내 계정 Aspose.Words 이 스타일은 locale-independent에 의해 표현됩니다. `StyleIdentifier.TOC1` 으로 `StyleIdentifier.TOC9` 그리고 에서 retrieved 할 수 있습니다 `Document.Styles` 이러한 식별자를 사용하여 수집.

문서의 적절한 스타일이 변경 될 수 있습니다 이 스타일에 대한 형식을 검색 한 후. 이 스타일에 대한 모든 변경은 문서의 TOCs에서 자동으로 반영됩니다.

다음 코드 예제는 첫 번째 수준에서 사용되는 형식의 속성을 변경 `TOC` 스타일.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

단락의 직접적인 형식이 (단기 자체와 스타일에 정의되지 않음)에 포함 될 수 있음을 주목하는 것도 유용합니다. `TOC` TOC의 항목에 복사됩니다. 예를 들어 Heading 1 스타일이 콘텐츠에 표시하는 경우 `TOC` 그리고 이 스타일에는 단락이 직접 적용된 이식 형식이 있습니다. 결과보기 `TOC` 항목은 스타일 형식의 일부로 대담하지 않을 것입니다 그러나 그것은이 단락에 직접 포맷 된 것처럼 Italic 될 것입니다.

각 항목과 페이지 번호 사이에 사용되는 분리기의 형식을 제어 할 수 있습니다. 기본적으로 탭 문자와 오른쪽 탭을 사용하여 페이지 번호에 걸쳐 확산되는 도트 라인은 오른쪽 마진에 가까운 줄입니다.

사용 방법 `Style` 특별한 수업 `TOC` 수정할 수 있는 수준, 이 문서에 표시되는 방법을 수정할 수 있습니다.

처음 나타나는 방법을 바꾸기 `Style.ParagraphFormat` 스타일에 대한 단락 서식을 검색하려면 호출해야합니다. 이에서, 탭은 호출하여 검색 할 수 있습니다 `ParagraphFormat.TabStops` 그리고 적절한 탭 중지 수정. 이 같은 기술을 사용하여 탭 자체가 이동하거나 제거 할 수 있습니다.

다음 코드 예제는 오른쪽 탭의 위치를 수정하는 방법을 보여줍니다 `TOC` 관련 단락.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## 문서의 내용 제거

모든 노드를 제거하여 문서에서 삭제할 수 있습니다. `FieldStart` FieldEnd 노드 `TOC` 이름 *

아래 코드는 이것을 보여줍니다. 제거의 `TOC` 필드는 정상적인 필드보다 간단합니다. 우리는 배열 된 필드를 추적하지 않습니다. 대신, 우리는 확인 `FieldEnd` 노드 타입 `FieldType.FieldTOC` 우리는 현재 TOC의 끝을 만난다. 이 기술은 우리가 제대로 형성된 문서가 완전히 배열되지 않을 것이라는 것을 가정할 수 있기 때문에 어떤 배열된 분야에 대해 걱정 없이 이 경우에 사용될 수 있습니다 `TOC` 다른 분야 `TOC` 이름 *

첫 번째 `FieldStart` 각 노드 `TOC` 수집 및 저장. 지정된 `TOC` 그런 다음 필드 내 모든 노드를 방문하고 저장합니다. 노드는 문서에서 제거됩니다. 다음 코드 예제는 지정된 제거 방법을 보여줍니다 `TOC` 문서에서.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## 내용의 추출 표

Word 문서에서 내용의 테이블을 추출하려면 다음 코드 샘플이 사용될 수 있습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
