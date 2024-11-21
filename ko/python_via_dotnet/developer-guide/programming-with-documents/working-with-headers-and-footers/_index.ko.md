---
title: 머리글 및 바닥글 작업
second_title: Python via .NET용 Aspose.Words
articleTitle: 머리글 및 바닥글 작업
linktitle: 머리글 및 바닥글 작업
description: "Python를 사용하여 문서의 머리글과 바닥글을 생성, 관리 및 제거합니다."
type: docs
weight: 150
url: /ko/python-net/working-with-headers-and-footers/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words를 사용하면 사용자가 문서의 머리글과 바닥글을 사용할 수 있습니다. 머리글은 페이지 상단에 표시되는 텍스트이고, 바닥글은 페이지 하단에 표시되는 텍스트입니다. 일반적으로 이러한 영역은 페이지 번호, 작성 날짜, 회사 정보 등과 같이 문서의 전체 또는 일부 페이지에서 반복되어야 하는 정보를 삽입하는 데 사용됩니다.

## DocumentBuilder를 사용하여 머리글 또는 바닥글 만들기

프로그래밍 방식으로 문서 머리글이나 바닥글을 추가하려는 경우 가장 쉬운 방법은 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 클래스를 사용하는 것입니다.

다음 코드 예제에서는 문서 페이지에 머리글과 바닥글을 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## 머리글 또는 바닥글 옵션 지정

문서에 머리글이나 바닥글을 추가할 때 일부 고급 속성을 설정할 수 있습니다. Aspose.Words는 사용자에게 머리글 및 바닥글 사용자 정의 프로세스를 더 효과적으로 제어할 수 있는 [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/) 열거형과 [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) 및 [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/) 클래스를 제공합니다.

### 머리글 또는 바닥글 유형 지정

하나의 문서에 대해 세 가지 머리글 유형과 세 가지 바닥글 유형을 지정할 수 있습니다

1. 첫 페이지의 머리글 및/또는 바닥글
2. 짝수 페이지의 머리글 및/또는 바닥글
3. 홀수 페이지의 머리글 및/또는 바닥글

다음 코드 예제에서는 홀수 문서 페이지에 헤더를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### 첫 번째 페이지에 다른 머리글 또는 바닥글을 표시할지 여부 지정

위에서 설명한 것처럼 첫 번째 페이지에 다른 머리글이나 바닥글을 설정할 수도 있습니다. 이렇게 하려면 [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) 플래그를 `true`로 설정한 다음 **HeaderFirst** 또는 **FooterFirst** 값을 지정해야 합니다.

다음 코드 예제에서는 첫 번째 페이지에만 헤더를 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### 홀수 또는 짝수 페이지에 대해 서로 다른 머리글이나 바닥글을 표시할지 여부 지정

 다음으로, 문서의 홀수 페이지와 짝수 페이지에 서로 다른 머리글이나 바닥글을 설정하고 싶을 것입니다. 이렇게 하려면 [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) 플래그를 `true`로 설정한 다음 **HeaderPrimary** 및 **HeaderEven** 또는 **FooterPrimary** 및 **FooterEven** 값을 지정해야 합니다.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### 헤더에 절대 위치 이미지 삽입

머리글이나 바닥글에 이미지를 삽입하려면 **HeaderPrimary** 헤더 유형이나 **FooterPrimary** 바닥글 유형과 [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) 방식을 사용합니다.

다음 코드 예제에서는 헤더에 이미지를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### 머리글 또는 바닥글 텍스트의 글꼴 및 단락 속성 설정

Aspose.Words를 사용하면 글꼴 및 단락 속성을 설정하고 **HeaderPrimary** 머리글 유형 또는 **FooterPrimary** 바닥글 유형을 사용할 수 있을 뿐만 아니라 문서 본문에 사용하는 글꼴 및 단락 작업을 위한 메서드 및 속성을 사용할 수 있습니다.

다음 코드 예제에서는 헤더의 텍스트를 Arial, 굵은 글꼴, 크기 14 및 가운데 맞춤으로 설정하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### 머리글이나 바닥글에 페이지 번호 삽입

필요한 경우 머리글이나 바닥글에 페이지 번호를 추가할 수 있습니다. 이를 수행하려면 **HeaderPrimary** 헤더 유형 또는 **FooterPrimary** 바닥글 유형과 [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) 메소드를 사용하여 필수 필드를 추가하십시오.

다음 코드 예제에서는 오른쪽 바닥글에 페이지 번호를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### 이전 섹션에 정의된 머리글 또는 바닥글 사용

이전 섹션의 머리글이나 바닥글을 복사해야 하는 경우에도 그렇게 할 수 있습니다.

다음 코드 예제에서는 이전 섹션의 머리글 또는 바닥글을 복사하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### 다양한 페이지 방향 및 페이지 크기를 사용할 때 머리글 또는 바닥글 모양 확인

Aspose.Words를 사용하면 다양한 방향과 페이지 크기를 사용할 때 머리글이나 바닥글의 모양을 제공할 수 있습니다.

다음 예에서는 이를 수행하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## 머리글만 또는 바닥글만 제거하는 방법

문서의 각 섹션에는 최대 3개의 머리글과 최대 3개의 바닥글(첫 번째 페이지, 짝수 페이지, 홀수 페이지)이 있을 수 있습니다. 문서의 모든 머리글이나 바닥글을 제거하려면 모든 섹션을 반복하고 해당 머리글 노드나 바닥글 노드를 각각 제거해야 합니다.

다음 코드 예제에서는 모든 섹션에서 모든 바닥글을 제거하고 머리글은 그대로 유지하는 방법을 보여줍니다. 비슷한 방법으로 헤더만 제거할 수 있습니다

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx)에서 이 예제의 샘플 파일을 다운로드할 수 있습니다.

{{% /alert %}}
