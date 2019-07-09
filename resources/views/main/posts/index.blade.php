@extends("_layouts.main_layout")

@section("title")
Posts
@endsection

@section("js")
<script type="text/javascript">
   CKEDITOR.replace('body')
   $('.textarea').wysihtml5();
</script>
@endsection


@section('content')
<!-- Page Content -->

  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->

      @if(auth('web')->check())
      <div class="col-md-8">
        <span>Add Post</span>

        <form action="{{ route('posts.store') }}" enctype="multipart/form-data" method="POST">
          {{ csrf_field() }}
            <div class="form-group">

              <input type="text" class="form-control" name="title">

            </div>

            <div class="form-group">


              <textarea name="body" class="form-control"></textarea>

            </div>

            <div class="form-group">

              <input type="file" class="form-control" name="image">

            </div>


            <input type="submit" class="btn btn-primary" value="Create">
        </form>

      </div>

      @endif

      <div class="col-md-8">

        <h1 class="my-4">
          Posts
        </h1>

        @forelse($posts as $post)
        <!-- Blog Post -->
          <div class="card mb-4">
            @if($post->image)
            <img class="card-img-top" src="{{ asset('image/' . $post->image) }}" alt="Card image cap">
            @else
            <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
            @endif
            <div class="card-body">
              <h2 class="card-title">{{ $post->title }}</h2>
              <p class="card-text">{!! $post->body !!}</p>
              <a href="{{ route('posts.show' , $post->id) }}" class="btn btn-primary">Read More &rarr;</a>
            </div>
            <div class="card-footer text-muted">
              {{ $post->created_at }}
            </div>
          </div>

        @empty
          <div class="alert alert-warning">No Data found</div>
        @endforelse

        <!-- Pagination -->
        <ul class="pagination justify-content-center mb-4">
          {{ $posts->links() }}
        </ul>

      </div>


    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  @stop