---
title: 하이픈 넣기 작업 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 하이픈 넣기 작업
linktitle: 하이픈 넣기 작업
description: "다음을 사용하여 텍스트의 보다 컴팩트한 배열을 위해 하이픈 넣기를 사용합니다 C++. 그것은 하이픈 사전 작업을 고급 알고리즘을 제공,사용 OpenOffice 사전."
type: docs
weight: 220
url: /ko/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

때때로 문서의 텍스트를 더 콤팩트하게 배열하기 위해 빗자리를 사용해야 합니다. 동시에,단어 빗자리의 특성은 각 언어마다 다를 수 있다는 것을 이해하는 것이 중요합니다.

현재,특히 영어 텍스트에서,빗자리는 예전처럼 자주 사용되지 않습니다. 그럼에도 불구하고 이 기능을 사용하면 사용자 문서에 심각한 영향을 미칠 수 있습니다.하이픈 넣기는 레이아웃에 영향을 미치고 결과적으로 출력 파일의 모양(예: PDF 형식

단어의 올바른 분할을 위해 언어별 하이픈 넣기 사전이 사용됩니다. Aspose.Words 고급 알고리즘을 사용하여 이러한 사전을 사용하고 다음과 같은 하이픈을 얻을 수 있습니다 Microsoft Word.

## 하이픈 넣기 사전

다른 언어는 단어 하이픈 넣기에 대해 다른 규범과 규칙을 사용하기 때문에 올바른 하이픈 넣기를위한 최적의 솔루션은 특수 사전을 사용하는 것입니다. Aspose.Words 용도 OpenOffice 사전.

맞춤법 검사를 위해, OpenOffice 사용 [Hunspell 도서관](https://hunspell.github.io/),이것은 텍스의 빗자리 알고리즘의 일반화입니다. 이 알고리즘은 경쟁 표준 및 사용자 정의 하이픈 패턴을 사용하여 자동 비 표준 하이픈 넣기를 허용합니다. Hunspell 사용 [하이픈](https://github.com/hunspell/hyphen) 하이픈을 위해.

{{% alert color="primary" %}}

이 사전은 [LibreOffice 사전 GitHub](https://github.com/LibreOffice/dictionaries). 예를 들어, [엔-US 하이픈 넣기 사전](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

' Microsoft Word 이외의 사전을 사용합니다 OpenOffice 하이픈 넣기를 수행하는 사전,에 의해 정의 된 일부 단어의 하이픈 넣기 OpenOffice 사전은 Microsoft Word 빗줄이 붙어있어요 이러한 이유로,때때로 우리는 특정 단어의 하이픈을 해결하기 위해 자신의 사전에 필요한 패턴을 추가하는 고객을 조언해야한다.

{{% /alert %}}

## 하이픈 알고리즘

Aspose.Words 도구 [텍스 하이픈 알고리즘](https://github.com/hunspell/hyphen/blob/master/README.hyphen) 그리고 재사용할 수 있습니다 OpenOffice 하이픈 사전.

다음의 특징들 Aspose.Words 알고리즘을 고려해야 합니다.:

* 하이픈 거리 매개 변수(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN)은 무시됩니다. Aspose.Words 문서 호환 모드에 따라 자체 거리 매개 변수 세트를 사용합니다.
* 이 알고리즘은 Aspose.Words 지원 [복합 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/README.compound). 그러나, Aspose.Words 알파벳 및 알파벳이 아닌 문자가 혼합 된 문자 시퀀스를 알파벳 전용 부분(단어)으로 분할하고 별도로 하이픈을 넣습니다.
  참고: Microsoft Word 복합 단어의 하이픈 넣기 논리는 문서 호환 모드에 따라 다릅니다.
* 이 알고리즘은 Aspose.Words 구현하지 않습니다 [비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). 비표준 패턴은 무시됩니다.

## 하이픈 넣기 사전 로드

하이픈 넣기 기능을 사용하려면 먼저 하이픈 넣기 사전을 등록하십시오.다음 코드 예제에서는 파일에서 지정된 언어에 대한 하이픈 넣기 사전을 로드하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

다음 코드 예제에서는 스트림에서 지정된 언어에 대한 하이픈 넣기 사전을 로드하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

사전 등록의 대안으로,필요한 사전만 등록할 수 있습니다. 이를 달성하기 위해, [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) 인터페이스 및 정적 콜백 사용 [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

다음 코드 예제에서는 다음을 구현하는 방법을 보여 줍니다 **IHyphenationCallback** 인터페이스:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## 하이픈이 레이아웃에 미치는 영향

텍스트를 줄로 나눌 때, Aspose.Words 각 단어가 현재 줄에 완전히 맞는지 확인합니다. 다른 단어가 너무 길어서 줄 끝에 맞지 않으면 기본적으로 Aspose.Words 하이픈을 넣는 대신 다음 줄의 시작 부분으로 이동합니다.

그러나 하이픈 넣기 기능은 다음과 같은 경우에 사용할 수 있습니다 Aspose.Words 정렬된 텍스트의 간격을 제거하거나 좁은 열에서 짝수 줄 길이를 유지하기 위해 단어에 하이픈을 삽입합니다. 이것은 분명히 줄 수와 페이지 수에 영향을 줄 수 있습니다. 즉,하이픈 넣기 기능을 사용하면 문서 레이아웃에 영향을 줍니다.

## 하이픈 넣기 및 정당화(에이치&제이)

Microsoft Word 텍스트가 정렬되고 하이픈 넣기가 활성화된 경우 중단점을 선택하기 위한 복잡한 논리가 있습니다. 간단히 말해서, Microsoft Word 줄 하이픈을 피하기 위해 공간을 축소하거나 늘리는 것을 선호 할 수 있습니다. 아마도 이 논리는 [크누스의 기사](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words 다음과 같은 결과를 제공하는 자체 히치 앤 제이 알고리즘을 구현합니다 Microsoft Word 출력 문서에서 동일한 줄 바꿈을 제공합니다.

## 또한 참조

* [하이픈-하이픈 라이브러리](https://github.com/hunspell/hyphen/blob/master/README)
* [비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [오픈 오피스에서 자동 비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
