---
title: Cách chạy Aspose.Words trong Docker
second_title: Aspose.Words cho .NET
articleTitle: Cách chạy Aspose.Words trong Docker
linktitle: Cách chạy Aspose.Words trong Docker
type: docs
description: "Tích hợp chức năng Aspose.Words vào ứng dụng của bạn bằng Docker bất kể công nghệ nào trong nhóm phát triển của bạn. Tìm hiểu cách sử dụng Aspose .Words trong vùng chứa Docker trong C#."
weight: 120
url: /vi/net/how-to-run-aspose-words-in-docker/
timestamp: 2024-08-19-11-05-36
---

Microservice kết hợp với container hóa giúp dễ dàng kết hợp các công nghệ. Docker cho phép bạn dễ dàng tích hợp chức năng Aspose.Words vào ứng dụng của mình, bất kể công nghệ nào trong nhóm phát triển của bạn.

Trong trường hợp bạn đang nhắm mục tiêu đến các vi dịch vụ hoặc nếu công nghệ chính trong ngăn xếp của bạn không phải là .NET, C++ hoặc Java nhưng bạn cần chức năng Aspose.Words hoặc nếu bạn đã sử dụng Docker trong ngăn xếp của mình thì bạn có thể quan tâm đến việc sử dụng Aspose.Words trong Docker thùng đựng hàng.

## Điều kiện tiên quyết

- Docker phải được cài đặt trên hệ thống của bạn. Để biết thông tin về cách cài đặt Docker trên Windows hoặc Mac, hãy tham khảo các liên kết trong phần "Xem thêm".

- Ngoài ra, hãy lưu ý rằng Visual Studio 2017, .NET Core 2.2 SDK được sử dụng trong ví dụ được cung cấp bên dưới.


## Ứng dụng Hello World

Trong ví dụ này, bạn tạo một ứng dụng bảng điều khiển Hello World đơn giản tạo ra dòng chữ "Hello World!" tài liệu và lưu nó ở tất cả các định dạng lưu được hỗ trợ. Sau đó, ứng dụng có thể được xây dựng và chạy trong Docker.

### Tạo ứng dụng Console

