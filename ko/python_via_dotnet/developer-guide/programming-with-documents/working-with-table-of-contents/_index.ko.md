---
title: 목차 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 목차 작업
linktitle: 목차 작업
description: "Python를 이용하여 문서에 '목차'를 삽입하고 관리합니다."
type: docs
weight: 170
url: /ko/python-net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

목차(TOC)가 포함된 문서로 작업하는 경우가 많습니다. Aspose.Words를 사용하면 자신만의 목차를 삽입하거나 단 몇 줄의 코드만으로 문서의 기존 목차를 완전히 다시 작성할 수 있습니다. 이 문서에서는 목차 필드를 사용하는 방법을 간략하게 설명하고 다음을 보여줍니다

- 새로운 `TOC`를 삽입하는 방법
- 문서의 신규 또는 기존 TOC를 업데이트합니다.
- TOC의 형식과 전체 구조를 제어하는 스위치를 지정합니다.
- 목차의 스타일과 모양을 수정하는 방법입니다.
- 문서의 모든 항목과 함께 전체 `TOC` 필드를 제거하는 방법.

## 프로그래밍 방식으로 목차 삽입

[DocumentBuilder.insert_table_of_contents](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_table_of_contents/) 메서드를 호출하면 문서의 현재 위치에 `TOC`(목차) 필드를 삽입할 수 있습니다.

Word 문서의 목차는 다양한 방법으로 작성하고 다양한 옵션을 사용하여 서식을 지정할 수 있습니다. 메서드에 전달하는 필드 스위치는 테이블이 문서에 작성되고 표시되는 방식을 제어합니다.

Microsoft Word에 삽입된 `TOC`에 사용되는 기본 스위치는 **"\o "1-3 \h \z \u"**입니다. 이러한 스위치에 대한 설명과 지원되는 스위치 목록은 이 문서의 뒷부분에서 확인할 수 있습니다. 해당 가이드를 사용하여 올바른 스위치를 얻거나 원하는 유사한 `TOC`가 포함된 문서가 이미 있는 경우 필드 코드(*ALT+F9*)를 표시하고 필드에서 직접 스위치를 복사할 수 있습니다.

다음 코드 예제에서는 목차 필드를 문서에 삽입하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTableOfContents.py" >}}

이 코드는 빈 문서에 새 목차가 삽입되는 것을 보여줍니다. 그런 다음 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 클래스는 TOC에 포함될 콘텐츠를 표시하는 데 사용되는 적절한 제목 스타일을 사용하여 일부 샘플 콘텐츠 형식을 삽입하는 데 사용됩니다. 그런 다음 다음 줄에서는 문서의 필드와 페이지 레이아웃을 업데이트하여 `TOC`를 채웁니다.

{{% alert color="primary" %}}

예제에 사용된 방법이 없으면 출력 문서를 열 때 `TOC` 필드를 찾을 수 있지만 콘텐츠는 표시되지 않습니다. 이는 `TOC` 필드가 삽입되었지만 문서에서 업데이트될 때까지 아직 채워지지 않았기 때문입니다. 이에 대한 추가 정보는 다음 섹션에서 논의됩니다.

{{% /alert %}}

## 목차 업데이트

Aspose.Words를 사용하면 단 몇 줄의 코드만으로 `TOC`를 완전히 업데이트할 수 있습니다. 새로 삽입된 `TOC`를 채우거나 문서가 변경된 후 기존 `TOC`를 업데이트하기 위해 이 작업을 수행할 수 있습니다. 문서의 `TOC` 필드를 업데이트하려면 다음 두 가지 방법을 사용해야 합니다

1. [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)
1. [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)

이 두 가지 업데이트 메서드는 순서대로 호출되어야 합니다. 반대로 하면 목차는 채워지지만 페이지 번호는 표시되지 않습니다. 다양한 TOC를 원하는 만큼 업데이트할 수 있습니다. 이러한 방법은 문서에서 발견된 모든 목차를 자동으로 업데이트합니다.

다음 코드 예제에서는 필드 업데이트를 호출하여 문서의 `TOC` 필드를 완전히 다시 작성하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-UpdateFields.py" >}}

[Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)에 대한 첫 번째 호출은 `TOC`를 빌드하고 모든 텍스트 항목이 채워지며 `TOC`가 거의 완료된 것으로 나타납니다. 누락된 유일한 것은 현재 "?"로 표시되는 페이지 번호입니다. [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)에 대한 두 번째 호출은 메모리에 문서의 레이아웃을 구축합니다. 항목의 페이지 번호를 수집하려면 이 작업을 수행해야 합니다. 그러면 이 호출에서 계산된 올바른 페이지 번호가 TOC에 삽입됩니다.

