---
title: Python에 문서 저장
second_title: Python via .NET용 Aspose.Words
articleTitle: 문서 저장
linktitle: 문서 저장
type: docs
description: "Python를 사용하여 지원되는 형식으로 문서를 저장하세요."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /ko/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words로 수행해야 하는 대부분의 작업에는 문서 저장이 포함됩니다. 문서를 저장하기 위해 Aspose.Words는 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 클래스의 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 메소드를 제공합니다. 문서를 파일이나 스트림에 저장할 수 있는 오버로드가 있습니다. 문서는 Aspose.Words에서 지원하는 모든 저장 형식으로 저장할 수 있습니다. 지원되는 모든 저장 형식 목록은 [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 열거를 참조하세요.

## 문서를 파일 {#save-a-document-to-a-file}에 저장

파일 이름과 함께 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 방법을 사용하기만 하면 됩니다. Aspose.Words는 사용자가 지정하는 파일 확장자에 따라 저장 형식을 결정합니다.

다음 코드 예제에서는 문서를 파일에 로드하고 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 스트림 {#save-a-document-to-a-stream}에 문서 저장

스트림 개체를 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 메서드에 전달합니다. 스트림에 저장할 때 저장 형식을 명시적으로 지정해야 합니다.

다음 코드 예제에서는 문서를 스트림에 로드하고 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

## PCL {#save-a-document-to-pcl}에 문서 저장

Aspose.Words는 문서를 PCL(프린터 명령 언어)로 저장하는 것을 지원합니다. Aspose.Words는 문서를 PCL 6(PCL 6 Enhanced 또는 PCL XL) 형식으로 저장할 수 있습니다. [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) 클래스는 문서를 PCL 형식으로 저장할 때 추가 옵션을 지정하는 데 사용할 수 있습니다.

다음 코드 예제에서는 저장 옵션을 사용하여 문서를 PCL에 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

