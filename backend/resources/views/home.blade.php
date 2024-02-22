<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"  content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    @vite (['resources/css/home.css'])
</head>
<body>
    @extends ('templates/navbarTemplate')
    @section ('navbar')
    <h1>Hola soy home</h1>

    @endsection
</body>
</html>