## 스위치를 사용하여 목차의 동작을 제어합니다.

다른 필드와 마찬가지로 `TOC` 필드는 목차 작성 방법을 제어하는 필드 코드 내에 정의된 스위치를 허용할 수 있습니다. 특정 스위치는 포함된 항목과 수준을 제어하는 데 사용되며 다른 스위치는 TOC의 모양을 제어하는 데 사용됩니다. 스위치를 함께 결합하여 복잡한 목차를 작성할 수 있습니다.

![working-with-table-of-contents-aspose-words-net](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-1.png)


기본적으로 위의 스위치는 문서에 기본 `TOC`를 삽입할 때 포함됩니다. 스위치가 없는 `TOC`에는 내장된 제목 스타일의 콘텐츠가 포함됩니다(마치 \O 스위치가 설정된 것처럼). Aspose.Words에서 지원하는 사용 가능한 `TOC` 스위치는 아래에 나열되어 있으며 해당 스위치의 용도가 자세히 설명되어 있습니다. 유형에 따라 별도의 섹션으로 나눌 수 있습니다. 첫 번째 섹션의 스위치는 `TOC`에 포함할 콘텐츠를 정의하고 두 번째 섹션의 스위치는 TOC의 모양을 제어합니다. 스위치가 여기에 나열되지 않으면 현재 지원되지 않는 것입니다. 모든 스위치는 향후 버전에서 지원될 예정입니다. 우리는 모든 릴리스마다 추가 지원을 추가하고 있습니다.

### 엔트리 마킹 스위치

|  스위치 | 설명 |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O 스위치)* | <p>이 스위치는 `TOC`가 내장된 제목 스타일을 기반으로 작성되어야 함을 정의합니다. Microsoft Word에서 이러한 스타일은 제목 1 – 제목 9로 정의됩니다. Aspose.Words에서 이러한 스타일은 해당 StyleIdentifier 열거로 표시됩니다. 이 열거형은 스타일의 로케일 독립적 식별자를 나타냅니다. 예를 들어 `StyleIdentifier.Heading1`는 제목 1 스타일을 나타냅니다. 이를 사용하면 문서의 스타일 컬렉션에서 스타일의 서식과 속성을 검색할 수 있습니다. 해당 스타일 클래스는 StyleIdentifier 유형의 인덱싱된 속성을 사용하여 `Document.Styles` 컬렉션에서 검색할 수 있습니다.</p>

