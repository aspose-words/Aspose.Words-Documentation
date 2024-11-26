---
title: 라이선스 및 구독
second_title: Aspose.WordsJava
articleTitle: 라이선스 및 구독
linktitle: 라이선스 및 구독
description: "Aspose.WordsJava의 경우 다른 구매 계획을 제공하거나 무료 평가판과 라이선스 및 구독 정책을 사용하여 평가를 위한 30 일 임시 라이선스를 제공합니다."
type: docs
weight: 60
url: /ko/java/licensing/
timestamp: 2024-01-31-14-23-37
---

때로는 시스템을 더 잘 연구하기 위해 가능한 한 빨리 코드에 뛰어 들기를 원합니다. 이를 더 쉽게하기 위해Aspose.Words은 다른 구매 계획을 제공하거나 무료 평가판 및 평가를위한 30 일 임시 라이센스를 제공합니다.

{{% alert color="primary" %}}

제품 평가,적절한 라이선스 및 구매 방법을 안내하는 여러 가지 일반적인 정책 및 관행이 있습니다. 당신은 그들을 찾을 수 있습니다 [구매 정책 및FAQ](https://purchase.aspose.com/policies/) 부문

{{% /alert %}}

## 무료 평가판 또는 임시 라이센스

Aspose.Words개발자가 구입하기 전에 시도 할 수있는 놀라운 소프트웨어입니다. Java에 대해Aspose.Words과Java를 통해Android에 대해Aspose.Words을 쉽게 다운로드/설치할 수 있습니다. [에서Maven](https://releases.aspose.com/words/java/) 평가를 위해.

### 무료 평가판

평가판 버전은 구입 한 것과 동일–당신이 라이센스를 적용 할 코드의 몇 줄을 추가 할 때 평가판 버전은 단순히 라이센스가된다.

지정된 라이선스 없이 Java를 통한 Aspose.Words의 Java 및 Android의 Aspose.Words의 평가판은 전체 제품 기능을 제공하지만, 로드 및 저장 시 문서 상단에 평가 워터마크를 삽입하고 최대 문서 크기를 수백 개의 단락으로 제한합니다.

### 임시 라이센스

당신은 시험 버전의 제한없이Java를 통해Android에 대한Aspose.WordsJava에 대한Aspose.Words를 테스트하고자하는 경우,당신은 또한 30 일 임시 라이센스를 요청할 수 있습니다. 자세한 내용은 [임시 라이센스 받기](https://purchase.aspose.com/temporary-license/) 페이지

## 구입 한 라이센스

구입 후에는 라이센스 파일을 적용하거나 라이센스 파일을 포함 리소스로 포함해야 합니다. 이 섹션에서는 이러한 작업을 수행할 수 있는 방법에 대한 옵션을 설명하고 몇 가지 일반적인 질문에 대한 설명을 제공합니다.

{{% alert color="primary" %}}

라이선스는 제품 이름,라이선스가 부여된 개발자 수,구독 만료 날짜 등과 같은 세부 정보를 포함하는 일반 텍스트XML파일입니다.

파일이 디지털 서명되었으므로 파일을 수정하지 마십시오. 실수로 파일에 추가 줄 바꿈을 추가해도 무효화됩니다.

{{% /alert %}}

{{% alert color="primary" %}}

라이센스를 설정해야 합니다:

* 응용 프로그램 도메인 당 한 번만
* 다른Aspose.Words클래스를 사용하기 전에

{{% /alert %}}

{{% alert color="primary" %}}

당신은 가격 정보를 찾을 수 있습니다 [가격 정보](https://purchase.aspose.com/pricing/words/family/) 페이지

{{% /alert %}}

### 구입 한 라이센스 보호

라이센스를 구입 한 후,당신은주의 깊게 페이지의 정보를 읽을 필요가있다 [구입 한 라이센스 보호](https://purchase.aspose.com/orders/protecting-your-license-file) 라이센스 파일을 보호하기 위해. 이 페이지는 유료 라이선스가 있는 경우에만 볼 수 있습니다.

### 라이센스 적용 옵션

라이센스는 다양한 위치에서 적용 할 수 있습니다:

* 명시적 경로
* *Aspose.Words JAR*파일이 포함된 폴더
* JAR에 포함된 리소스를*Aspose.Words JAR*이라고 합니다
* 계량 라이센스로-새로운 라이센스 메커니즘

라이선스를 설정하는 가장 쉬운 방법은 라이선스 파일을*Aspose.Words JAR*과 같은 폴더에 배치하고 경로 없이 파일 이름만 지정하는 것입니다.

{{% alert color="primary" %}}

[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)메서드를 사용하여 구성 요소의 라이선스를 지정합니다.

**SetLicense**을 여러 번 호출하는 것은 해롭지 않으며 프로세서 시간을 낭비합니다.

[SetMeteredKey](https://reference.aspose.com/words/java/com.aspose.words/metered/#setMeteredKey-java.lang.String-java.lang.String)을 여러 번 호출하는 것도 해롭지는 않지만 프로세서 시간을 낭비하고 부적절하게 소비를 축적 할 수 있습니다.

{{% /alert %}}

#### 파일 또는 스트림 개체를 사용하여 라이센스 적용

{{% alert color="primary" %}}

Aspose.Words클래스를 사용하기 전에 시작 코드에서**SetLicense**을 호출합니다.

{{% /alert %}}

클래스 라이브러리를 개발할 때Aspose.Words을 사용하는 클래스의 정적 생성자에서**SetLicense**을 호출할 수 있습니다. 정적 생성자는 클래스를 인스턴스화하기 전에 실행되어Aspose.Words라이센스가 올바르게 설치되었는지 확인합니다.

##### 파일에서 라이센스 로드

[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.lang.String)방법을 사용하면 추가 사용을 위해 응용 프로그램의JARs이 포함된 리소스 또는 폴더에서 라이센스 파일을 찾을 수 있습니다.

다음 코드 예제에서는 폴더에서 라이센스를 초기화하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-file.java" >}}

##### `Stream`개체에서 라이선스 로드

다음 코드 예제에서는 다른[SetLicense](https://reference.aspose.com/words/java/com.aspose.words/license/#setLicense-java.io.InputStream)방법을 사용하여 스트림에서 라이선스를 초기화하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-stream.java" >}}

#### 라이센스 파일을 포함된 리소스로 포함

라이선스를 응용 프로그램과 함께 패키징하고 손실되지 않도록 하는 깔끔한 방법은 라이선스를 임베디드 리소스로 포함하는 것입니다. LIC파일을 프로젝트의 리소스 폴더에 간단히 복사할 수 있습니다.

프로젝트를 다시 작성하는 것은파일을 응용 프로그램에 넣습니다.항아리 파일. 그 후 다음 코드를 사용하여 라이센스를 신청할 수 있습니다:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-license-from-resources.java" >}}

#### 계량 라이센스 적용

Aspose.Words개발자가 계량 된 키를 적용 할 수 있습니다. 이 새로운 라이센스 메커니즘입니다.

새로운 라이선스 메커니즘은 기존 라이선스 방법과 함께 사용됩니다. API기능 사용에 따라 요금을 청구하려는 고객은 계량된 라이선스를 사용할 수 있습니다.

이 유형의 라이센스를 얻기 위해 필요한 모든 단계를 완료 한 후에는 라이센스 파일이 아닌 키를 받게됩니다. 이 계량 키는 이 목적을 위해 특별히 도입된[Metered](https://reference.aspose.com/words/java/com.aspose.words/metered/)클래스를 사용하여 적용할 수 있습니다.

**SetMeteredKey**메서드를 자주 호출하지 마십시오. Aspose.Words라이브러리를 인스턴스화하고**SetMeteredKey**을 한 번 호출 한 다음 라이브러리를 인스턴스화하고 다시 사용하십시오.

다음 코드 예제에서는 계량된 공개 키와 개인 키를 설정하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "aae6b7a56c4792497614b4ee8f6f8eec" "apply-metered-license.java" >}}

{{% alert color="primary" %}}

계량 된 메커니즘은 올바른 계산을 위해 우리의 서비스와 지속적인 상호 작용을 필요로하기 때문에,계량 된 라이센스의 올바른 사용을 위해 안정적인 인터넷 연결이 있어야합니다 유의하시기 바랍니다.

자세한 내용은 [계량 라이센스FAQ](https://purchase.aspose.com/faqs/licensing/metered/) 부문

{{% /alert %}}

### 라이센스 파일 이름 변경

라이센스 파일 이름이"Aspose.Words.LIC"일 필요는 없습니다. 당신은 당신의 취향에 이름을 변경하고 응용 프로그램에서 라이센스를 설정할 때 그 이름을 사용할 수 있습니다.

### "라이센스 파일 이름을 찾을 수 없습니다"예외

라이선스를 구매하고 다운로드하면 해당 라이선스 파일*"Aspose.Words.LIC"*의 이름이 지정됩니다. 브라우저를 사용하여 라이센스 파일을 다운로드합니다. 이 경우 일부 브라우저는 라이센스 파일을XML로 인식하고.따라서 컴퓨터의 전체 파일 이름은*"Aspose.Words.lic.XML"*이 됩니다.

Microsoft Windows가 알려진 파일 형식의 확장자를 숨기도록 구성되면(불행히도 대부분의Windows설치에서 기본값입니다)라이선스 파일은Windows Explorer에서*"Aspose.Words. LIC"*으로 나타납니다. 당신은 아마 이것이 실제 파일 이름이라고 생각하고**SetLicense**를*"Aspose.Words.LIC"*로 전달한다고 생각할 것입니다.하지만 그러한 파일은 없으므로 예외가 있습니다.

이 문제를 해결하려면 보이지 않는를 제거 할 수있는 파일의 이름을 바꿉니다.확장. 또한Microsoft Windows에서"확장명 숨기기"옵션을 비활성화하는 것이 좋습니다.

## 여러 개의 아 포스 제품 사용

Aspose.Words및`Aspose.Cells`과 같이 응용 프로그램에서 여러 개의 아 포스 제품을 사용하는 경우 몇 가지 유용한 팁이 있습니다:

* 각 아스 포스 제품에 대한 라이센스를 별도로 설정하십시오. 모든 구성 요소(예:"Aspose.Total.lic")에 대해 단일 라이센스 파일이 있는 경우에도 응용 프로그램에서 사용하는 각 아스 포스 제품에 대해**SetLicense**를 별도로 호출해야 합니다.
* 정규화된 라이센스 클래스 이름을 사용합니다. 각 아스포스 제품은 자체 네임스페이스에`License`클래스를 가지고 있습니다. 예를 들어Aspose.Words에는**com.aspose.words.License**이 있고`Aspose.Cells`에는 닷컴이 있습니다.아스포스세포들라이센스 클래스. 정규화된 클래스 이름을 사용하면 어떤 제품에 적용되는 라이선스에 대한 혼동을 피할 수 있습니다.
