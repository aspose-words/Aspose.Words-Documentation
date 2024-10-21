---
title: 이름 * Markdown 이름 * DOM
second_title: Aspose.Words 제품정보 Java
articleTitle: 이름 * Markdown 이름 * Document Object Model (주)DOM·
linktitle: 이름 * Markdown 이름 * Document Object Model (주)DOM·
type: docs
description: "Tarnslate의 Markdown 관련 기사 Document Object Model 그리고 뒤. 그래서 당신은 기존의 복잡한 작업을 할 수 Markdown 프로그램 Markdown 스크래치에서 문서 Java·"
weight: 20
url: /ko/java/translate-markdown-to-document-object-model/
---

programmatically 읽기, 조작, 문서의 내용과 포맷을 수정, 당신은에 번역해야 Aspose.Words Document Object Model (주)DOM).

Word 문서 대비, Markdown 적합하지 않습니다. DOM 설명 된 [Aspose.Words Document Object Model (DOM)](/words/ko/java/aspose-words-document-object-model/) 기사. 그러나, Aspose.Words 번역을위한 자체 메커니즘을 제공합니다. Markdown 문서에 DOM 그리고 다시, 우리는 텍스트 포맷, 테이블, 헤더 및 기타와 같은 요소를 성공적으로 작업 할 수 있습니다.

이 문서는 다양한 방법을 설명합니다 markdown 특징은 번역될 수 있습니다 Aspose.Words DOM 그리고 다시 Markdown 파일 형식.

## 번역의 복잡성 Markdown - - - DOM - - - Markdown

이 메커니즘의 주요 어려움은 번역 할뿐만 아니라 Markdown 이름 * DOM, 또한 역 변환을 수행 - 문서를 다시 저장 Markdown 최소 손실 형식. 다단계 따옴표와 같은 요소가 있습니다. 즉, 역 변환은 삼극관이 아닙니다.

번역 엔진은 사용자가 기존의 복잡한 요소로 작업할 수 없습니다. Markdown 문서, 또한 자신의 문서를 만들 Markdown 찰상에서 본래 구조를 가진 체재. 다양한 요소를 만들려면이 문서에서 나중에 설명 된 특정 규칙에 따라 특정 이름과 스타일을 사용해야합니다. 그런 스타일은 programmatically 만들 수 있습니다.

## 일반 번역 회사연혁

제품정보 [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) 인라인 블록에 대한 포맷. 직접 대응이 없을 때 Markdown 제품정보 Aspose.Words DOM, 우리는 몇 가지 특별한 단어에서 시작하는 이름으로 문자 스타일을 사용합니다.

콘테이너 구획을 위해, 우리는 배열하는 denote에 작풍 상속을 이용합니다 Markdown 이름 * 이 경우 둥지가없는 기능도 있지만, 특별한 단어에서 시작하는 이름과 단락 스타일을 사용합니다.

Bulleted 및 주문 목록은 컨테이너 블록입니다. Markdown 한국어 그들의 배열은 표현된다 DOM 스타일 상속을 사용하여 다른 모든 컨테이너 블록과 같은 방법. 그러나, 추가로, 목록에서 DOM 리스트 스타일 또는 단락 형식에 대응할 수 있습니다.

## 인라인 블록

제품정보 [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) 번역 할 때 포맷 **Bold**, *Italic* 또는 ~~Strikethrough~~ 인라인 markdown 이름 *

|  Markdown 제품 정보 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

우리는 단어에서 시작하는 이름으로 문자 스타일을 사용합니다. <span notrans="<span notrans=" `InlineCode`"=""></span>· 선택된 점에 의해 뒤로 `(.)` 백틱스의 수 ```(`)``` 제품정보 `InlineCode` 이름 * backticks의 수가 놓인 경우, 한 backtick은 기본적으로 사용됩니다.

|  Markdown 제품 정보 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  더 보기 [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) 수업 |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  더 보기 [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) 수업 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  더 보기 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 수업 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## 컨테이너 블록

문서는 headings, 단락, 목록, 인용, 등과 같은 컨테이너 블록의 순서입니다. 콘테이너 구획은 2개의 종류로 분할될 수 있습니다: 잎 구획과 복잡한 콘테이너. 잎 구획은 인라인 내용만 포함할 수 있습니다. 턴에서 복잡한 콘테이너는, 잎 구획을 포함하여 다른 콘테이너 구획을, 포함할 수 있습니다.

### 잎 구획

아래 표는 사용 예제를 보여줍니다. Markdown 잎 블록 Aspose.Words::

|  Markdown 제품 정보 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  해당 HorizontalRule 모양의 간단한 단락입니다.<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, 여기서 (1<= N <= 9).<br/>이것은 내장 스타일로 번역되며 지정된 패턴 (스프록스 또는 접두사는 허용되지 않음)의 정확히해야합니다.<br/>그렇지 않으면 해당 스타일의 정규 단락이 될 것입니다 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (머리를 두는 수준 1),<br/>`---` (머리를 두는 수준 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, 제품정보 `“Heading N”` 스타일.<br/>if (N >= 2), 다음 `“Heading 2”` 사용될 것입니다, 그렇지 않으면 `“Heading 1”`·<br/>어떤 suffix 허용, 하지만 Aspose.Words importer는 각각 "1"과 "2"를 사용합니다 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>더 보기 `[.]` · `[info string]` 선택 사항 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### 복합 용기

아래 표는 사용 예제를 보여줍니다. Markdown 복잡한 컨테이너 Aspose.Words::

|  Markdown 제품 정보 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>스타일 이름의 suffix는 선택 사항이지만 Aspose.Words importer는 주문 번호 1, 2, 3, ...를 사용합니다. 배열 된 견적의 경우.<br/>배열은 상속된 스타일을 통해 정의됩니다 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Bulleted lists는 단락 번호로 표현됩니다.<br/>`ListFormat.ApplyBulletDefault()`<br/>총알 목록의 3가지 종류가 있습니다. 그들은 매우 첫 번째 수준의 숫자 형식으로 단지 diff입니다. 이것들은: `‘-’`, `‘+’` 또는 `‘*’` 각각 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  주문된 목록은 단락 번호로 표현됩니다:<br/>`ListFormat.ApplyNumberDefault()`<br/>2개의 숫자 형식 마커가 있습니다: ‘.’와 ‘)’. 기본 마커는 '.'입니다 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### 사이트맵

Aspose.Words 또한 테이블을 변환 할 수 있습니다 DOM, 다음과 같이:

|  Markdown 제품 정보 |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>₢ 킹 | ₢ 킹`<br />`- - - | - - -`<br />`· | ₢ 킹 ₢ 킹 |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) · [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 수업 |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## 더 보기

* [일하기 Markdown 제품 정보](/words/ko/java/working-with-markdown-features/)