<p>![working-with-table-of-contents-styles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>이러한 스타일로 형식이 지정된 모든 콘텐츠는 목차에 포함됩니다. 제목 수준은 목차 항목의 해당 계층 수준을 정의합니다. 예를 들어 제목 1 스타일이 있는 단락은 `TOC`의 첫 번째 수준으로 처리되는 반면 제목 2가 있는 단락은 계층 구조에서 다음 수준으로 처리됩니다.</p> |
| **Outline Levels**<br>*(\U 스위치)* | <p>각 단락은 단락 옵션에서 개요 수준을 정의할 수 있습니다.</p>

<p>![working-with-table-of-contents-paragraph](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>이 설정은 문서 계층 구조에서 이 단락을 어느 수준으로 처리해야 하는지를 지정합니다. 이는 문서의 레이아웃을 쉽게 구성하는 데 일반적으로 사용되는 방법입니다. 이 계층 구조는 Microsoft Word에서 개요 보기로 변경하여 볼 수 있습니다. 제목 스타일과 유사하게 "본문 텍스트" 수준 외에 1~9개의 개요 수준이 있을 수 있습니다. 개요 수준 1 – 9는 계층 구조의 해당 수준에 있는 `TOC`에 나타납니다.<br>단락 스타일에 설정되거나 단락 자체에 직접 설정된 개요 수준이 있는 모든 콘텐츠는 목차에 포함됩니다. Aspose.Words에서 개요 수준은 단락 노드의 `ParagraphFormat.OutlineLevel` 속성으로 표시됩니다. 단락 스타일의 개요 수준은 `Style.ParagraphFormat` 속성과 동일한 방식으로 표시됩니다.</p>

<p>{{% alert color="primary" %}}</p>

<p>제목 1과 같은 기본 제공 제목 스타일에는 스타일 설정에 개요 수준이 필수로 설정되어 있습니다.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T 스위치)* | <p>이 스위치를 사용하면 목차에서 사용할 항목을 수집할 때 사용자 정의 스타일을 사용할 수 있습니다. 이는 목차에 기본 제공 제목 스타일과 함께 사용자 정의 스타일을 포함하기 위해 \O 스위치와 함께 자주 사용됩니다.<br>스위치의 매개변수는 음성 표시 안에 포함되어야 합니다. 많은 사용자 정의 스타일이 포함될 수 있습니다. 각 스타일에 대해 이름을 지정하고 쉼표와 스타일이 `TOC`에 표시되어야 하는 수준을 지정해야 합니다. 추가 스타일도 쉼표로 구분됩니다.<br>예를 들어</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>CustomHeading1 스타일의 콘텐츠를 `TOC`의 레벨 1 콘텐츠로 사용하고 CustomHeading2를 레벨 2로 사용합니다.</p> |
| **Use TC Fields**<br>*(\F 및 \L 스위치)* | <p>이전 버전의 Microsoft Word에서는 `TOC`를 작성하는 유일한 방법은 TC 필드를 사용하는 것이었습니다. 이러한 필드는 필드 코드가 표시되는 경우에도 문서에 숨겨져 삽입됩니다. 여기에는 항목에 표시되어야 하는 텍스트가 포함되어 있으며 `TOC`는 이 텍스트에서 만들어집니다. 이 기능은 현재 자주 사용되지는 않지만 문서에 표시되도록 들여쓰기되지 않은 항목을 `TOC`에 포함하는 경우에 여전히 유용할 수 있습니다.<br>삽입하면 필드 코드가 표시되는 경우에도 이러한 필드가 숨겨진 것으로 나타납니다. 숨겨진 콘텐츠를 표시하지 않으면 볼 수 없습니다. 이 필드를 보려면 단락 서식 표시를 선택해야 합니다.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> 이러한 필드는 다른 필드와 마찬가지로 문서의 어느 위치에나 삽입할 수 있으며 `FieldType.FieldTOCEntry` 열거형으로 표시됩니다.<br>`TOC`의 \F 스위치는 TC 필드를 항목으로 사용하도록 지정하는 데 사용됩니다. 추가 식별자 없이 스위치 자체는 문서의 모든 TC 필드가 포함된다는 의미입니다. 추가 매개변수(종종 단일 문자)는 일치하는 \f 스위치가 있는 TC 필드만 TOC에 포함되도록 지정합니다. 예를 들어 *</p>

<p>{{< highlight csharp >}}{ TOC \f t }{{< /highlight >}}</p>

<p>다음과 같은 TC 필드만 포함됩니다.</p>

<p>{{< highlight csharp >}}{   TC \f t }{{< /highlight >}}</p>

<p>`TOC` 필드에도 관련 스위치가 있습니다. "\L" 스위치는 지정된 범위 내의 레벨을 가진 TC 필드만 포함되도록 지정합니다.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>`TC` 필드 자체에도 여러 스위치 세트가 있을 수 있습니다. 이것들은:</p>

<p>- *\F – 위에 설명되어 있습니다.*</p>

<p>- *\L – 이 TC 필드가 나타날 `TOC`의 수준을 정의합니다. 이 동일한 스위치를 사용하는 `TOC`는 지정된 범위 내에 있는 경우에만 이 TC 필드를 포함합니다.*</p>

<p>- _\N – 이 `TOC` 항목의 페이지 번호는 표시되지 않습니다. TC 필드를 삽입하는 방법에 대한 샘플 코드는 다음 섹션에서 찾을 수 있습니다.</p> |

### 외관 관련 스위치

|  스위치 | 설명 |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N 스위치)* | <p>이 스위치는 TOC의 특정 수준에 대한 페이지 번호를 숨기는 데 사용됩니다. 예를 들어 다음을 정의할 수 있습니다.</p>

