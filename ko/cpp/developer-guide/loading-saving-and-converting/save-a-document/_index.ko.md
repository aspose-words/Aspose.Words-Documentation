---
title: 문서 저장 C++
second_title: Aspose.Words 에 대한 C++
articleTitle: 문서 저장
linktitle: 문서 저장
type: docs
description: "다음을 사용하여 지원되는 모든 형식으로 문서 저장 C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /ko/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

당신이 수행하는 데 필요한 대부분의 작업 Aspose.Words 문서 저장을 포함합니다. 문서를 저장하려면 Aspose.Words 제공 [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) 의 방법 [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) 수업 이 문서는 다음에서 지원하는 모든 저장 형식으로 저장할 수 있습니다 Aspose.Words. 지원되는 모든 저장 형식 목록은 다음을 참조하십시오 [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) 열거

## 파일에 저장 {#save-a-document-to-a-file}

단순히 사용 [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) 파일 이름을 가진 메서드입니다. Aspose.Words 지정한 파일 확장명에서 저장 형식을 결정합니다.

다음 코드 예제에서는 문서를 로드하고 파일에 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 스트림에 저장 {#save-a-document-to-a-stream}

스트림 객체를 [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) 방법 스트림에 저장할 때 저장 형식을 명시적으로 지정해야 합니다.

다음 코드 예제에서는 문서를 스트림에 로드하고 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## 에 저장 PCL {#save-a-document-to-pcl}

Aspose.Words 문서 저장 지원 PCL (프린터 명령 언어). Aspose.Words 에 문서를 저장할 수 있습니다 PCL 6 (PCL 6 강화 또는 PCL XL)형식 그 `PclSaveOptions` 클래스를 사용하여 문서를 저장할 때 추가 옵션을 지정할 수 있습니다. PCL 형식

다음 코드 예제에서는 다음에 문서를 저장하는 방법을 보여 줍니다 PCL 저장 옵션 사용:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
