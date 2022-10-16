<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>--%>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Oturum Yönetimi</title>
    <link href="/Style.css" rel="stylesheet" />
    <style>
        label, a{
            width:150px;
        }
        .kayit_alt kayit_ust{
            width:500px;
            height:400px;
            margin-right:auto;
            margin-left:auto;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
            <nav class="navbar navbar-dark bg-dark navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand disabeld" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Anasayfa</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Konular
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="#" >Yazılım</a></li>
                                    <li><a class="dropdown-item" href="#" >Teknoloji</a></li>
                                    <li><a class="dropdown-item" href="#" >Girişimcilik</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <button ID="giris_nav" type="button" runat="server" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                  Giriş
                                </button>
                            </li>
                            <li class="nav-item ms-3">
                                <button ID="kayit_nav" type="button" runat="server" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2">
                                  Kayıt Ol
                                </button>
                            </li>
                            <li class="nav-item position-absolute top-0 end-0 mt-3 me-5" style="float:right;">
                                <asp:Label Text=" " runat="server" ID="kullanici_adi" style="color:white;"/> 
                                <asp:Button Class="btn btn-dark" Text="ÇIKIŞ" runat="server" ID="icon" Visible="false" OnClick="exit" />
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>

        <div class="wrapper mb-5">


            <!-- ---------------ilk satır------------ -->
        <div>
            <div class="card mt-5 me-2 ms-5" style="width: 26rem; float:left;">
                <img src="images/crud.jpg" class="card-img-top" alt="..." style="width:26rem; height:250px;"/>
                <div class="card-body">
                    <h5 class="card-title text-center">CRUD nedir?</h5>
                    <p class="card-text text-center">Yazılım Geliştirme</p>
                    <p>
                      <button runat="server" id="card1" class="btn btn-secondary d-grid gap-2 col-3 mx-auto" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" visible="false">
                        Oku
                      </button>
                    </p>
                    <div class="collapse" id="collapseExample">
                        <div class="card card-body">
                           İlişkisel bir veritabanı, satırlar ve sütunlar içeren tablolardan oluşur. İlişkisel bir veritabanında, tablodaki her satıra kayıt denir ve tablodaki her sütun belirli bir özniteliği veya alanı temsil eder. Kullanıcılar, veritabanında seçilen veriler üzerinde farklı eylem türleri gerçekleştirmek için dört CRUD işlemi çağırabilir. Bu, kod veya GUI aracılığıyla yapılabilir. Şimdi her bir fonksiyona ayrı ayrı bakalım.

                           Create : Bu özellik, örneğin, ilgili işlevi çağıracak olan uygulamadaki "Ekle" düğmesine basarak, bazı tetikleyicilerle uygulamaya/veritabanına yeni bir öğe ekler.
                           Read : Bu özellik, veritabanında belirli bir değer hakkında bir kayıt olup olmadığını görmenizi sağlar. Bu fonksiyon veritabanında herhangi bir bilgiyi değiştirmez, sadece görüntüleme yapabilmenizi sağlar.
                           Update : Bu özellikl sayesinde veritabanındaki bir değeri değiştirebilirsiniz. 
                           Delete : Bu fonksiyon sayesinde veritabanında istemediğiniz bir kaydı silebilirsiniz. 
                           Tanım olarak, CRUD mimari bir kavramdan çok bir döngüdür. Herhangi bir web uygulamasında birkaç CRUD döngüsü vardır. Örneğin, bir online mağazada, bir müşteri bir hesap OLUŞTURABİLİR, hesap bilgilerini GÜNCELLEYEBİLİR ve sepetteki ürünleri SİLEBİLİR.
                        </div>
                    </div>
                </div>
            </div>


            <div class="card mt-5 ms-2 " style="width: 26rem; float:left;">
                <img src="images/flutter.jpg" class="card-img-top" alt="..." style="width:26rem; height:250px;"/>
                <div class="card-body">
                    <h5 class="card-title text-center">Flutter</h5>
                    <p class="card-text text-center">Yazılım Geliştirme</p>
                    <p>
                      <button runat="server" id="card2" class="btn btn-secondary d-grid gap-2 col-3 mx-auto" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample" visible="false">
                        Oku
                      </button>
                    </p>
                    <div class="collapse" id="collapseExample2">
                        <div class="card card-body">
                            Google tarafından geliştirilen ve 2017 yılında yayınlanan Flutter, ücretsiz olarak kullanılan ve açık kaynak kodlu bir uygulama arayüzü araç takımıdır. Uygulamalarınızı yerelleştirebileceğiniz bir Yazılım Geliştirme Kiti ve uygulamayı özelleştirebileceğiniz bir UI Kitaplığı’ndan oluşur. 

                            Flutter üzerinden bir uygulama geliştirmek için JavaScript benzeri Dart isimli bir programlama dili kullanılıyor. 2011 yılında Google tarafından geliştirilmiş olan Dart, bir nesne programlama dili olarak tanımlanıyor. Bu dil ile Flutter üzerinden yazacağınız tek bir kod tabanı hem mobil hem web hem de masaüstü uyumlu bir uygulama olacaktır.
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <!-- ------------ ikinci satır ------------>
        <div>
            <div class="card mt-5 me-2 ms-5 " style="width: 26rem; float:left;">
                <img src="images/mysql.jpg" class="card-img-top" alt="..." style="width:26rem; height:250px;"/>
                <div class="card-body">
                    <h5 class="card-title text-center">MySQL</h5>
                    <p class="card-text text-center">Yazılım Geliştirme</p>
                    <p>
                      <button runat="server" id="card3" class="btn btn-secondary d-grid gap-2 col-3 mx-auto" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample3" aria-expanded="false" aria-controls="collapseExample" visible="false">
                        Oku
                      </button>
                    </p>
                    <div class="collapse" id="collapseExample3">
                        <div class="card card-body">
                          Bir veya birden fazla cihaz (istemciler) sunucuya bağlanırlar ve bir grafiksel kullanıcı ara yüzünden (GUI) sunucuya istekte bulunabilirler, iki tarafta da talimatları anladığı sürece sunucu istenilen sonucu verecektir.

                            Kısacası bir MySQL ‘de gerçekleşen olay da aynıdır. MySQL veri depolamak ve yönlendirmek için bir veri tabanı oluşturur ve oluşan veri tabanındaki tabloların ilişkilerini belirler. İstemci MySQL ‘de SQL komutlarını kullanarak sunucudan istekte bulunabilir. Burada SQL komutlarını işleyen MySQL sunucusudur ve komutlar anlaşıldı ise sunucu istekte bulunduğumuz bilgi ile yanıt verecek bu da kullanıcı ara yüzüne yansıyacaktır.
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div>
            <div class="card mt-5 ms-2 " style="width: 26rem; float:left;">
                <img src="images/seo.jpg" class="card-img-top" alt="..." style="width:26rem; height:250px;"/>
                <div class="card-body">
                    <h5 class="card-title text-center">SEO Nedir?</h5>
                    <p class="card-text text-center">Teknoloji</p>
                    <p>
                      <button runat="server" id="card4" class="btn btn-secondary d-grid gap-2 col-3 mx-auto" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample4" aria-expanded="false" aria-controls="collapseExample" visible="false">
                        Oku
                      </button>
                    </p>
                    <div class="collapse" id="collapseExample4">
                        <div class="card card-body">
                            İngilizce açılımı search engine optimization olan SEO’nun türkçe karşılığı ise arama motoru optimization olarak bilinmektedir. Seo çalışması, bir web sitesinin arama motorlarında ön plana çıkmasını sağlamak, trafik kalitesini, miktarını ve markanın trendini artırmak için belirli aralıklarla yapılan çalışmalardır.

                            SEO (Search Engine Optimization) amacı bir web sitesini Google arama motorunda ön plana çıkartarak, sitenin ziyaretçi sayısını arttırmaktır. Bu durum web sitenin arama motorlarına uygun kriterler de düzenlenmesi ile mümkün olmaktadır. Detaylı olarak yapılan Seo düzenlemelerin de arama motorlarındaki kriterler, sitenin genel görünümü ve içerik bilgileri ile yapılmaktadır. sunucudan istekte bulunabilir. Burada SQL komutlarını işleyen MySQL sunucusudur ve komutlar anlaşıldı ise sunucu istekte bulunduğumuz bilgi ile yanıt verecek bu da kullanıcı ara yüzüne yansıyacaktır.
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <!------------- üçüncü satır ---------------->
                <div>
            <div class="card mt-5 me-2 ms-5" style="width: 26rem; float:left;">
                <img src="images/dijital_pazarlama.jpg" class="card-img-top" alt="..." style="width:26rem; height:250px;"/>
                <div class="card-body">
                    <h5 class="card-title text-center">Dijital Pazarlama Nedir?</h5>
                    <p class="card-text text-center">Girişimcilik</p>
                    <p>
                      <button runat="server" id="card5" class="btn btn-secondary d-grid gap-2 col-3 mx-auto" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample5" aria-expanded="false" aria-controls="collapseExample" visible="false">
                        Oku
                      </button>
                    </p>
                    <div class="collapse" id="collapseExample5">
                        <div class="card card-body">
                           Dijital pazarlama, elektronik ortamda ürün ve hizmetinizi tanıtabileceğiniz, günümüz teknoloji dünyasında geleneksel medyaya göre daha avantajlı ve tercih oranı yüksek pazarlama yöntemidir. Dijital pazarlama yöntemi bir firmanın ya da markanın dijital ortamdaki 
                            pazarlama sürecine verilen addır. Günümüzde en yeni en geliştirilmiş açık pazarlama yöntemidir. Dijital kanalları kullanan bu verimli pazarlama yönteminin önde gelenleri internet, sosyal medya ve mobil platformlardır. Son yapılan araştırmalara göre Türkiye nüfusunun %50 aktif olarak interneti kullanmakta bu da güncel satış tekniklerindeki dönüşümün sebebini açıkça ortaya koyuyor. E-ticaret ve mobil pazarlama güncel olarak tüketiciler tarafından alternatif yöntemleri seçerek ürünün satışını yapar. 
                            Dijital pazarlama geleneksel pazarlama yöntemlerine göre daha güncel ve yeni dünyaya uyum sağlıyor.
                        </div>
                    </div>
                </div>
            </div>
        </div>        


        <div>
            <div class="card mt-5 ms-2 " style="width: 26rem; float:left;">
                <img src="images/discord.jpg" class="card-img-top" alt="..." style="width:26rem; height:250px;"/>
                <div class="card-body">
                    <h5 class="card-title text-center">Discord Nedir?</h5>
                    <p class="card-text text-center">Teknoloji</p>
                    <p>
                      <button runat="server" id="card6" class="btn btn-secondary d-grid gap-2 col-3 mx-auto" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample6" aria-expanded="false" aria-controls="collapseExample" visible="false">
                        Oku
                      </button>
                    </p>
                    <div class="collapse" id="collapseExample6">
                        <div class="card card-body">
                            Temel düzeyde, Discord, üyelerin birbirlerine mesaj göndermesine izin verecek şekilde oluşturulmuştur. 

                            Her topluluğa "Sunucu" denir. Aşina iseniz Slack uygulamasının daha az resmi bir sürümü olarak düşünebilirsiniz. 

                            Sunucular metin kanallarıyla (başkalarıyla konuşmak için yazabileceğiniz) ve ses kanallarıyla (başkalarıyla sesli sohbet edebileceğiniz) doludur.  Ayrıca videoları, resimleri, internet bağlantılarını, müziği ve daha fazlasını paylaşabilirsiniz.

                            Her sunucunun genellikle her biri farklı bir konuya ayrılmış veya farklı kuralları olan birden çok kanalı vardır.

                            Örneğin, bir oyun hakkında konuşmak için bir kanalınız, genel sohbet için başka bir kanalınız ve kedi resimleri için başka bir kanalınız olabilir. Sınırsız sayıda seçeceğe sahip olursunuz. 
                        </div>
                    </div>
                </div>
            </div>
        </div>



    <!---------   giriş yapma   --------->

            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Giriş Yap</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <div class="mx-auto mb-3">
                                <label >Email </label> <asp:TextBox ID="giris_email" CssClass="textbox" runat="server" style="background-color:#cacaca;"/> <br> <hr />
                                <label>Şifre </label> <asp:TextBox ID="giris_sifre" CssClass="textbox" TextMode="Password" runat="server" style="background-color:#cacaca;"  /><br>
                            </div>
                           <div class="modal-footer ">
                                <asp:Button ID="Button3" runat="server" Onclick="btnGiris" Text="Giriş" class="btn btn-primary" />
                                <asp:Button ID="Button4" runat="server" Text="İptal" data-bs-dismiss="modal" CssClass="btn btn-secondary" />
                          </div>
                       </div>
                    </div>
                </div>
            </div>
     <!-------  kayıt olma   ---------->
        <br />
        <br />

            <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel2">Kayıt Ol</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <div class="mx-auto mb-3">
                                <label >Ad </label> <asp:TextBox class="add" ID="ad" CssClass="textbox" runat="server" onblur="adkontrol()" style="background-color:#cacaca;"/> <br> <hr />
                                <label >Soyad</label> <asp:TextBox ID="soyad" CssClass="textbox" runat="server" style="background-color:#cacaca;" /> <br> <hr />   
                                <label>Mail Adresi</label> <asp:TextBox ID="email" CssClass="textbox" runat="server" style="background-color:#cacaca;" /><br> <hr />
                                <label>Şifre </label> <asp:TextBox ID="sifre" CssClass="textbox" TextMode="Password" runat="server" style="background-color:#cacaca;" /><br>
                                <asp:label ID="mesaj" runat="server"></asp:label>
                            </div>

                       <div class="modal-footer">
                            <asp:Button ID="Button1" runat="server" OnClick="btnKayit" Text="Kayıt" class="btn btn-primary" />
                            <asp:Button ID="Button2" runat="server" Text="İptal" data-bs-dismiss="modal" CssClass="btn btn-secondary" />
                      </div>
                </div>
            </div>
        </div>
 
            </div>
        </div>
        <br />
        <br />
    </form>
    <script type="text/javascript">

    </script>
        

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>


