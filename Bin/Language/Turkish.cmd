::
:: ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ► ►
:: #########################################################################################################
:: Yönlendirme yapılır
Call %*
goto :eof
:: #########################################################################################################
:: ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄ ◄

► 0 = Ön yükleme (Boot)
► 1 = Sistem (System)
► 2 = Otomatik (Auto)
► 3 = Manuel (Demand)
► 4 = Devre dışı (Disable)

:Menu_1
echo            %R%[90m┌────────────────────────────────────┬───────────────────────────────────────┐%R%[0m
echo            %R%[90m│%R%[32m  1-%R%[33m Uygulama Yükleyici %R%[90m[M]         │%R%[32m   4-%R%[33m Hizmet Yönetimi%R%[90m [M]              │%R%[0m
echo            %R%[90m│%R%[32m  2-%R%[33m Özellik yönetimi %R%[90m[M]           │%R%[32m   5-%R%[33m Özelleştirme%R%[90m [M]                 │%R%[0m
echo            %R%[90m│%R%[32m  3-%R%[33m Gizlilik ayarları %R%[90m[M]          │%R%[32m   6-%R%[33m Araçlar%R%[90m [M]                      │%R%[0m
echo            %R%[90m├────────────────────────────────────┼───────────────────────────────────────┤%R%[0m
echo            %R%[90m│%R%[32m  Z-%R%[37m Toolbox Ayarlar                %R%[90m│%R%[32m   X-%R%[37m Temizle ve Kapat                 %R%[90m│%R%[0m
echo            %R%[90m└────────────────────────────────────┴───────────────────────────────────────┘%R%[0m
goto :eof

:Menu_2
echo            %R%[90m┌────────────────────────────────────┬───────────────────────────────────────┐%R%[0m
echo            %R%[90m│%R%[32m  1-%R%[33m Zaman ayarlı kapat             %R%[90m│%R%[32m   7-%R%[33m Güncelleme yükleyici             %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  2-%R%[33m Ping ölçer                     %R%[90m│%R%[32m   8-%R%[33m Appx yükleyici                   %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  3-%R%[33m SHA-256 karşılaştırıcı         %R%[90m│%R%[32m   9-%R%[33m Kayıtlı WiFi bilgileri           %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  4-%R%[33m Lisans Yönetimi                %R%[90m│%R%[32m  10-%R%[33m Hesap Yönetimi                   %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  5-%R%[33m Sistem hakkında                %R%[90m│%R%[32m  11-%R%[33m İşlem önceliği yönetimi          %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  6-%R%[33m Genel onarım                   %R%[90m│%R%[32m  12-%R%[33m Genel temizlik                   %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m  X-%R%[37m Ana menü                       %R%[90m│                                       %R%[90m│%R%[0m
echo            %R%[90m└────────────────────────────────────────────────────────────────────────────┘%R%[0m
goto :eof

:Menu_3
set xognitorenksx=%R%[90m►
echo.
echo   %R%[90m┌────────────────────────────┬──────────────────────────────┬──────────────────────────────────┐%R%[0m
echo   %R%[90m│%R%[32m    1-%R%[33m All in One Runtimes  %R%[90m│%xognitorenksx% Sıkıştırma                  %R%[90m│%xognitorenksx% Uzak Bağlantı                   %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Mesaj                     %R%[90m│%R%[32m   28-%R%[36m 7-Zip                  %R%[90m│%R%[32m   53-%R%[36m Teamviewer                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    2-%R%[36m Discord              %R%[90m│%R%[32m   29-%R%[36m Winrar                 %R%[90m│%R%[32m   54-%R%[36m AnyDesk                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    3-%R%[36m Whatsapp             %R%[90m│%xognitorenksx% Video-Ses Oynatıcı          %R%[90m│%xognitorenksx% Görev Çubuğu / Başlat Menüsü    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    4-%R%[36m Signal               %R%[90m│%R%[32m   30-%R%[33m K-Lite Codec           %R%[90m│%R%[32m   55-%R%[33m OpenShell                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    5-%R%[36m Telegram             %R%[90m│%R%[32m   31-%R%[33m VLC Media Player       %R%[90m│%R%[32m   56-%R%[33m TaskbarX                   %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    6-%R%[36m Zoom                 %R%[90m│%R%[32m   32-%R%[33m PotPlayer              %R%[90m│%xognitorenksx% Diğer                           %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Oyun Kütüphane            %R%[90m│%R%[32m   33-%R%[33m Aimp                   %R%[90m│%R%[32m   57-%R%[36m Mem Reduct                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    7-%R%[33m Epic Games           %R%[90m│%R%[32m   34-%R%[33m Spotify                %R%[90m│%R%[32m   58-%R%[36m MSI Afterburner            %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    8-%R%[33m Steam                %R%[90m│%xognitorenksx% İndirme Araçları            %R%[90m│%R%[32m   59-%R%[36m Everything                 %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m    9-%R%[33m GOG Galaxy           %R%[90m│%R%[32m   35-%R%[36m Internet Download Man. %R%[90m│%R%[32m   60-%R%[36m Hamachi                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   10-%R%[33m Ubisoft Connect      %R%[90m│%R%[32m   36-%R%[36m Free Download Manager  %R%[90m│%R%[32m   61-%R%[36m Glasswire                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   11-%R%[33m EA Games/Origin      %R%[90m│%R%[32m   37-%R%[36m Qbittorrent            %R%[90m│%R%[32m   62-%R%[36m Stremio                    %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   12-%R%[33m Playnite             %R%[90m│%xognitorenksx% Belgeler                    %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Tarayıcı                  %R%[90m│%R%[32m   38-%R%[33m Libre Office           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   13-%R%[36m Google Chrome        %R%[90m│%R%[32m   39-%R%[33m Adobe Reader           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   14-%R%[36m Mozilla Firefox      %R%[90m│%R%[32m   40-%R%[33m PDF X-Change           %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   15-%R%[36m Brave                %R%[90m│%R%[32m   41-%R%[33m Calibre                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   16-%R%[36m Microsoft Edge       %R%[90m│%xognitorenksx% Geliştirme                  %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   17-%R%[36m OperaGX              %R%[90m│%R%[32m   42-%R%[33m Notepad++              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%xognitorenksx% Multimedya                %R%[90m│%R%[32m   43-%R%[36m Python                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   18-%R%[33m Kdenlive             %R%[90m│%R%[32m   44-%R%[36m Visual Studio Code     %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   19-%R%[33m Openshot             %R%[90m│%R%[32m   45-%R%[36m Github                 %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   20-%R%[33m Shoutcut             %R%[90m│%R%[32m   46-%R%[36m Node.JS                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   21-%R%[33m Krita                %R%[90m│%R%[32m   47-%R%[36m Unity Hub              %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   22-%R%[33m Gimp                 %R%[90m│%R%[32m   48-%R%[36m Blender                %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   23-%R%[33m OBS Studio           %R%[90m│%xognitorenksx% Temizlik                    %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   24-%R%[33m ShareX               %R%[90m│%R%[32m   49-%R%[33m Unlocker               %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   25-%R%[33m Audacity             %R%[90m│%R%[32m   50-%R%[33m Wise Care 365          %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   26-%R%[33m HandBrake            %R%[90m│%R%[32m   51-%R%[33m Hibit Uninstaller      %R%[90m│%R%[32m%R%[37m                                  %R%[90m│%R%[0m
echo   %R%[90m│%R%[32m   27-%R%[33m FileConverter        %R%[90m│%R%[32m   52-%R%[33m Revo Uninstaller       %R%[90m│%R%[32m    X-%R%[37m Menu                       %R%[90m│%R%[0m
echo   %R%[90m└────────────────────────────┴──────────────────────────────┴──────────────────────────────────┘%R%[0m
set xognitorenksx=
goto :eof


E0001>Toolbox klasör yolunda Türkçe karakter tespit edildi>
E0002>Toolbox klasör yolunda boşluk tespit edildi>
E0003>Sistem mimariniz x64 değil>
E0004>Chocolatey uygulaması bulunamadı>
E0005>Winget bulunamadı>
E0006>Microsoft Store yüklü değil>
E0007>Toolbox, Windows 10/11 sistemlerde çalışmaktadır>


T0001>İşlem>
T0002>Çoklu işlem>
T0003>Seçilenler>
T0004>   Kapalı>
T0005>   Manuel>
T0006> Otomatik>
T0007>   Sistem>
T0008>Önyükleme>
T0009>Önceki Menü>
T0010>Sonraki Menü>>
T0011>Ana Menü>
T0012>Seçtiğiniz ayarlar uygulanıyor...>
T0013>Varsayılan>Kapat>
T0014>İşlemlerden sonra ayarların etkin olması için bilgisayarı yeniden başlatınız>
T0015>Chocolatey yükleniyor>
T0016>Uygulama yükleyicisi bulunamadı. Lütfen uygulamayı açılan ekran üzerinden yükleyiniz.>
T0017>Uygulama yükleyicisinin güncellenmesi gerekiyor. Açılan market ekrandan uygulamaları güncelleyiniz.>
T0018>All in One Runtimes yükleniyor>
T0019>Net Framework 3.5 yükleniyor>
T0020>Net Framework 4.5+ yükleniyor>
T0021>DirectPlay yükleniyor>
T0022>Toolbox Güncelleme>
T0023>Mevcut Sürüm>
T0024>Güncel Sürüm>


B0001>Bluetooth>
B0002>Telefon>Bağlı: Bluetooth>
B0003>Yazıcı - Baskı>
B0004>Tarayıcı ve Kamera>
B0005>IP Yardımcısı - IPV6>
B0006>Mobil Etkin Nokta>Bağlı: WIFI>
B0007>WIFI>
B0008>Miracast>Bağlı: WIFI>
B0009>Akış [Ağ üzeri veri paylaşımı]>
B0010>Uzak Masaüstü>
B0011>Windows Yedekleme / Geri Yükleme>
B0012>Sorun Giderme>
B0013>Hyper-V>
B0014>Akıllı Kart>
B0015>Yönlendiriciler>
B0016>Telemetri>
B0017>Xbox>
B0018>Microsoft Store>
B0019>Windows Update>
B0020>Yazı tipi önbelleği>
B0021>Kurumsal>
B0022>Defender>
B0023>Diğer>
B0024>Floppy Disk>

::Bluetooth
MS_1_>BthAvctpSvc>Ses/Video Kontrol Aktarım - AVCTP>3>
MS_2_>bthserv>Bluetooth Destek>3>
MS_3_>BluetoothUserService>Bluetooth Kullanıcı Desteği>3>
MS_4_>BTAGService>Bluetooth Ses Ağ Geçidi>3>
MS_5_>CDPUserSvc>Bağlı Cihazlar Platformu Kullanıcı>2>
::Telefon
MS_6_>TapiSrv>Telefon>3>
MS_7_>PhoneSvc>Telefon>3>
::Yazıcı - Baskı
MS_8_>Spooler>Yazdırma Biriktiricisi>2>
MS_9_>PrintWorkflowUserSvc>İş akışı hizmitini yazdır>3>
MS_10_>McpManagementService>Evrensel Yazdırma Yönetimi Hizmeti>3>
MS_11_>PrintNotify>Yazıcı Uzantıları ve Bildirimleri>3>
:: Tarayıcı ve Kamera
MS_12_>FrameServer>Windows Kamera Çerçeve Sunucusu>3>
MS_13_>FrameServerMonitor>Windows Kamera Çerçeve Sunucusu İzleyicisi>3>
MS_14_>WiaRpc>Resim alma olayları>3>
MS_15_>StiSvc>Windows Resim Alma (WIA)>3>
:: IP Yardımcısı - IPV6
MS_16_>iphlpsvc>IP Yardımcısı>2>
MS_17_>IpxlatCfgSvc>IP Çeviri Yapılandırma>3>
MS_18_>Tcpip6>Microsoft IPv6 Protokolü Sürücüsü>3>
:: Mobil Etkin Nokta
MS_19_>icssvc>Windows Mobil Etkin Nokta>3>
MS_20_>SharedAccess>Internet Bağlantısı Paylaşımı>3>
MS_21_>ALG>Uygulama katmanı ağ geçidi>3>
:: WIFI
MS_22_>WwanSvc>WWAN Otomatik Yapılandırma>3>
MS_23_>WlanSvc>Kablosuz Yerel Ağ Otomatik Yapılandırma>3>
MS_24_>vwifibus>Sanal Kablosuz Veri Yolu>3>
MS_25_>NativeWifiP>Yerel Filtresi>3>
MS_26_>Ndisuio>NDIS Kullanıcı Modu G/Ç Protokolü>3>
:: Miracast
MS_27_>ConsentUxUserSvc>ConsentUx Kullanıcı>3>
MS_28_>DevicePickerUserSvc>Cihaz Seçici>3>
MS_29_>DevicesFlowUserSvc>Cihaz Akışı>3>
MS_30_>WFDSConMgrSvc>Wi-Fi Direct Hizmetler Bağlantı Yöneticisi>3>
:: Akış [Ağ üzeri veri paylaşımı]
MS_31_>PNRPAutoReg>PNRP Makine Adı Yayın Hizmeti>3>
MS_32_>PNRPsvc>Eş Adı Çözümleme Protokolü>3>
MS_33_>p2psvc>Eş ağ gruplandırma>3>
MS_34_>p2pimsvc>Eşler Arası Ağ Oluşturma Kimlik Yöneticisi>3>
MS_35_>upnphost>UPnP Aygıt Ana Makinesi>3>
MS_36_>QWAVE>Kaliteli Windows Ses Video Deneyim>3>
MS_37_>SSDPSRV>SSDP Bulma *>3>
MS_38_>FDResPub>İşlev Bulma Kaynak Yayımı>3>
MS_39_>fdPHost>İşlev Bulma Sağlayıcısı Ana Bilgisayarı>3>
MS_40_>LanmanServer>Sunucu>2>
MS_41_>WMPNetworkSvc>Windows Media Player Ağ Paylaşımı>3>
MS_42_>TrkWks>Dağıtılmış Bağlantı İzleme İstemcisi │ Bağlı: Kısayol izleme>2>
MS_43_>IKEEXT>IKE ve AuthIP IPsec Anahtarlama Modülleri>3>
:: Uzak Masaüstü
MS_44_>TermService>Uzak masaüstü hizmetleri>3>
MS_45_>UmRdpService>Uzak Masaüstü Hizmetleri Kullanıcı Modu Bağlantı Noktası Yeniden Yönlendiricisi>3>
MS_46_>SessionEnv>Uzak Masaüstü Yapılandırması>3>
MS_47_>RasAuto>Uzaktan Erişim Otomatik Bağlantı Yöneticisi>3>
MS_48_>RasMan>Uzaktan Erişim Otomatik Bağlantı Yöneticisi>2>
MS_49_>RpcLocator>Uzaktan Yordam Çağrısı Konumlandırıcısı>3>
MS_50_>tcpipreg>TCP/IP Kayıt Defteri Uyumluluğu │ [Eski hizmet]>2>
MS_51_>Netlogon>Netlogon>3>
:: Windows Yedekleme / Geri Yükleme
MS_52_>SDRSVC>Windows Yedekleme>3>
MS_53_>wbengine>Blok Düzeyinde Yedekleme Altyapı Hizmeti>3>
MS_54_>VSS>Birim Gölge Kopyası>3>
MS_55_>swprv>Microsoft Yazılımı Gölge Kopyası Sağlayıcısı>3>
MS_56_>fhsvc>Dosya Geçmişi Hizmeti>3>
MS_57_>CscService>Çevrimdışı dosyalar>3>
MS_58_>CSC>Çevrimdışı dosyalar sürücüsü>1>
:: Sorun Giderme
MS_59_>DPS>Tanılama İlkesi Hizmeti>2>
MS_60_>WdiServiceHost>Tanılama Hizmeti Ana Bilgisayarı>3>
MS_61_>WdiSystemHost>Tanılama Sistemi Ana Bilgisayarı>3>
MS_62_>TroubleshootingSvc>Önerilen Sorun Giderme Hizmeti>3>
MS_63_>wercplsupport>Sorun Raporları Denetim Masası Desteği>3>
MS_64_>WerSvc>Windows Hata Raporlama>3>
:: Hyper-V
MS_65_>HvHost>HV Ana Bilgisayar>3>
MS_66_>vmicvss>Hyper-V Birim Gölge Kopyası İsteyicisi>3>
MS_67_>vmicguestinterface>Hyper-V Konuk Arabirimi>3>
MS_68_>vmicshutdown>Hyper-V Konuk Kapatma>3>
MS_69_>vmicvmsession>Hyper-V PowerShell Direct>3>
MS_70_>vmicheartbeat>Hyper-V Sinyal>3>
MS_71_>vmicrdv>Hyper-V Uzak Masaüstü Sanallaştırma>3>
MS_72_>vmickvpexchange>Hyper-V Veri Değişimi>3>
MS_73_>vmictimesync>Hyper-V Zaman Eşitleme>3>
:: Akıllı Kart
MS_74_>SCardSvr>Akıllı Kart>3>
MS_75_>ScDeviceEnum>Akıllı Kart Cihaz Numaralandırma>3>
MS_76_>SCPolicySvc>Akıllı Kart Kaldırma İlkesi>3>
MS_77_>CertPropSvc>Sertifa yayma>3>
:: Yönlendiriciler
MS_78_>AJRouter>AllJoyn Yönlendirici>3>
MS_79_>SmsRouter>Microsoft Windows SMS Yönlendirme>3>
:: Telemetri
MS_80_>InventorySvc>Envanter ve Uyumluluk Değerlendirme hizmeti>3>
MS_81_>diagsvc>Diagnostic Execution Service>3>
MS_82_>dmwappushservice>Cihaz Yönetimi Kablosuz Uygulama Protokolü Anında İleti Yönlendirme>3>
MS_83_>DiagTrack>Bağlı kullanıcı deneyimi ve telemetrisi>2>
MS_84_>diagnosticshub.standardcollector.service>Microsoft Diagnostics Hub'ı Standart Toplayıcı>3>
MS_85_>UserDataSvc>Kullanıcı Verilerine Erişim>3>
MS_86_>UnistoreSvc>Kullanıcı Verilerini Depolama>3>
:: Xbox
MS_87_>XboxGipSvc>Xbox Aksesuar Yönetimi>3>
MS_88_>XboxNetApiSvc>Xbox Live Ağ>3>
MS_89_>XblAuthManager>Xbox Live Kimlik Doğrulama Yöneticisi>3>
MS_90_>XblGameSave>Xbox Live Oyun Kaydetme>3>
MS_91_>xboxgip>Oyun çevre birimleri>3>
MS_92_>BcastDVRUserService>Oyun DVR ve Yayın Kullanıcı Hizmeti>3>
:: Microsoft Store
MS_93_>AppXSvc>AppX Dağıtım Hizmeti>3>
MS_94_>ClipSVC>İstemci Lisans Hizmeti>3>
MS_95_>StorSvc>Depolama hizmeti>2>
MS_96_>InstallService>Microsoft Store Yükleme>3>
MS_97_>OneSyncSvc>Ana Bilgisayarı Eşitle>2>
MS_98_>LicenseManager>Windows Lisans Yöneticisi>3>
MS_99_>PushToInstall>Windows PushToInstall>3>
MS_100_>camsvc>Yetenek Erişim Yöneticisi Hizmeti>3>
MS_101_>ClipSvc>İstemci Lisans Hizmeti>3>
:: Windows Update
MS_102_>CryptSvc>Şifreleme Hizmetleri>2>
MS_103_>BITS>Arka plan akıllı aktarım hizmeti>2>
MS_104_>UsoSvc>Orchestrator hizmetini güncelleştir>2>
MS_105_>wuauserv>Windows Update>3>
MS_106_>WaaSMedicSvc>Windows Update medic>3>
MS_107_>uhssvc>Microsoft Update Health>3>
MS_108_>TrustedInstaller>Windows Modül Yükleyicisi>2>
:: Yazı tipi önbelleği
MS_109_>FontCache>Windows Yazı Tipi Önbelleği>2>
MS_110_>FontCache3.0.0.0>Windows sunum vakfı yazı Tipi Önbelleği 3.0.0.0>3>
:: Kurumsal
MS_111_>EntAppSvc>Kurumsal uygulama yönetimi>3>
MS_112_>AssignedAccessManagerSvc>Atanmış Erişim │ Bağlı: Kurumsal>3>
MS_113_>AppMgmt>Uygulama Yönetimi │ Bağlı: Kurumsal>3>
MS_114_>SEMgrSvc>Ödeme ve NFC/SE yöneticisi │ [Kurumsal]>3>
MS_115_>RetailDemo>Perakende gösteri │ [Kurumsal]>3>
:: Defender
MS_116_>wscsvc>Güvenlik Merkezi>2>
MS_117_>SgrmBroker>System Guard Çalışma Zamanı İzleyicisi Aracısı>2>
MS_118_>SecurityHealthService>Windows Güvenliği Hizmeti>3>
MS_119_>WinDefend>Microsoft Defender Virüsten Koruma Hizmeti>2>
MS_120_>WdNisSvc>Microsoft Defender Antivirüs Ağ İnceleme Hizmeti>3>
MS_121_>Sense>Windows Defender Gelişmiş Tehdit Koruması Hizmeti>3>
MS_122_>MsSecFlt>Microsoft Güvenlik Olayları Bileşen Mini Filtresi>0>
MS_123_>WdBoot>Windows Defender>0>
MS_124_>WdFilter>Windows Defender>0>
MS_125_>WdNisDrv>Windows Defender>3>
MS_126_>webthreatdefsvc>Web Tehdit Savunması Hizmeti>3>
MS_127_>webthreatdefusersvc>Web Tehdit Savunması Kullanıcı Hizmeti>2>
:: Diğer
MS_128_>DoSvc>Teslim en iyileştirme │ Bağlı: Xbox, Mağaza>3>
MS_129_>BDESVC>BitLocker Sürücü Şifreleme>3>
MS_130_>DusmSvc>Veri kullanımı [Tarifeli ağlar]>2>
MS_131_>RMSvc>Radyo yönetimi ve uçak modu>3>
MS_132_>wcncsvc>Windows Şimdi Bağlan / WPS>3>
MS_133_>lfsvc>Coğrafi Konum>3>
MS_134_>SysMain>Hızlı getir>2>
MS_135_>WSearch>Windows Search>2>
MS_136_>seclogon>İkincil Oturum Açma │ Bağlı: Blizzard>3>
MS_137_>wisvc>Windows Insider>3>
MS_138_>WbioSrvc>Windows Biyotmetrik>3>
MS_139_>defragsvc>Sürücüleri en iyi duruma getir>3>
MS_140_>WalletService>Cüzdan Hizmeti>3>
MS_141_>PenService>Kalem>3>
MS_142_>TabletInputService>Dokunmatik Klavye ve El Yazısı Paneli>3>
MS_143_>MapsBroker>İndirilen harita Yöneticisi>2>
MS_144_>Themes>Temalar>2>
MS_145_>PimIndexMaintenanceSvc>Kişi Verileri>3>
MS_146_>WpcMonSvc>Ebeveyn Denetimleri>3>
MS_147_>DeviceAssociationService>Aygıt İlişkisi │ İhtiyaç: Xbox One oyun kumandası>3>
MS_148_>DmEnrollmentSvc>Aygıt Yönetimi Kayıt │ İhtiyaç: Bulut tabanlı uygulamalara>3>
MS_149_>CaptureService>Ekran yakalama │ Bağlı: Ekran alıntısı>3>
MS_150_>GraphicsPerfSvc>Grafik perfromansı izleme>3>
MS_151_>tzautoupdate>Otomatik Saat Dilimi Güncelleştirici>4>
MS_152_>P9RdrService>Plan9 dosya sunucuları için tetikleyici │ Bağlı: Linux için altyapı>3>
MS_153_>NPSMSvc>Şimdi Yürütülüyor Oturum Yöneticisi │ İhtiyaç: Bildirim alanı medya oynatıcı>3>
MS_154_>NaturalAuthentication>Natural kimlik doğrulaması │ Bağlı: Konum>3>
MS_155_>pla>Performans Günlükleri ve Uyarıları │ İhtiyaç: C#, C++>3>
MS_156_>PerfHost>Performans Sayacı DLL Konak │ Bağlı: Uzak kayıt defteri>3>
MS_157_>PcaSvc>Program Uyumluluk Yardımcısı>3>
MS_158_>EFS>Şifreleme Dosya Sistemi>3>
:: Floppy Disk
MSE_1_>fdc>Floppy Disk kontrol sürücüsü>3>
MSE_2_>flpydisk>Floppy Disk sürücüsü>3>
MSE_3_>sfloppy>Yüksek kapasiteli Floppy Disk sürücüsü>3>
:: Diğer
MSE_4_>SiSRaid2>SiS RAID Stor Miniport sürücüsü │ Eski>0>
MSE_5_>SiSRaid4>SiS AHCI Stor Miniport sürücüsü │ Eski>0>
MSE_6_>3ware>3ware PCI RAID kart denetleyici │ Eski>0>
MSE_7_>ADP80XX>PCI Adaptec RAID kontrolcüsü │ Eski>0>
MSE_8_>Beep>Uyarı sesleri>1>
MSE_9_>GpuEnergyDrv>Ekran kartı enerji sürücüsü>1>











::

MSS_18>edgeupdate>Microsoft Edge Güncelleme>Microsoft yazılımınızın güncel kalmasını sağlar>
MSS_19_>edgeupdatem>Microsoft Edge Güncelleme>Microsoft yazılımınızın güncel kalmasını sağlar>

