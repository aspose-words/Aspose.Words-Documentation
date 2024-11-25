---
title: Java의 목차 작업
second_title: Aspose.WordsJava
articleTitle: 목차 작업
linktitle: 목차 작업
description: "자세한 내용 필드의 테이블. Java을 사용하여`TOC`필드를 만들고 수정하는 방법."
type: docs
weight: 170
url: /ko/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

종종 목차(TOC)가 포함 된 문서로 작업합니다. Aspose.Words을 사용하면 자신의 목차를 삽입하거나 몇 줄의 코드만 사용하여 문서의 기존 목차를 완전히 다시 작성할 수 있습니다.

이 문서에서는 목차 필드를 사용하는 방법을 설명하고 다음을 보여 줍니다:

- 새로운TOC을 삽입하는 방법.
- 문서에서 새TOCs또는 기존TOCs을 업데이트합니다.
- 스위치를 지정하여TOC의 서식 및 전체 구조를 제어합니다.
- 목차의 스타일 및 모양을 수정하는 방법.
- 문서의 모든 항목과 함께 전체`TOC`필드를 제거하는 방법.

## 프로그래밍 방식으로 목차 삽입

[InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String)메서드를 호출하여 현재 위치에 있는 문서에`TOC`(목차)필드를 삽입할 수 있습니다.

워드 문서의 목차는 여러 가지 방법으로 만들어지고 다양한 옵션을 사용하여 포맷될 수 있습니다. 메서드에 전달하는 필드 스위치는 테이블이 작성되고 문서에 표시되는 방식을 제어합니다.

Microsoft Word에 삽입된`TOC`에 사용되는 기본 스위치는**"\o "1-3 \h \z \u"**입니다. 이러한 스위치에 대한 설명과 지원되는 스위치 목록은 기사의 뒷부분에서 찾을 수 있습니다. 이 가이드를 사용하여 올바른 스위치를 가져오거나 원하는 유사한`TOC`이 포함된 문서가 이미 있는 경우 필드 코드(*ALT+F9*)를 표시하고 필드에서 직접 스위치를 복사할 수 있습니다.

다음 코드 예제에서는 목차 필드를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

다음 코드 예제에서는 제목 스타일을 항목으로 사용하여 목차(TOC)를 문서에 삽입하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

이 코드는 새 목차가 빈 문서에 삽입되었음을 보여줍니다. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)클래스는TOC에 포함될 콘텐츠를 표시하는 데 사용되는 적절한 제목 스타일로 샘플 콘텐츠 서식을 삽입하는 데 사용됩니다. 다음 줄은 문서의 필드와 페이지 레이아웃을 업데이트하여`TOC`을 채 웁니다.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

이 예제에서 사용한 메서드가 없으면 출력 문서를 열 때`TOC`필드가 있지만 내용이 보이지 않습니다. `TOC`필드가 삽입되었지만 문서에서 업데이트될 때까지 채워지지 않기 때문입니다. 이에 대한 자세한 내용은 다음 섹션에서 설명합니다.

{{% /alert %}}

## 목차 업데이트

Aspose.Words을 사용하면 몇 줄의 코드 만 사용하여`TOC`을 완전히 업데이트 할 수 있습니다. 이 작업은 새로 삽입된`TOC`을 채우거나 문서를 변경한 후 기존`TOC`을 업데이트하기 위해 수행할 수 있습니다.

문서의`TOC`필드를 업데이트하려면 다음 두 가지 방법을 사용해야 합니다:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

이 두 가지 업데이트 메서드는 해당 순서로 호출해야 합니다. 반전되면 목차가 채워지지만 페이지 번호는 표시되지 않습니다. 다른TOCs의 수는 업데이트 할 수 있습니다. 이러한 메서드는 문서에 있는 모든TOCs을 자동으로 업데이트합니다.

다음 코드 예제에서는 필드 업데이트를 호출하여 문서에서`TOC`필드를 완전히 다시 작성하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

[Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)에 대한 첫 번째 호출은`TOC`을 빌드하고 모든 텍스트 항목이 채워지고`TOC`이 거의 완료되어 나타납니다. 누락 된 유일한 것은 지금"?"로 표시되는 페이지 번호입니다.

[Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout)에 대한 두 번째 호출은 메모리에 문서의 레이아웃을 빌드합니다. 이 항목의 페이지 번호를 수집 할 필요가있다. 이 호출에서 계산된 올바른 페이지 번호는TOC에 삽입됩니다.

