@extends("_layouts.main_layout")

@section("title")
Article {{ $article->title }}
@endsection

@section('content')


 <!-- Page Content -->
  <div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">

        <!-- Title -->
        <h1 class="mt-4">Post Title</h1>

        <!-- Author -->
        <p class="lead">
          by
          <a href="#">{{ $article->doctor->first_name . ' ' . $article->doctor->last_name  }}</a>
        </p>

        <hr>

        <!-- Date/Time -->
        <p>Posted on {{ $article->created_at }}</p>

        <hr>

        @if($article->image)

          <img class="img-fluid rounded" src="{{ asset($article->image) }}" alt="">
        @else
        <!-- Preview Image -->
          <img class="img-fluid rounded" src="http://placehold.it/500x300" alt="">
        @endif
        <hr>

        <!-- Post Content -->
        <p class="lead">{!! $article->body !!}</p>


        <hr>

        <!-- Comments Form -->
        <div class="card my-4">
          <h5 class="card-header">Leave a Comment:</h5>
          <div class="card-body">
            <form action="{{ route('article-comments.store' , $article) }}" method="POST">
            	@csrf
              <div class="form-group">
                <textarea name="body" class="form-control" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>

        @forelse($article->comments()->take(3) as $comment)
	        <div class="media mb-4">
	          <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
	          <div class="media-body">
	            <h5 class="mt-0">{{ $comment->user()->first_name . ' ' . $comment->user()->last_name }}
	            	<form method="POST" style="display: inline-block" action="{{ route('article-comments.destroy' , $comment) }}">
	            		@csrf
	            		@method('DELETE')
	            		<button type="submit" class="btn btn-warning"><i class="fa fa-trash"></i></button>
	            	</form>

	            </h5>
	            {{ $comment->body }}
	          </div>
	        </div>
	    @empty

        @endforelse


      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">

        <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>

        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">Categories</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">Web Design</a>
                  </li>
                  <li>
                    <a href="#">HTML</a>
                  </li>
                  <li>
                    <a href="#">Freebies</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">JavaScript</a>
                  </li>
                  <li>
                    <a href="#">CSS</a>
                  </li>
                  <li>
                    <a href="#">Tutorials</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">Side Widget</h5>
          <div class="card-body">
            You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
          </div>
        </div>

      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
@stop