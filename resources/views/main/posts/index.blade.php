@extends("_layouts.main_layout")

@section("title")
Posts
@endsection

@section('content')
<!-- Page Content -->

  <div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <h1 class="my-4">
          Posts
        </h1>

        @forelse($posts as $article)
        <!-- Blog Post -->
          <div class="card mb-4">
            <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
            <div class="card-body">
              <h2 class="card-title">{{ $article->title }}</h2>
              <p class="card-text">{{ $article->body }}</p>
              <a href="{{ route('posts.show' , $article->id) }}" class="btn btn-primary">Read More &rarr;</a>
            </div>
            <div class="card-footer text-muted">
              {{ $article->created_at }}
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