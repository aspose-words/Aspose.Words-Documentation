---
title: 스타일 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 스타일 작업
linktitle: 스타일 작업
description: "향상된 Microsoft Word 서식 지정 기능,스타일 및 테마 작업 C++."
type: docs
weight: 110
url: /ko/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

그 [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) 클래스는 기본 제공 관리 및 스타일에 사용자 정의 설정을 적용하는 데 사용됩니다.

## 스타일을 기반으로 콘텐츠를 추출하는 방법

간단한 수준에서,단어 문서에서 스타일을 기반으로 콘텐츠를 검색하는 것은 특정 스타일로 포맷 된 단락과 텍스트의 실행을 식별,목록 및 계산하는 데 유용 할 수 있습니다. 예를 들어 예제,제목,참조,키워드,그림 이름 및 사례 연구와 같이 문서에서 특정 유형의 콘텐츠를 식별해야 할 수 있습니다.

몇 단계 더 나아가기 위해,이것은 또한 사용하는 스타일에 의해 정의된 문서의 구조를 활용하여 문서를 다른 출력으로 재목적으로 사용할 수 있습니다. HTML. 이것은 사실 아스포스 문서가 만들어지는 방식입니다. Aspose.Words 테스트. 다음을 사용하여 구축 된 도구 Aspose.Words 소스 워드 문서를 가져 와서 특정 제목 수준에서 주제로 나눕니다. 한 XML 파일은 다음을 사용하여 생성됩니다 Aspose.Words 왼쪽에서 볼 수 있는 탐색 트리를 만드는 데 사용됩니다. 그리고 나서 Aspose.Words 각 주제를 다음과 같이 변환합니다 HTML.

워드 문서에서 특정 스타일로 포맷 된 텍스트를 검색하는 솔루션은 일반적으로 경제적이고 간단합니다. Aspose.Words.

### 솔루션

얼마나 쉽게 설명 할 수 있습니까 Aspose.Words 스타일을 기반으로 콘텐츠 검색을 처리,의 예제를 살펴 보자. 이 예제에서는 샘플 워드 문서에서 특정 단락 스타일과 문자 스타일로 서식이 지정된 텍스트를 검색 할 것입니다. 높은 수준에서,이것은:
- 를 사용하여 워드 문서 열기 `Document` 수업
- 문서의 모든 단락 및 모든 실행의 컬렉션을 가져옵니다.
- 필요한 단락 만 선택하고 실행합니다. 특히'제목'으로 서식이 지정된 텍스트를 검색합니다 1'단락 스타일과 이 샘플 워드 문서의'강렬한 강조'문자 스타일.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


이 샘플 문서에서'제목'으로 서식이 지정된 텍스트 1'단락 스타일은'삽입 탭','빠른 스타일'및'테마'이며'강렬한 강조'문자 스타일로 포맷 된 텍스트는'갤러리'및'전체 모양'과 같은 파란색,기울임 꼴,굵은 텍스트의 여러 인스턴스입니다.

### 코드

스타일 기반 쿼리의 구현은 매우 간단합니다. Aspose.Words 문서 개체 모델,그것은 단순히 장소에 이미 도구를 사용합니다. 이 솔루션에 대해 두 가지 클래스 메서드가 구현됩니다:# **ParagraphsByStyleName** -이 메서드는 특정 스타일 이름이 있는 문서의 해당 단락 배열을 검색합니다.# **RunsByStyleName** -이 메서드는 특정 스타일 이름이 있는 문서의 실행 배열을 검색합니다. 이 두 가지 방법은 매우 유사하며,유일한 차이점은 노드 유형과 단락 및 실행 노드 내의 스타일 정보의 표현입니다. 여기 구현이 있습니다. ParagraphsByStyleName. 아래 예에서는 지정된 스타일로 서식이 지정된 모든 단락을 찾습니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

이 구현은 또한 `Document.GetChildNodes` 의 방법 `Document` 이 경우 모든 단락에 지정된 유형을 가진 모든 노드의 컬렉션을 반환하는 클래스.

두 번째 매개 변수는 **Document.GetChildNodes** 메서드가 참으로 설정됩니다. 이것은 **Document.GetChildNodes** 메서드는 재귀 적으로 모든 자식 노드에서 선택하는 대신 직접 자식 만 선택합니다.

{{% /alert %}}

