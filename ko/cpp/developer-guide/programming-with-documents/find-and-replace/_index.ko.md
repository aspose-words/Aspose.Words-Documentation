---
title: 찾기 및 바꾸기 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 찾기 및 바꾸기
linktitle: 찾기 및 바꾸기
type: docs
description: "문서에서 문자열 또는 정규식 패턴을 찾아 사용할 텍스트로 바꿉니다 C++."
weight: 100
url: /ko/cpp/find-and-replace/
---

키보드와 마우스를 사용하여 문서 내에서 쉽게 탐색 할 수 있지만 스크롤 할 페이지가 많은 경우 긴 문서에서 특정 텍스트를 찾는 데 시간이 오래 걸립니다. 그것은 당신이 당신의 문서에서 사용한 특정 문자 또는 단어를 대체 할 때 더 많은 시간이 소요 될 것입니다. "찾기 및 바꾸기"기능을 사용하면 문서에서 문자 시퀀스를 찾아 다른 문자 시퀀스로 바꿀 수 있습니다.

Aspose.Words 다음과 같은 추가 응용 프로그램을 설치 및 사용하지 않고도 문서에서 특정 문자열 또는 정규식 패턴을 찾아 대체 문자열로 바꿀 수 있습니다 Microsoft Word. 이렇게하면 많은 타이핑 및 포맷 작업 속도가 빨라져 잠재적으로 작업 시간을 절약 할 수 있습니다.

이 문서에서는 메타 문자를 지원하는 문자열 대체 및 정규식을 적용하는 방법에 대해 설명합니다.

## 찾기 및 바꾸기 방법 {#ways-to-find-and-replace}

Aspose.Words 다음을 사용하여 찾기 및 바꾸기 작업을 적용하는 두 가지 방법을 제공합니다:

1. *Simple string replacement* -찾아 다른 특정 문자열을 대체하려면,당신은 다른 지정된 대체 문자열로 모든 발생에 따라 대체 될 것입니다 검색 문자열(영숫자 문자)를 지정해야합니다. 두 문자열 모두 기호를 포함해서는 안 됩니다. 문자열 비교는 대/소문자를 구분할 수 있거나 철자가 확실하지 않거나 여러 가지 유사한 철자가 있을 수 있습니다.
2. *Regular expressions* -정확한 문자열 일치를 찾아 정규 표현식에 따라 교체 정규 표현식을 지정합니다. 단어 는 알파뉴메릭 문자 만 으로 구성 되어 있다고 정의 되어 있다는 점 에 유의 하십시오. 만약 대체가 전체 단어만 일치하고 입력 문자열이 기호를 포함한다면,어떤 문장도 발견되지 않을 것입니다.

또한 간단한 문자열 대체 및 정규식이 포함된 특수 메타 문자를 사용하여 찾기 및 바꾸기 작업 내에서 나누기를 지정할 수 있습니다.

Aspose.Words 찾기 및 바꾸기 기능을 다음과 같이 표시합니다. [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing) 네임스페이스 다음을 사용하여 찾기 및 바꾸기 프로세스 중에 많은 옵션을 사용할 수 있습니다 [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/) 수업

### 간단한 문자열 교체를 사용하여 텍스트 찾기 및 바꾸기 {#find-and-replace-text-using-simple-string-replacement}

당신은 중 하나를 사용할 수 있습니다 [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) 메서드는 특정 문자열을 찾거나 대체 하 고 만든 대체의 수를 반환 합니다. 이 경우 대체할 문자열,모든 항목을 대체할 문자열,대/소문자를 구분하는지 여부 및 독립 실행형 단어만 영향을 받는지 여부를 지정할 수 있습니다.

다음 코드 예제에서는 문자열을 찾는 방법을 보여 줍니다."_CustomerName_"그리고 문자열로 대체 *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

간단한 문자열 교체를 적용하기 전에 문서 간의 차이점을 알 수 있습니다:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

그리고 간단한 문자열 교체를 적용한 후:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### 정규식을 사용하여 텍스트 찾기 및 바꾸기 {#find-and-replace-text-using-regular-expressions}

정규식(정규식)은 특정 텍스트 시퀀스를 설명하는 패턴입니다. 단어의 모든 이중 발생을 단일 단어 발생으로 바꾸려고 한다고 가정합니다. 그런 다음 다음 정규식을 적용하여 이중 단어 패턴을 지정할 수 있습니다: `([a-zA-Z]+) \1`.

다른 사용 [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) 검색 및 설정하여 특정 문자 조합을 대체하는 방법 `Regex` 일치 항목을 찾을 수있는 정규식 패턴으로 매개 변수.

