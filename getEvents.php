<?php
$hostname='localhost';
$database='galpones';
$username='root';
$password='';

$conexion=new mysqli($hostname,$username,$password,$database);
if($conexion->connect_errno){
    echo "El sitio web está experimentado problemas";
}

    $query = "SELECT * FROM switch_events ORDER BY event_time DESC";
    $result = mysqli_query($conexion, $query);
    $events = array();

    while ($row = mysqli_fetch_array($result)) {
        $event = array(
            "switch_name" => $row["switch_name"],
            "action" => $row["action"],
            "event_time" => $row["event_time"]
        );
        array_push($events, $event);
    }

    echo json_encode($events);
?>