## 스위치를 사용하여 목차 동작 제어

다른 필드와 마찬가지로`TOC`필드는 목차 작성 방법을 제어하는 필드 코드 내에 정의된 스위치를 사용할 수 있습니다. 특정 스위치는 어떤 항목이 포함되고 어떤 수준에서 제어되는 반면 다른 스위치는TOC의 모양을 제어하는 데 사용됩니다. 스위치는 복잡한 내용 테이블을 생성 할 수 있도록 함께 결합 될 수 있습니다.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


기본적으로 위의 스위치는 문서에 기본 `TOC`을 삽입할 때 포함됩니다. 스위치가 없는 `TOC`은 내장된 제목 스타일의 콘텐츠를 포함합니다(마치 \O 스위치가 설정된 것처럼).

Aspose.Words에서 지원하는 사용 가능한`TOC`스위치는 아래에 나열되어 있으며 그 용도에 대해 자세히 설명합니다. 유형에 따라 별도의 섹션으로 나눌 수 있습니다. 첫 번째 섹션의 스위치는`TOC`에 포함할 콘텐츠를 정의하고 두 번째 섹션의 스위치는TOC의 모양을 제어합니다.

스위치가 여기에 나열되지 않으면 현재 지원되지 않습니다. 모든 스위치는 향후 버전에서 지원됩니다. 우리는 모든 릴리스에 추가 지원을 추가하고 있습니다.

### 입장 표하기 스위치

