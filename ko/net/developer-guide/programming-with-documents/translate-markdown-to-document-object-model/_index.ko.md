---
title: Markdown를 DOM로 번역하세요
second_title: .NET용 Aspose.Words
articleTitle: Markdown를 Document Object Model(DOM)로 번역
linktitle: Markdown를 Document Object Model(DOM)로 번역
type: docs
description: "C#을 사용하여 Markdown 문서를 Document Object Model로 번역하고 다시 역으로 번역합니다. 따라서 복잡한 기존 Markdown로 작업하고 처음부터 프로그래밍 방식으로 Markdown 문서를 만들 수 있습니다."
weight: 20
url: /ko/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

문서의 내용과 서식을 프로그래밍 방식으로 읽고, 조작하고, 수정하려면 문서를 Aspose.Words Document Object Model(DOM)로 변환해야 합니다.

Word 문서와 달리 Markdown는 [Aspose.Words Document Object Model (DOM)](/words/ko/net/aspose-words-document-object-model/) 문서에 설명된 DOM를 따르지 않습니다. 그러나 Aspose.Words는 Markdown 문서를 DOM로 변환하거나 그 반대로 변환하는 자체 메커니즘을 제공하므로 텍스트 서식, 표, 헤더 등과 같은 요소를 성공적으로 사용할 수 있습니다.

이 기사에서는 다양한 markdown 기능을 Aspose.Words DOM로 변환하고 다시 Markdown 형식으로 변환하는 방법을 설명합니다.

## 번역의 복잡성 Markdown – DOM – Markdown

이 메커니즘의 가장 큰 어려움은 Markdown를 DOM로 변환하는 것뿐만 아니라 역변환을 수행하여 최소한의 손실로 문서를 Markdown 형식으로 다시 저장하는 것입니다. 역변환이 쉽지 않은 다단계 인용문과 같은 요소가 있습니다.

우리의 번역 엔진을 사용하면 사용자는 기존 Markdown 문서의 복잡한 요소로 작업할 수 있을 뿐만 아니라 처음부터 원래 구조를 사용하여 Markdown 형식으로 자신만의 문서를 만들 수도 있습니다. 다양한 요소를 만들려면 이 문서의 뒷부분에 설명된 특정 규칙에 따라 특정 이름을 가진 스타일을 사용해야 합니다. 이러한 스타일은 프로그래밍 방식으로 생성할 수 있습니다.

## 일반적인 번역 원칙

인라인 블록에는 [Font](https://reference.aspose.com/words/net/aspose.words/font/) 형식을 사용합니다. Aspose.Words DOM의 Markdown 기능에 대한 직접적인 대응이 없는 경우 일부 특수 단어로 시작하는 이름의 문자 스타일을 사용합니다.

컨테이너 블록의 경우 스타일 상속을 사용하여 중첩된 Markdown 기능을 나타냅니다. 이 경우 중첩된 기능이 없더라도 일부 특수 단어로 시작하는 이름을 가진 단락 스타일도 사용합니다.

글머리 기호 목록과 순서가 지정된 목록도 Markdown의 컨테이너 블록입니다. 중첩은 스타일 상속을 사용하는 다른 모든 컨테이너 블록과 동일한 방식으로 DOM에 표시됩니다. 그러나 추가로 DOM의 목록에는 목록 스타일 또는 단락 형식의 해당 숫자 형식이 있습니다.

## 인라인 블록

**Bold**, *Italic* 또는 ~~취소선~~ 인라인 markdown 기능을 번역할 때 [Font](https://reference.aspose.com/words/net/aspose.words/font/) 형식을 사용합니다.

|  Markdown 기능 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

우리는 `InlineCode`라는 단어로 시작하는 이름과 `InlineCode` 기능을 위한 선택적인 도트 `(.)` 및 다수의 백틱 ```(`)```이 뒤에 오는 문자 스타일을 사용합니다. 여러 개의 백틱이 누락된 경우 기본적으로 하나의 백틱이 사용됩니다.

|  Markdown 기능 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) 클래스 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) 클래스 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 클래스 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## 컨테이너 블록

문서는 제목, 단락, 목록, 인용문 등과 같은 일련의 컨테이너 블록입니다. 컨테이너 블록은 리프 블록과 복합 컨테이너라는 두 가지 클래스로 나눌 수 있습니다. 리프 블록은 인라인 콘텐츠만 포함할 수 있습니다. 복잡한 컨테이너에는 리프 블록을 포함한 다른 컨테이너 블록이 포함될 수 있습니다.

### 나뭇잎 블록

아래 표는 Aspose.Words에서 Markdown 리프 블록을 사용하는 예를 보여줍니다

|  Markdown 기능 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  다음은 해당 수평 규칙 모양이 있는 간단한 단락입니다.<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, 여기서 (1&lt;= N &lt;= 9).<br /> 이는 내장 스타일로 변환되며 정확히 지정된 패턴이어야 합니다(접미사 또는 접두사는 허용되지 않음).<br /> 그렇지 않으면 해당 스타일이 있는 일반 단락일 뿐입니다 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===`(제목 수준 1인 경우),<br /> `---`(제목 수준 2인 경우) |  `“Heading N”` 스타일을 기반으로 하는 `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`.<br /> (N &gt;= 2)이면 `“Heading 2”`이 사용되고, 그렇지 않으면 `“Heading 1”`가 사용됩니다.<br /> 모든 접미사가 허용되지만 Aspose.Words 가져오기 도구는 숫자 "1"과 "2"를 각각 사용합니다 |
|  {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]`와 `[info string]`은 선택사항입니다 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### 복합컨테이너

아래 표는 Aspose.Words에서 Markdown 복합 컨테이너를 사용하는 예를 보여줍니다

|  Markdown 기능 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> 스타일 이름의 접미사는 선택 사항이지만 Aspose.Words 가져오기에서는 1, 2, 3, …의 순서 번호를 사용합니다. 중첩된 따옴표의 경우.<br /> 중첩은 상속된 스타일을 통해 정의됩니다 |
|  {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  글머리 기호 목록은 단락 번호 매기기를 사용하여 표시됩니다.<br /> `ListFormat.ApplyBulletDefault()`<br /> 글머리 기호 목록에는 3가지 유형이 있을 수 있습니다. 첫 번째 수준의 번호 매기기 형식만 다릅니다. 이는 각각 `‘-’`, `‘+’` 또는 `‘*’`입니다 |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  순서가 지정된 목록은 단락 번호 매기기를 사용하여 표시됩니다.<br /> `ListFormat.ApplyNumberDefault()`<br /> 2개의 숫자 형식 표시자가 있을 수 있습니다: '.' 그리고 ')'. 기본 마커는 '.'입니다 |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### 테이블

Aspose.Words를 사용하면 아래와 같이 테이블을 DOM로 변환할 수도 있습니다

|  Markdown 기능 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a|b`<br />`-|-`<br />`c | 디` |  [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 및 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 클래스 |
|  {{< highlight csharp >}} // Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## 또한보십시오

* [Markdown 기능 작업](/words/ko/net/working-with-markdown-features/)