Để tạo chương trình Hello World, hãy làm theo các bước dưới đây:
1. Sau khi cài đặt Docker, hãy đảm bảo rằng nó sử dụng Bộ chứa Linux (mặc định). Nếu cần, hãy chọn tùy chọn Chuyển sang vùng chứa Linux từ menu Máy tính để bàn Docker.
1. Trong Visual Studio, tạo ứng dụng bảng điều khiển .NET Core.<br>
![net-console-application](https://lh5.googleusercontent.com/PArWoC8_leOnhtaF-5BMb3b4jHwI3G03WoyMK3bXZpsQKN50YzvEQBwoRniyCWKIcdR0EZGuwn3S8Z0ZK6FQ4cjMSWgH3CwSqReW4bMt-3OjZjrdt9yuWbkMdhyNjwwaaYPC5Ylr)<br>
1. Cài đặt phiên bản Aspose.Words mới nhất từ NuGet. SkiaSharp sẽ được cài đặt dưới dạng phần phụ thuộc của Aspose.Words.<br>
![skiasharp-dependency](https://lh3.googleusercontent.com/zWpvB5TLahC_OpJrHDML2131Vj_VK1vryTZBd_C3ZeOBdoUOc2vF_axEvwu9tytaL1maJv3qA2KoyP5fn7ae4_3cL23sXyoLoVysjgu8XEp6l0B2w5hgR9teh95_9mFd9X-4DGNN)<br>
1. Vì ứng dụng sẽ chạy trên Linux nên nội dung Linux gốc thích hợp phải được cài đặt. Bắt đầu với hình ảnh cơ sở Debian và cài đặt `SkiaSharp.NativeAssets`.Linux.
1. Khi tất cả các phần phụ thuộc cần thiết đã được thêm vào, hãy viết một chương trình đơn giản tạo ra câu "Xin chào thế giới!" tài liệu và lưu nó ở tất cả các định dạng lưu được hỗ trợ:<br>

{{< gist "aspose-words-gists" "47e15ad749897be465deebc2ff3e76dd" "aspose-words-docker.cs" >}}

Lưu ý rằng thư mục "TestOut" được chỉ định làm thư mục đầu ra để lưu tài liệu đầu ra. Khi chạy ứng dụng trong Docker, một thư mục trên máy chủ sẽ được gắn vào thư mục này trong vùng chứa. Điều này sẽ cho phép bạn dễ dàng xem đầu ra do Aspose.Words tạo ra trong vùng chứa Docker.

### Định cấu hình Dockerfile

Bước tiếp theo là tạo và định cấu hình Dockerfile.

1. Tạo Dockerfile và đặt nó bên cạnh tệp giải pháp của ứng dụng của bạn. Giữ tên tệp này không có phần mở rộng (mặc định).
1. Trong Dockerfile, chỉ định:

{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update && apt-get install -y libfontconfig1
COPY . ./
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample/out/Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

Trên đây là một Dockerfile đơn giản, chứa các hướng dẫn sau:

- Hình ảnh SDK sẽ được sử dụng. Đây là hình ảnh .NET Core SDK 2.2. Docker sẽ tải nó xuống khi bản dựng được chạy. Phiên bản của SDK được chỉ định làm thẻ.
- Thư mục làm việc được chỉ định ở dòng tiếp theo.
- Lệnh cài đặt libfontconfig1 được chạy trong container. Điều này được SkiaSharp yêu cầu.
- Lệnh sao chép mọi thứ vào vùng chứa, xuất bản ứng dụng và chỉ định điểm vào.

### Xây dựng và chạy ứng dụng trong Docker

Bây giờ ứng dụng có thể được xây dựng và chạy trong Docker. Mở dấu nhắc lệnh yêu thích của bạn, thay đổi thư mục thành thư mục chứa ứng dụng (thư mục chứa tệp giải pháp và Dockerfile) và chạy lệnh sau:

{{< highlight plain >}}
docker build -t awtest .
{{< /highlight >}}

Lần đầu tiên lệnh này được thực thi có thể mất nhiều thời gian hơn vì Docker cần tải xuống các hình ảnh được yêu cầu. Khi lệnh trước hoàn thành, hãy chạy lệnh sau:

{{< highlight plain >}}
docker run --mount type=bind,source=C:\Temp,target=/TestOut --rm awtest from Docker
{{< /highlight >}}

{{% alert color="primary" %}}

Hãy chú ý đến đối số mount, bởi vì, như đã đề cập trước đó, một thư mục trên máy chủ được gắn vào thư mục của vùng chứa để dễ dàng xem kết quả thực thi ứng dụng. Đường dẫn trong Linux phân biệt chữ hoa chữ thường.

{{% /alert %}}

## Hình ảnh hỗ trợ Aspose.Words

Aspose.Words có sẵn cho cả .NET Framework và .NET Core. Hình ảnh .NET Core có kích thước nhỏ hơn nhiều so với hình ảnh .NET Framework, điều này làm cho .NET Core trở thành lựa chọn tốt hơn để tạo các vi dịch vụ và sử dụng trong các vùng chứa. Có thể triển khai ứng dụng vào vùng chứa Linux Docker (để triển khai đa nền tảng), nhẹ hơn vùng chứa Windows.

Hình ảnh chính thức của .NET Core SDK được cung cấp cho:

- Debian 9 và 10
- Ubuntu 18.04 và 19.04
- Alpine 3.7 và 3.9
- Windows Nano Server

Để làm việc với đồ họa, Aspose.Words dành cho .NET Standard phụ thuộc vào SkiaSharp. Điều này giới hạn các hình ảnh Aspose.Words có thể chạy trên các thiết bị sau:

- Debian 9 và 10
- Ubuntu 18.04 và 19.04
- Alpine 3.9

SkiaSharp không hoạt động trên Windows Nano Server do thiếu một số phụ thuộc gốc, [ đây là sự cố đã biết ở SkiaSharp](https://github.com/mono/SkiaSharp/issues/676). Sự cố sẽ được giải quyết trong phiên bản 1.68.1.1 của SkiaSharp. Nếu bạn cần chạy Aspose.Words trong vùng chứa Windows, hãy sử dụng hình ảnh cơ sở .NET Framework với phiên bản .NET Framework của Aspose.Words, không phụ thuộc vào SkiaSharp.

SkiaSharp là một trình bao bọc xung quanh thư viện Skia gốc. Các thời gian chạy sau được cung cấp trong gói SkiaSharp NuGet:

- osx
- tizen-armel
- tizen-x86
- win10-arm
- win10-x64
- win10-x86
- win-x64
- win-x86

Để chạy nó trong Linux, bạn nên sử dụng các gói NuGet bổ sung có nội dung gốc tương ứng, chẳng hạn như các bản dựng gốc của thư viện Skia, được liệt kê bên dưới:

- *SkiaSharp.NativeAssets.Linux* – cung cấp bản dựng Skia gốc cho các bản phân phối Linux dựa trên x64 Debian.
- *SkiaSharp.NativeAssets.Linux.NoDependencies* – gói được thiết kế để sử dụng trong các bản phân phối Linux không có sự phụ thuộc libfontconfig. Đã thử nghiệm trên RHEL 7 (x64).
- *Goelze.SkiaSharp.NativeAssets.AlpineLinux* – cung cấp bản dựng Skia gốc cho x64 Alpine Linux 3.9.
- *Jellyfin.SkiaSharp.NativeAssets.LinuxArm* – cung cấp bản dựng Skia gốc cho các bản phân phối Linux dựa trên arm32 và arm64 Debian.

## Thêm ví dụ

1. Trong ví dụ trên, ứng dụng được chạy ở dạng hình ảnh SDK. Hình ảnh SDK nặng hơn hình ảnh thời gian chạy. Ví dụ bên dưới minh họa cách sửa đổi tệp Docker để sử dụng hình ảnh SDK nhằm xây dựng ứng dụng và hình ảnh thời gian chạy để chạy nó:<br>
{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /app
\# copy csproj and restore as distinct layers
COPY Aspose.Words.Docker.Sample/*.csproj ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet restore
\# copy and publish app and libraries
WORKDIR /app/
COPY Aspose.Words.Docker.Sample/. ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet publish -c Release -o out
\# copy to runtime environment
FROM mcr.microsoft.com/dotnet/core/runtime:2.2 AS runtime
WORKDIR /app
\# libfontconfig1 is required to properly work with fonts in Linux.
RUN apt-get update && apt-get install -y libfontconfig1
RUN apt install libharfbuzz-icu0
COPY --from=build /app/Aspose.Words.Docker.Sample/out ./
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}
1. Để chạy ứng dụng trong Ubuntu 18.04, Dockerfile thực tế vẫn giữ nguyên (chỉ có thẻ được thay đổi):<br>
{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2-bionic AS build
WORKDIR /app
\# copy csproj and restore as distinct layers
COPY Aspose.Words.Docker.Sample/*.csproj ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet restore
\# copy and publish app and libraries
WORKDIR /app/
COPY Aspose.Words.Docker.Sample/. ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet publish -c Release -o out
\# copy to runtime environment
FROM mcr.microsoft.com/dotnet/core/runtime:2.2-bionic AS runtime
WORKDIR /app
\# libfontconfig1 is required to properly work with fonts in Linux.
RUN apt-get update && apt-get install -y libfontconfig1
RUN apt install libharfbuzz-icu0
COPY --from=build /app/Aspose.Words.Docker.Sample/out ./
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}
1. Để chạy ứng dụng trong Alpine Linux, cần phải thêm nội dung gốc SkiaSharp và sử dụng Dockerfile sau:<br>
{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine3.9 AS build
WORKDIR /app
\# copy csproj and restore as distinct layers
COPY Aspose.Words.Docker.Sample/*.csproj ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet restore
\# copy and publish app and libraries
WORKDIR /app/
COPY Aspose.Words.Docker.Sample/. ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet publish -c Release -o out
\# copy to runtime environment
FROM mcr.microsoft.com/dotnet/core/runtime:2.2-alpine3.9 AS runtime
WORKDIR /app
\# fontconfig is required to properly work with fonts in Linux.
RUN apk update && apk upgrade && apk add fontconfig && apk add harfbuzz
COPY --from=build /app/Aspose.Words.Docker.Sample/out ./
ENTRYPOINT ["dotnet", "Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}
1. Để chạy ứng dụng trong RHEL 7, cần phải thêm nội dung gốc SkiaSharp và sử dụng Dockerfile sau:<br>
{{< highlight plain >}}
FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build
WORKDIR /app
\# copy csproj and restore as distinct layers
COPY Aspose.Words.Docker.Sample/*.csproj ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet restore
\# copy and publish app and libraries
WORKDIR /app/
COPY Aspose.Words.Docker.Sample/. ./Aspose.Words.Docker.Sample/
WORKDIR /app/Aspose.Words.Docker.Sample
RUN dotnet publish -c Release -o out
\# copy to runtime environment
FROM kkamberta/dotnet-21-rhel7 AS runtime
WORKDIR /app
COPY --from=build /app/Aspose.Words.Docker.Sample/out ./
ENTRYPOINT ["/opt/rh/rh-dotnet21/root/usr/bin/dotnet", "Aspose.Words.Docker.Sample.dll"]
{{< /highlight >}}

## Xem thêm

- [Cài đặt Docker Desktop trên Windows](https://docs.docker.com/docker-for-windows/install/)
- [Cài đặt Docker Desktop trên Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio 2017, .NET Core 2.2 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/windows?tabs=netcore22#dependencies)
- Tùy chọn [Chuyển sang vùng chứa Linux](https://docs.docker.com/docker-for-windows/#switch-between-windows-and-linux-containers)
- Cài đặt [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux)
- Thông tin bổ sung về [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-sdk)
- Sử dụng thêm các gói NuGet: [SkiaSharp.NativeAssets.Linux](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux), [SkiaSharp.NativeAssets.Linux.NoDependency](https://www.nuget.org/packages/SkiaSharp.NativeAssets.Linux.NoDependencies), [Goelze.SkiaSharp.NativeAssets.AlpineLinux](https://www.nuget.org/packages/Goelze.SkiaSharp.NativeAssets.AlpineLinux), [Jellyfin.SkiaSharp.NativeAssets.LinuxArm](https://www.nuget.org/packages/Jellyfin.SkiaSharp.NativeAssets.LinuxArm)
- [RHEL 7 (x64)](https://hub.docker.com/r/kkamberta/dotnet-21-rhel7)