| 스위치 | 설명 |
| :- | :- |
| **Heading Styles** <br>*(\오 스위치)* <br> | <p>이 스위치는`TOC`가 기본 제공 제목 스타일에서 빌드되어야 한다고 정의합니다. Microsoft Word에서,이들은Heading 1–Heading 9으로 정의됩니다. Aspose.Words에서 이러한 스타일은 해당StyleIdentifier열거형으로 표시됩니다. 이 열거형은 스타일의 로캘 독립 식별자를 나타냅니다(예:`StyleIdentifier.Heading1`는Heading 1스타일을 나타냅니다). 이를 사용하여 문서의 스타일 컬렉션에서 스타일의 서식 및 속성을 검색 할 수 있습니다. StyleIdentifier형식의 인덱싱된 속성을 사용하여`Document.Styles`컬렉션에서 해당 스타일 클래스를 검색할 수 있습니다.</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>이러한 스타일로 포맷된 모든 콘텐츠는 목차에 포함됩니다. 제목의 레벨은TOC에 있는 항목의 해당 계층적 레벨을 정의합니다. 예를 들어,Heading 1스타일의 단락은`TOC`의 첫 번째 레벨로 취급되고Heading 2스타일의 단락은 계층 구조의 다음 레벨로 취급됩니다.</p> |
| **Outline Levels**<br>*(\U 스위치)*<br> | <p>각 단락은 단락 옵션에서 개요 수준을 정의할 수 있습니다.</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>이 설정은 문서 계층 구조에서 이 단락을 처리할 수준을 지정합니다. 이것은 문서의 레이아웃을 쉽게 구성하는 데 사용되는 일반적으로 사용되는 관행입니다. 이 계층 구조는Microsoft Word에서 개요 보기로 변경하여 볼 수 있습니다. 제목 스타일과 마찬가지로"본문 텍스트"수준 외에도 1~9 개의 개요 수준이 있을 수 있습니다. 개요 수준 1-9 는 계층 구조의 해당 수준에서`TOC`에 나타납니다 <br>단락 스타일 또는 단락 자체에 직접 설정된 개요 수준을 가진 모든 콘텐츠는TOC에 포함됩니다. Aspose.Words에서 개요 수준은 단락 노드의`ParagraphFormat.OutlineLevel`속성으로 표시됩니다. 단락 스타일의 개요 수준은`Style.ParagraphFormat`속성으로 같은 방식으로 표시됩니다.</p><p>{{% alert color="primary" %}}</p><p>Heading 1과 같은 기본 제공 제목 스타일에는 스타일 설정에서 개요 수준 필수 설정이 있습니다.</p><p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T 스위치)*<br> | <p>이 스위치를 사용하면TOC에서 사용할 항목을 수집 할 때 사용자 정의 스타일을 사용할 수 있습니다. 이것은TOC에 내장된 제목 스타일과 함께 사용자 정의 스타일을 포함하기 위해\오 스위치와 함께 자주 사용됩니다. <br>스위치의 매개 변수는 음성 표시 안에 들어 있어야 합니다. 많은 사용자 정의 스타일을 포함 할 수 있습니다,각 스타일에 대해,이름은 스타일이`TOC`로 표시해야하는 수준 다음에 쉼표 다음에 지정해야합니다. 다른 스타일들도 쉼표로 구분됩니다. <br>예를 들어</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>`TOC`의 레벨 1 콘텐츠로CustomHeading1스타일이 지정된 콘텐츠를 사용하고 레벨 2 로CustomHeading2를 사용합니다.</p> |
| TC필드 사용 <br>*(\에프\엘 스위치)* <br> | <p>Microsoft Word의 이전 버전에서`TOC`을 만드는 유일한 방법은TC필드를 사용하는 것이었습니다. 이러한 필드는 필드 코드가 표시된 경우에도 문서에 숨겨져 삽입됩니다. 이 항목에는 항목에 표시되어야 하는 텍스트가 포함되어 있으며`TOC`은 이 항목에서 만들어집니다. 이 기능은 현재 자주 사용되지 않지만 문서에 표시되도록 들여쓰기되지 않은`TOC`에 항목을 포함시키는 데 유용 할 수 있습니다. <br>삽입 할 때 필드 코드가 표시되는 경우에도 이러한 필드는 숨겨진 나타납니다. 숨겨진 콘텐츠를 표시하지 않고는 볼 수 없습니다. 이 필드를 보려면 단락 서식을 선택해야합니다 보여줍니다.</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>이러한 필드는 다른 필드와 마찬가지로 임의의 위치에서 문서에 삽입할 수 있으며`FieldType.FieldTOCEntry`열거형으로 표시됩니다.<br>`TOC`의\에프 스위치는TC필드를 항목으로 사용하도록 지정하는 데 사용됩니다. 별도의 식별자가 없는 자체 스위치는 문서의TC필드가 포함된다는 것을 의미합니다. 추가 매개 변수(종종 단일 문자)는TOC에 일치하는\에프 스위치가 있는TC필드만 포함되도록 지정합니다. 예를 들어 *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>다음과 같은TC필드만 포함됩니다</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>`TOC`필드에는 또한 관련 스위치가 있으며,"\엘"스위치는 지정된 범위 내의 레벨이 있는TC필드만 포함되도록 지정합니다.</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>`TC`필드 자체도`{several, multiple, a few, many, numerous}`스위치를 설정할 수 있습니다. 이 두가지가:</p><p>–\에프-위에서 설명했다.*</p><p>–\엘-`TOC`이TC필드에 나타날 수준을 정의합니다. 이 동일한 스위치를 사용하는`TOC`은 지정된 범위 내에 있는 경우에만 이TC필드를 포함합니다.</p><p>-`_\N`-이`TOC`항목의 페이지 번호가 표시되지 않습니다.TC필드를 삽입하는 방법에 대한 샘플 코드는 다음 섹션에서 찾을 수 있습니다.</p> |

### 외관 관련 스위치

