<!DOCTYPE html>
<head>
<link href="/assets/normalize.css" rel="stylesheet">
<style>
header {
  text-align: center;
  background: url("data:image/jpeg;base64,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");
  background-size: cover;
  color: white;
}
a { color: white;
}
  h1 {
    font-size: 70px;
  }
  img {
    margin: 40px 0px 0px 0px;
    border: 7px solid white;
    border-radius: 20px;
  }
ul { 
  padding: 10px;
  background: black
}
li { 
  display: inline;
  padding: 0px 5px 0px 5px;
}
}
</style>
</head>
<body>
  <header>
    <img src="/assets/jeff.png">
    <h1>Jeff's Blog</h1>
    <ul>
      <li><a href="#">When and who created Soccer</a></li>
      <li><a href="#">The progress of Soccer</a></li>
      <li><a href="#"> The rules</a></li>
        <li><a href="#"> Famous players</a></li>
          <li><a href="#"> Fifa</a></li>
    </ul>
  </header>
</body>
