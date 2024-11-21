---
title: Seu primeiro pedido para Android via via via via Java
second_title: Aspose.Words para Java
articleTitle: Sua primeira aplicação
linktitle: Sua primeira aplicação
description: "Instalação Aspose.Words para Android via via via via Java."
type: docs
weight: 30
url: /pt/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Este artigo dá-lhe uma ideia de começar com Aspose.Words para Android via via via via Java. Ele vai demonstrar como configurar um novo Android projeto do zero, adicione uma referência ao Aspose.Words JAR e criar um novo documento que é salvo em disco no formato DOCX. Este exemplo usa [Android Estúdio](https://developer.android.com/studio/index.html) para o desenvolvimento e o aplicativo é executado no Android Emulador. Para começar Aspose.Words para Android via via via via Java, por favor siga este tutorial passo a passo para criar um aplicativo que usa Aspose.Words para Android via via via via Java:

1. Baixar e o [Android Estúdio](https://developer.android.com/studio/index.html) e instalá-lo em qualquer local.
1. Corre Android Estúdio.
1. Criar um novo Android Projeto de aplicação.<br/>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copie aspose-words-17.5-android.via.java.jar em libs/folder do seu projeto<br/>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Selecione Seção de Projeto (a partir do menu de arquivo e clique na guia Dependências.
   1. Clique no botão "+", selecione a opção de dependência do arquivo.
   1. Selecione Aspose.Words biblioteca da pasta libs e clique em OK.<br/>
      ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Sincronizar o projeto com arquivos Gradle se necessário<br/>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. A fim de acessar as permissões especiais SDcard deve ser adicionado. Clique no botão AndroidManifest.xml ficheiro e escolher a visualização XML. Adicione a seguinte linha ao arquivo <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission> <br/>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Navegue até a seção de código do aplicativo e adicione as seguintes importações:<br/>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br/>
E, em seguida, insira o seguinte código no corpo do método onCreate para criar um novo documento do zero usando Aspose.Words,
inserir algum texto e salvá-lo no SDCard no formato DOCX.<br/>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br/>
O código completo deve ser assim:<br/>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Agora execute o aplicativo novamente. Desta vez, Aspose.Words código será executado em segundo plano e gerar um documento que é salvo para o SDcard.<br/>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Para visualizar o documento criado, acesse o menu Ferramentas e escolha Android e escolher Android Monitor de dispositivo<br/>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Use o visualizador padrão para abrir o documento. A saída gerada pelo aplicativo com apenas algumas linhas de código parece assim:<br/>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
