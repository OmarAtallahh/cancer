@extends("_layouts.main_layout")

@section("title")
Post {{ $post->title }}
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

          <a href="#">{{ $post->user->name  }}</a>
        </p>

        <hr>

        <!-- Date/Time -->
        <p>Posted on {{ $post->created_at }}</p>

        <hr>

        <!-- Preview Image -->
        <img class="img-fluid rounded" src="http://placehold.it/500x300" alt="">

        <hr>

        <!-- Post Content -->
        <p class="lead">{{ $post->body }}</p>


        <hr>

        <!-- Comments Form -->
        <div class="card my-4">
          <h5 class="card-header">Leave a Comment:</h5>
          <div class="card-body">
            <form action="{{ route('post-comments.store' , $post) }}" method="POST">
            	@csrf
              <div class="form-group">
                <textarea name="body" class="form-control" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>

        @forelse($post->comments()->take(3) as $comment)
	        <div class="media mb-4">
	          <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
	          <div class="media-body">
	            <h5 class="mt-0">{{ $comment->user()->first_name . ' ' . $comment->user()->last_name }}
	            	<form method="POST" style="display: inline-block" action="{{ route('post-comments.destroy' , $comment) }}">
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

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
@stop