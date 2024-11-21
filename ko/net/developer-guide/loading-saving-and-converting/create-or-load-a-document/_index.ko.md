---
title: C#에서 문서 생성 또는 로드
second_title: .NET용 Aspose.Words
articleTitle: 문서 만들기 또는 로드
linktitle: 문서 만들기 또는 로드
type: docs
url: /ko/net/create-or-load-a-document/
description: "빈 문서를 만들거나 C#를 사용하여 파일이나 스트림에서 로드합니다."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
timestamp: 2024-07-09-19-00-42
---

Aspose.Words로 수행하려는 거의 모든 작업에는 문서 로드가 포함됩니다. `Document` 클래스는 메모리에 로드된 문서를 나타냅니다. 문서에는 빈 문서를 만들거나 파일이나 스트림에서 로드할 수 있는 여러 오버로드된 생성자가 있습니다. 문서는 Aspose.Words에서 지원하는 모든 로드 형식으로 로드할 수 있습니다. 지원되는 모든 로드 형식 목록은 [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) 열거를 참조하세요.

## 새 문서 {#create-a-new-document} 만들기

새 빈 문서를 생성하기 위해 매개변수 없이 [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) 생성자를 호출합니다. 프로그래밍 방식으로 문서를 생성하려는 경우 가장 간단한 방법은 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 클래스를 사용하여 문서 내용을 추가하는 것입니다.

다음 코드 예제에서는 문서 작성기를 사용하여 문서를 만드는 방법을 보여줍니다

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

기본값을 참고하세요

- 빈 문서에는 기본 매개변수가 포함된 섹션 1개, 빈 단락 1개, 일부 문서 스타일이 포함되어 있습니다. 실제로 이 문서는 Microsoft Word에서 "새 문서"를 생성한 결과와 동일합니다.
- 문서 용지 크기는 [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**입니다.

{{% /alert %}}

## 문서 {#load-a-document} 로드

[LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) 형식의 기존 문서를 로드하려면 파일 이름이나 스트림을 문서 생성자 중 하나에 전달하세요. 로드된 문서의 형식은 확장자에 따라 자동으로 결정됩니다.

### 파일 {#load-from-a-file}에서 로드

파일에서 기존 문서를 열려면 파일 이름을 문자열로 Document 생성자에 전달합니다.

다음 코드 예제에서는 파일에서 문서를 여는 방법을 보여줍니다

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

### 스트림 {#load-from-a-stream}에서 로드

스트림에서 문서를 열려면 문서가 포함된 스트림 개체를 Document 생성자에 전달하기만 하면 됩니다.

다음 코드 예제에서는 스트림에서 문서를 여는 방법을 보여줍니다

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}