<p>{{< highlight csharp >}}{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>레벨 3과 4 항목의 페이지 번호는 리더 점(있는 경우)과 함께 숨겨집니다. 한 수준만 지정하려면 범위를 사용해야 합니다. 예를 들어 '1-1'은 첫 번째 수준의 페이지 번호만 제외합니다.<br>수준 범위를 제공하지 않으면 목차의 모든 수준에 대한 페이지 번호가 생략됩니다. 이는 문서를 HTML 또는 유사한 형식으로 내보낼 때 설정하는 데 유용합니다. 이는 HTML 기반 형식에는 페이지 개념이 없으므로 페이지 번호 매기기가 필요하지 않기 때문입니다.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H 스위치)* | <p>이 스위치는 `TOC`개 항목이 하이퍼링크로 삽입되도록 지정합니다. Microsoft Word에서 문서를 볼 때 이러한 항목은 `TOC` 내에서 여전히 일반 텍스트로 나타나지만 하이퍼링크로 연결되어 있으므로 Microsoft Word에서 *Ctrl + 왼쪽 클릭*을 사용하여 문서의 원래 항목 위치로 이동하는 데 사용할 수 있습니다. 스위치가 포함되면 이러한 링크는 다른 형식으로도 보존됩니다. 예를 들어 EPUB를 포함한 HTML 기반 형식과 PDF 및 XPS와 같은 렌더링 형식의 경우 작업 링크로 내보내집니다.<br>이 스위치를 설정하지 않으면 이러한 모든 출력의 `TOC`이 일반 텍스트로 내보내지고 이 동작을 보여주지 않습니다. 문서가 MS Word에서 열린 경우 항목의 텍스트도 이 방법으로 클릭할 수 없지만 페이지 번호를 사용하여 원래 항목을 탐색할 수 있습니다.</p>

<p>![working-with-table-of-contents-titles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P 스위치)* | <p>이 스위치를 사용하면 항목 제목과 페이지 번호 매기기를 구분하는 내용을 목차에서 쉽게 변경할 수 있습니다. 사용할 구분 기호는 이 스위치 뒤에 지정하고 음성 표시로 묶어야 합니다.<br>Office 설명서에 설명된 내용과 달리 최대 5개가 아닌 1개의 문자만 사용할 수 있습니다. 이는 MS Word와 Aspose.Words 모두에 적용됩니다.<br>이 스위치를 사용하면 TOC에서 항목과 페이지 번호를 구분하는 데 사용된 항목을 많이 제어할 수 없으므로 사용하지 않는 것이 좋습니다. 대신 `StyleIdentifier.TOC1`과 같은 적절한 `TOC` 스타일을 편집하고 거기에서 특정 글꼴 멤버 등에 액세스하여 지시선 스타일을 편집하는 것이 좋습니다. 이 작업을 수행하는 방법에 대한 자세한 내용은 기사 뒷부분에서 확인할 수 있습니다.</p>

<p>![working-with-table-of-contents-toc](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W 스위치)* | <p>이 스위치를 사용하면 탭 문자가 있는 항목(예: 줄 끝에 탭이 있는 제목)이 목차를 채울 때 적절한 탭 문자로 유지되도록 지정됩니다. 이는 탭 문자의 기능이 `TOC`에 존재하며 항목 형식을 지정하는 데 사용될 수 있음을 의미합니다. 예를 들어 특정 항목은 탭 정지와 탭 문자를 사용하여 텍스트 간격을 균등하게 둘 수 있습니다. 해당 `TOC` 레벨이 동등한 탭 정지를 정의하는 한 생성된 `TOC` 항목은 비슷한 간격으로 표시됩니다.<br><br>동일한 상황에서 이 스위치가 정의되지 않으면 탭 문자는 작동하지 않는 탭과 동등한 공백으로 변환됩니다. 그러면 출력이 예상대로 나타나지 않습니다.</p>

<p>![working-with-table-of-contents-aspose](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X 스위치)* | <p>위의 스위치와 유사하게 이 스위치는 생성된 목차에 있는 대로 여러 줄에 걸쳐 있는 제목(별도의 단락이 아닌 새 줄 문자 사용)이 유지되도록 지정합니다. 예를 들어 여러 줄에 걸쳐 표시되는 제목은 새 줄 문자(Ctrl + Enter 또는 `ControlChar.LineBreak`)를 사용하여 여러 줄에 걸쳐 내용을 구분할 수 있습니다. 이 스위치를 지정하면 `TOC`의 항목은 아래와 같이 새 줄 문자를 유지합니다.<br><br>이 상황에서 스위치가 정의되지 않으면 새 줄 문자가 단일 공백으로 변환됩니다.</p>

<p>![working-with-table-of-contents-aspose-words](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## TC 필드 삽입

[DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) 메서드를 호출하고 필요한 스위치와 함께 필드 이름을 "TC"로 지정하여 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)의 현재 위치에 새 TC 필드를 삽입할 수 있습니다. 아래 예는 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)를 사용하여 문서에 `TC` 필드를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTCField.py" >}}


## 목차 수정

