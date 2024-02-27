---
title: Python에서 문서 생성 또는 로드
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서 만들기 또는 로드
linktitle: 문서 만들기 또는 로드
type: docs
url: /ko/python-net/create-or-load-a-document/
description: "빈 문서를 만들거나 Python를 사용하여 파일이나 스트림에서 로드합니다."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Aspose.Words로 수행하려는 거의 모든 작업에는 문서 로드가 포함됩니다. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 클래스는 메모리에 로드된 문서를 나타냅니다. 문서에는 빈 문서를 만들거나 파일이나 스트림에서 로드할 수 있는 여러 오버로드된 생성자가 있습니다. 문서는 Aspose.Words에서 지원하는 모든 로드 형식으로 로드할 수 있습니다. 지원되는 모든 로드 형식 목록은 [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 열거를 참조하세요.

## 새 문서 만들기

새 빈 문서를 생성하기 위해 매개변수 없이 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 생성자를 호출합니다. 프로그래밍 방식으로 문서를 생성하려는 경우 가장 간단한 방법은 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 클래스를 사용하여 문서 내용을 추가하는 것입니다.

다음 코드 예제에서는 문서 작성기를 사용하여 문서를 만드는 방법을 보여줍니다

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

기본값을 참고하세요

- 빈 문서에는 기본 매개변수가 포함된 섹션 1개, 빈 단락 1개, 일부 문서 스타일이 포함되어 있습니다. 실제로 이 문서는 Microsoft Word에서 "새 문서"를 생성한 결과와 동일합니다.
- 문서 용지 크기는 [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter)입니다.

{{% /alert %}}

## 문서 로드

[LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 형식의 기존 문서를 로드하려면 파일 이름이나 스트림을 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 생성자 중 하나에 전달하세요. 로드된 문서의 형식은 확장자에 따라 자동으로 결정됩니다.

### 파일에서 로드

파일에서 기존 문서를 열려면 파일 이름을 문자열로 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 생성자에 전달합니다.

다음 코드 예제에서는 파일에서 문서를 여는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

### 스트림에서 로드

스트림에서 문서를 열려면 문서가 포함된 스트림 개체를 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 생성자에 전달하기만 하면 됩니다.

다음 코드 예제에서는 스트림에서 문서를 여는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}
