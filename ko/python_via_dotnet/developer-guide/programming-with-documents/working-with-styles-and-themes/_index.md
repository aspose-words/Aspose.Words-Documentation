---
title: 스타일 및 테마 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 스타일 및 테마 작업
linktitle: 스타일 및 테마 작업
description: "Python를 사용하여 문서의 스타일과 테마에 액세스하고 관리합니다."
type: docs
weight: 110
url: /ko/python-net/working-with-styles-and-themes/
---

[StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) 클래스는 기본 제공을 관리하고 사용자 정의 설정을 스타일에 적용하는 데 사용됩니다.

## 스타일에 접근하기

[Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) 속성을 사용하여 문서에 정의된 스타일 컬렉션을 가져올 수 있습니다. 이 컬렉션은 문서의 기본 제공 스타일과 사용자 정의 스타일을 모두 보유합니다. 특정 스타일은 이름/별명, 스타일 식별자 또는 색인을 통해 얻을 수 있습니다. 다음 코드 예제에서는 문서에 정의된 스타일 컬렉션에 액세스하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## 스타일을 기반으로 콘텐츠를 추출하는 방법

간단한 수준에서 Word 문서의 스타일을 기반으로 콘텐츠를 검색하는 것은 특정 스타일로 서식이 지정된 단락과 텍스트 실행을 식별하고, 나열하고, 계산하는 데 유용할 수 있습니다. 예를 들어, 예제, 제목, 참고 문헌, 키워드, 그림 이름, 사례 연구 등 문서에서 특정 종류의 콘텐츠를 식별해야 할 수 있습니다.

이 작업을 몇 단계 더 진행하려면 사용하는 스타일에 따라 정의된 문서 구조를 활용하여 HTML과 같은 다른 출력용으로 문서의 용도를 변경할 수도 있습니다. 이것은 실제로 Aspose 문서가 구축되어 Aspose.Words를 테스트하는 방식입니다. Aspose.Words를 사용하여 구축된 도구는 소스 Word 문서를 가져와 특정 제목 수준의 주제로 분할합니다. 왼쪽에 보이는 탐색 트리를 구축하는 데 사용되는 Aspose.Words를 사용하여 XML 파일이 생성됩니다. 그런 다음 Aspose.Words는 각 주제를 HTML로 변환합니다.

Word 문서에서 특정 스타일로 서식이 지정된 텍스트를 검색하는 솔루션은 일반적으로 Aspose.Words를 사용하여 경제적이고 간단합니다.

### 해결책

Aspose.Words가 스타일을 기반으로 콘텐츠 검색을 얼마나 쉽게 처리하는지 설명하기 위해 예를 살펴보겠습니다. 이 예에서는 샘플 Word 문서에서 특정 단락 스타일과 문자 스타일로 서식이 지정된 텍스트를 검색합니다. 높은 수준에서 여기에는 다음이 포함됩니다
- [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 클래스를 사용하여 Word 문서를 엽니다.
- 문서의 모든 단락과 모든 실행의 컬렉션을 가져옵니다.
- 필요한 문단만 선택하여 실행합니다. 특히 이 샘플 Word 문서에서 '제목 1' 단락 스타일과 '강조 강조' 문자 스타일로 서식이 지정된 텍스트를 검색합니다.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


본 샘플 문서에서 '제목 1' 단락 스타일로 포맷된 텍스트는 '탭 삽입', '빠른 스타일', '테마'이며, '강조 강조' 문자 스타일로 포맷된 텍스트는 파란색, '갤러리' 및 '전체 모습'과 같은 이탤릭체의 굵은 텍스트입니다.

### 코드

Aspose.Words 문서 개체 모델에서는 스타일 기반 쿼리의 구현이 매우 간단합니다. 이미 존재하는 도구를 사용하기 때문입니다. 이 솔루션에는 두 가지 클래스 메서드가 구현됩니다
- **문단별_스타일_이름** – 이 방법은 문서에서 특정 스타일 이름을 가진 단락의 배열을 검색합니다.
- **running_by_style_name** – 이 방법은 문서에서 특정 스타일 이름을 가진 실행 배열을 검색합니다. 이 두 방법은 매우 유사하며 유일한 차이점은 노드 유형과 단락 및 실행 노드 내의 스타일 정보 표현입니다. 다음은 `paragraphs_by_style_name` 구현입니다. 아래 예에서는 지정된 스타일로 서식이 지정된 모든 단락을 찾습니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

이 구현에서는 또한 지정된 유형(이 경우 모든 단락)을 가진 모든 노드의 컬렉션을 반환하는 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 클래스의 [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) 메서드를 사용합니다.

[Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) 메서드의 두 번째 매개변수는 `True`로 설정되어 있습니다. 이렇게 하면 [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) 메서드가 직계 자식만 선택하는 대신 모든 자식 노드에서 재귀적으로 선택하게 됩니다.

{{% /alert %}}

또한 단락 컬렉션은 사용자가 항목에 액세스할 때만 단락이 이 컬렉션에 로드되기 때문에 단락 컬렉션이 즉각적인 오버헤드를 생성하지 않는다는 점을 지적할 가치가 있습니다. 그런 다음 표준 foreach 연산자를 사용하여 컬렉션을 살펴보고 지정된 스타일이 있는 단락을 문단_with_style 배열에 추가하기만 하면 됩니다. `Paragraph` 스타일 이름은 [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) 객체의 [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) 속성에서 찾을 수 있습니다. **running_by_style_name**의 구현은 거의 동일하지만 분명히 [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run)을 사용하여 실행 노드를 검색하고 있습니다. [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) 개체의 [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) 속성은 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) 노드의 스타일 정보에 액세스하는 데 사용됩니다. 아래 예에서는 지정된 스타일로 형식이 지정된 모든 실행을 찾습니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


두 쿼리가 모두 구현되면 문서 개체를 전달하고 검색하려는 콘텐츠의 스타일 이름을 지정하기만 하면 됩니다. 아래 예제에서는 쿼리를 실행하고 결과를 표시합니다. [여기](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### 최종 결과

모든 작업이 완료되면 샘플을 실행하면 다음 출력이 표시됩니다

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


보시다시피 이것은 수집된 단락의 수와 텍스트를 보여주는 매우 간단한 예이며 샘플 Word 문서에서 실행됩니다.

## 템플릿에서 모든 스타일 복사

한 문서의 모든 스타일을 다른 문서로 복사하려는 경우가 있습니다. [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) 방법을 사용하여 지정된 템플릿의 스타일을 문서에 복사할 수 있습니다. 스타일이 템플릿에서 문서로 복사되면 문서의 같은 이름의 스타일이 템플릿의 스타일 설명과 일치하도록 재정의됩니다. 템플릿의 고유한 스타일이 문서에 복사됩니다. 문서의 고유한 스타일은 그대로 유지됩니다. Below code 예는 한 문서에서 다른 문서로 스타일을 복사하는 방법을 보여줍니다.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## 테마 속성을 조작하는 방법

문서 테마 속성에 액세스하기 위해 Aspose.Words에 기본 API를 추가했습니다. 현재 이 API에는 다음 공개 객체가 포함되어 있습니다

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

테마 속성을 얻는 방법은 다음과 같습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

테마 속성을 설정하는 방법은 다음과 같습니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
