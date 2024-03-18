<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
            <img src="https://www.w3schools.com/bootstrap5/img_avatar1.png" alt="Avatar Logo" style="width:40px;" class="rounded-pill"> 
          </a>
          <span class="navbar-text"><a href="{{ url('/logout') }}">Logout</a></span>
        </div>
      </nav>
    
      <h1 class="m-4">Scan QR Code to begin.</h1>
      <h4 class="m-4">You are logged in as {{ $info->employee_name }}</h4>
      <div class="row p-5">
        <div class="col-12">
          <table class="table table-responsive table-bordered">
              <thead>
                <tr class="table-primary">
                    <th>ID</th>
                    <th>Employee</th>
                    <th>Time</th>
                </tr>
              </thead>
              <tbody>
                @foreach($records as $item)            
                    <tr>  
                      <td>{{ $item->user_id }}</td>
                      <td>{{ $item->employee_name }}</td>
                      <td>{{ date("M d, Y h:i A", strtotime($item->signin_time)) }}</td>
                    </tr>             
                @endforeach
              </tbody>
          </table>
        </div>
      </div>

</body>

</html>