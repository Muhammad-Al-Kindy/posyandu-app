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
      <a class="nav-link px-5" href="{{ route('home') }}">
      <i class="fas fa-fw fa-users"></i>
        <span>Data Users</span>
      </a>
    </li>
  @endif
  
  <li class="nav-item active border-top border-bottom">  
    <a class="nav-link px-5" href="{{ url('/baby') }}">
      <i class="fas fa-fw fa-baby"></i>
      <span>Data Bayi</span>
    </a>
  </li>

  <li class="nav-item active border-bottom">  
    <a class="nav-link px-5" href="/immunization">
      <i class="fas fa-fw fa-heartbeat"></i>
      <span>Data Imunisasi</span>
    </a>
  </li>

  @if (Auth::user()->role == 'Admin')
    <li class="nav-item active border-bottom">  
      <a class="nav-link px-5" href="/vaccine">
        <i class="fas fa-fw fa-syringe"></i>
        <span>Data Vaksin</span>
      </a>
    </li>

    <li class="nav-item active border-bottom">  
      <a class="nav-link px-5" href="/graduation">
        <i class="fas fa-fw fa-user-graduate"></i>
        <span>Kelulusan</span>
      </a>
    </li>

  {{-- <li class="nav-item active border-bottom">  
    <a class="nav-link px-5" href="{{ route('home') }}">
      <i class="fas fa-fw fa-hdd"></i>
      <span>Backup Data</span>
    </a>
  </li> --}}
  @endif

  <li class="nav-item active border-bottom">  
    <a class="nav-link px-5" href="#" data-toggle="modal" data-target="#logoutModal">
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