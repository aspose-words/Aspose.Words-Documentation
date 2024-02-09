---
title: C#에서 하이픈 넣기 작업
second_title: .NET용 Aspose.Words
articleTitle: 하이픈 넣기 작업
linktitle: 하이픈 넣기 작업
description: "C#를 사용하여 텍스트를 보다 간결하게 배열하려면 하이픈을 사용하세요. 하이픈 사전 작업을 위한 고급 알고리즘을 제공하고 OpenOffice 사전을 사용합니다."
type: docs
weight: 220
url: /ko/net/working-with-hyphenation/
---

때로는 문서에서 텍스트를 보다 간결하게 배열하기 위해 하이픈을 사용해야 하는 경우도 있습니다. 동시에, 단어 하이픈 넣기의 세부 사항이 언어마다 다를 수 있음을 이해하는 것이 중요합니다.

현재는 특히 영어 텍스트에서 하이픈 넣기가 예전만큼 자주 사용되지 않습니다. 그럼에도 불구하고 이 기능을 사용하면 사용자 문서에 심각한 영향을 미칠 수 있습니다. 하이픈은 레이아웃에 영향을 미치고 결과적으로 PDF 형식과 같은 출력 파일의 모양에 영향을 줍니다.

단어를 올바르게 분할하기 위해 언어별 하이픈 사전이 사용됩니다. Aspose.Words는 고급 알고리즘을 사용하여 이러한 사전을 사용하며 Microsoft Word에서와 동일한 하이픈 연결을 얻을 수 있습니다.

## 하이픈 넣기 사전

언어마다 단어 하이픈 넣기에 대해 서로 다른 규범과 규칙을 사용하므로 올바른 하이픈 넣기를 위한 최적의 솔루션은 특수 사전을 사용하는 것입니다. Aspose.Words는 OpenOffice 사전을 사용합니다.

맞춤법 검사를 위해 OpenOffice는 TeX의 하이픈 넣기 알고리즘을 일반화한 [Hunspell 라이브러리](https://hunspell.github.io/)를 사용합니다. 이 알고리즘은 경쟁 표준 및 사용자 정의 하이픈 연결 패턴을 사용하여 자동 비표준 하이픈 연결을 허용합니다. Hunspell는 하이픈 넣기에 [하이픈](https://github.com/hunspell/hyphen)을 사용합니다.

{{% alert color="primary" %}}

하이픈 넣기 사전은 [LibreOffice 사전 GitHub](https://github.com/LibreOffice/dictionaries)에서 가져올 수 있습니다. 예를 들어 [en-US 하이픈 넣기 사전](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)입니다.

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word는 하이픈 연결을 수행하기 위해 OpenOffice 사전 이외의 사전을 사용하므로 OpenOffice 사전에서 정의된 일부 단어의 하이픈 연결은 Microsoft Word 하이픈 연결과 다를 수 있습니다. 이러한 이유로 때때로 우리는 고객에게 특정 단어의 하이픈 연결을 수정하기 위해 사전에 필요한 패턴을 추가하도록 조언해야 합니다.

{{% /alert %}}

## 하이픈 넣기 알고리즘

Aspose.Words는 [TeX 하이픈 넣기 알고리즘](https://github.com/hunspell/hyphen/blob/master/README.hyphen)를 구현하고 OpenOffice 하이픈 사전을 재사용할 수 있습니다.

Aspose.Words 알고리즘의 다음 기능을 고려해야 합니다

* 하이픈 사전에 지정된 하이픈 간격 매개변수(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN)는 무시됩니다. Aspose.Words는 문서 호환성 모드에 따라 자체 거리 매개변수 세트를 사용합니다.
* Aspose.Words의 하이픈 넣기 알고리즘은 [복합 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/README.compound)를 지원합니다. 그러나 Aspose.Words는 알파벳과 알파벳이 아닌 문자가 혼합된 문자 시퀀스를 알파벳 전용 부분(단어)으로 분할하고 별도로 하이픈을 연결합니다.
  복합어 하이픈 넣기의 Microsoft Word 논리는 문서 호환성 모드에 따라 달라집니다.
* Aspose.Words의 하이픈 넣기 알고리즘은 [비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)를 구현하지 않습니다. 비표준 패턴은 무시됩니다.

## 하이픈 넣기 사전 로드 중

하이픈 넣기 기능을 사용하려면 먼저 하이픈 넣기 사전을 등록해야 합니다. 다음 코드 예제는 파일에서 지정된 언어에 대한 하이픈 넣기 사전을 로드하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

다음 코드 예제에서는 스트림에서 지정된 언어에 대한 하이픈 넣기 사전을 로드하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

하이픈 사전을 사전 등록하는 대신 "요청에 따라" 필요한 하이픈 사전만 등록하는 것도 가능합니다. 이를 달성하려면 [IHyphenationCallback](https://reference.aspose.com/words/net/aspose.words/ihyphenationcallback/) 인터페이스를 구현하고 정적 콜백 [Callback](https://reference.aspose.com/words/net/aspose.words/hyphenation/callback/)를 사용하세요.

다음 코드 예제는 **IHyphenationCallback** 인터페이스를 구현하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Hyphenation-CustomHyphenation.cs" >}}

## 하이픈 넣기가 레이아웃에 미치는 영향

텍스트를 줄로 나눌 때 Aspose.Words는 각 단어가 현재 줄에 완전히 맞는지 확인합니다. 다른 단어가 너무 길어서 줄 끝에 맞지 않으면 기본적으로 Aspose.Words는 해당 단어에 하이픈을 넣는 대신 다음 줄의 시작 부분으로 이동합니다.

그러나 Aspose.Words에서는 하이픈 넣기 기능을 사용하여 단어에 하이픈을 삽입하여 양쪽 정렬된 텍스트의 간격을 없애거나 좁은 열에서 줄 길이를 균일하게 유지할 수 있습니다. 이는 분명히 줄 수와 페이지 수에 영향을 미칠 수 있습니다. 즉, 하이픈 넣기 기능을 사용하면 문서 레이아웃에 영향을 줍니다.

## 하이픈 연결 및 양쪽 정렬(H&amp;J)

Microsoft Word에는 텍스트가 정렬되고 하이픈 넣기가 활성화된 경우 중단점을 선택하는 복잡한 논리가 있습니다. 즉, Microsoft Word는 줄 하이픈을 피하기 위해 공백을 줄이거나 늘리는 것을 선호할 수 있습니다. 아마도 이 논리는 [크누스의 기사](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)를 기반으로 할 것입니다.

Aspose.Words는 Microsoft Word와 동일한 결과를 제공하고 출력 문서에서 동일한 줄 바꿈을 제공하는 자체 H&amp;J 알고리즘을 구현합니다.

## 또한보십시오

* [하이픈 - 하이픈 넣기 라이브러리](https://github.com/hunspell/hyphen/blob/master/README)
* [비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Open Office의 자동 비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
