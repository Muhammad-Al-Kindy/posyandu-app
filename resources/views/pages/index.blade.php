<!DOCTYPE html>
<html lang="en">

<head>
  <title>Posyandu Rajawali {{ now()->format('Y') }} | Posyandu Sahabat Masyarakat.</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./ui/style/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css">
  <style>
    .-item{
      margin: 0 !important;
    }
  </style>
</head>

<body>
  <nav id="head" class="navbar nav navbar-expand-lg fixed-top" onscroll="Scroll()">
    <div class="nav-box">
    </div>
    <a class="navbar-brand" href="#"><b class="brand-var">Rajawali</b></a>
    <div class="toggle">
      <div class="bar"></div>
      <div class="bar"></div>
      <div class="bar"></div>
    </div>

    <div class="collapse pl-5 navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto topnav">
        <li class="nav-item">
          <a class="nav-link" href="/#beranda">Beranda <span class="sr-only">(current)</span></a>
          <!-- <a class="nav-link actived" href="/#beranda">Beranda <span class="sr-only">(current)</span></a> -->
        </li>

        <li class="nav-item">
          <a class="nav-link" href="/#services">Layanan</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="/#teori">Posyandu</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="/#about">Tentang</a>
        </li>
      </ul>
      <div class="form-inline pr-15 my-2 my-lg-0">
        <a href="/login" class="btn btn-app">Masuk</a>
      </div>
    </div>
  </nav>


