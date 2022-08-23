# GTest frameworkünü CMake ile test ettiğim örnek repo

Bu repoyu hem GTest öğrenmek hem de CMake öğrenmek için oluşturdum. googletest frameworkü projenin içine gömülüdür. Calculator adlı class içinde toplama çıkarma fonksiyonları implemante edilmiştir. Ayrıca bu fonksiyonlar test edilmiştir.

Test işlemi VS Code üzerinden yapılabilinildiği gibi build işlemi sonucu elde edilen CalculatorTests.exe dosyası çalıştırılarak da yapılabilinir. Bu exe'ye filtre uygulanarak sadece istenilen testlerin yapılması sağlanabilinir.

```
.\build-vscode\test\Debug\CalculatorTests.exe --gtest_filter=CalculatorTests.multiply
```

VS Code ile bu projeyi çalıştırmak için 2 tane extension'a ihtiyacınız vardır. Bunlar da C++ ve CMake Tools extension'larıdır.

Test işini ayrı bir çalıştırılabilir dosyadan da yapabilmek için ./build-vscode/CMakeCache.txt dosyasında 'gtest_force_shared_crt:BOOL=ON' ayarı yapılmalıdır.

Bazen ayarlamalar tam olmuyor. Bunun için 'ctrl+shift+p' ye basarak Developer: Reload Window yaparak vs code yeniden başlatabilirsiniz.

CMake'in çalışabilmesi için compiler'a ihtiyaç vardır. Bilgiyarınıza ayrıca bir clang, gcc veyahut visual studio c++ compiler'larını indirip kullanmalısınız.

mingw32 compiler'ını denedim çalışmıyor. msvc-amd64 kullandım sorunsuz çalışıyor. clang'in de sorunsuz çalışacağını düşünüyorum.

compiler'ın ayarını başta yaptınız sonra değiştirmek istediniz. Sol altta mavi kısımda tıklayarak değiştirebilirsiniz.