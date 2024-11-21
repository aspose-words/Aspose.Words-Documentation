---
title: 라이선스 및 구독
second_title: Aspose.Words 에 대한 C++
articleTitle: 라이선스 및 구독
linktitle: 라이선스 및 구독
description: "Aspose.Words 구입을위한 다른 계획을 제공하거나 라이센스 및 구독 정책을 사용하여 평가를위한 무료 평가판 및 30 일 임시 라이센스를 제공합니다."
type: docs
weight: 60
url: /ko/cpp/licensing/
timestamp: 2024-10-24-11-44-28
---

때로는 시스템을 더 잘 연구하기 위해 가능한 한 빨리 코드에 뛰어 들기를 원합니다. 이 작업을 더 쉽게 수행하려면, Aspose.Words 구매에 대한 다른 계획을 제공하거나 무료 평가판 및 평가를위한 30 일 임시 라이센스를 제공합니다.

{{% alert color="primary" %}}

제품 평가,적절한 라이선스 및 구매 방법을 안내하는 여러 가지 일반적인 정책 및 관행이 있습니다. 당신은 그들을 찾을 수 있습니다 [구매 정책 및 FAQ](https://purchase.aspose.com/policies/) 부문

{{% /alert %}}

## 무료 평가판 또는 임시 라이센스

Aspose.Words 개발자가 구입하기 전에 시도 할 수있는 놀라운 소프트웨어입니다.

### 무료 평가판

평가 버전은 구입 한 것과 동일합니다- [평가판 버전](https://releases.aspose.com/words/) 라이선스를 적용하기 위해 몇 줄의 코드를 추가하면 라이선스가 부여됩니다.

의 평가판 버전 Aspose.Words 지정된 라이센스 없이 전체 제품 기능을 제공하지만 로드 및 저장 시 문서 상단에 평가 워터마크를 삽입하고 최대 문서 크기를 몇 백 단락으로 제한합니다.

### 임시 라이센스

당신이 시험하고 싶은 경우에 Aspose.Words 평가판의 제한없이,당신은 또한 30 일 임시 라이센스를 요청할 수 있습니다. 자세한 내용은 [임시 라이센스 받기](https://purchase.aspose.com/temporary-license/) 페이지

## 구입 한 라이센스

구입 후에는 라이센스 파일을 적용하거나 라이센스 파일을 포함 리소스로 포함해야 합니다. 이 섹션에서는 이러한 작업을 수행할 수 있는 방법에 대한 옵션을 설명하고 몇 가지 일반적인 질문에 대한 설명을 제공합니다.

{{% alert color="primary" %}}

라이센스를 설정해야 합니다:

* 응용 프로그램 도메인 당 한 번만
* 다른 것을 사용하기 전에 Aspose.Words 수업

{{% /alert %}}

{{% alert color="primary" %}}

당신은 가격 정보를 찾을 수 있습니다 [가격 정보](https://purchase.aspose.com/pricing/words/family/) 페이지

{{% /alert %}}

### 구입 한 라이센스 보호

라이센스를 구입 한 후,당신은주의 깊게 페이지의 정보를 읽을 필요가있다 [구입 한 라이센스 보호](https://purchase.aspose.com/orders/protecting-your-license-file) 라이센스 파일을 보호하기 위해. 이 페이지는 유료 라이선스가 있는 경우에만 볼 수 있습니다.

### 라이센스 적용 옵션

라이센스는 다양한 위치에서 적용 할 수 있습니다:

* 명시적 경로
* 폴더를 포함하는 `Aspose.Words_\*.dll` 파일
* 호출된 어셈블리를 포함하는 폴더 `Aspose.Words_\*.dll`
* 항목 어셈블리를 포함하는 폴더(귀하의 `.exe`)
* 어셈블리에 포함된 리소스를 호출합니다 `Aspose.Words_\*.dll`

라이선스를 설정하는 가장 쉬운 방법은 라이선스 파일을 다음과 같은 폴더에 배치하는 것입니다 `Aspose.Words_\*.dll` 그리고 경로 없이 파일 이름만 지정하십시오.

{{% alert color="primary" %}}

사용 [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) 구성 요소를 라이선스하는 방법.

전화 **SetLicense** 여러 번 유해하지 않습니다,그냥 프로세서 시간을 낭비.

{{% /alert %}}

#### 파일 또는 스트림 개체를 사용하여 라이센스 적용

응용 프로그램을 개발할 때 전화 **SetLicense** 사용하기 전에 시작 코드에서 Aspose.Words 수업

##### 파일에서 라이센스 로드

를 사용하여 [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) 방법,당신은 추가 사용을 위해 포함 된 리소스 또는 어셈블리 폴더에서 라이센스 파일을 찾기 위해 시도 할 수 있습니다.

다음 코드 예제에서는 폴더에서 라이센스를 초기화하는 방법을 보여 줍니다:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-file.h" >}}

##### 스트림 개체에서 라이센스 로드

다음 코드 예제에서는 다른 스트림을 사용하여 스트림에서 라이센스를 초기화하는 방법을 보여 줍니다 [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) 방법:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-stream.h" >}}

#### 라이센스 파일을 포함된 리소스로 포함

라이선스를 응용 프로그램과 함께 패키징하고 손실되지 않도록 하는 깔끔한 방법은 라이선스를 임베디드 리소스로 포함하는 것입니다. 리소스를 포함 및 사용하는 방법은 대상 플랫폼에 따라 다릅니다.

##### Windows

아래 그림과 같이 라이선스를 리소스로 추가했다고 가정해 보겠습니다.

```
resource.h
#define IDR_ASPOSE_WORDS_LIC            101
```

```
resource.rc
IDR_ASPOSE_WORDS_LIC RCDATA "Aspose.Words.Cpp.lic"
```

{{% alert color="primary" %}}

당신은 자원 파일을 사용하는 방법에 대해 읽을 수 있습니다 [리소스 파일 작업](https://docs.microsoft.com/en-us/cpp/windows/working-with-resource-files?view=msvc-160) 페이지

{{% /alert %}}

다음 코드 예제에서는 다음을 사용하여 포함된 리소스에서 라이선스를 초기화하는 방법을 보여 줍니다 [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) 방법:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-windows.h" >}}

##### Linux

비슷한 방법으로 자원을 내장할 수 있습니다. Linux 실행 파일로

{{% alert color="primary" %}}

자세한 내용은 다음을 참조하십시오 [다음을 사용하여 실행 파일에 리소스 포함 GCC](https://stackoverflow.com/questions/4158900/embedding-resources-in-executable-using-gcc/4158997#4158997).

{{% /alert %}}

다음 코드 코드 예제에서는 다음을 사용하여 포함된 리소스에서 라이선스를 초기화하는 방법을 보여 줍니다 [SetLicense](https://reference.aspose.com/words/cpp/aspose.words/license/setlicense/) 방법:

{{< gist "aspose-words-gists" "22914ce1f4ad49bfda8f88f5d192fe8e" "apply-license-from-embedded-resource-linux.h" >}}

### 라이센스 파일 이름 변경

라이센스 파일 이름은"Aspose.Words.LIC". 당신은 당신의 취향에 이름을 변경하고 응용 프로그램에서 라이센스를 설정할 때 그 이름을 사용할 수 있습니다.

### "라이센스 파일 이름을 찾을 수 없습니다"예외

라이선스를 구매하고 다운로드하면 해당 라이선스 파일의 이름이 지정됩니다 *"Aspose.Words.LIC"*. 브라우저를 사용하여 라이센스 파일을 다운로드합니다. 이 경우 일부 브라우저는 라이센스 파일을 다음과 같이 인식합니다 XML 그리고 추가.그래서 컴퓨터의 전체 파일 이름이 됩니다 *"Aspose.Words.lic.XML"*.

언제 Microsoft Windows 알려진 파일 형식의 확장자를 숨기도록 구성됩니다(불행히도 대부분의 경우 기본값입니다 Windows 설치),라이센스 파일은 다음과 같이 나타납니다 *"Aspose.Words. LIC"* 그 안에 Windows Explorer. 당신은 아마이 실제 파일 이름과 호출이라고 생각합니다 **SetLicense** 그것을 전달 *"Aspose.Words.LIC"*,하지만 그런 파일이 없기 때문에 예외가 있습니다.

이 문제를 해결하려면 보이지 않는를 제거 할 수있는 파일의 이름을 바꿉니다.확장. 우리는 또한 당신이"숨기기 확장"옵션을 해제하는 것이 좋습니다 Microsoft Windows.

## 여러 개의 아 포스 제품 사용

응용 프로그램에서 다음과 같이 여러 개의 아 포스 제품을 사용하는 경우 Aspose.Words 그리고 `Aspose.Cells`,여기에 몇 가지 유용한 팁이 있습니다:

* 각 아스 포스 제품에 대한 라이센스를 별도로 설정하십시오. 예를 들어 모든 구성 요소에 대한 단일 라이센스 파일이 있더라도"Aspose.Total.lic",당신은 여전히 전화해야합니다 **SetLicense** 응용 프로그램에서 사용하는 각 아스 포스 제품에 대해 별도로.
* 정규화된 라이센스 클래스 이름을 사용합니다. 각 아스포스 제품은 **License** 자체 네임스페이스의 클래스입니다. 예를 들어, Aspose.Words 이 [Aspose.Words.License](https://reference.aspose.com/words/cpp/aspose.words/license/) 그리고 `Aspose.Cells` 이 `Aspose.Cells`.라이센스 클래스. 정규화된 클래스 이름을 사용하면 어떤 제품에 적용되는 라이선스에 대한 혼동을 피할 수 있습니다.
