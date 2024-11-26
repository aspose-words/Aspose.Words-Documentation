---
title: Markdown에서DOM로 번역
second_title: Aspose.WordsJava
articleTitle: Markdown을 문서 객체 모델로 변환(DOM)
linktitle: Markdown을 문서 객체 모델로 변환(DOM)
type: docs
description: "Markdown문서를 문서 객체 모델 및 백으로 표시하십시오. 따라서 복잡한 기존Markdown으로 작업하고Java을 사용하여 처음부터Markdown문서를 프로그래밍 방식으로 만들 수 있습니다."
weight: 20
url: /ko/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

문서의 내용과 서식을 프로그래밍 방식으로 읽고 조작하고 수정하려면Aspose.Words문서 개체 모델(DOM)으로 변환해야 합니다.

Word 문서와 달리 Markdown는 다음에서 설명한 DOM과 일치하지 않습니다.[ Aspose.Words 문서 개체 모델(DOM)](/words/java/aspose-words-document-object-model/) 기사. 그러나 Aspose.Words은 Markdown 문서를 DOM으로 번역하고 다시 그 반대로 번역하는 자체 메커니즘을 제공하므로 텍스트 서식, 표, 헤더 등과 같은 요소를 사용하여 성공적으로 작업할 수 있습니다.

이 문서에서는 다양한markdown기능을Aspose.WordsDOM및Markdown형식으로 다시 번역할 수 있는 방법을 설명합니다.

## 번역의 복잡성Markdown – DOM – Markdown

이 메커니즘의 주요 어려움은Markdown을DOM로 변환 할뿐만 아니라 역 변환을 수행하여 최소한의 손실로 문서를Markdown형식으로 다시 저장하는 것입니다. 다단계 인용구와 같은 요소들이 있는데,그 요소들은 역변환이 사소한 것이 아닙니다.

우리의 번역 엔진은 사용자가 기존의Markdown문서에서 복잡한 요소와 함께 작업 할뿐만 아니라,처음부터 원래 구조와Markdown형식으로 자신의 문서를 만들 수 있습니다. 다양한 요소를 만들려면 이 문서의 뒷부분에서 설명하는 특정 규칙에 따라 특정 이름을 가진 스타일을 사용해야 합니다. 이러한 스타일은 프로그래밍 방식으로 만들 수 있습니다.

## 일반적인 번역 원칙

인라인 블록에[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)서식을 사용합니다. Aspose.WordsDOM의Markdown기능에 대한 직접적인 대응이 없을 때,우리는 몇 가지 특별한 단어에서 시작하는 이름의 문자 스타일을 사용합니다.

컨테이너 블록의 경우 스타일 상속을 사용하여 중첩 된Markdown기능을 나타냅니다. 이 경우 중첩된 기능이 없는 경우에도 일부 특수 단어에서 시작하는 이름으로 단락 스타일을 사용합니다.

글 머리 기호 및 정렬 된 목록은Markdown의 컨테이너 블록이기도합니다. 그들의 중첩은 스타일 상속을 사용하는 다른 모든 컨테이너 블록과 같은 방식으로DOM로 표시됩니다. 그러나 또한DOM의 목록은 목록 스타일 또는 단락 서식 중 하나에 해당하는 숫자 서식을 갖습니다.

## 인라인 블록

**Bold**,*Italic*또는~~Strikethrough~~인라인markdown기능을 번역할 때[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)서식을 사용합니다.

| Markdown기능 | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

`InlineCode`이라는 단어에서 시작하는 이름의 문자 스타일을 사용하고`InlineCode`기능에 대해 선택적 점`(.)`와 여러 개의 백틱```(`)```을 사용합니다. 여러 개의 백틱을 놓치면 기본적으로 하나의 백틱이 사용됩니다.

| Markdown기능 | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/)클래스. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[링크 텍스트](url)`<br />`[링크 텍스트](<url>"title")`<br />`[링크 텍스트](url 'title')`<br />`[링크 텍스트](url (title))` | [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/)클래스. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![대체 텍스트](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![대체 텍스트](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![대체 텍스트](/words/java/translate-markdown-to-document-object-model/url (title))` | [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)클래스. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## 컨테이너 블록

문서는 제목,단락,목록,따옴표 등과 같은 컨테이너 블록의 연속입니다. 컨테이너 블록은 리프 블록과 복잡한 컨테이너의 두 가지 클래스로 나눌 수 있습니다. 리프 블록은 인라인 콘텐츠만 포함할 수 있습니다. 복잡한 컨테이너에는 리프 블록을 포함한 다른 컨테이너 블록이 포함될 수 있습니다.

### 잎 블록

아래 표는Aspose.Words에서Markdown리프 블록을 사용하는 예를 보여줍니다:

| Markdown기능 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | 이것은HorizontalRule모양의 간단한 단락입니다.:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`,여기서(1<=엔 <= 9).<br />이것은 내장된 스타일로 번역되며 정확히 지정된 패턴이어야 합니다(접미사 또는 접두사는 허용되지 않습니다).<br />그렇지 않으면 해당 스타일을 가진 일반 단락 일 것입니다. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`,'헤딩 앤'스타일을 기반으로 합니다.<br />만약(엔>=2),다음'Heading 2'사용 됩니다,그렇지 않으면'Heading 1'.<br />모든 접미사는 허용되지만Aspose.Words수입자는 각각"1"및"2"숫자를 사용합니다. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### 복잡한 컨테이너

아래 표는Aspose.Words에서Markdown복잡한 컨테이너를 사용하는 예를 보여줍니다:

| Markdown기능 | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />스타일 이름의 접미사는 선택 사항이지만Aspose.Words수입자는 정렬된 숫자를 사용합니다 1, 2, 3, .... 중첩 된 따옴표의 경우.<br />중첩은 상속된 스타일을 통해 정의됩니다. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | 글머리 기호 목록은 단락 번호 매기기를 사용하여 표시됩니다:<br />`ListFormat.ApplyBulletDefault()`<br />글머리 기호 목록은 3 가지 유형이 있습니다. 그들은 단지 첫 번째 레벨의 번호 형식으로 차이가 있습니다. 이들은 각각`‘-’`,`‘+’`또는`‘*’`입니다. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | 순서 목록은 단락 번호 매기기를 사용하여 표시됩니다:<br />`ListFormat.ApplyNumberDefault()`<br />‘.’및‘)’의 숫자 형식 마커가 2 개 있을 수 있습니다. 기본 마커는‘.’입니다. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### 표

Aspose.Words또한 아래와 같이 테이블을DOM로 변환할 수 있습니다:

| Markdown기능 | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/),[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)및[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)클래스. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## 또한 참조

* [Markdown기능 작업](/words/java/working-with-markdown-features/)

