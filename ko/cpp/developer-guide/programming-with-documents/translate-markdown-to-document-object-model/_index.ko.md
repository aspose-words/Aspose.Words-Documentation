---
title: 번역 Markdown 객체 모델을 문서화하려면(DOM)
second_title: Aspose.Words 에 대한 C++
articleTitle: 번역 Markdown 객체 모델을 문서화하려면(DOM)
linktitle: 번역 Markdown 객체 모델을 문서화하려면(DOM)
type: docs
description: "타너슬레이트 Markdown 문서 대 문서 개체 모델 및 뒤로 사용 C++. 그래서 당신은 복잡한 기존 작업 할 수 있습니다 Markdown 그리고 프로그래밍 방식으로 Markdown 처음부터 문서."
weight: 20
url: /ko/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

문서의 내용과 서식을 프로그래밍 방식으로 읽고,조작하고,수정하려면 문서의 내용을 다음과 같이 번역해야 합니다. Aspose.Words 문서 개체 모델(DOM).

워드 문서와는 달리, Markdown 에 부합하지 않습니다 DOM 에 설명 [Aspose.Words 문서 개체 모델(DOM)](/words/cpp/aspose-words-document-object-model/) 기사 그러나, Aspose.Words 번역을 위한 자체 메커니즘을 제공합니다 Markdown 문서 DOM 텍스트 서식,표,머리글 및 기타와 같은 요소로 성공적으로 작업 할 수 있습니다.

이 문서에서는 다양한 방법을 설명합니다 markdown 특징은 Aspose.Words DOM 그리고 다시 Markdown 형식

## 번역의 복잡성 Markdown – DOM – Markdown

이 메커니즘의 주요 어려움은 번역뿐만 아니라 Markdown 에 DOM,뿐만 아니라 역 변환을 할 수–다시 문서를 저장하려면 Markdown 최소한의 손실로 포맷. 다단계 인용구와 같은 요소들이 있는데,그 요소들은 역변환이 사소한 것이 아닙니다.

우리의 번역 엔진은 사용자뿐만 아니라 기존의 복잡한 요소와 함께 작업 할 수 있습니다 Markdown 문서뿐만 아니라,자신의 문서를 만들 수 있습니다 Markdown 처음부터 원래 구조로 포맷. 다양한 요소를 만들려면 이 문서의 뒷부분에서 설명하는 특정 규칙에 따라 특정 이름을 가진 스타일을 사용해야 합니다. 이러한 스타일은 프로그래밍 방식으로 만들 수 있습니다.

## 일반적인 번역 원칙

우리는 사용 [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) 인라인 블록에 대한 서식 지정. 직접적인 대응이 없을 때 Markdown 기능 Aspose.Words DOM,우리는 특별한 단어에서 시작하는 이름의 문자 스타일을 사용합니다.

컨테이너 블록의 경우 스타일 상속을 사용하여 중첩을 나타냅니다 Markdown 특징. 이 경우 중첩된 기능이 없는 경우에도 일부 특수 단어에서 시작하는 이름으로 단락 스타일을 사용합니다.

글 머리 기호 및 정렬 된 목록은 컨테이너 블록입니다. Markdown 또한. 그들의 둥지는 DOM 스타일 상속을 사용하는 다른 모든 컨테이너 블록과 동일한 방법입니다. 그러나,또한, DOM 목록 스타일 또는 단락 서식 중 하나에 해당하는 숫자 서식이 있습니다.

## 인라인 블록

우리는 사용 [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) 번역 할 때 서식 지정 **Bold**, *Italic* 또는 ~~Strikethrough~~ 선형 markdown 특징.

| Markdown 특징 | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

우리는 단어에서 시작하는 이름의 문자 스타일을 사용합니다 `InlineCode`,선택적인 점으로 이어집니다. `(.)` 그리고 여러 개의 뒷부분 ```(`)``` 에 대한 `InlineCode` 특징. 여러 개의 백틱을 놓치면 기본적으로 하나의 백틱이 사용됩니다.

| Markdown 특징 | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | 그 [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) 수업 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | 그 [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/) 수업 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | 그 [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) 수업 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## 컨테이너 블록

문서는 제목,단락,목록,따옴표 등과 같은 컨테이너 블록의 연속입니다. 컨테이너 블록은 다음과 같이 나눌 수 있습니다 2 클래스:리프 블록 및 복잡한 컨테이너. 리프 블록은 인라인 콘텐츠만 포함할 수 있습니다. 복잡한 컨테이너에는 리프 블록을 포함한 다른 컨테이너 블록이 포함될 수 있습니다.

### 잎 블록

아래 표는 사용 예제를 보여줍니다. Markdown 잎 블록 Aspose.Words:

| Markdown 특징 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | 이것은 대응하는 간단한 단락입니다. HorizontalRule 모양:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`,어디(1<=엔 <= 9).<br />이것은 내장된 스타일로 번역되며 정확히 지정된 패턴이어야 합니다(접미사 또는 접두사는 허용되지 않습니다).<br />그렇지 않으면 해당 스타일을 가진 일반 단락 일 것입니다. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, `"Heading N"` 스타일<br />만약(엔>= 2),그러면 `"Heading 2"` 그렇지 않으면 사용될 것입니다 `"Heading 1"`.<br />모든 접미사는 허용되지만 Aspose.Words 수입자는 숫자를 사용합니다 "1" 그리고"2"각각 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />그 `[.]` 그리고 `[info string]` 선택 사항입니다. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### 복잡한 컨테이너

아래 표는 사용 예제를 보여줍니다. Markdown 복잡한 컨테이너 Aspose.Words:

| Markdown 특징 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />스타일 이름의 접미사는 선택 사항이지만 Aspose.Words 수입자는 주문 번호를 사용합니다 1, 2, 3, …. 중첩 된 따옴표의 경우.<br />중첩은 상속된 스타일을 통해 정의됩니다. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | 글머리 기호 목록은 단락 번호 매기기를 사용하여 표시됩니다:<br />`get_ListFormat()->ApplyBulletDefault()`<br />있을 수 있습니다 3 글 머리 기호 목록의 유형. 그들은 단지 첫 번째 레벨의 번호 형식으로 차이가 있습니다. 이 두가지가: `‘-’`, `‘+’` 또는 `‘*’` 각각 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | 순서 목록은 단락 번호 매기기를 사용하여 표시됩니다:<br />`get_ListFormat()->ApplyNumberDefault()`<br />있을 수 있습니다 2 숫자 형식 마커: ‘.’ 그리고 ‘)’. 기본 마커는 다음과 같습니다 ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### 표

Aspose.Words 또한 테이블을 다음과 같이 번역 할 수 있습니다 DOM,아래와 같이:

| Markdown 특징 | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) 그리고 [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) 수업 |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## 또한 참조

* [함께 작업 Markdown 특징](/words/cpp/working-with-markdown-features/)

