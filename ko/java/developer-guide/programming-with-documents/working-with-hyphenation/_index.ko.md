---
title: Hyphenation에 있는 일 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Hyphenation로 일하기
linktitle: Hyphenation로 일하기
description: "텍스트의 더 컴팩트 한 배열에 대 한 hyphenation 사용. 하이픈 사전과 함께 일하는 고급 알고리즘을 제공합니다, OpenOffice dictionaries를 사용하여 Java·"
type: docs
weight: 220
url: /ko/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

때로는 문서에 텍스트의 더 컴팩트 한 배열에 대 한 hyphenation을 사용 해야 합니다. 동시에 각 언어에 따라 단어의 특정이 다를 수 있다는 것을 이해하는 것이 중요합니다.

현재, hyphenation은 종종 영어 텍스트에서 사용되기 때문에 사용되지 않습니다. 절대로, 이 기능의 사용은 사용자 문서에 심각한 영향을 미칠 수 – hyphenation은 레이아웃에 영향을 미치는, 결과적으로, 출력 파일의 외관, 예를 들어, PDF 형식으로.

단어의 올바른 분할을 위해, 언어 별 하이픈 사전은 사용됩니다. Aspose.Words 고급 알고리즘을 사용하여 이러한 사전 작업을 수행하고 같은 하이픈을 얻을 수 있습니다. Microsoft Word·

## Hyphenation 배란

다른 언어가 서로 다른 규범과 낱말 hyphenation를 위한 규칙을 이용하기 때문에, 정확한 hyphenation를 위한 최선 해결책은 특별한 사전을 이용하기 위한 것입니다. Aspose.Words OpenOffice 사전을 사용합니다.

spell 검사를 위해, OpenOffice는 사용합니다 [Hunspell 관련 기사](https://hunspell.github.io/), TeX의 hyphenation 알고리즘의 일반화입니다. 이 알고리즘은 표준과 맞춤형 하이픈 패턴을 사용하여 자동 비표준 하이픈을 허용합니다. Hunspell 사용 방법 [하이픈](https://github.com/hunspell/hyphen) hyphenation를 위해.

{{% alert color="primary" %}}

Hyphenation 전술은에서 가지고 갈 수 있습니다 [LibreOffice 이름 * GitHub](https://github.com/LibreOffice/dictionaries)· 예를 들어, [하이픈](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)·

{{% /alert %}}

{{% alert color="primary" %}}

이름 * Microsoft Word OpenOffice dictionaries 이외의 사전을 사용하여 hyphenation을 수행 할 수 있습니다, OpenOffice dictionaries에 의해 정의 된 일부 단어의 hyphenation은 다를 수 있습니다 Microsoft Word 하이픈. 이 이유를 들어, 때때로 우리는 특정 단어의 hyphenation을 해결하기 위해 자신의 사전에 필요한 패턴을 추가하는 고객을 조언해야합니다.

{{% /alert %}}

## Hyphenation 알고리즘

Aspose.Words 관련 기사 [엑시비션](https://github.com/hunspell/hyphen/blob/master/README.hyphen) OpenOffice 하이픈 사전을 재사용 할 수 있습니다.

다음의 특징 Aspose.Words 알고리즘은 계정으로 가져야 한다:

* Hyphenation 거리 모수 (LEFTHYPHENMIN, RightHYPHENMIN, COM주요 기능 COM헌팅 사전에 지정된 POUNDRIGHTHYPHENMIN)는 무시됩니다. Aspose.Words 문서 호환성 모드에 따라 거리 매개 변수의 집합을 사용합니다.
* 이름 하이픈 알고리즘 Aspose.Words 지원하다 [플라스틱](https://github.com/hunspell/hyphen/blob/master/README.compound)· 그러나, Aspose.Words 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 숫자, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳, 알파벳,
  이름 * Microsoft Word 화합물 단어의 hyphenation의 논리는 문서 호환성 형태에 달려 있습니다.
* 이름 하이픈 알고리즘 Aspose.Words 구현되지 않음 [비표준](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)· 비표준 패턴은 무시됩니다.

## 적재 Hyphenation Dictionaries

hyphenation 기능을 사용하려면 먼저 하이픈 사전을 등록하십시오. 다음 코드 예제는 파일에서 지정된 언어에 대한 hyphenation 사전을로드하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{% /alert %}}

다음 코드 예제는 스트림에서 지정된 언어에 대한 hyphenation 사전을로드하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)·

{{% /alert %}}

사전 등록 된 하이픈 사전에 대한 대안으로, 그것은 단지 필수 하이픈 사전을 등록 할 수 있습니다 "요구로". 이를 달성하기 위해 [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) 인터페이스 및 정적 콜백 사용 [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback)·

다음 코드 예제는 구현 방법을 보여줍니다 **IHyphenationCallback** 인터페이스:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## 배치에 대한 Hyphenation의 영향

텍스트를 줄에 끊을 때, Aspose.Words 현재 줄에 완전히 맞는 각 단어를 확인합니다. 다른 단어가 너무 길면 라인의 끝 부분에 맞게 기본값으로 Aspose.Words 대신 다음 줄의 시작으로 이동합니다.

그러나, hyphenation 특징은 안으로 사용될 수 있습니다 Aspose.Words hyphens를 단어로 삽입하여 정해진 텍스트의 간격을 제거하거나 좁은 컬럼의 라인 길이를 유지합니다. 이것은 분명히 줄의 수에 영향을 줄 수 있으므로 페이지 수에 영향을 줄 수 있습니다. 다른 말에서는, hyphenation 기능을 사용하여 문서 레이아웃에 영향을 미칩니다.

## Hyphenation와 저작물 (H&J)

Microsoft Word text is justified and hyphenation가 활성화되면 breakpoint를 선택하는 복잡한 논리가 있습니다. 짧은, Microsoft Word 선 hyphenation를 피하기 위하여 수축 또는 기지개하는 것을 선호할지도 모릅니다. 아마도 이 논리는 기반 [프로젝트](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf)·

Aspose.Words H&J 알고리즘을 구현하여 동일한 결과를 제공합니다. Microsoft Word 출력 문서에서 동일한 행을 제공합니다.

## 더 보기

* [하이픈 – 하이픈](https://github.com/hunspell/hyphen/blob/master/README)
* [비표준](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [공상 과학 기술](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
