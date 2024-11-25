---
title: Java에서 머리글 및 바닥글 작업
second_title: Aspose.WordsJava
articleTitle: 머리글 및 바닥 글 작업
linktitle: 머리글 및 바닥 글 작업
description: "Java을 사용하여 머리글과 바닥 글을 조작하는 방법."
type: docs
weight: 150
url: /ko/java/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words사용자가 문서의 머리글 및 바닥글로 작업할 수 있습니다. 머리글은 페이지 맨 위에 있는 텍스트이고 바닥글은 페이지 맨 아래에 있는 텍스트입니다. 일반적으로 이러한 영역은 페이지 번호,작성 날짜,회사 정보 등과 같이 문서의 전체 또는 일부 페이지에 반복해야 하는 정보를 삽입하는 데 사용됩니다.

## DocumentBuilder을 사용하여 머리글 또는 바닥글 만들기

프로그래밍 방식으로 문서 머리글 또는 바닥글을 추가하려면[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)클래스를 사용하여 가장 쉬운 방법을 사용합니다.

다음 코드 예제에서는 문서 페이지에 머리글과 바닥글을 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## 머리글 또는 바닥글 옵션 지정

문서에 머리글 또는 바닥글을 추가할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words은 사용자에게[HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/)및[HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/)클래스와[HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/)열거형을 제공하여 머리글 및 바닥글 사용자 지정 프로세스를 보다 효과적으로 제어할 수 있습니다.

### 머리글 또는 바닥글 유형 지정

하나의 문서에 대해 세 가지 머리글 유형과 세 가지 바닥글 유형을 지정할 수 있습니다:

1. 첫 페이지의 머리글 및/또는 바닥글
2. 짝수 페이지의 머리글 및/또는 바닥글
3. 홀수 페이지의 머리글 및/또는 바닥글

다음 코드 예제에서는 홀수 문서 페이지에 머리글을 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### 첫 페이지에 대해 다른 머리글 또는 바닥글을 표시할지 여부를 지정합니다

위에서 말했듯이,당신은 또한 첫 페이지에 대해 다른 머리글이나 바닥 글을 설정할 수 있습니다. 이렇게 하려면[DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter)플래그를`true`로 설정한 다음**HeaderFirst**또는**FooterFirst**값을 지정해야 합니다.

다음 코드 예제에서는 첫 페이지에만 머리글을 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### 홀수 또는 짝수 페이지에 대해 다른 머리글 또는 바닥글을 표시할지 여부를 지정합니다

 다음으로 문서의 홀수 및 짝수 페이지에 대해 다른 머리글 또는 바닥글을 설정할 수 있습니다. 이렇게 하려면[OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter)플래그를`true`로 설정한 다음**HeaderPrimary**및**HeaderEven**또는**FooterPrimary**및**FooterEven**값을 지정해야 합니다.

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### 헤더에 절대적으로 배치 된 이미지 삽입

머리글 또는 바닥글에 이미지를 배치하려면**HeaderPrimary**머리글 유형 또는**FooterPrimary**바닥글 유형 및[InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte)방법을 사용합니다.

다음 코드 예제에서는 헤더에 이미지를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### 머리글 또는 바닥글 텍스트의 글꼴 및 단락 속성 설정

Aspose.Words를 사용하면 글꼴 및 단락 속성을 설정하고**HeaderPrimary**머리글 유형 또는**FooterPrimary**바닥글 유형을 사용할 수 있으며 문서 본문에 사용하는 글꼴 및 단락 작업을 위한 메서드 및 속성을 사용할 수 있습니다.

다음 코드 예제에서는 머리글의 텍스트를 굵게,굵게,크기 14 및 가운데 맞춤으로 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### 머리글 또는 바닥글에 페이지 번호 삽입

필요한 경우 머리글 또는 바닥 글에 페이지 번호를 추가 할 수 있습니다. 이렇게 하려면**HeaderPrimary**머리글 유형 또는**FooterPrimary**바닥글 유형 및[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)메서드를 사용하여 필수 필드를 추가합니다.

다음 코드 예제에서는 오른쪽 바닥글에 페이지 번호를 추가하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### 이전 섹션에 정의된 머리글 또는 바닥글 사용

이전 섹션에서 머리글 또는 바닥 글을 복사해야하는 경우,당신도 그렇게 할 수 있습니다.

다음 코드 예제에서는 이전 섹션의 머리글 또는 바닥글을 복사하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### 다른 페이지 방향 및 페이지 크기를 사용할 때 머리글 또는 바닥글 모양 확인

Aspose.Words다른 방향 및 페이지 크기를 사용할 때 머리글 또는 바닥글의 모양을 제공할 수 있습니다.

다음 예제에서는 이 작업을 수행하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## 머리글 만 제거하거나 바닥 글 만 제거하는 방법

문서의 각 섹션에는 최대 3 개의 머리글과 최대 3 개의 바닥글(첫 번째,짝수 및 홀수 페이지)이 있을 수 있습니다. 문서의 모든 머리글 또는 모든 바닥글을 제거하려면 모든 섹션을 반복하고 각 해당 머리글 노드 또는 바닥글 노드를 제거해야 합니다.

다음 코드 예제에서는 모든 섹션에서 모든 바닥글을 제거하고 머리글을 그대로 두는 방법을 보여 줍니다. 비슷한 방법으로 헤더 만 제거 할 수 있습니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일은 다음에서 다운로드할 수 있습니다 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx).

{{% /alert %}}
