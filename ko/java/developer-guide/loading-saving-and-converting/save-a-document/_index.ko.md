---
title: 문서 저장 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: 문서 저장
linktitle: 문서 저장
type: docs
description: "지원되는 형식의 문서 저장 Java·"
weight: 20
url: /ko/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

작업의 대부분은 당신이 수행해야 Aspose.Words 문서 저장 문서 저장 Aspose.Words 제품정보 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) 방법의 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 수업. 문서는 지원되는 모든 저장 체재에서 저장될 수 있습니다 Aspose.Words· 지원되는 모든 저장 체재의 명부를 위해, 보십시오 [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) 관련 기사

## 파일로 저장 {#save-a-document-to-a-file}

단순히 사용 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) 파일 이름을 가진 방법. Aspose.Words 지정된 파일 확장에서 저장 형식을 결정합니다.

다음 코드 예제는 파일을로드하고 저장하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)·

{{% /alert %}}

## Stream에 저장 {#save-a-document-to-a-stream}

스트림 객체를 전달 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) 방법. 스트림을 저장할 때 명시적으로 저장 형식을 지정해야합니다.

다음 코드 예제는로드하는 방법을 표시하고 스트림에 문서를 저장:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

이 예제의 템플릿 파일을 다운로드 할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)·

## PCL에 저장 {#save-a-document-to-pcl}

Aspose.Words PCL(Printer Command Language)로 문서를 저장합니다. Aspose.Words PCL 6 (PCL 6 강화 또는 PCL XL) 형식으로 문서를 저장할 수 있습니다. 더 보기 `PclSaveOptions` 클래스는 문서를 PCL 형식으로 저장할 때 추가 옵션을 지정할 수 있습니다.

다음 코드 예제는 저장 옵션을 사용하여 PCL에 문서를 저장하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