<section class="content">
  <!-- MAIN-TOP -->
  <div class="main-top">
    <!-- BANNER -->
    <div id="beranda" class="main-banner">
      <div class="left-banner">
        <h1 class="mb-15">Yuk, Imunisasi anak kalian di Posyandu Rajawali.</h1>
        <p class="text-justify">Posyandu Rajawali (Pos Pelayanan Keluarga Berencana - Kesehatan Terpadu) adalah kegiatan kesehatan dasar yang diselenggarakan dari, oleh dan untuk masyarakat yang dibantu oleh petugas kesehatan. Posyandu merupakan salah satu upaya kesehatan bersumberdaya masyarakat. </p>
        <div class="text-left"><br>
          <a href="/#services" class="btn btn-app btn-width-same">Mulai</a>
          <!-- <a href="https://drive.google.com/file/d/12QjT4JTkjqFrBDwqT_bMcr89bwLMOyWL/view?usp=sharing" target="_blank" class="btn btn-app btn-width-same">Prototype</a> -->
        </div>
      </div>
      <div class="right-banner">
        <img src="./ui/svg/banner/banner-img.svg" class="banner-img mb-10" alt="">
      </div>
    </div>
    <!-- END BANNER -->

    <!-- SERVICES -->
    <div id="services" class="main-services">
      <div class="p-5"></div>
      <div class="title text-center p-3">
        <h3 class="title-head">Layanan Kami</h3>
        <p class="subtitle">Layanan yang bisa di rasakan oleh masyarakat posyandu rajawali.</p>
      </div>
      <div class="p-3"></div>
      <div class="services">
        <div class="row pl-15 pr-15">

          <div class="col-md-4">
            <a href="#" class="link-services">
              <div class="card box-shadow" style="width: 100%; height: auto">
                <div class="card-body m-2 text-center">
                  <img src="./ui/svg/icon/holding-heart.svg" class="mb-4" alt="">
                  <h5 class="title-head mb-4">Kenyamanan</h5>
                  <p class="text-justify subtitle">
                    Kenyamanan adalah layanan utama bagi Posyandu Rajawali untuk memenuhi kebutuhan balita sesuai dengan pengertianya kenyamanan adalah suatu keadaaan telah terpenuhinya kebutuhan dasar manusia yang bersifat individual dan holistic.
                  </p>
                </div>
              </div>
            </a>
          </div>

          <div class="col-md-4">
            <a href="#" data-toggle="modal" data-target="#exampleModalLong" class="link-services">
              <div class="card box-shadow" style="width: 100%; height: auto">
                <div class="card-body m-2 text-center">
                  <img src="./ui/svg/icon/simple-clockify.svg" class="mb-4" alt="">
                  <h5 class="title-head mb-4">Imunisasi</h5>
                  <p class=" text-justify subtitle">
                    Imunisasi adalah suatu upaya untuk menimbulkan/meningkatkan kekebalan seseorang secara aktif terhadap suatu penyakit, sehingga apabila suatu saat terpajan dengan penyakit tersebut tidak akan sakit atau hanya mengalami sakit ringan.</p>
                </div>
              </div>
            </a>
          </div>

          <div class="col-md-4">
            <a href="#" class="link-services">
              <div class="card box-shadow" style="width: 100%; height: auto;">
                <div class="card-body m-2 text-center">
                  <img src="./ui/svg/icon/awesome-heartbeat.svg" class="mb-4" alt="">
                  <h5 class="title-head mb-4">Pertumbuhan Bayi</h5>
                  <p class=" text-justify subtitle">Perkembangan anak mengacu pada perubahan biologis, psikologis dan emosional yang terjadi pada manusia antara kelahiran dan akhir masa remaja, sebagai individu berlangsung dari ketergantungan untuk meningkatkan otonomi.</p>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>

    </div>
    <!-- END SERVICES -->

  </div>
  <!-- END MAIN-TOP -->

  <!-- ABOUT -->
  <div id="teori" class="teori">
    <div class="p-5"></div>
    <div class="title text-center p-3">
      <h3 class="title-head">Pentingnya Posyandu</h3>
      <p class="subtitle">Teori tentang Pentingnya Posyandu dan Information Lainnya.</p>
    </div>
    <div class="p-3"></div>
    <div class="left-teori">
      <img src="./ui/svg/teori/teori.svg" class="teori-img" alt="">
    </div>
    <div class="right-teori text-right">
      <div class="p-3"></div>
      <h4 class="title-head text-left">Posyandu untuk Cegah Gizi Buruk Anak di Indonesia</h4>
      <div class="item-teori">
        <p style="text-indent: 50px;" class="text-justify subtitle">Sebenarnya, Posyandu telah diremajakan atau direvitalisasi oleh pemerintah pada awal tahun 2000an. Tujuannya yaitu membantu menekan sekaligus mencegah terjadinya gizi buruk di Indonesia yang memang rentan menyerang anak-anak usia balita. </p>
        <p style="text-indent: 50px;" class="text-justify subtitle">Mengapa peremajaan? Sebab, Posyandu telah ada sejak 1984 silam. Namun, ada Posyandu di beberapa kawasan yang tidak digiatkan alias “mati suri”, sehingga perlu dihidupkan kembali dengan peremajaan tersebut.</p><br>
        <a target="_blank" href="https://www.halodoc.com/artikel/ini-alasan-pentingnya-rutin-membawa-balita-ke-posyandu" class="btn btn-app btn-contact">Selengkapnya</a>
      </div>
      </div>
    </div>
  </div>
  <!-- END ABOUT -->

  <!-- MAIN BOTTOM -->
  <div class="main-bottom">
    <!-- TEAM -->
    <div id="team" class="main-team">
      <div class="p-5"></div>
      <div class="title text-center p-3">
        <h3 class="title-head">Tim Kami</h3>
        <p class="subtitle">Tim kami mengenai founder dan sekaligus pemilik perusahaan.</p>
      </div>
      <div class="p-3"></div>
      <div class="team">
        <div class="row pl-15 pr-15">

          <div class="col-md-4 text-center">
            <a href="#" target="_blank" class="link-team">
              <img src="http://satvision.in/wp-content/uploads/2019/06/user.jpg" class="img-circle" alt="">
            </a>
            <!-- <div class="p-2"></div> -->
            <h6>Team 1</h6>
            <p>Chief Executive Officer</p>
          </div>

          <div class="col-md-4 text-center">
            <a href="#" target="_blank" class="link-team">
              <img src="https://www.aucshow.com/assets/frontend/global/img/users/9.jpg" class="img-circle" alt="">
            </a>
            <!-- <div class="p-2"></div> -->
            <h6>Team 2</h6>
            <p>Chief Technology Officer</p>
          </div>

          <div class="col-md-4 text-center">
            <a href="#" target="_blank" class="link-team">
              <img src="https://dentalia.orionthemes.com/demo-1/wp-content/uploads/2016/10/dentalia-demo-deoctor-5-1-750x750.jpg" class="img-circle" alt="">
              <!-- <div class="p-2"></div> -->
            </a>
            <h6>Team 3</h6>
            <p>Chief Information Officer</p>
          </div>

        </div>
      </div>
    </div>
    <!-- END TEAM -->

    <!-- ABOUT -->
    <div id="about" class="about">
      <div class="p-5"></div>
      <div class="title text-center p-3">
        <h3 class="title-head">Tentang Kami</h3>
        <p class="subtitle">Tentang aplikasi, informasi dan kontak Posyandu Rajawali.</p>
      </div>
      <div class="p-3"></div>
      <div class="left-about">

        <div class="p-3"></div>
        <h4 class="title-head text-left">Tentang Posyandu Rajawali</h4>
        <p style="text-indent: 50px;" class="text-justify subtitle">Posyandu Rajawali (Pos Pelayanan Keluarga Berencana - Kesehatan Terpadu) adalah kegiatan kesehatan dasar yang diselenggarakan dari, oleh dan untuk masyarakat yang dibantu oleh petugas kesehatan. Posyandu merupakan salah satu upaya kesehatan bersumberdaya masyarakat.</p>
        {{-- <h4 class="title-head text-left">Docs</h4>
        <p style="text-indent: 50px;" class="text-justify subtitle">Lorem ipsum dolor sit amet,consectetur adipisicing elit</p> --}}
        <div class="text-left"><br>
          <a target="_blank" href="#" class="btn btn-app btn-contact">Kontak Kami</a>
        </div>
      </div>
      <div class="right-about text-right">
        <img src="./ui/svg/about/about.svg" class="about-img" alt="">
      </div>
    </div>
    <!-- END ABOUT -->
    <br>

    <div class="p-3"></div>
    <!-- FOOTER -->
    <footer class="text-center">
      <p class="text-dark">© {{ now()->format('Y') }} PosRa | PosRa is a trademark of posyandu rajawali group</p>
    </footer>
    <!-- END FOOTER -->
  </div>
  <!-- END MAIN BOTTOM -->

  </section>


<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script><script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script> -->
<script src="./ui/js/nav.js"></script>
<script src="./ui/js/navigation.js"></script>

<script>
  $(document).ready(function() {
    $('#basic-table').DataTable();
    //$('select').select2();
  });
</script>
</body>
</html>