| 스위치 | 설명 |
| :- | :- |
| **Omit Page Numbers** <br>*(\엔 스위치)* | <p>이 스위치는TOC의 특정 수준에 대한 페이지 번호를 숨기는 데 사용됩니다. 예를 들어 다음을 정의할 수 있습니다</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>그리고 레벨 3 과 4 의 항목에있는 페이지 번호는 리더 점과 함께 숨겨집니다(있는 경우). 한 수준만 지정하려면 범위가 여전히 사용되어야 합니다.예를 들어"1-1"은 첫 번째 수준에 대한 페이지 번호만 제외합니다. <br>레벨 범위를 제공하지 않으면TOC의 모든 레벨에 대한 페이지 번호가 생략됩니다. 이것은 문서를HTML또는 유사한 형식으로 내보낼 때 설정하는 데 유용합니다. HTML기반 형식에는 페이지 개념이 없으므로 페이지 번호 매기기가 필요하지 않기 때문입니다.</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| 하이퍼링크로 삽입 <br>*(\시간 스위치)* | <p>이 스위치는`TOC`항목이 하이퍼링크로 삽입되도록 지정합니다. Microsoft Word의 문서를 볼 때 이러한 항목은 여전히`TOC`내부의 일반 텍스트로 표시되지만 하이퍼링크되어Microsoft Word의*Ctrl + Left Click*을 사용하여 문서의 원래 항목의 위치로 이동하는 데 사용할 수 있습니다. 이 스위치가 포함되면 이러한 링크는 다른 형식으로도 보존됩니다. 예를 들어,EPUB를 포함한HTML기반 형식과PDF및XPS과 같은 렌더링 형식에서 이들은 작업 링크로 내보내집니다. <br>이 스위치 세트가 없으면 이러한 모든 출력의`TOC`은 일반 텍스트로 내보내지 않으며 이 동작을 보여주지 않습니다. 문서가MS단어로 열리면 항목의 텍스트도 이 방법으로 클릭할 수 없지만 페이지 번호는 여전히 원래 항목으로 이동하는 데 사용할 수 있습니다.</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>*(\피 스위치)* <br> | <p>이 스위치를 사용하면TOC에서 항목 제목과 페이지 번호 매기기를 분리하는 내용을 쉽게 변경할 수 있습니다. 사용할 구분 기호는 이 스위치 뒤에 지정하고 음성 표시로 묶어야 합니다. <br>사무실 문서에 기록된 것과는 달리,최대 5 개 대신 1 개의 문자만 사용할 수 있습니다. 이것은MS단어와Aspose.Words모두에 적용됩니다. <br>이 스위치를 사용하는 것은TOC의 항목과 페이지 번호를 분리하는 데 사용되는 것을 많이 제어 할 수 없기 때문에 권장되지 않습니다. 대신`StyleIdentifier.TOC1`와 같은 적절한`TOC`스타일을 편집하고 거기에서 특정 글꼴 멤버 등에 액세스 할 수있는 리더 스타일을 편집하는 것이 좋습니다. 이 작업을 수행하는 방법에 대한 자세한 내용은 기사 뒷부분에서 찾을 수 있습니다.</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries**<br>*(\W 스위치)* | <p>이 스위치를 사용하면TOC를 채울 때 탭 문자가 있는 항목(예:줄 끝에 탭이 있는 제목)이 적절한 탭 문자로 유지되도록 지정할 수 있습니다. 이것은 탭 문자의 기능이`TOC`에 존재하고 항목을 포맷하는 데 사용될 수 있음을 의미합니다. 예를 들어,특정 항목은 탭 정지 및 탭 문자를 사용하여 텍스트를 균등하게 배치 할 수 있습니다. 해당`TOC`레벨이 동등한 탭을 정의하는 한 생성된`TOC`항목이 비슷한 간격으로 나타납니다. <br><br>같은 상황에서 이 스위치가 정의되지 않으면 탭 문자는 작동하지 않는 탭과 동등한 공백으로 변환됩니다. 그러면 출력이 예상대로 나타나지 않습니다.</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>*(\엑스 스위치)* <br> | <p>위의 스위치와 유사하게, 이 스위치는 여러 줄에 걸쳐 있는 제목(줄바꿈 문자 사용, 별도의 문단 사용 안 함)이 생성된 TOC에 있는 그대로 유지되도록 지정합니다. 예를 들어, 여러 줄에 걸쳐 있는 제목은 줄바꿈 문자(Ctrl + Enter 또는 `ControlChar.LineBreak`)를 사용하여 여러 줄에 걸쳐 있는 콘텐츠를 구분할 수 있습니다. 이 스위치를 지정하면 `TOC`의 항목은 아래에 표시된 대로 이러한 줄바꿈 문자를 유지합니다.<br><br>이런 상황에서 스위치가 정의되지 않으면 줄 바꿈 문자는 하나의 공백으로 변환됩니다.</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## TC필드 삽입

`DocumentBuilder.InsertField`메서드를 호출하고 필요한 스위치와 함께 필드 이름을"TC"로 지정하여`DocumentBuilder`의 현재 위치에 새TC필드를 삽입할 수 있습니다.

다음 코드 예제에서는[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)을 사용하여`TC`필드를 문서에 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

종종 특정 텍스트 줄이`TOC`에 지정되고`TC`필드로 표시됩니다. MS단어에서이 작업을 수행하는 쉬운 방법은 텍스트를 강조 표시하고*ALT+SHIFT+O*을 누르는 것입니다. 그러면 선택한 텍스트를 사용하여`TC`필드가 자동으로 생성됩니다. 코드를 통해 동일한 기술을 수행 할 수 있습니다. 아래 코드는 입력과 일치하는 텍스트를 찾아 텍스트와 같은 위치에`TC`필드를 삽입합니다. 이 코드는 기사에 사용 된 것과 동일한 기술을 기반으로합니다. 다음 코드 예제에서는 문서의 텍스트에`TC`필드를 찾아서 삽입하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## 목차 수정

