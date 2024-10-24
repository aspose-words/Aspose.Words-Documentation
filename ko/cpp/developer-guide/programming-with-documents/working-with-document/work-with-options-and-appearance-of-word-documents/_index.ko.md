---
title: 워드 문서의 옵션 및 모양
second_title: Aspose.Words 에 대한 C++
articleTitle: 워드 문서의 옵션 및 모양 작업
linktitle: 워드 문서의 옵션 및 모양 작업
description: "계정에 다양한 사이의 차이를 복용 워드 문서의 모양을 제어 Microsoft Word 버전."
type: docs
weight: 40
url: /ko/cpp/work-with-word-document-options-and-appearance/
---

때로는 문서의 모양을 변경해야 할 수도 있습니다(예:언어 기본 설정 또는 페이지 당 줄 수 설정).Aspose.Words 문서 표시 방법과 몇 가지 추가 옵션을 제어하는 기능을 제공합니다. 이 기사에서는 이러한 가능성을 설명합니다.

## 문서 표시 옵션 설정

문서 표시 방법을 제어할 수 있습니다 Microsoft Word 를 사용하여 [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/) 수업 예를 들어 다음을 사용하여 문서 확대/축소 값을 설정할 수 있습니다 [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) 속성 또는 뷰 모드를 사용하여 [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/) 재산.

다음 코드 예제에서는 문서를 열 때 50%로 표시되도록 하는 방법을 보여 줍니다 Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 은 문서에 줌 배율을 쓰지 않고 더 이상 문서에 기록 된 값에서 기본 줌을 설정하지 않고 마지막으로 열린 문서의 줌 배율을 사용하는 것 같습니다.

{{% /alert %}}

## 페이지 표시 옵션 설정

한 줄당 문자 수를 설정하려면 [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/) 재산. 당신은 또한 단어 문서에 대한 페이지 당 라인의 수를 설정할 수 있습니다- [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) 문서 표에서 페이지당 줄 수를 가져오거나 설정하는 속성입니다.

{{% alert color="primary" %}}

그 안에 Microsoft Word,아시아 언어 지원이 설치된 경우에만"페이지 설정"대화 상자의"문서 그리드"탭을 사용하여 동일한 매개 변수를 설정할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 한 줄당 문자 수와 한 페이지당 줄 수를 설정하는 방법을 보여 줍니다 Microsoft Word 문서:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## 언어 기본 설정 설정

문서 표시 Microsoft Word 이 문서의 기본값으로 설정된 언어에 따라 다릅니다. 기본값에 언어가 설정되지 않은 경우, Microsoft Word 예를 들어,"파일,옵션,언어"에서 찾을 수 있는"사무실 언어 기본 설정 설정"대화 상자에서 정보를 가져옵니다. Microsoft Word 2019.

함께 Aspose.Words,당신은 또한 사용하여 언어 환경 설정을 설정할 수 있습니다 [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/) 수업 또한 문서의 올바른 표시를 위해 그것을 설정해야합니다 Microsoft Word 문서 로딩 프로세스가 일치해야하는 버전-이 작업을 사용하여 수행 할 수 있습니다. [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) 재산.

{{% alert color="primary" %}}

당신의 경우 Aspose.Words 생성 된 문서가 예상대로 표시되지 않습니다. **LanguagePreferences** 그리고 **MswVersion** 값을 조정하고 필요한 경우 설정에 맞게 조정할 수 있습니다. Microsoft Word 버전

{{% /alert %}}

다음 코드 예제에서는 편집 언어에 일본어를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

다음 코드 예제에서는 러시아어를 기본 편집 언어로 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## 특정 단어 버전에 대한 문서 최적화

그 [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) 방법은 문서 내용뿐만 아니라,기본을 최적화 할 수 있습니다 Aspose.Words 특정 버전의 동작 Microsoft Word. 이 방법을 사용하여 다음을 방지 할 수 있습니다 Microsoft Word 문서 로드 시"호환성 모드"리본을 표시하지 않습니다. 당신은 또한 설정해야 할 수도 있습니다 `Compliance` 이전 또는 그 이상의 속성.

다음 코드 예제에서는 다음에 대한 문서 콘텐츠를 최적화하는 방법을 보여 줍니다 Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
