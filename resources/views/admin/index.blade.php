@extends("_layouts.main_layout")

@section("title")
About BCR
@endsection

@section("content")
<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/admin">Home</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="/admin/create"> Add Doctor </a></li>
            <li><a href="/admin">all Users</a></li>
            <li><a href="/admin/reports">View Reports</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="/main/index">Log Out<span class="sr-only">(current)</span></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <br>

      <section class="page-section about-heading">
        <div class="container">
          <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="/casual/img/about.jpg" alt="">
          <div class="about-heading-content">
            <div class="row">
              <div class="col-xl-9 col-lg-10 mx-auto">
                <div class="bg-faded rounded p-5">
                  <h2 class="section-heading mb-4">
                    <span class="section-heading-upper">Admin Dashboard</span>
                  </h2>
                  <p>
                  here you can see all doctors information and u can edit and dalete whatever you want.</p>
              </div>
            </div>
          </div>
        </div>
        <br><br>
      </section>
      <form class="row">
         <div class="container">
             <div class="col-md-6">
                 <input autofocus value="{{$q}}" type="text" class="form-control" name="q" placeholder="Search_ID" />
             </div>
             <div class="col-md-6">
                 <input type="submit" value="Go" class="btn btn-primary" />
             </div>
         </div>
      </form>

      <br><br>
  <section>
    <div class="container">
      <div class="row">
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>id</th>
                    <th>first_name</th>
                    <th>last_name</th>
                    <th>email</th>
                    <th>job_id</th>
                    <th>phone_number</th>
                    <th>hospital_name</th>
                    <th width="10%"></th>
                    <th>details</th>
                    <th>edit</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tbody>
                @foreach($doctors as $a)
                <tr>
                   <td>{{$a->id}}</td>
                    <td>{{$a->first_name}}</td>
                    <td>{{$a->last_name}}</td>
                    <td>{{$a->email}}</td>
                    <td>{{$a->job_id}}</td>
                    <td>{{$a->phone_number}}</td>
                    <td>{{$a->hospital_name}}</td>
                    <td width="10%">
                  <td>  <a href="/admin/{{$a->id}}" class="btn btn-xs btn-info">
                        <i class="glyphicon glyphicon-info-sign"></i>
                    </a></td>
                    <td>
                      <a href="/admin/{{$a->id}}/edit" class="btn btn-xs btn-primary">
                            <i class="glyphicon glyphicon-edit"></i>
                      </a>
                  </td>
                    <td>
                        <a onclick="return confirm('Are you sure dude?')" href="/admin/{{$a->id}}/delete"
                          class="btn btn-xs btn-danger">
                            <i class="glyphicon glyphicon-trash"></i>
                          </a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{$doctors->links()}}
      </div>
    </section>

@endsection
