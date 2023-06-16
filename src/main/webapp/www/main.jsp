<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    
    <link rel='stylesheet'  href='css/main.css'>

    <!-- <script src="js/db.js"></script> -->
    <script src="js/main.js"></script>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <!-- web logo -->
          <a class="navbar-brand" href="index.html" data-bs-toggle="modal" data-bs-target="#exampleModal">
            <img src="https://picsum.photos/id/0/60" alt="web logo" width="50" height="50" class="d-inline-block align-text-top">
          </a>
      
          
          <!-- genre offcanvas -->
          <ul class="navbar-nav me-1 mb-2 mb-lg-0 d-none d-md-flex">
                <a class="nav-link " data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop" href="#">
                  Shoe Store
                </a>
          </ul>
      
          <!-- search form -->
          <form class="d-flex mx-auto d-none d-sm-flex" data-bs-toggle="modal" data-bs-target="#exampleModal">
            <button class="btn btn-outline-secondary me-2" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal" alt="" style="max-height: 15rem;" onclick="on()">Search</button>
            <input class="form-control " type="search" placeholder="Search" aria-label="Search">
            </form>
      
          <!-- profile dropdown -->
          <ul class="navbar-nav ml-auto">
            <li class="nav-item  d-none d-md-flex">
              <a class="nav-link " href="#" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop2" aria-controls="staticBackdrop2">
                <img src="https://picsum.photos/60" alt="profile image" width="30" height="30" class="rounded-circle">
                <span class="mx-2">Admin</span>
              </a>
            </li>
            <li class="nav-item   d-md-none">
                <a class="nav-link " href="#" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop2" aria-controls="staticBackdrop2">
                  <img src="https://picsum.photos/60" alt="profile image" width="30" height="30" class="rounded-circle">
                </a>
              </li>
          </ul>
        </div>
    </nav>


    

<button type="button" class="btn btn-primary ms-5 my-2 mt-5" data-bs-toggle="modal" data-bs-target="#exampleModel">New Data Entry</button>

<div class="read px-5 ">
    <h2>Data Table</h2>
    <table class="table table-striped shadow-lg icons" id="tbl" data-bs-toggle="modal" data-bs-target="#exampleModal">
        <thead>
            <tr>
              <th>Shoes IDs</th>
              <th>Brand</th>
              <th>Model</th>
              <th>Category</th>
              <th>Size</th>
              <th>Stock</th>
              <th>Price</th>
              <th>Image URL</th>
              <th>
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-tools" viewBox="0 0 16 16">
                    <path d="M1 0 0 1l2.2 3.081a1 1 0 0 0 .815.419h.07a1 1 0 0 1 .708.293l2.675 2.675-2.617 2.654A3.003 3.003 0 0 0 0 13a3 3 0 1 0 5.878-.851l2.654-2.617.968.968-.305.914a1 1 0 0 0 .242 1.023l3.27 3.27a.997.997 0 0 0 1.414 0l1.586-1.586a.997.997 0 0 0 0-1.414l-3.27-3.27a1 1 0 0 0-1.023-.242L10.5 9.5l-.96-.96 2.68-2.643A3.005 3.005 0 0 0 16 3c0-.269-.035-.53-.102-.777l-2.14 2.141L12 4l-.364-1.757L13.777.102a3 3 0 0 0-3.675 3.68L7.462 6.46 4.793 3.793a1 1 0 0 1-.293-.707v-.071a1 1 0 0 0-.419-.814L1 0Zm9.646 10.646a.5.5 0 0 1 .708 0l2.914 2.915a.5.5 0 0 1-.707.707l-2.915-2.914a.5.5 0 0 1 0-.708ZM3 11l.471.242.529.026.287.445.445.287.026.529L5 13l-.242.471-.026.529-.445.287-.287.445-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471.026-.529.445-.287.287-.445.529-.026L3 11Z"/>
                </svg>
              </th> <!-- New column for the eye icon -->
            </tr>
        </thead>
      <tbody>
        <!-- Data rows will be dynamically populated by JavaScript -->
      </tbody>
    </table>
  </div>

    









