---
title: Headers 및 Footers와 작업 Java
second_title: Aspose.Words 제품정보 Java
articleTitle: Headers 및 Footers와 작업
linktitle: Headers 및 Footers와 작업
description: "headers와 footers를 조작하는 방법 Java·"
type: docs
weight: 150
url: /ko/java/working-with-headers-and-footers/
---

Aspose.Words 사용자는 문서의 헤더와 발자기를 사용합니다. 머리는 페이지 상단에 배치 된 텍스트이며, 발자는 페이지 하단의 텍스트입니다. 일반적으로이 영역은 페이지 번호, 생성 날짜, 회사 정보 등과 같은 문서의 모든 또는 일부 페이지에 반복해야하는 정보를 삽입하는 데 사용됩니다.

## DocumentBuilder를 사용하여 Headers 또는 Footers 만들기

문서 헤더 또는 footer programmatically를 추가하려면 가장 쉬운 방법은 사용 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 그것을 할 클래스.

다음 코드 예제는 문서 페이지에 헤더와 footer를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## Header 또는 Footer 옵션 지정

header 또는 footer를 문서에 추가하면 고급 속성을 설정할 수 있습니다. Aspose.Words 사용자에게 제공 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) · [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) 수업, 뿐만 아니라 [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) 헤더와 발자국 사용자 정의 프로세스를 통해 더 많은 제어를주는 열렬한.

### Header 또는 Footer 유형 지정

다른 세 가지 헤더 유형과 하나의 문서에 대한 세 가지 다른 footer 유형을 지정할 수 있습니다

1. 명세 첫 페이지에 대한 헤더 및 / 또는 발기
2. 명세 또한 페이지에 대한 헤더 및/또는 발기
3. 명세 제목 및/또는 제목 페이지

다음 코드 예제는 확률 문서 페이지에 대한 헤더를 추가하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### 첫 페이지의 다른 헤더 또는 Footers 표시 여부를 지정하십시오

위에서 말했듯이, 당신은 또한 다른 헤더를 설정할 수 있습니다 또는 첫 번째 페이지에 대한 footer. 이렇게하려면 설정해야 합니다. [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) 본문 바로가기 `true` 그리고 그때 specyfy **HeaderFirst** 또는 **FooterFirst** 가치.

다음 코드 예제는 첫번째 페이지에 대한 헤더를 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### 다른 Headers 또는 Footers를 Odd 또는 심지어 페이지에 표시 할 수 있는지 여부

 다음 문서에서 다른 헤더 또는 발자기를 설정하고 싶습니다. 이렇게하려면 설정해야 합니다. [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) 본문 바로가기 `true` 그리고 그 후에 값을 specyfy **HeaderPrimary** · **HeaderEven**, 또는 **FooterPrimary** · **FooterEven**·

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### 자주 묻는 질문 헤더에 이미지

헤더 또는 footer의 이미지를 배치하려면 **HeaderPrimary** 헤더 유형 또는 **FooterPrimary** footer 유형과 [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) 방법.

다음 코드 예제는 헤더에 이미지를 추가하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### Header 또는 Footer Text에 대한 글꼴 및 퍼프 속성 설정

이름 * Aspose.Words 글꼴과 단락 속성을 설정할 수 있습니다. **HeaderPrimary** 헤더 유형 또는 **FooterPrimary** footer 유형, 그리고 문서 몸에 사용할 글꼴과 단락과 작업을위한 방법 및 속성.

다음 코드 예제는 Arial, bold, 크기 14, 및 센터 정렬에 헤더를 설정하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### Header 또는 Footer에 페이지 번호 삽입

필요한 경우 헤더나 발터에 페이지 번호를 추가할 수 있습니다. 이렇게하려면 **HeaderPrimary** 헤더 유형 또는 **FooterPrimary** footer 유형과 [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) 필요한 필드를 추가하는 방법.

다음 코드 예제는 오른쪽 발기자에게 페이지 번호를 추가하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### Headers 또는 Footers를 사용하여 이전 섹션에서 정의

이전 섹션에서 헤더 또는 발기를 복사해야하는 경우도 할 수 있습니다.

다음 코드 예제는 이전 섹션에서 헤더 또는 발기를 복사하는 방법을 보여줍니다

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### 다른 페이지 오리엔테이션과 페이지 크기를 사용할 때 머리 또는 발톱 외관을 지킵니다

Aspose.Words 다른 오리엔테이션과 페이지 크기를 사용할 때 헤더 또는 발터의 외관을 제공 할 수 있습니다.

다음 예제는이 작업을 수행하는 방법을 보여줍니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## 머리만 제거하는 방법 또는 Footers

문서의 각 섹션은 최대 세 개의 헤더를 가질 수 있으며 최대 세 개의 발판 (첫 번째, 심지어, 이상한 페이지). 문서의 모든 헤더 또는 모든 footers를 제거하려는 경우 모든 섹션을 통해 반복하고 각 해당 헤더 노드 또는 footer 노드를 제거해야합니다.

다음 코드 예제는 모든 섹션에서 모든 발자를 제거하는 방법을 보여줍니다. 그러나 headers intact를 남겨주세요. 당신은 유사한 방법에 있는 유일한 우두머리를 제거할 수 있습니다:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

이 예제의 샘플 파일을 다운로드 할 수 있습니다. [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx)·

{{% /alert %}}