다음 코드 예제에서는 정규식 패턴과 일치하는 문자열을 지정된 대체 문자열로 바꾸는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

문자열 대체를 정규식으로 적용하기 전에 문서 간의 차이점을 확인할 수 있습니다:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

그리고 정규 표현식으로 문자열 대체를 적용한 후:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### 메타 문자를 사용하여 문자열 찾기 및 바꾸기 {#find-and-replace-text-using-metacharacters}

특정 텍스트 또는 구가 여러 단락,섹션 또는 페이지로 구성된 경우 검색 문자열 또는 대체 문자열에 메타 문자를 사용할 수 있습니다. 메타 문자 중 일부는 다음과 같습니다. **&p** 단락 나누기, **&b** 섹션 휴식, **&m** 페이지 나누기,그리고 **&l** 줄 바꿈을 위해.

{{% alert color="primary" %}}

메타 문자**&&**는**&**와 같습니다. 예를 들어,다음에 대한 텍스트를 찾아야하는 경우 **&p** 즉,단락 휴식하지 않습니다,당신은 사용할 수 있습니다 **&&p**.

{{% /alert %}}

다음 코드 예제에서는 텍스트를 단락 및 페이지 나누기로 바꾸는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## 문서의 머리글/바닥글에서 문자열 찾기 및 바꾸기 {#find-and-replace-string-in-header-or-footer-of-a-document}

당신은 찾아 사용하여 워드 문서의 머리글/바닥 글 섹션에서 텍스트를 대체 할 수 있습니다 [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) 수업

다음 코드 예제에서는 문서에서 머리글 섹션의 텍스트를 대체하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

헤더 문자열 대체를 적용하기 전에 문서 간의 차이점을 확인할 수 있습니다:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

그리고 헤더 문자열 교체를 적용한 후:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

문서에서 바닥글 섹션의 텍스트를 대체하는 코드 예제는 이전 머리글 코드 예제와 매우 유사합니다. 다음 두 줄을 바꾸기 만하면됩니다:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

다음 과 함께:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

바닥글 문자열 대체를 적용하기 전에 문서의 차이점을 확인할 수 있습니다:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

그리고 바닥 글 문자열 교체를 적용한 후:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## 찾기 및 바꾸기 중 텍스트 무시 {#ignore-text-during-find-and-replace}

찾기 및 바꾸기 작업을 적용하는 동안 텍스트의 특정 세그먼트를 무시할 수 있습니다. 따라서 텍스트의 특정 부분을 검색에서 제외 할 수 있으며 찾기 및 바꾸기는 나머지 부분에만 적용 할 수 있습니다.

Aspose.Words 다음과 같은 텍스트를 무시하기 위한 많은 찾기 및 바꾸기 속성을 제공합니다 [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/),그리고 [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

다음 코드 예제에서는 수정본 삭제 내에서 텍스트를 무시하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## 찾기 및 바꾸기 작업 사용자 지정 {#customize-find-and-replace-operation}

Aspose.Words 많은 다른 제공합니다 [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) 특정 형식 적용과 같은 텍스트를 찾아서 바꾸려면 [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) 그리고 [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) 속성,대체 패턴에서 대체를 사용하여 [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) 재산 및 기타.

다음 코드 예제에서는 문서에서 특정 단어를 강조 표시하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words 당신이 사용할 수 있습니다 [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) 바꾸기 작업 중에 사용자 지정 메서드를 만들고 호출하는 인터페이스입니다. 정규식으로 지정된 텍스트를 다음과 같이 바꾸려면 찾기 및 바꾸기 작업을 사용자 지정해야 하는 몇 가지 사용 사례가 있을 수 있습니다 HTML 태그,그래서 기본적으로 당신은 삽입으로 대체 적용됩니다 HTML.

문자열을 다음과 같이 바꾸어야 하는 경우 HTML 태그,적용 **IReplacingCallback** 문서의 일치 노드와 실행 시작 시 일치가 시작되도록 찾기 및 바꾸기 작업을 사용자 지정하는 인터페이스입니다. 우리가 사용하는 몇 가지 예를 제공하자 **IReplacingCallback**.

다음 코드 예제에서는 지정된 텍스트를 다음과 같이 바꾸는 방법을 보여 줍니다 HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

다음 코드 예제에서는 녹색으로 양수를 강조 표시하고 빨간색으로 음수를 강조 표시하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

다음 코드 예제에서는 각 줄에 줄 번호를 앞에 붙이는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
