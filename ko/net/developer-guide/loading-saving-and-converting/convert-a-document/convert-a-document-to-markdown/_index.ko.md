---
title: C#에서 문서를 Markdown로 변환
second_title: .NET용 Aspose.Words
articleTitle: 문서를 Markdown로 변환
linktitle: 문서를 Markdown로 변환
type: docs
description: "C#를 사용하여 지원되는 로드 형식의 문서를 Markdown로 변환하거나 그 반대로 변환합니다."
keywords: how to convert a document to markdown c#
weight: 40
url: /ko/net/convert-a-document-to-markdown/
timestamp: 2024-07-10-08-10-45
---

Markdown는 텍스트를 마크업하고 HTML, PDF, DOCX 또는 기타 형식으로 추가 변환하는 데 사용되는 널리 사용되는 형식입니다. 많은 개발자가 문서 작성, 블로그 게시용 기사 준비, 프로젝트 설명 등을 위해 이 형식을 선택합니다.

Markdown는 이 형식으로 작업하기 쉽고 다른 형식으로 매우 간단하게 변환할 수 있기 때문에 인기가 높습니다. 이러한 이유로 Aspose.Words는 [지원되는 모든 로드 형식](https://reference.aspose.com/words/net/aspose.words/loadformat/) 문서를 Markdown로 또는 그 반대로 변환하는 기능을 제공합니다. Aspose.Words는 가장 널리 사용되는 [저장 형식](https://reference.aspose.com/words/net/aspose.words/saveformat/)도 지원합니다.

이제 편리하고 편안한 문서 작업을 위한 더 많은 기회를 제공하기 위해 Markdown 형식 작업 기능이 적극적으로 개발되고 있습니다.

## 문서 변환

문서를 Markdown로 변환하려면 지원되는 형식의 문서를 로드하거나 프로그래밍 방식으로 새 문서를 생성하기만 하면 됩니다. 그런 다음 문서를 Markdown 형식으로 저장해야 합니다.

다음 코드 예제는 DOCX를 Markdown로 변환하는 방법을 보여줍니다

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

문서를 Markdown 형식으로 내보낼 때 이미지를 저장할 실제 폴더를 지정할 수도 있습니다. 기본적으로 Aspose.Words는 문서 파일이 저장된 폴더에 이미지를 저장하지만 [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) 속성을 사용하여 이 동작을 재정의할 수 있습니다.

문서를 스트림에 저장하고 Aspose.Words에 이미지 저장용 폴더가 없는 경우에도 **ImagesFolder**를 통해 폴더를 지정하는 것이 유용합니다.

지정된 **ImagesFolder**가 존재하지 않으면 자동으로 생성됩니다.

다음 코드 예제에서는 문서를 스트림에 저장할 때 이미지 폴더를 지정하는 방법을 보여줍니다

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Markdown로 변환 시 저장 옵션 지정

Aspose.Words는 문서를 Markdown 형식으로 저장할 때 고급 옵션을 사용하기 위해 [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) 클래스를 사용하는 기능을 제공합니다. 대부분의 속성은 다른 [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) 네임스페이스 클래스 내에 이미 존재하는 속성을 상속하거나 오버로드합니다. 그 외에도 Markdown 형식과 관련된 여러 속성도 추가되었습니다. 예를 들어 테이블의 내용 정렬을 제어하는 [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) 속성이나 문서를 Markdown 형식으로 변환할 때 이미지가 저장되는 방법을 제어하는 [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) 및 [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) 등이 있습니다.

## 지원되는 Markdown 기능

Aspose.Words는 현재 다음과 같은 Markdown 기능을 지원합니다. 이 기능은 대부분 Aspose.Words API의 `CommonMark` 사양을 따르며 적절한 스타일이나 직접 형식으로 표시됩니다

* 제목은 제목 1 – 제목 6 스타일이 있는 단락입니다
* 인용문은 스타일 이름에 "인용문"이 포함된 단락입니다
* IndentedCode는 스타일 이름에 "IndentedCode"가 포함된 단락입니다
* FencedCode는 스타일 이름에 "FencedCode"가 포함된 단락입니다
* InlineCode는 `Font` 스타일 이름에 "InlineCode"를 사용하여 실행됩니다
* 가로줄은 `HorizontalRule` 모양의 문단입니다
* 대담한 강조
* 이탤릭체 강조
* 취소선 서식
* 목록은 번호가 매겨져 있거나 글머리 기호가 있는 단락입니다
* 테이블은 `Table` 클래스로 표현됩니다
* 링크는 `FieldHyperlink` 클래스로 표현됩니다

다음 예에서는 일부 스타일을 사용하여 문서를 만들고 Markdown에 저장하는 방법을 보여줍니다

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

이 코드 예제의 결과는 아래와 같습니다.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## 유용한 팁

Markdown 파일을 보다 유연하고 편리하게 작업할 수 있는 방법을 배운 후 몇 가지 미묘한 차이와 흥미로운 사례가 있습니다. 예를 들어 다음을 사용할 수 있습니다

* Markdown의 일반 제목은 한 줄만 가능하지만 Markdown에서는 여러 줄 제목을 만들 수 있는 SetextHeading입니다. SetextHeading은 "제목 N" 스타일을 기반으로 하며 해당 수준은 1 또는 2만 될 수 있습니다. "제목 N"의 N이 2보다 크거나 같으면 해당 SetextHeading은 "제목 2"를 기반으로 하며, 그렇지 않으면 "제목 1".
* 글머리 기호 목록의 첫 번째 수준에 대한 다양한 마커("-", "+" 또는 "*", 기본 마커는 "-"입니다.)와 순서가 지정된 목록에 대한 다양한 번호 매기기 유형("." 또는 ")", 기본 마커는 "."입니다.)
