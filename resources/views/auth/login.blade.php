@extends('auth.layouts.main')

@section('content')

  <div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
      <main>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-5">
              <div class="card shadow-lg border-0 rounded-lg mt-5">
                <div class="card-header">
                  <h3 class="text-center font-weight-light my-4">Login</h3>
                </div>
                <div class="card-body">
                  <form action="{{ route('login') }}" method="POST">
                    @csrf
                    <div class="form-floating mb-3">
                      <label for="email">Email address</label>
                      <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                      @error('email')
                          <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                      @enderror
                    </div>
                    <div class="form-floating mb-3">
                      <label for="password">Password</label>
                      <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                      @error('password')
                          <span class="invalid-feedback" role="alert">
                              <strong>{{ $message }}</strong>
                          </span>
                      @enderror
                    </div>
                    <div class="form-check mb-3">
                      <input class="form-check-input" name="remember" id="inputRememberPassword" type="checkbox" id="remember" {{ old('remember') ? 'checked' : '' }}/>
                      <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                      @if (Route::has('password.request'))
                          <a class="small" href="{{ route('password.request') }}">
                              {{ __('Forgot Your Password?') }}
                          </a>
                      @endif
                      
                      <button type="submit" class="btn btn-primary">
                          {{ __('Login') }}
                      </button>
                    </div>
                  </form>
                </div>
                <div class="card-footer text-center py-3">
                  {{-- <div class="small"><a href="register.html">Need an account? Sign up!</a></div> --}}
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
    </div>

  </div>

@endsection