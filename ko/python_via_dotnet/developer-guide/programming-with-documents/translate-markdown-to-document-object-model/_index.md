---
title: Markdown를 DOM로 번역하세요
second_title: Python via .NET용 Aspose.Words
articleTitle: Markdown를 Document Object Model(DOM)로 번역
linktitle: Markdown를 Document Object Model(DOM)로 번역
type: docs
description: "Markdown 문서를 Document Object Model로 변환하고 Python을 사용하여 다시 변환합니다. 따라서 복잡한 기존 Markdown로 작업하고 처음부터 프로그래밍 방식으로 Markdown 문서를 만들 수 있습니다."
weight: 20
url: /ko/python-net/translate-markdown-to-document-object-model/
---

문서의 내용과 서식을 프로그래밍 방식으로 읽고, 조작하고, 수정하려면 문서를 Aspose.Words Document Object Model(DOM)로 변환해야 합니다.

Word 문서와 달리 Markdown는 [Aspose.Words Document Object Model (DOM)](/words/ko/python-net/aspose-words-document-object-model/) 문서에 설명된 DOM를 따르지 않습니다. 그러나 Aspose.Words는 Markdown 문서를 DOM로 변환하거나 그 반대로 변환하는 자체 메커니즘을 제공하므로 텍스트 서식, 표, 헤더 등과 같은 요소를 성공적으로 사용할 수 있습니다.

이 기사에서는 다양한 markdown 기능을 Aspose.Words DOM로 변환하고 다시 Markdown 형식으로 변환하는 방법을 설명합니다.

## 번역의 복잡성 Markdown – DOM – Markdown

이 메커니즘의 가장 큰 어려움은 Markdown를 DOM로 변환하는 것뿐만 아니라 역변환을 수행하여 최소한의 손실로 문서를 Markdown 형식으로 다시 저장하는 것입니다. 역변환이 쉽지 않은 다단계 인용문과 같은 요소가 있습니다.

우리의 번역 엔진을 사용하면 사용자는 기존 Markdown 문서의 복잡한 요소로 작업할 수 있을 뿐만 아니라 처음부터 원래 구조를 사용하여 Markdown 형식으로 자신만의 문서를 만들 수도 있습니다. 다양한 요소를 만들려면 이 문서의 뒷부분에 설명된 특정 규칙에 따라 특정 이름을 가진 스타일을 사용해야 합니다. 이러한 스타일은 프로그래밍 방식으로 생성할 수 있습니다.

## 일반적인 번역 원칙

인라인 블록에는 [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) 형식을 사용합니다. Aspose.Words DOM의 Markdown 기능에 대한 직접적인 대응이 없는 경우 일부 특수 단어로 시작하는 이름의 문자 스타일을 사용합니다.

컨테이너 블록의 경우 스타일 상속을 사용하여 중첩된 Markdown 기능을 나타냅니다. 이 경우 중첩된 기능이 없더라도 일부 특수 단어로 시작하는 이름을 가진 단락 스타일도 사용합니다.

글머리 기호 목록과 순서가 지정된 목록도 Markdown의 컨테이너 블록입니다. 중첩은 스타일 상속을 사용하는 다른 모든 컨테이너 블록과 동일한 방식으로 DOM에 표시됩니다. 그러나 추가로 DOM의 목록에는 목록 스타일 또는 단락 형식의 해당 숫자 형식이 있습니다.

## 인라인 블록

**Bold**, *Italic* 또는 ~~취소선~~ 인라인 markdown 기능을 번역할 때 [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) 형식을 사용합니다.

|  Markdown 기능 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} ||
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} ||

우리는 `InlineCode`라는 단어로 시작하는 이름과 `InlineCode` 기능을 위한 선택적인 도트 `(.)` 및 다수의 백틱 ```(`)```이 뒤에 오는 문자 스타일을 사용합니다. 여러 개의 백틱이 누락된 경우 기본적으로 하나의 백틱이 사용됩니다.

|  Markdown 기능 |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) 클래스 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 클래스 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} ||

## 컨테이너 블록

문서는 제목, 단락, 목록, 인용문 등과 같은 일련의 컨테이너 블록입니다. 컨테이너 블록은 리프 블록과 복합 컨테이너라는 두 가지 클래스로 나눌 수 있습니다. 리프 블록은 인라인 콘텐츠만 포함할 수 있습니다. 복잡한 컨테이너에는 리프 블록을 포함한 다른 컨테이너 블록이 포함될 수 있습니다.

### 나뭇잎 블록

아래 표는 Aspose.Words에서 Markdown 리프 블록을 사용하는 예를 보여줍니다

|  Markdown 기능 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  다음은 해당 수평 규칙 모양이 있는 간단한 단락입니다.<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, 여기서 (1&lt;= N &lt;= 9).<br /> 이는 내장 스타일로 변환되며 정확히 지정된 패턴이어야 합니다(접미사 또는 접두사는 허용되지 않음).<br /> 그렇지 않으면 해당 스타일이 있는 일반 단락일 뿐입니다 |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===`(제목 수준 1인 경우),<br /> `---`(제목 수준 2인 경우) |  `"Heading N"` 스타일을 기반으로 하는 `ParagraphFormat.style_name = "SetextHeading[some suffix]"`.<br /> (N &gt;= 2)이면 `"Heading 2"`이 사용되고, 그렇지 않으면 `"Heading 1"`가 사용됩니다.<br /> 모든 접미사가 허용되지만 Aspose.Words 가져오기에서는 숫자 "1"과 "2"를 각각 사용합니다 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]`와 `[info string]`은 선택사항입니다 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### 복합컨테이너

아래 표는 Aspose.Words에서 Markdown 복합 컨테이너를 사용하는 예를 보여줍니다

|  Markdown 기능 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> 스타일 이름의 접미사는 선택 사항이지만 Aspose.Words 가져오기에서는 1, 2, 3, …의 순서 번호를 사용합니다. 중첩된 따옴표의 경우.<br /> 중첩은 상속된 스타일을 통해 정의됩니다 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  글머리 기호 목록은 단락 번호 매기기를 사용하여 표시됩니다.<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> 글머리 기호 목록에는 3가지 유형이 있을 수 있습니다. 첫 번째 수준의 번호 매기기 형식만 다릅니다. 이는 각각 `'-'`, `'+'` 또는 `'*'`입니다 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  순서가 지정된 목록은 단락 번호 매기기를 사용하여 표시됩니다.<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> `'.'`와 `')'`의 두 가지 숫자 형식 표시가 있을 수 있습니다. 기본 마커는 `'.'`입니다 |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### 테이블

Aspose.Words를 사용하면 아래와 같이 테이블을 DOM로 변환할 수도 있습니다

|  Markdown 기능 |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a\ | b`<br />`-\ | -`<br />`c\ | 디` |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) 및 [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) 클래스 |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                                |

## 또한보십시오

* [Markdown 기능 작업](/words/ko/python-net/working-with-markdown-features/)

