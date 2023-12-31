<!-- Sidebar -->
<ul class="navbar-nav bg-primary sidebar sidebar-dark accordion" id="accordionSidebar">

  <!-- Sidebar - Brand -->
  <a class="sidebar-brand d-flex align-items-center mb-5 justify-content-center" href="{{ url('/home') }}">
    <div class="sidebar-brand-icon rotate-n-15 px-1">
      <i class="fas fa-stethoscope"></i>
    </div><br>
    <div class="sidebar-brand-text">Rajawali</div>
  </a>

  <div class="profile text-center mb-3">
    <img class="img-profile rounded-circle w-25" src="{{ asset('/img/profile.png') }}">
    <p class="text-white fs-normal">
      {{ auth()->user()->email }} <br>
      <span class="fs-small">{{ auth()->user()->role }} Posyandu Rajawali</span>
    </p>
  </div>

  <!-- Nav Item - Dashboard -->

  @if (Auth::user()->role == 'Admin')
    <li class="nav-item active border-top border-bottom">
      <a class="nav-link px-5 w-100" href="{{ route('home') }}">
      <i class="fas fa-fw fa-users"></i>
        <span>Data Users</span>
      </a>
    </li>
  @endif

  {{-- <li class="nav-item active border-bottom">
    <a class="nav-link px-5 collapsed" href="#" data-toggle="collapse" data-target="#collapseMaster" aria-expanded="true" aria-controls="collapseMaster">
      <i class="fas fa-fw fa-folder"></i>
      <span>Master</span>
    </a>
    <div id="collapseMaster" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
      <div class="bg-white py-2 collapse-inner rounded">
        <h6 class="collapse-header px-5 w-100">Book Supports</h6>
        <a class="collapse-item px-5 w-100" href="/u/author">Authors</a>
        <a class="collapse-item px-5 w-100" href="/u/publisher">Publishers</a>
        <a class="collapse-item px-5 w-100" href="/u/genre">Genres</a>
      </div>
    </div>
  </li> --}}

  <li class="nav-item active border-top border-bottom">
    <a class="nav-link px-5 w-100" href="{{ url('/baby') }}">
      <i class="fas fa-fw fa-baby"></i>
      <span>Data Bayi</span>
    </a>
  </li>

  <li class="nav-item active border-top border-bottom">
    <a class="nav-link px-5 w-100" href="{{ url('/progress') }}">
      <i class="fas fa-fw fa-bars"></i>
      <span>Export Progress</span>
    </a>
  </li>

  <li class="nav-item active border-bottom">
    <a class="nav-link px-5 w-100" href="/immunization">
      <i class="fas fa-fw fa-heartbeat"></i>
      <span>Catatan Imunisasi</span>
    </a>
  </li>

  <li class="nav-item active border-bottom">
    <a class="nav-link px-5 w-100" href="/vitaminization">
      <i class="fas fa-fw fa-tablets"></i>
      <span>Vitaminisasi</span>
    </a>
  </li>

  @if (Auth::user()->role == 'Admin')
    <li class="nav-item active border-bottom">
      <a class="nav-link px-5 w-100" href="/vaccine">
        <i class="fas fa-fw fa-syringe"></i>
        <span>Data Vaksin</span>
      </a>
    </li>

    <li class="nav-item active border-bottom">
      <a class="nav-link px-5 w-100" href="/vitamin">
        <i class="fas fa-fw fa-vial"></i>
        <span>Data Vitamin</span>
      </a>
    </li>

    <li class="nav-item active border-bottom">
      <a class="nav-link px-5 w-100" href="/graduation">
        <i class="fas fa-fw fa-user-graduate"></i>
        <span>Kelulusan</span>
      </a>
    </li>

  {{-- <li class="nav-item active border-bottom">
    <a class="nav-link px-5 w-100" href="{{ route('home') }}">
      <i class="fas fa-fw fa-hdd"></i>
      <span>Backup Data</span>
    </a>
  </li> --}}
  @endif

  <li class="nav-item active border-bottom">
    <a class="nav-link px-5 w-100" href="#" data-toggle="modal" data-target="#logoutModal">
      <i class="fas fa-sign-out-alt mx-1"></i>
      <span>Keluar</span>
    </a>
  </li>


  <!-- Sidebar Toggler (Sidebar) -->
  {{-- <div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
  </div> --}}

</ul>
<!-- End of Sidebar -->