`TOC`의 항목 형식은 표시된 항목의 원래 스타일을 사용하지 않고 대신 각 수준의 형식이 동등한 `TOC` 스타일을 사용하여 지정됩니다. 예를 들어 `TOC`의 첫 번째 수준은 **목차1** 스타일로 형식이 지정되고 두 번째 수준은 **TOC2** 스타일로 형식이 지정됩니다. 이는 `TOC`의 모양을 변경하려면 이러한 스타일을 수정해야 함을 의미합니다. Aspose.Words에서 이러한 스타일은 로케일 독립적인 [StyleIdentifier.TOC1](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc1)에서 [StyleIdentifier.TOC9](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc9)까지 표현되며 이러한 식별자를 사용하여 [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) 컬렉션에서 검색할 수 있습니다.

문서의 적절한 스타일이 검색되면 이 스타일의 서식을 수정할 수 있습니다. 이러한 스타일에 대한 모든 변경 사항은 문서의 목차에 자동으로 반영됩니다. 아래 예는 첫 번째 수준 `TOC` 스타일에 사용되는 서식 속성을 변경합니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeStyleOfTOCLevel.py" >}}

`TOC`에 포함되도록 표시된 단락의 직접 서식(스타일이 아닌 단락 자체에 정의됨)이 TOC 항목에 복사된다는 점도 알아두는 것이 유용합니다. 예를 들어 제목 1 스타일이 `TOC`의 콘텐츠를 표시하는 데 사용되고 이 스타일에는 굵게 서식이 있고 단락에도 직접 적용된 기울임꼴 서식이 있는 경우입니다. 결과 `TOC` 항목은 스타일 서식의 일부이므로 굵게 표시되지 않지만 단락에 직접 서식이 지정되므로 기울임꼴로 표시됩니다.

각 항목과 페이지 번호 사이에 사용되는 구분 기호의 형식을 제어할 수도 있습니다. 기본적으로 이것은 탭 문자와 오른쪽 여백에 가깝게 정렬된 오른쪽 탭 정지를 사용하여 페이지 번호 매기기에 걸쳐 펼쳐지는 점선입니다.

수정하려는 특정 `TOC` 수준에 대해 검색된 [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) 클래스를 사용하면 이러한 클래스가 문서에 나타나는 방식을 수정할 수도 있습니다. 이것이 나타나는 방식을 변경하려면 먼저 [Style.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/style/paragraph_format/)을 호출하여 스타일에 대한 단락 형식을 검색해야 합니다. 여기에서 [ParagraphFormat.tab_stops](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/tab_stops/)를 호출하여 탭 정지를 검색할 수 있으며 적절한 탭 정지가 수정되었습니다. 이와 동일한 기술을 사용하면 탭 자체를 모두 함께 이동하거나 제거할 수 있습니다. 아래 예는 `TOC` 관련 단락에서 오른쪽 탭 정지 위치를 수정하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeTOCTabStops.py" >}}

## 문서에서 목차 제거

`TOC` 필드의 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)와 [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) 노드 사이에 있는 모든 노드를 제거하여 문서에서 목차를 제거할 수 있습니다. 아래 코드는 이를 보여줍니다. 중첩된 필드를 추적하지 않으므로 `TOC` 필드 제거는 일반 필드보다 간단합니다. 대신 [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) 노드가 [FieldType.FIELD_TOC](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_toc) 유형인지 확인합니다. 이는 현재 TOC의 끝을 발견했음을 의미합니다. 이 기술은 적절하게 구성된 문서에는 다른 `TOC` 필드 내에 완전히 중첩된 `TOC` 필드가 없다고 가정할 수 있으므로 중첩된 필드에 대해 걱정하지 않고 이 기술을 사용할 수 있습니다.

먼저 각 `TOC`의 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 노드가 수집되고 저장됩니다. 그런 다음 지정된 `TOC`가 열거되어 필드 내의 모든 노드를 방문하고 저장합니다. 그런 다음 노드가 문서에서 제거됩니다. Below code 샘플은 문서에서 지정된 `TOC`를 제거하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveTOCFromDocument.py" >}}

## 목차 추출

Word 문서에서 목차를 추출하려면 다음 코드 샘플을 사용할 수 있습니다.

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Table of contents.docx")

for field in doc.range.fields :
            
    if (field.type == aw.fields.FieldType.FIELD_HYPERLINK) :
                
        hyperlink = field.as_field_hyperlink()
        if (hyperlink.sub_address != None and hyperlink.sub_address.find("_Toc") == 0) :
                    
            tocItem = field.start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(tocItem.to_string(aw.SaveFormat.TEXT).strip())
            print("------------------")
    
            bm = doc.range.bookmarks.get_by_name(hyperlink.sub_address)
            pointer = bm.bookmark_start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(pointer.to_string(aw.SaveFormat.TEXT))
{{< /highlight >}}
