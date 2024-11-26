---
title: Java에 하이픈 넣기 작업
second_title: Aspose.WordsJava
articleTitle: 하이픈 넣기 작업
linktitle: 하이픈 넣기 작업
description: "텍스트의 더 컴팩트 한 배열을 위해 하이픈 넣기를 사용하십시오. 하이픈 넣기 사전으로 작업 할 수있는 고급 알고리즘을 제공하고Java을 사용하여OpenOffice사전을 사용합니다."
type: docs
weight: 220
url: /ko/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

때때로 문서의 텍스트를 더 콤팩트하게 배열하기 위해 빗자리를 사용해야 합니다. 동시에,단어 빗자리의 특성은 각 언어마다 다를 수 있다는 것을 이해하는 것이 중요합니다.

현재,특히 영어 텍스트에서,빗자리는 예전처럼 자주 사용되지 않습니다. 그럼에도 불구하고 이 기능을 사용하면 사용자 문서에 심각한 영향을 미칠 수 있습니다.하이픈 넣기는 레이아웃에 영향을 미치고 결과적으로 출력 파일의 모양(예:PDF형식)에 영향을 미칩니다.

단어의 올바른 분할을 위해 언어별 하이픈 넣기 사전이 사용됩니다. Aspose.Words고급 알고리즘을 사용하여 이러한 사전을 사용하고Microsoft Word과 동일한 하이픈을 얻을 수 있습니다.

## 하이픈 넣기 사전

다른 언어는 단어 하이픈 넣기에 대해 다른 규범과 규칙을 사용하기 때문에 올바른 하이픈 넣기를위한 최적의 솔루션은 특수 사전을 사용하는 것입니다. Aspose.Words은OpenOffice사전을 사용합니다.

맞춤법 검사를 위해OpenOffice는 [Hunspell라이브러리](https://hunspell.github.io/),이것은 텍스의 빗자리 알고리즘의 일반화입니다. 이 알고리즘은 경쟁 표준 및 사용자 정의 하이픈 패턴을 사용하여 자동 비 표준 하이픈 넣기를 허용합니다. Hunspell는 [하이픈](https://github.com/hunspell/hyphen) 하이픈을 위해.

{{% alert color="primary" %}}

하이픈 사전은 다음에서 가져올 수 있습니다.[ LibreOffice 사전 GitHub](https://github.com/LibreOffice/dictionaries). 예를 들어,[ en-US 하이픈 사전](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word은OpenOffice사전 이외의 사전을 사용하여 하이픈 넣기를 수행하므로OpenOffice사전에 의해 정의된 일부 단어의 하이픈 넣기는Microsoft Word하이픈 넣기와 다를 수 있습니다. 이러한 이유로,때때로 우리는 특정 단어의 하이픈을 해결하기 위해 자신의 사전에 필요한 패턴을 추가하는 고객을 조언해야한다.

{{% /alert %}}

## 하이픈 알고리즘

Aspose.Words구현 [텍스 하이픈 알고리즘](https://github.com/hunspell/hyphen/blob/master/README.hyphen) OpenOffice하이픈 넣기 사전을 재사용 할 수 있습니다.

Aspose.Words알고리즘의 다음 특징을 고려해야 합니다.:

* 하이픈 넣기 거리 매개 변수(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) 하이픈 넣기 사전에 지정된 것은 무시됩니다. Aspose.Words는 문서 호환 모드에 따라 자체 거리 매개 변수 집합을 사용합니다.
* Aspose.Words의 하이픈 넣기 알고리즘은 다음을 지원합니다 [복합 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/README.compound). 그러나Aspose.Words은 알파벳과 알파벳이 아닌 문자가 혼합된 문자 시퀀스를 알파벳만 있는 부분(단어)으로 나누고 별도로 하이픈을 넣습니다.
  복합 단어의 하이픈 넣기의Microsoft Word논리는 문서 호환 모드에 따라 다릅니다.
* Aspose.Words의 하이픈 알고리즘은 [비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). 비표준 패턴은 무시됩니다.

## 하이픈 넣기 사전 로드

하이픈 넣기 기능을 사용하려면 먼저 하이픈 넣기 사전을 등록하십시오.다음 코드 예제에서는 파일에서 지정된 언어에 대한 하이픈 넣기 사전을 로드하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

다음 코드 예제에서는 스트림에서 지정된 언어에 대한 하이픈 넣기 사전을 로드하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

사전 등록의 대안으로,필요한 사전만 등록할 수 있습니다. 이를 위해[IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/)인터페이스를 구현하고 정적 콜백[Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)을 사용합니다.

다음 코드 예제에서는**IHyphenationCallback**인터페이스를 구현하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## 하이픈이 레이아웃에 미치는 영향

텍스트를 줄로 나눌 때Aspose.Words은 각 단어가 현재 줄에 완전히 맞는지 확인합니다. 다른 단어가 너무 길어서 줄 끝에 맞지 않으면 기본적으로Aspose.Words이 하이픈을 넣는 대신 다음 줄의 시작 부분으로 이동합니다.

그러나 하이픈 넣기 기능은Aspose.Words에서 하이픈을 단어에 삽입하여 정당화 된 텍스트의 공백을 제거하거나 좁은 열에서 짝수 줄 길이를 유지하는 데 사용할 수 있습니다. 이것은 분명히 줄 수와 페이지 수에 영향을 줄 수 있습니다. 즉,하이픈 넣기 기능을 사용하면 문서 레이아웃에 영향을 줍니다.

## 하이픈 넣기 및 정당화(에이치&제이)

Microsoft Word에는 텍스트가 정렬되고 하이픈 넣기가 활성화되어 있는 경우 중단점을 선택하기 위한 복잡한 논리가 있습니다. 간단히 말해서,Microsoft Word는 줄 하이픈을 피하기 위해 공간을 축소하거나 늘리는 것을 선호할 수 있습니다. 아마도 이 논리는 [크누스의 기사](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words은Microsoft Word과 동일한 결과를 제공하고 출력 문서에서 동일한 줄 바꿈을 제공하는 자체 시간 및 제이 알고리즘을 구현합니다.

## 또한 참조

* [하이픈-하이픈 라이브러리](https://github.com/hunspell/hyphen/blob/master/README)
* [비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [오픈 오피스에서 자동 비표준 하이픈 넣기](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
