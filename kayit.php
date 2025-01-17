<?php
// Veritabanı bağlantısı
$servername = "localhost";
$username = "root";  
$password = "";    
$dbname = "yemek_sitesi"; //Veritabanı adı

//Veritabanı bağlantısını kuruyo
$conn = new mysqli($servername, $username, $password, $dbname);

//Bağlantıyı kontrol ediyor
if ($conn->connect_error) {
    die("Bağlantı hatası: " . $conn->connect_error);
}

//Kayıt işlemi
if (isset($_POST['submit'])) {
    // Formdan gelen verileri alıyor
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    //Şifreyi hash'le
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    //SQL sorgusu 
    $sql = "INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$hashed_password')";

    //Kayıt işlemi başarılıysa
    if ($conn->query($sql) === TRUE) {
        $kayit_basarili = true;//Başarı
    } else {
        $kayit_basarili = false;//Hata
    }

    //Bağlantıyı kapat
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kayıt Ol</title>
    
    <style>
       
        .success-message {
            background-color: #28a745; 
            color: white;             
            font-size: 20px;          
            padding: 15px 25px;       
            border-radius: 8px;       
            text-align: center;        
            margin: 20px auto;         
            width: 50%; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
            animation: fadeIn 1s ease-out; /* Animasyon ekleme */
        }

        
        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

  
    </style>
</head>
<body>


    <?php
    if (isset($kayit_basarili) && $kayit_basarili) {
        echo '<div class="success-message">Kayıt başarılı!</div>';
    }
    ?>

</body>
</html>