또한 단락 모음에서 항목에 액세스할 때만 단락이 이 컬렉션에 로드되기 때문에 단락 모음에서 즉각적인 오버헤드가 발생하지 않는다는 점을 지적할 가치가 있습니다. 그런 다음 각 연산자에 대한 표준을 사용하여 컬렉션을 살펴보고 지정된 스타일을 가진 단락을 추가하기만 하면 됩니다. paragraphsWithStyle 배열 그 `Paragraph` 스타일 이름은 스타일에서 찾을 수 있습니다. 이름 속성 `Paragraph.ParagraphFormat` 객체 의 구현 RunsByStyleName 우리가 분명히 사용하고 있지만 거의 동일합니다 `NodeType.Run` 실행 노드를 검색합니다. 그 `Font.Style` 의 속성 `Run` 객체는 스타일 정보에 액세스하는 데 사용됩니다. **Run** 노드 비low code 예 지정된 스타일로 서식이 지정된 모든 실행을 찾습니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


두 쿼리가 모두 구현되면 문서 개체를 전달하고 검색할 콘텐츠의 스타일 이름을 지정하기만 하면 됩니다. 이 예제의 템플릿 파일은 여기에서 다운로드 할 수 있습니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### 최종 결과

모든 작업이 완료되면 샘플을 실행하면 다음 출력이 표시됩니다:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


당신이 볼 수 있듯이,이 샘플 워드 문서에서 수집 된 단락 및 실행의 번호와 텍스트를 보여주는 매우 간단한 예입니다.

## 목차 필드 삽입 및 작업 방법

종종 당신은 목차를 포함하는 문서와 함께 작동합니다(TOC). 사용 Aspose.Words 당신은 당신의 자신의 목차를 삽입하거나 완전히 코드의 몇 줄을 사용하여 문서의 목차의 기존 테이블을 다시 만들 수 있습니다. 이 문서에서는 목차 필드를 사용하는 방법을 설명하고 다음을 보여 줍니다:

- 새로운 브랜드를 삽입하는 방법 `TOC`
- 신규 또는 기존 업데이트 TOCs 문서에서
- 스위치를 지정하여 서식 및 전체 구조를 제어합니다. TOC.
- 목차의 스타일 및 모양을 수정하는 방법.
- 전체를 제거하는 방법 `TOC` 문서의 모든 항목과 함께 필드.

### 삽입 TC 필드

종종 특정 텍스트 줄이 `TOC` 그리고 표시된 `TC` 필드 이 작업을 수행하는 쉬운 방법 MS 단어 텍스트를 눌러 강조 표시하는 것입니다 *ALT+SHIFT+O*. 이것은 자동으로 `TC` 선택한 텍스트를 사용하는 필드. 코드를 통해 동일한 기술을 수행 할 수 있습니다. 아래의 코드는 입력과 일치하는 텍스트를 찾아 `TC` 텍스트와 같은 위치에 있는 필드입니다. 이 코드는 기사에 사용 된 것과 동일한 기술을 기반으로합니다. 아래의 예는 찾아 삽입하는 방법을 보여줍니다 `TC` 문서의 텍스트에 있는 필드입니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### 목차 수정

#### 스타일 서식 변경

에 있는 항목의 서식 `TOC` 표시된 항목의 원래 스타일을 사용하지 않고,대신,각 레벨은 동등한 것을 사용하여 포맷됩니다. `TOC` 스타일 예를 들어,첫 번째 레벨은 `TOC` 이 포맷은 **TOC1** 스타일,두 번째 수준은 **TOC2** 스타일 등등. 이것은 그 모양을 변경하는 것을 의미 `TOC` 이러한 스타일은 수정해야 합니다. 그 안에 Aspose.Words 이러한 스타일은 로캘 독립으로 표시됩니다 `StyleIdentifier.TOC1` 를 통해 `StyleIdentifier.TOC9` 그리고 검색 할 수 있습니다 `Document.Styles` 이러한 식별자를 사용하는 컬렉션. 문서의 적절한 스타일이 검색되면 이 스타일의 서식을 수정할 수 있습니다. 이러한 스타일에 대한 변경 사항은 자동으로 TOCs 문서에서 비low code 예제 첫 번째 수준에서 사용되는 서식 속성을 변경합니다 `TOC` 스타일

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

