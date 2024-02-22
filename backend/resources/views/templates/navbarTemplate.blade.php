<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>navbar</title>
</head>
<body>
    <nav>
        <a href = "{{route('home')}}">Home</a>
        <a href = "{{route('blog')}}">Blog</a>
    </nav>
    @yield ('navbar')
</body>
</html>