### 스타일 서식 변경

`TOC`의 항목의 포맷은 표시된 항목의 원래 스타일을 사용하지 않고,대신 각 레벨은 동등한`TOC`스타일을 사용하여 포맷됩니다. 예를 들어,`TOC`의 첫 번째 레벨은**TOC1**스타일로 포맷되고,두 번째 레벨은**TOC2**스타일로 포맷됩니다. 즉,`TOC`의 모양을 변경하려면 이러한 스타일을 수정해야 합니다. Aspose.Words에서 이러한 스타일은`StyleIdentifier.TOC1`에서`StyleIdentifier.TOC9`까지의 로캘 독립으로 표시되며 이러한 식별자를 사용하여`Document.Styles`컬렉션에서 검색할 수 있습니다.

문서의 적절한 스타일이 검색되면 이 스타일의 서식을 수정할 수 있습니다. 이러한 스타일에 대한 변경 사항은 문서의TOCs에 자동으로 반영됩니다.

다음 코드 예제에서는 첫 번째 수준`TOC`스타일에 사용되는 서식 속성을 변경합니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

또한`TOC`에 포함되도록 표시된 단락(스타일이 아닌 단락 자체에 정의됨)의 모든 직접 서식이TOC의 항목에 복사된다는 점에 유의하는 것이 유용합니다. 예를 들어,Heading 1스타일이`TOC`의 내용을 표시하는 데 사용되고 이 스타일은 굵게 서식이 있는 반면 단락에는 이탤릭체 서식이 직접 적용된 경우. 결과`TOC`항목은 스타일 서식의 일부이기 때문에 굵게 표시되지 않지만 단락에서 직접 서식이 지정되므로 기울임 꼴로 표시됩니다.

또한 각 항목과 페이지 번호 사이에 사용되는 구분 기호의 서식을 제어할 수 있습니다. 기본적으로,이것은 탭 문자를 사용하여 페이지 번호 매기기에 걸쳐 퍼져있는 점선이며 오른쪽 여백에 가까운 오른쪽 탭 스톱이 줄지어 있습니다.

수정할 특정`TOC`수준에 대해 검색된`Style`클래스를 사용하여 문서에 표시되는 방법을 수정할 수도 있습니다.

이 먼저 나타나는 방법을 변경하려면`Style.ParagraphFormat`스타일에 대한 단락 서식을 검색하기 위해 호출해야합니다. 이로부터`ParagraphFormat.TabStops`을 호출하여 탭 정지를 검색하고 적절한 탭 정지를 수정할 수 있습니다. 이 같은 기술을 사용하여 탭 자체를 이동하거나 완전히 제거 할 수 있습니다.

다음 코드 예제에서는`TOC`관련 단락에서 오른쪽 탭 정지 위치를 수정하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## 문서에서 목차 제거

`TOC`필드의`FieldStart`과FieldEnd노드 사이에 있는 모든 노드를 제거하여 문서에서 목차를 제거할 수 있습니다.

아래 코드는 이것을 보여줍니다. `TOC`필드의 제거는 일반적인 필드보다 간단합니다.왜냐하면 우리는 둥글게 된 필드를 추적하지 않기 때문입니다. 대신,우리는`FieldEnd`노드가`FieldType.FieldTOC`유형인지 확인합니다.이것은 우리가 현재TOC의 끝을 만났다는 것을 의미합니다. 이 기술은 이 경우 어떤 내장된 필드도 걱정하지 않고 사용할 수 있습니다.왜냐하면 우리는 어떤 제대로 형성된 문서에도 다른`TOC`필드 안에 완전히 내장된`TOC`필드가 없다고 가정할 수 있기 때문입니다.

먼저 각`TOC`의`FieldStart`노드가 수집되고 저장됩니다. 그런 다음 지정된`TOC`이 열거되어 필드 내의 모든 노드가 방문되고 저장됩니다. 그런 다음 노드가 문서에서 제거됩니다. 다음 코드 예제에서는 지정된`TOC`을 문서에서 제거하는 방법을 보여 줍니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## 목차 추출

워드 문서에서 목차를 추출하려면 다음 코드 샘플을 사용할 수 있습니다.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
