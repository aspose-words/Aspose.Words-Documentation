---
title: Java에 문서 저장
second_title: Aspose.WordsJava
articleTitle: 문서 저장
linktitle: 문서 저장
type: docs
description: "Java을 사용하여 지원되는 형식으로 문서를 저장합니다."
weight: 20
url: /ko/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words에서 수행해야 하는 대부분의 작업은 문서 저장과 관련이 있습니다. 문서 저장Aspose.Words은[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)클래스의[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String))메서드를 제공합니다. 문서는Aspose.Words에서 지원하는 모든 저장 형식으로 저장할 수 있습니다. 지원되는 모든 저장 형식의 목록은[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)열거형을 참조하십시오.

## 파일에 저장 {#save-a-document-to-a-file}

단순히 파일 이름으로[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String)방법을 사용합니다. Aspose.Words는 지정한 파일 확장명에서 저장 형식을 결정합니다.

다음 코드 예제에서는 문서를 로드하고 파일에 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 스트림에 저장 {#save-a-document-to-a-stream}

스트림 개체를[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)메서드에 전달합니다. 스트림에 저장할 때 저장 형식을 명시적으로 지정해야 합니다.

다음 코드 예제에서는 문서를 스트림에 로드하고 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

이 예제의 템플릿 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## PCL {#save-a-document-to-pcl}에 저장

Aspose.WordsPCL(프린터 명령 언어)에 문서 저장을 지원합니다. Aspose.Words문서를PCL6(PCL6 강화 또는PCLXL)형식으로 저장할 수 있습니다. `PclSaveOptions`클래스는PCL형식으로 문서를 저장할 때 추가 옵션을 지정하는 데 사용할 수 있습니다.

다음 코드 예제에서는 저장 옵션을 사용하여 문서를PCL에 저장하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