<!-- Model -->
  <div class="modal fade" id="exampleModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-body">
            <div class="create">
                <h2 class="mb-4">Create Shoe</h2>
                <h2 id=""></h2>
                <form>
                  <label >Brand:</label>
                  <select name="brandCreate" id="b_create">
                      <!-- Options will be dynamically populated by JavaScript -->
                  </select>
                  <br><br>
                  
                  <label>Model:</label>
                  <input type="text" id="m_create" name="model">
                  <br><br>
                  
                  <label>Category:</label>
                  <select name="categoryCreate" id="c_create">
                      <!-- Options will be dynamically populated by JavaScript -->
                  </select>
                  <br><br>
              
                  <label>Size:</label>
                  <select id="si_create" name="si_create" required>
                      <option value="38">38</option>
                      <option value="39">39</option>
                      <option value="40">40</option>
                      <option value="41">41</option>
                      <option value="42">42</option>
                      <option value="43">43</option>
                      <option value="44">44</option>
                  </select>
                  <br><br>
              
                  <label>Stock:</label>
                  <input type="text" id="st_create" name="stockInput" oninput="formatPrice(this)" required>
                  <br><br>
              
                  <label>Price:</label>
                  <input type="text" id="pr_create" name="priceInput" oninput="formatPrice(this)" required>
                  <br><br>
                  
                  <label>Img URL:</label>
                  <input type="text" id="img_create" name="model">
                  <br><br>
              
                    <button type="button" class="btn btn-success" value="Create" onclick="create();">Create</button>
                </form>
              </div>
        </div>
      </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-body">
          <div class="update">
            <h2 class="mb-4">Update Shoe</h2>
            <form>
              <input type="text" id="r_uid" name="model" readonly>
              <br><br>
              <label >Brand:</label>
              <select name="brandCreate" id="b_update">
                  <!-- Options will be dynamically populated by JavaScript -->
              </select>
              <br><br>
              
              <label>Model:</label>
              <input type="text" id="m_update" name="model">
              <br><br>
              
              <label>Category:</label>
              <select name="categoryCreate" id="c_update">
                  <!-- Options will be dynamically populated by JavaScript -->
              </select>
              <br><br>
          
              <label>Size:</label>
              <select id="si_update" required>
                  <option value="38">38</option>
                  <option value="39">39</option>
                  <option value="40">40</option>
                  <option value="41">41</option>
                  <option value="42">42</option>
                  <option value="43">43</option>
                  <option value="44">44</option>
              </select>
              <br><br>
          
              <label>Stock:</label>
              <input type="text" id="st_update" name="stockInput" oninput="formatPrice(this)" required>
              <br><br>
          
              <label>Price:</label>
              <input type="text" id="p_update" name="priceInput" oninput="formatPrice(this)" required>
              <br><br>
              
              <label>Img URL:</label>
              <input type="text" id="urli_update" name="model">
              <br><br>
          
              <input type="submit" value="Change" class="btn btn-primary" onclick="update();">
              <input type="submit" value="Delete" class="btn btn-danger" onclick="delete_shoe();">
            </form>
        </div>
        </div>
      </div>
    </div>
</div>



<!-- offcvas right -->
<div class="offcanvas offcanvas-end " tabindex="-1" id="staticBackdrop2" aria-labelledby="staticBackdropLabel">
    <div class="offcanvas-body ">
      <div>
        <div class="row">
            <p><a href="profile.html" class="text-decoration-none text-dark">Profile</a></p>
            <hr>
            <div class="d-md-none">
                <p>
                    <a class="nav-link " data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop" href="#">
                        Genre
                    </a>                
                </p>
                <hr>
            </div>
            <div class="d-sm-none">
                <p>
                    <form class="d-flex m-auto">
                        <button class="btn btn-outline-secondary me-2" type="submit">Search</button>
                        <input class="form-control " type="search" placeholder="Search" aria-label="Search">
                    </form>                
                </p>
                <hr>
            </div>
            <p><a href="settings.html" class="text-decoration-none text-dark">User View</a></p>
            <hr>
            <p><a href="login.html" class="text-decoration-none text-dark">Log out</a></p>
        </div>
      </div>
    </div>
  </div>



<!-- Scripts -->
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-analytics.js"></script>

