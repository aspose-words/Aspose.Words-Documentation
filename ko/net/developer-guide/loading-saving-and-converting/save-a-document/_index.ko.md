---
title: C#에 문서 저장
second_title: .NET용 Aspose.Words
articleTitle: 문서 저장
linktitle: 문서 저장
type: docs
description: "C#를 사용하여 지원되는 형식으로 문서를 저장하세요."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /ko/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words로 수행해야 하는 대부분의 작업에는 문서 저장이 포함됩니다. 문서를 저장하기 위해 Aspose.Words는 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 클래스의 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 메소드를 제공합니다. 클라이언트 브라우저로 보내기 위해 문서를 파일, 스트림 또는 ASP.NET HttpResponse 개체에 저장할 수 있는 오버로드가 있습니다. 문서는 Aspose.Words에서 지원하는 모든 저장 형식으로 저장할 수 있습니다. 지원되는 모든 저장 형식 목록은 [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 열거를 참조하세요.

## 파일 {#save-a-document-to-a-file}에 저장

파일 이름과 함께 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 방법을 사용하기만 하면 됩니다. Aspose.Words는 사용자가 지정하는 파일 확장자에 따라 저장 형식을 결정합니다.

다음 코드 예제에서는 문서를 파일에 로드하고 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 스트림 {#save-a-document-to-a-stream}에 저장

스트림 개체를 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 메서드에 전달합니다. 스트림에 저장할 때 저장 형식을 명시적으로 지정해야 합니다.

다음 코드 예제에서는 문서를 스트림에 로드하고 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

## 클라이언트 브라우저 {#sending-a-document-to-a-client-browser}로 문서 보내기

문서를 클라이언트 브라우저로 보내려면 파일 이름, 저장 형식, 저장 유형 및 ASP.NET HttpResponse 개체의 네 가지 매개 변수를 사용하는 특수 오버로드를 사용하세요. 문서가 사용자에게 표시되는 방식은 [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) 열거형으로 표시되며, 이는 브라우저로 전송된 문서가 브라우저에서 직접 열거나 파일 확장자와 연결된 응용 프로그램에서 직접 열 수 있는 옵션을 제공할지 여부를 결정합니다.

다음 코드 예제는 ASP.NET 코드에서 클라이언트 브라우저로 문서를 보내는 방법을 보여줍니다

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)에서 이 예제의 템플릿 파일을 다운로드할 수 있습니다.

{{% /alert %}}

.NET 클라이언트 프로필 DLL을 사용할 때는 `Save` 메서드의 이 오버로드를 사용할 수 없습니다. 이 DLL은 **net3.5_ClientProfile** 폴더에 있습니다. .NET 클라이언트 프로필은 **System.Web**와 같은 어셈블리를 제외하므로 **HttpResponse**을 사용할 수 없습니다. 이것은 전적으로 의도적으로 설계된 것입니다.

이는 오류로 나타날 수 있습니다

**"'Save' 메소드에 대한 오버로드는 '4'개의 매개변수를 사용하지 않습니다."**

ASP.NET 애플리케이션에서 Aspose.Words를 사용해야 하는 경우 이 문서에 설명된 대로 올바른 오버로드가 가능한 .NET 2.0 DLL을 사용하는 것이 좋습니다.

## PCL {#save-a-document-to-pcl}에 저장

Aspose.Words는 문서를 PCL(프린터 명령 언어)로 저장하는 것을 지원합니다. Aspose.Words는 문서를 PCL 6(PCL 6 Enhanced 또는 PCL XL) 형식으로 저장할 수 있습니다. `PclSaveOptions` 클래스는 문서를 PCL 형식으로 저장할 때 추가 옵션을 지정하는 데 사용할 수 있습니다.

다음 코드 예제에서는 저장 옵션을 사용하여 문서를 PCL에 저장하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## 또한보십시오

- ASP.NET [Http응답](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) 객체에 대한 정보
