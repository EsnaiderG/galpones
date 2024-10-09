<?php
$hostname='localhost';
$database='galpones';
$username='root';
$password='';
$charset = 'utf8mb4';

// Crear una nueva conexión PDO
$dsn = "mysql:host=$hostname;dbname=$database;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
$pdo = new PDO($dsn, $username, $password, $opt);

// Obtener los datos del POST
$switchName = $_POST['switchName'];
$action = $_POST['action'];

// Insertar el evento en la base de datos
$sql = "INSERT INTO switch_events (switch_name, action) VALUES (?, ?)";
$stmt = $pdo->prepare($sql);
$stmt->execute([$switchName, $action]);

echo "Evento registrado con éxito";