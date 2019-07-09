@extends("_layouts.main_layout")

@section("title")
Articles
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

      @if(auth('doctor')->check())
      <div class="col-md-8">
        <span>Add Article</span>

        <form action="{{ route('articles.store') }}" enctype="multipart/form-data" method="POST">
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

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <h1 class="my-4">
          Articles
        </h1>

        @forelse($articles as $article)
        <!-- Blog Post -->
          <div class="card mb-4">
            @if($article->image)
            <img class="card-img-top" src="{{ asset('image/' . $article->image) }}" alt="Card image cap">
            @else
            <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
            @endif
            <div class="card-body">
              <h2 class="card-title">{{ $article->title }}</h2>
              <p class="card-text">{!! $article->body !!}</p>
              <a href="{{ route('articles.show' , $article->id) }}" class="btn btn-primary">Read More &rarr;</a>
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
          {{ $articles->links() }}
        </ul>

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

      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  @stop