또한,단락의 직접적인 포맷(스타일에 포함되지 않고 단락 자체에 정의)이 포함되도록 표시되어 있다는 점에 유의하는 것이 유용합니다. `TOC` 에 항목에 복사됩니다 TOC. 예를 들어,제목이 1 스타일은 콘텐츠를 표시하는 데 사용됩니다. `TOC` 그리고 이 스타일은 굵게 서식을 지정하는 반면 단락에는 이탤릭체 서식이 직접 적용됩니다. 그 결과 `TOC` 이 단락에 직접 포맷 그러나 그것은 기울임 꼴이 될 것입니다 그 스타일 서식의 일부로서 항목은 굵게되지 않습니다. 또한 각 항목과 페이지 번호 사이에 사용되는 구분 기호의 서식을 제어할 수 있습니다. 기본적으로,이것은 탭 문자를 사용하여 페이지 번호 매기기에 걸쳐 퍼져있는 점선이며 오른쪽 여백에 가까운 오른쪽 탭 스톱이 줄지어 있습니다.

를 사용하여 `Style` 특정 클래스에 대해 검색된 클래스 `TOC` 당신이 수정할 수준,당신은 또한이 문서에 표시되는 방법을 수정할 수 있습니다. 이것이 먼저 나타나는 방식을 변경하려면 `Style.ParagraphFormat` 스타일에 대한 단락 서식을 검색하려면 호출해야 합니다. 이로부터,탭 정지는 호출하여 검색 할 수 있습니다 `ParagraphFormat.TabStops` 그리고 적절한 탭 정지가 수정되었습니다. 이 같은 기술을 사용하여 탭 자체를 이동하거나 완전히 제거 할 수 있습니다. 비low code 예제는 오른쪽 탭 중지의 위치를 수정하는 방법을 보여줍니다 `TOC` 관련 단락. 이 예제의 템플릿 파일은 여기에서 다운로드 할 수 있습니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### 문서에서 목차 제거

목차는 문서의 모든 노드를 제거하여 문서에서 제거 할 수 있습니다. `FieldStart` 그리고 FieldEnd 노드 `TOC` 필드 아래 코드는 이것을 보여줍니다. 의 제거 `TOC` 우리가 중첩 된 필드를 추적하지 않기 때문에 필드는 일반 필드보다 간단합니다. 대신,우리는 `FieldEnd` 노드는 `FieldType.FieldTOC` 이는 우리가 현재의 끝을 발생 의미 TOC. 이 기술은 제대로 형성된 문서에 완전히 중첩되지 않는다고 가정 할 수 있으므로 중첩 된 필드에 대해 걱정하지 않고이 경우 사용할 수 있습니다 `TOC` 다른 내부 필드 `TOC` 필드 첫째, `FieldStart` 각각의 노드 `TOC` 수집 및 저장됩니다. 지정된 `TOC` 그 다음에는 필드 내의 모든 노드가 방문되고 저장되도록 열거됩니다. 그런 다음 노드가 문서에서 제거됩니다. 비low code 예제는 지정된 제거 하는 방법을 보여 줍니다 `TOC` 문서에서. 이 예제의 템플릿 파일은 여기에서 다운로드 할 수 있습니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## 다른 단락 스타일을 넣으려면 스타일 구분 기호 삽입

스타일 구분 기호를 사용하여 단락의 끝에 추가 할 수 있습니다. MS 단어. 이 기능은 하나의 논리 인쇄 단락에 사용되는 두 개의 서로 다른 단락 스타일을 할 수 있습니다. 특정 머리글의 시작 부분에서 일부 텍스트를 목차에 표시하지만 목차의 전체 머리글을 원하지 않는 경우 이 기능을 사용할 수 있습니다. 비low code 예는 다른 단락 스타일을 넣어 스타일 구분 기호를 삽입하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## 템플릿에서 모든 스타일 복사

한 문서에서 다른 문서로 모든 스타일을 복사하려는 경우가 있습니다. 당신은 사용할 수 있습니다 `Document.CopyStylesFromTemplate` 지정된 템플릿에서 문서로 스타일을 복사하는 방법. 템플릿에서 문서로 스타일을 복사하면 템플릿의 스타일 설명과 일치하도록 문서의 이름이 같은 스타일이 다시 정의됩니다. 템플릿의 고유한 스타일이 문서에 복사됩니다. 문서의 고유 스타일은 그대로 유지됩니다. 비low code 예제는 한 문서에서 다른 문서로 스타일을 복사하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