<!-- Config -->
<script>
    var firebaseConfig = {
    apiKey: "AIzaSyB52iEB7SGWkLi4m_f3crNHXL-24TlOvUc",
    authDomain: "shoestore-e4189.firebaseapp.com",
    databaseURL: "https://shoestore-e4189-default-rtdb.asia-southeast1.firebasedatabase.app",
    projectId: "shoestore-e4189",
    storageBucket: "shoestore-e4189.appspot.com",
    messagingSenderId: "962770911192",
    appId: "1:962770911192:web:7c710f69c1b9442719fcad",
    measurementId: "G-5WMZ70YZWE "
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
    firebase.analytics();


    var databaseRef = firebase.database().ref('test/');
	console.log(databaseRef)
</script>

<!-- Read -->
<script>
    console.log();
    var tbl = document.getElementById('tbl');
    var databaseRef = firebase.database().ref('shoe/');
    var rowIndex = 1;
    databaseRef.once('value', function(snapshot) {
    snapshot.forEach(function(childSnapshot) {
    var childKey = childSnapshot.key;
    var childData = childSnapshot.val();
    
    var row = tbl.insertRow(rowIndex);
    var cellId = row.insertCell(0);
    var cellb = row.insertCell(1);
    var cellm = row.insertCell(2);
    var cellc = row.insertCell(3);
    var cellsi = row.insertCell(4);
    var cellst = row.insertCell(5);
    var cellp = row.insertCell(6);
    var cellurli = row.insertCell(7);
    var cellicon = row.insertCell(8);

    cellId.appendChild(document.createTextNode(childKey));
    cellb.appendChild(document.createTextNode(childData.brand));
    cellm.appendChild(document.createTextNode(childData.model));
    cellc.appendChild(document.createTextNode(childData.category));
    cellsi.appendChild(document.createTextNode(childData.size));
    cellst.appendChild(document.createTextNode(childData.stock));
    cellp.appendChild(document.createTextNode(childData.price));
    cellurli.appendChild(document.createTextNode(childData.URLImg));
    

    var icon = document.createElement('i'); // Create the eye icon element
    icon.className = 'fas fa-eye'; // Add the appropriate class for the eye icon
    cellicon.appendChild(icon); // Append the icon element to the cell


    rowIndex = rowIndex + 1;
    });
    var table = document.getElementById("tbl");
    var rows = table.getElementsByTagName("tr");
    
    for (i = 0; i < rows.length; i++) {
        var currentRow = table.rows[i];
        var createClickHandler = function(row) {
        return function() {
        var cell1 = row.getElementsByTagName("td")[0];
        var cell2 = row.getElementsByTagName("td")[1];
        var cell3 = row.getElementsByTagName("td")[2];
        var cell4 = row.getElementsByTagName("td")[3];
        var cell5 = row.getElementsByTagName("td")[4];
        var cell6 = row.getElementsByTagName("td")[5];
        var cell7 = row.getElementsByTagName("td")[6];
        var cell8 = row.getElementsByTagName("td")[7];

        var id = cell1.innerHTML;
        var brand = cell2.innerHTML;
        var model = cell3.innerHTML;
        var cat = cell4.innerHTML;
        var size = cell5.innerHTML;
        var stock = cell6.innerHTML;
        var price = cell7.innerHTML;
        var img = cell8.innerHTML;
        
        document.getElementById('r_uid').value = id;
        document.getElementById('b_update').value = brand;
        document.getElementById('m_update').value = model;
        document.getElementById('c_update').value = cat;
        document.getElementById('si_update').value = size;
        document.getElementById('st_update').value = stock;
        document.getElementById('p_update').value = price;
        document.getElementById('urli_update').value = img;
        
        };
        };
        currentRow.onclick = createClickHandler(currentRow);
        }
        });

</script>

<!-- Dropdown Option -->
<script>
    var databaseBRef = firebase.database().ref('Brand');
  databaseBRef.once('value', function(snapshot) {
    var select = document.getElementById("b_create");
    snapshot.forEach(function(childSnapshot) {
      var brandName = childSnapshot.child("BrandName").val();
      var option = document.createElement("option");
      option.value = brandName;
      option.text = brandName;
      select.appendChild(option);
    });
  });
</script>
<script>
    var databaseCRef = firebase.database().ref('Category');
  databaseCRef.once('value', function(snapshot) {
    var select = document.getElementById("c_create");
    snapshot.forEach(function(childSnapshot) {
      var brandName = childSnapshot.child("CatName").val();
      var option = document.createElement("option");
      option.value = brandName;
      option.text = brandName;
      select.appendChild(option);
    });
  });
</script>
<script>
    var databaseBRef = firebase.database().ref('Brand');
  databaseBRef.once('value', function(snapshot) {
    var select = document.getElementById("b_update");
    snapshot.forEach(function(childSnapshot) {
      var brandName = childSnapshot.child("BrandName").val();
      var option = document.createElement("option");
      option.value = brandName;
      option.text = brandName;
      select.appendChild(option);
    });
  });
</script>
<script>
    var databaseCRef = firebase.database().ref('Category');
  databaseCRef.once('value', function(snapshot) {
    var select = document.getElementById("c_update");
    snapshot.forEach(function(childSnapshot) {
      var brandName = childSnapshot.child("CatName").val();
      var option = document.createElement("option");
      option.value = brandName;
      option.text = brandName;
      select.appendChild(option);
    });
  });
</script>

<!-- Update -->
</body>
</html>